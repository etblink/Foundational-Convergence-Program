#!/usr/bin/env python3
"""Gate61: independently consume pinned Gate60 125-olean artifact; no R4D theorem proof.

The consumer verifies the immutable-producing commit, source names/blob hashes,
SHA256 of every compiled object, a second artifact copy, an exact ancestor set,
frozen upstream mathematics and base cache; then compiles an actual Lean smoke
import of the original R4A/R4C1/R4C2 certified declaration interfaces.
"""
import hashlib
import pathlib
import re
import shutil
import subprocess
import sys

REPO_RUN_SHA="642a90531fdda57c9b2685e098ea4cc180a17f2b"
MATH_SHA="adc7f1241b42e322a6451854ab7e4b4c146bf78a"
TARGET="SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe"
PREFIX="BFSS_S3L_R4D_GATE61_PINNED_BINARY_ANCESTRY_CONSUMER_STRICT"
ALLOWED={"propext","Classical.choice","Quot.sound"}
THEOREMS=[
"FCP.BFSSSU2PhysicalDomainS3L5K2R4A.sourceThreeSum_weightedResponse_split",
"FCP.BFSSSU2PhysicalDomainS3L5K2R4C1.pairedOriginalCubicFixedColor_fermionSum",
"FCP.BFSSSU2PhysicalDomainS3L5K2R4C2.pairedOriginalCubicFixedColor_spatialSum",
]
PROBE="""import SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe
import SU2BFSSPhysicalDomainS3L5K2R4C1FixedColorFermionSumProbe
import SU2BFSSPhysicalDomainS3L5K2R4C2FixedColorSpatialSumProbe
#print axioms FCP.BFSSSU2PhysicalDomainS3L5K2R4A.sourceThreeSum_weightedResponse_split
#print axioms FCP.BFSSSU2PhysicalDomainS3L5K2R4C1.pairedOriginalCubicFixedColor_fermionSum
#print axioms FCP.BFSSSU2PhysicalDomainS3L5K2R4C2.pairedOriginalCubicFixedColor_spatialSum
"""
def command(*args,cwd=None):
    return subprocess.check_output(args,cwd=cwd,text=True,stderr=subprocess.PIPE).strip()

def fail(code,reason):
    print(PREFIX+"_"+code,reason,flush=True)
    raise ValueError(code+": "+reason)

def lines(path):
    if not path.is_file() or not path.stat().st_size:
        fail("MISSING_IMMUTABLE_MANIFEST",str(path))
    return path.read_text().splitlines()

def verify(repo,math,oleans,audit,logs):
    logs.mkdir(parents=True,exist_ok=True)
    if command("git","-C",str(math.parent),"rev-parse","HEAD")!=MATH_SHA:
        fail("UPSTREAM_MATH_SHA_MISMATCH","original etblink/math must be frozen")
    if subprocess.run(["git","-C",str(repo),"merge-base","--is-ancestor",REPO_RUN_SHA,"HEAD"]).returncode:
        fail("PINNED_GATE60_COMMIT_NOT_IN_LINEAGE",REPO_RUN_SHA)
    if not (oleans.is_dir() and audit.is_dir()):
        fail("GATE60_ARTIFACTS_MISSING","binary and independent audit artifacts required")
    manifest=lines(audit/"source-manifest.txt")
    names=lines(audit/"qualified-full-125-ancestor-names.txt")
    binaries=lines(audit/"checkpoint-olean-sha256-sourceblobs.txt")
    if len(manifest)!=126 or len(names)!=125 or len(binaries)!=125:
        fail("GATE60_COUNTS_CHANGED",str((len(manifest),len(names),len(binaries))))
    source_entries=[record.split() for record in manifest]
    if any(len(entry)!=3 or entry[2] not in ("REBUILD","CACHED") for entry in source_entries):
        fail("BAD_GATE60_SOURCE_MANIFEST_FORMAT","must be module, source Git blob and qualification mode")
    source_names=[entry[0] for entry in source_entries]
    if len(set(source_names))!=126 or source_names[-1]!=TARGET or names!=source_names[:-1]:
        fail("SOURCE_MODULE_GRAPH_NOT_EXACT","original R4D closure/topological order changed")
    if any(not re.fullmatch("[0-9a-f]{40}",entry[1]) for entry in source_entries):
        fail("BAD_SOURCE_GIT_BLOB","non-Git source SHA")
    exact_source_hashes=dict((name,sha) for name,sha,_ in source_entries)
    if exact_source_hashes[TARGET]!="1a56b2055ff4ed3c1a227bce3910e974876c5774":
        fail("R4D_TARGET_STATEMENT_CHANGED",exact_source_hashes[TARGET])
    # Resolve each original module against the immutable producing research
    # commit. Multiple names in the tree are allowed only when the exact source
    # manifest selects an actually present Git blob from that frozen tree.
    listing=command("git","-C",str(repo),"ls-tree","-r",REPO_RUN_SHA,
                    "--","experiments/openai-math-su2-physical-domain",
                    "experiments/openai-math-su2-concrete-potential")
    upstream_listing=command("git","-C",str(math.parent),"ls-tree","-r",MATH_SHA,
                             "--","lean")
    blobs={}
    for record in (listing+"\n"+upstream_listing).splitlines():
        head,sep,path=record.partition("\t")
        if not sep:continue
        attrs=head.split()
        if len(attrs)!=3 or attrs[1]!="blob":continue
        if path.endswith(".lean"):
            blobs.setdefault(pathlib.Path(path).name, set()).add(attrs[2])
    for name,sha in exact_source_hashes.items():
        if sha not in blobs.get(name+".lean",set()):
            fail("SOURCE_PROVENANCE_NOT_IN_PINNED_COMMIT",name+" "+sha)
    print(PREFIX+"_ORIGINAL_126_MODULE_SOURCE_PROVENANCE_VERIFIED",flush=True)
    parsed=[row.split() for row in binaries]
    if any(len(t)!=3 or not re.fullmatch("[0-9a-f]{64}",t[1]) for t in parsed):
        fail("BAD_OLEAN_SHA256_MANIFEST","all hashes must be SHA256")
    if [t[0] for t in parsed]!=names:
        fail("BINARY_MANIFEST_ORDER_OR_NAMES_CHANGED","125 names must match topological source list")
    available={p.name for p in oleans.iterdir() if p.is_file()}
    expected={n+".olean" for n in names}
    if available!=expected:
        fail("MISSING_OR_EXTRA_BINARY_OBJECT",str((sorted(expected-available),sorted(available-expected))))
    audited=audit/"checkpoint-oleans"
    available_audit={p.name for p in audited.iterdir() if p.is_file()} if audited.is_dir() else set()
    if available_audit!=expected:
        fail("AUDIT_ARTIFACT_BINARY_SET_MISMATCH","independent second artifact missing compiled files")
    targetdir=math/".lake/build/lib/lean"
    targetdir.mkdir(parents=True,exist_ok=True)
    if (targetdir/(TARGET+".olean")).exists():
        fail("R4D_TARGET_MUST_BE_UNQUALIFIED","the actual theorem is intentionally absent")
    for n,h,source_hash in parsed:
        if exact_source_hashes[n]!=source_hash:
            fail("COMPILED_OBJECT_SOURCE_IDENTITY_MISMATCH",n)
        src=oleans/(n+".olean")
        aud=audited/(n+".olean")
        if not src.stat().st_size or hashlib.sha256(src.read_bytes()).hexdigest()!=h:
            fail("COMPILED_OBJECT_SHA256_MISMATCH",n)
        if hashlib.sha256(aud.read_bytes()).hexdigest()!=h:
            fail("SECOND_ARTIFACT_SHA256_MISMATCH",n)
        dest=targetdir/(n+".olean")
        # The old Gate23 base might carry different binary builds of the
        # same original module. Replace with the coherent Gate60 archive;
        # always verify the resulting bytes against its exact manifest.
        shutil.copyfile(src,dest)
        if hashlib.sha256(dest.read_bytes()).hexdigest()!=h:
            fail("RESTORED_OBJECT_DIGEST_MISMATCH",n)
    print(PREFIX+"_ALL_125_PINNED_BINARY_OBJECTS_RESTORED_AND_HASH_VERIFIED",flush=True)
    # The certified ancestry alone is not enough: the original imports must
    # genuinely be kernel readable under the frozen Lean toolchain and Mathlib.
    probe=math/"SU2BFSSS3LR4DGate61BinaryConsumerProbe.lean"
    probe.write_text(PROBE)
    result=subprocess.run(["timeout","--signal=TERM","--kill-after=5s","180s",
        "lake","env","lean","-DwarningAsError=true",probe.name],
        cwd=math,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    (logs/"binary-import-smoke-lean4.34.1.txt").write_text(result.stdout)
    print(PREFIX+"_KERNEL_IMPORT_SMOKE_EXIT",result.returncode,flush=True)
    if result.returncode:
        fail("PINNED_OLEAN_IMPORT_COMPILATION_FAILED",result.stdout[-6000:])
    reports=re.findall(r"'([^']+)' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)",result.stdout)
    actual=[name for name,_ in reports]
    if actual!=THEOREMS:
        fail("ORIGINAL_THEOREM_REPORT_MISMATCH",str((actual,THEOREMS)))
    for name,axiom_csv in reports:
        axs={a.strip() for a in axiom_csv.split(",") if a.strip()}
        if not axs<=ALLOWED:
            fail("UNQUALIFIED_SMOKE_AXIOMS",name+" "+str(axs))
    if "error:" in result.stdout or "sorryAx" in result.stdout:
        fail("SOURCE_IMPORT_COMPILER_DIAGNOSTIC","unexpected Lean error or sorryAx")
    print(PREFIX+"_ORIGINAL_R4A_R4C1_R4C2_PINNED_KERNEL_IMPORT_STRICT_AXIOMS_PASS",flush=True)
    if (targetdir/(TARGET+".olean")).exists():
        fail("UNEXPECTED_R4D_TARGET_QUALIFICATION","no R4D theorem may be compiled")
    (logs/"verified-source-and-binary-manifest.txt").write_text(
        "\n".join(n+" "+h+" "+source_hash for n,h,source_hash in parsed)+"\n")
    print(PREFIX+"_SUCCESS_125_VERIFIED_ANCESTORS_NO_R4D_THEOREM",flush=True)

if __name__=="__main__":
    if len(sys.argv)!=6:
        raise SystemExit("USAGE: Gate61.py <research_root> <lean_math_root> <oleans_artifact_dir> <audit_artifact_dir> <logs_dir>")
    verify(*(pathlib.Path(p).resolve() for p in sys.argv[1:]))
