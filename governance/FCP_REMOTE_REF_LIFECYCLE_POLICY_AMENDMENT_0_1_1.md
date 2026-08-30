# FCP Remote-Ref Lifecycle Policy Amendment 0.1.1

**Status:** ACTIVE_UPON_CANONICAL_INTEGRATION  
**Amends:** `governance/FCP_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_POLICY_0_1_0.md` Sections 8–10  
**Operation class:** repository governance / provenance hygiene  
**Scientific method change:** NO  
**Scientific result change:** NO

## 1. Purpose

The 0.1.0 lifecycle policy correctly protects unique failed, rejected, or divergent scientific provenance, but it does not distinguish that provenance from temporary execution machinery used to build, qualify, diagnose, or publish candidates.

Empirical repository use has shown that treating every nonancestor automation commit as archive-worthy creates a pathological substitution:

```text
REMOTE_BRANCH_CLUTTER
-> ARCHIVE_TAG_CLUTTER
```

This amendment adds narrow, machine-testable deletion classes while preserving the archive-first rule for any branch that carries unique scientific or governance content.

## 2. New lifecycle classes

### 2.1 `EPHEMERAL_EXECUTION_SCAFFOLD`

A non-main branch may be classified as `EPHEMERAL_EXECUTION_SCAFFOLD` only when **all** net branch-only paths since its merge base with current `main` belong to the frozen ephemeral allowlist:

```text
.github/**
automation-trigger*.txt
```

Typical qualifying content includes temporary GitHub Actions workflows, builder/diagnostic scripts under `.github/`, and explicit automation trigger files.

A branch name, commit message, or `automation/` prefix is **not** sufficient evidence by itself.

### 2.2 `CANONICAL_CONTENT_PLUS_EPHEMERAL_SCAFFOLD`

A non-main branch may be classified as `CANONICAL_CONTENT_PLUS_EPHEMERAL_SCAFFOLD` when:

1. every non-ephemeral path changed by the branch exists at current `main` with the **exact same Git blob identity**, or the branch-side deletion is also absent from current `main`; and
2. every remaining unmatched path belongs to the frozen ephemeral allowlist above.

This class covers transport or qualification branches whose scientifically relevant content is already byte-preserved canonically while only execution substrate remains unique.

### 2.3 `CONTENT_SUBSUMED_NONANCESTOR`

A non-main branch may be classified as `CONTENT_SUBSUMED_NONANCESTOR` when every net changed path at its tip is already represented identically in current `main`, despite commit-object ancestry differing because of publication reconstruction, content-equivalent integration, or derived rebinding.

```text
COMMIT_IDENTITY_DIFFERENCE
+
NO_UNIQUE_CONTENT_DIFFERENCE
=
CONTENT_SUBSUMED_NONANCESTOR
```

## 3. Deletion disposition

The following classes are delete-eligible after the existing exact-ref race gate:

```text
INTEGRATED_REDUNDANT
EPHEMERAL_EXECUTION_SCAFFOLD
CANONICAL_CONTENT_PLUS_EPHEMERAL_SCAFFOLD
CONTENT_SUBSUMED_NONANCESTOR
```

These classes do **not** require creation of an `archive/` tag solely to permit branch deletion.

Rationale:

- `INTEGRATED_REDUNDANT` history is already reachable from `main`;
- `CONTENT_SUBSUMED_NONANCESTOR` contains no unique retained content;
- the two ephemeral classes contain no unique scientific/governance content outside the frozen execution allowlist.

## 4. Archive-first classes remain unchanged

Any branch with a changed non-ephemeral path whose branch-side content is not byte-identical to current `main` remains outside the new deletion exception.

Such a branch must be classified under the existing 0.1.0 policy as appropriate, including:

```text
DIVERGED_HISTORICAL_PROVENANCE
FAILED_OR_REJECTED_PROVENANCE
UNRESOLVED_REQUIRES_REVIEW
ACTIVE_OR_CURRENTLY_USEFUL
```

In particular, earlier scientific candidates, preregistrations, handoffs, comparison results, source records, audits, or governance artifacts that differ from their canonical descendants remain archive-first unless separately adjudicated otherwise.

## 5. Required machine checks before deletion

Before deleting a branch under one of the new classes, the operator must:

1. fresh-read current `main` and the exact remote branch tip;
2. compute the merge base and net changed paths;
3. classify every changed path as ephemeral or non-ephemeral using the frozen allowlist;
4. compare Git blob identities for every non-ephemeral path against current `main`;
5. stop if any non-ephemeral mismatch exists;
6. confirm the branch is not the only live boundary for an active or pending operation;
7. re-read the exact branch tip immediately before deletion;
8. never force-move `main` as part of cleanup.

```text
BRANCH_NAME_HEURISTIC_ONLY = FORBIDDEN
COMMIT_MESSAGE_HEURISTIC_ONLY = FORBIDDEN
NON_EPHEMERAL_BLOB_MISMATCH = ARCHIVE_OR_REVIEW_REQUIRED
```

## 6. Frozen ephemeral allowlist

The ephemeral allowlist is intentionally narrow:

```text
.github/**
automation-trigger*.txt
```

Adding another path family requires a prospective policy amendment. This prevents the cleanup exception from expanding silently into scientific or governance directories.

## 7. Provenance boundary

This amendment does not declare execution history scientifically meaningless. GitHub Actions run logs, workflow-run identities, and canonical handoffs may still document how an accepted result was produced. It establishes only that temporary execution commits do not require permanent Git refs when they contain no unique scientific or governance content.

```text
EXECUTION_PROVENANCE != SCIENTIFIC_CONTENT_PROVENANCE
```

The latter remains protected by the existing archive-first rule.

## 8. Scientific firewall

Nothing in this amendment authorizes:

```text
SOURCE_SEARCH
SOURCE_ADMISSION
FRAMEWORK_STATUS_CHANGE
K1_K10_CHANGE
PAIRWISE_COMPARISON
CONVERGENCE_CREDIT
RECURRENCE_RECOMPUTATION
EMPIRICAL_CLASS_CHANGE
NUMBERED_PHASE_SELECTION
```

## 9. Activation

Upon canonical integration, this amendment prospectively controls remote-ref cleanup together with Policy 0.1.0. Where Sections 8–10 of 0.1.0 would require an archive tag solely because an otherwise disposable execution branch has a unique commit object, this amendment controls if and only if the strict path/blob gates above pass.
