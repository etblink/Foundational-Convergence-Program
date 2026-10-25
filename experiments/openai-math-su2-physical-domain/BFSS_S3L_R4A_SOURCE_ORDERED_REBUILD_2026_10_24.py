#!/usr/bin/env python3
"""Rebuild missing historical original S3L Lean import ancestry in exact source order.

This diagnostic does not qualify R4D. It requires pinned math and cached
proven source artifacts from the invoking workflow. No surrogate physics.
"""
import pathlib,re,subprocess,sys,shutil,time
from collections import defaultdict

TARGET="SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe"
SHA="ef803c1b5c62a819e568c5a645c5e622ec1a0d6f"
PREFIX="BFSS_S3L_R4A_SOURCE_REBUILD"
ALLOWED={"propext","Classical.choice","Quot.sound"}
def git(*argv):
    return subprocess.check_output(["git",*argv],text=True).strip()

def main():
    if len(sys.argv)!=3:
        raise ValueError("usage: script ORIGINAL_LEAN_ROOT LOG_DIR")
    math=pathlib.Path(sys.argv[1]).resolve()
    logs=pathlib.Path(sys.argv[2]).resolve()
    logs.mkdir(parents=True,exist_ok=True)
    paths=defaultdict(list)
    for p in pathlib.Path("experiments").rglob("*.lean"):
        paths[p.stem].append(p)
    if len(paths[TARGET])!=1:
        raise ValueError("target source missing or duplicated")
    p=paths[TARGET][0]
    assert git("rev-parse","HEAD:"+str(p))==SHA
    assert git("hash-object","--no-filters",str(p))==SHA
    order=[];mark={};data={};deps={}
    def visit(stem):
        if mark.get(stem)==2:return
        if mark.get(stem)==1:raise ValueError("IMPORT_CYCLE "+stem)
        if len(paths[stem])!=1:raise ValueError("AMBIGUOUS_SOURCE "+stem)
        mark[stem]=1
        p=paths[stem][0];src=p.read_text()
        h=git("hash-object","--no-filters",str(p))
        if h!=git("rev-parse","HEAD:"+str(p)):
            raise ValueError("SOURCE_MUTATION "+stem)
        ds=[x for m in re.findall(r"(?m)^import\s+([^\n]+)",src)
              for x in m.split() if not x.startswith("--")]
        data[stem]=(p,src,h);deps[stem]=ds
        for dep in ds:
            if dep in paths:visit(dep)
        mark[stem]=2;order.append(stem)
    visit(TARGET)
    targetdir=math/".lake/build/lib/lean"
    missing=[n for n in order if not (targetdir/(n+".olean")).is_file()]
    (logs/"source-manifest.txt").write_text(
        "\n".join(n+" "+data[n][2]+(" REBUILD" if n in missing else " CACHED")
                  for n in order)+"\n")
    print(PREFIX+"_IMPORT_CLOSURE",len(order),"MISSING",len(missing),flush=True)
    for n in missing:print(PREFIX+"_MISSING",n,data[n][2],flush=True)
    if len(missing)>65:
        print(PREFIX+"_BOUNDED_STOP_TOO_MANY_MODULES",len(missing),flush=True)
        return 3
    for n in order:
        p,src,_=data[n]
        if re.search(r"(?m)^[ \t]*(?:sorry|admit|axiom)(?:\s|$)|\bsorryAx\b",src):
            print(PREFIX+"_FORBIDDEN_SOURCE",n,flush=True);return 4
        shutil.copyfile(p,math/(n+".lean"))
    start=time.monotonic()
    for n in order:
        if n not in missing:continue
        if time.monotonic()-start>1080:
            print(PREFIX+"_TOTAL_RESOURCE_BOUND",n,flush=True);return 5
        for dep in deps[n]:
            if dep in paths and not (targetdir/(dep+".olean")).is_file():
                print(PREFIX+"_MISSING_DIRECT_IMPORT",n,dep,flush=True);return 6
        p,src,_=data[n]
        expected=re.findall(r"(?m)^#print axioms (\S+)",src)
        if not expected:
            print(PREFIX+"_MISSING_AXIOM_REPORT",n,flush=True);return 7
        cmd=["timeout","--signal=TERM","--kill-after=5s","85s","lake","env","lean",
             "-DwarningAsError=true","-o",str(targetdir/(n+".olean")),n+".lean"]
        print(PREFIX+"_COMPILE_BEGIN",n,flush=True)
        r=subprocess.run(cmd,cwd=math,text=True,stdout=subprocess.PIPE,
                         stderr=subprocess.STDOUT)
        (logs/(n+".log")).write_text(r.stdout)
        if r.returncode:
            print(PREFIX+"_FIRST_LEAN_ERROR",n,"exit",r.returncode,flush=True)
            print(r.stdout[-11000:],flush=True);return 8
        reports=re.findall(r"'([^']+)' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)",r.stdout)
        actual=[name.rsplit(".",1)[-1] for name,_ in reports]
        if actual!=expected:
            print(PREFIX+"_REPORT_MISMATCH",n,expected,actual,flush=True);return 9
        for name,a in reports:
            axioms={x.strip() for x in a.split(",") if x.strip()}
            if not axioms<=ALLOWED:
                print(PREFIX+"_BAD_AXIOMS",name,axioms,flush=True);return 10
        if any(x in r.stdout for x in ("sorryAx","error:","warning:")):
            print(PREFIX+"_FORBIDDEN_DIAGNOSTIC",n,flush=True);return 11
        if not (targetdir/(n+".olean")).is_file():
            print(PREFIX+"_NO_COMPILED_OBJECT",n,flush=True);return 12
        print(PREFIX+"_FRESH_QUALIFIED",n,"roots",len(actual),flush=True)
    if not (targetdir/(TARGET+".olean")).is_file():
        print(PREFIX+"_ROOT_MISSING",flush=True);return 13
    print(PREFIX+"_R4A_STRICT_QUALIFICATION_PASS",flush=True)
    return 0

if __name__=="__main__":
    sys.exit(main())
