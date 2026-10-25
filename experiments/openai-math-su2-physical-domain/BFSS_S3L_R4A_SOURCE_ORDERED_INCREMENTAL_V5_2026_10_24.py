#!/usr/bin/env python3
"""Requalify five canonical imports with exact S3L3A and S3L3B proof-only patches.

Choose unique canonical sources for every import. S3L3A and S3L3B each use
one exact-pinned proof-API compatibility variant, checking source bytes and
original declaration preservation before compiling into canonical modules.

Strict checkpoint: no R4A/R4D root is accepted unless explicitly compiled.
Requires pinned original mathematics and a qualified parent source cache.
"""
import pathlib,re,subprocess,sys,shutil,time
from collections import defaultdict

TARGET="SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe"
SHA="ef803c1b5c62a819e568c5a645c5e622ec1a0d6f"
PREFIX="BFSS_S3L_R4A_INCREMENTAL_V5_SOURCE_CHECKPOINT"
LIMIT=5
PATCH_STEM="SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe"
CANONICAL_S3L3A="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe.lean"
COMPAT_S3L3A="experiments/openai-math-su2-physical-domain/recovery/S3L3AOriginalSourceProofOnlyDeprecationGate28V4.lean"
PIN_CANONICAL_S3L3A="aa47f20d0c14374659aee0bf24c6361e464386ad"
PIN_COMPAT_S3L3A="a1586fdcbadd829ac7d57cfb4f8c2dab7ae655c1"
OLD_PROOF="  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,\n    ContinuousLinearMap.smulRight_apply]"
NEW_PROOF="  simp only [add_apply, smul_apply,\n    ContinuousLinearMap.smulRight_apply]"
PATCH_STEM_B="SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe"
CANONICAL_S3L3B="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe.lean"
COMPAT_S3L3B="experiments/openai-math-su2-physical-domain/recovery/S3L3BOriginalSourceProofOnlyDeprecationGate28V5.lean"
PIN_CANONICAL_S3L3B="19a7eb6a710fe6d4b531dc0eefba7ee27ed21dca"
PIN_COMPAT_S3L3B="a3db8402e4ba03aed837d722c37523b3581fd2bd"
OLD_B_TRUE="simp only [if_pos h, if_pos hr, Complex.ofReal_one, one_smul,"
NEW_B_TRUE="simp only [h, hr, ite_true, Complex.ofReal_one, one_smul,"
OLD_B_FALSE="simp only [if_neg h, if_neg hn, Complex.ofReal_zero, zero_smul,"
NEW_B_FALSE="simp only [h, hn, ite_false, Complex.ofReal_zero, zero_smul,"
ALLOWED={"propext","Classical.choice","Quot.sound"}
def git(*argv):
    return subprocess.check_output(["git",*argv],text=True).strip()

def main():
    if len(sys.argv)!=3:
        raise ValueError("usage: script ORIGINAL_LEAN_ROOT LOG_DIR")
    math=pathlib.Path(sys.argv[1]).resolve()
    logs=pathlib.Path(sys.argv[2]).resolve()
    logs.mkdir(parents=True,exist_ok=True)
    canonical_patch=pathlib.Path(CANONICAL_S3L3A)
    compat_patch=pathlib.Path(COMPAT_S3L3A)
    for p,expectedsha in ((canonical_patch,PIN_CANONICAL_S3L3A),
                          (compat_patch,PIN_COMPAT_S3L3A)):
        assert git("rev-parse","HEAD:"+str(p))==expectedsha,("PATCH_GIT_SHA",p)
        assert git("hash-object","--no-filters",str(p))==expectedsha,("PATCH_WORKTREE_SHA",p)
    canonical_text=canonical_patch.read_text()
    recovered_text=compat_patch.read_text()
    assert canonical_text.count(OLD_PROOF)==1,"ORIGINAL_S3L3A_PATCH_ANCHOR_NOT_UNIQUE"
    assert recovered_text==canonical_text.replace(OLD_PROOF,NEW_PROOF),"S3L3A_PATCH_NOT_EXACT_PROOF_ONLY"
    (logs/"S3L3A-proof-only-source-provenance.txt").write_text(
      "CANONICAL "+str(canonical_patch)+" "+PIN_CANONICAL_S3L3A+"\n"
      "COMPAT "+str(compat_patch)+" "+PIN_COMPAT_S3L3A+"\n"
      "EXACT_DIFFERENCE deprecated add_apply/smul_apply names only\n")
    print(PREFIX+"_PROOF_ONLY_S3L3A_DECLARATION_IDENTICAL",flush=True)
    canonical_b=pathlib.Path(CANONICAL_S3L3B)
    compat_b=pathlib.Path(COMPAT_S3L3B)
    for p,expectedsha in ((canonical_b,PIN_CANONICAL_S3L3B),
                          (compat_b,PIN_COMPAT_S3L3B)):
        assert git("rev-parse","HEAD:"+str(p))==expectedsha,("S3L3B_PATCH_GIT_SHA",p)
        assert git("hash-object","--no-filters",str(p))==expectedsha,("S3L3B_PATCH_WORKTREE_SHA",p)
    canonical_b_text=canonical_b.read_text()
    compat_b_text=compat_b.read_text()
    assert canonical_b_text.count(OLD_B_TRUE)==1, "S3L3B_ORIGINAL_TRUE_ANCHOR_NOT_UNIQUE"
    assert canonical_b_text.count(OLD_B_FALSE)==1, "S3L3B_ORIGINAL_FALSE_ANCHOR_NOT_UNIQUE"
    expected_b_text=canonical_b_text.replace(OLD_B_TRUE,NEW_B_TRUE).replace(OLD_B_FALSE,NEW_B_FALSE)
    assert compat_b_text==expected_b_text,"S3L3B_PATCH_CHANGED_ORIGINAL_STATEMENT_OR_EXTRA_SOURCE"
    (logs/"S3L3B-proof-only-source-provenance.txt").write_text(
        "CANONICAL "+str(canonical_b)+" "+PIN_CANONICAL_S3L3B+"\n"
        "COMPAT "+str(compat_b)+" "+PIN_COMPAT_S3L3B+"\n"
        "EXACT_DIFFERENCE only local deprecated ite simplifier steps\n")
    print(PREFIX+"_PROOF_ONLY_S3L3B_DECLARATION_IDENTICAL",flush=True)
    paths=defaultdict(list)
    for p in pathlib.Path("experiments").rglob("*.lean"):
        paths[p.stem].append(p)
    if len(paths[TARGET])!=1:
        raise ValueError("target source missing or duplicated")
    p=paths[TARGET][0]
    assert git("rev-parse","HEAD:"+str(p))==SHA
    assert git("hash-object","--no-filters",str(p))==SHA
    order=[];mark={};data={};deps={};collisions=[]
    def canonical_source(stem):
        candidates=paths[stem]
        if len(candidates)==1:
            return candidates[0]
        # A recovery source is a distinct historical variant and must not
        # silently shadow the original non-recovery experiment source.
        originals=[p for p in candidates if "recovery" not in p.parts]
        if len(originals)!=1:
            raise ValueError("UNRESOLVED_DUPLICATE_ORIGINAL "+stem+" "+str(candidates))
        canonical=originals[0]
        def declaration_tail(path):
            src=path.read_text()
            n=src.find("\nnamespace ")
            if n<0:raise ValueError("DUPLICATE_SOURCE_WITHOUT_NAMESPACE "+str(path))
            return src[n:]
        declaration=declaration_tail(canonical)
        for alt in candidates:
            if alt==canonical:continue
            # Competing recovery proofs may deliberately use different Lean
            # tactics. They are not interchangeable with canonical code.
            # Record their divergence, but NEVER import/copy/use recovery.
            same=declaration_tail(alt)==declaration
            status=("SAME_DECLARATION_BODY" if same
                    else "DIFFERENT_DECLARATION_OR_PROOF_BODY")
            collisions.append((stem,str(canonical),git("rev-parse","HEAD:"+str(canonical)),
                               str(alt),git("rev-parse","HEAD:"+str(alt)),status))
            print(PREFIX+"_CANONICAL_NON_RECOVERY_SOURCE",stem,str(canonical),
                  "IGNORED_RECOVERY_VARIANT",str(alt),status,flush=True)
        return canonical
    def visit(stem):
        if mark.get(stem)==2:return
        if mark.get(stem)==1:raise ValueError("IMPORT_CYCLE "+stem)
        p=canonical_source(stem)
        mark[stem]=1
        src=p.read_text()
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
    (logs/"duplicate-source-provenance.txt").write_text(
        "\n".join(" | ".join(record) for record in collisions)+"\n")
    targetdir=math/".lake/build/lib/lean"
    missing=[n for n in order if not (targetdir/(n+".olean")).is_file()]
    (logs/"source-manifest.txt").write_text(
        "\n".join(n+" "+data[n][2]+(" REBUILD" if n in missing else " CACHED")
                  for n in order)+"\n")
    print(PREFIX+"_IMPORT_CLOSURE",len(order),"MISSING",len(missing),flush=True)
    for n in missing:print(PREFIX+"_MISSING",n,data[n][2],flush=True)
    if len(missing)>80:
        print(PREFIX+"_BOUNDED_STOP_TOO_MANY_MODULES",len(missing),flush=True)
        return 3
    batch=missing[:LIMIT]
    print(PREFIX+"_SELECTED_QUALIFIED_BATCH",",".join(batch),flush=True)
    for n in order:
        p,src,_=data[n]
        if re.search(r"(?m)^[ \t]*(?:sorry|admit|axiom)(?:\s|$)|\bsorryAx\b",src):
            print(PREFIX+"_FORBIDDEN_SOURCE",n,flush=True);return 4
        if n==PATCH_STEM:
            if p!=canonical_patch:
                raise ValueError("S3L3A_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_patch,math/(n+".lean"))
            print(PREFIX+"_S3L3A_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3L3A,flush=True)
        elif n==PATCH_STEM_B:
            if p!=canonical_b:
                raise ValueError("S3L3B_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_b,math/(n+".lean"))
            print(PREFIX+"_S3L3B_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3L3B,flush=True)
        else:
            shutil.copyfile(p,math/(n+".lean"))
    start=time.monotonic()
    for n in order:
        if n not in batch:continue
        if time.monotonic()-start>520:
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
        pkgstatus=re.compile(r"warning: ([a-z0-9-]+): repository '([^']+)' has local changes")
        for line in r.stdout.splitlines():
            match=pkgstatus.fullmatch(line)
            if match and match.group(2).endswith("/upstream-math/lean/.lake/packages/"+match.group(1)):
                continue
            if "warning:" in line:
                print(PREFIX+"_UNAPPROVED_WARNING",n,line,flush=True);return 11
        if any(x in r.stdout for x in ("sorryAx","error:","unknownIdentifier")):
            print(PREFIX+"_UNAPPROVED_COMPILER_ERROR",n,flush=True);return 11
        if not (targetdir/(n+".olean")).is_file():
            print(PREFIX+"_NO_COMPILED_OBJECT",n,flush=True);return 12
        print(PREFIX+"_FRESH_QUALIFIED",n,"roots",len(actual),flush=True)
    if not all((targetdir/(n+".olean")).is_file() for n in batch):
        print(PREFIX+"_BATCH_OBJECT_MISSING",flush=True);return 13
    (logs/"qualified-batch.txt").write_text("\n".join(
        n+" "+data[n][2]+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3A if n==PATCH_STEM else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3B if n==PATCH_STEM_B else "")
        for n in batch)+"\n")
    if (targetdir/(TARGET+".olean")).is_file():
        print(PREFIX+"_R4A_ROOT_ACTUALLY_COMPILED",flush=True)
    else:
        print(PREFIX+"_INCREMENTAL_CHECKPOINT_ONLY_R4A_NOT_ACCEPTED",flush=True)
    print(PREFIX+"_PASS_NEW_COMPILED_MODULES",len(batch),flush=True)
    return 0

if __name__=="__main__":
    sys.exit(main())
