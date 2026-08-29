# FCP Publication Provenance and Remote-Ref Lifecycle Policy 0.1.0

## 1. Purpose and authority boundary

This governance artifact defines repository-publication provenance and remote-ref lifecycle policy for the Foundational Convergence Program (FCP). It governs how already-qualified repository content is transported, identified, integrated, archived, and cleaned up. It does **not** change Method 0.2.0 scientific adjudication rules, framework taxonomy, source admissibility, K1–K10 semantics, relation classifications, convergence rules, recurrence rules, or empirical status.

```text
POLICY_ID = FCP_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_POLICY_0_1_0
POLICY_CLASS = REPOSITORY_GOVERNANCE
SCIENTIFIC_METHOD_CHANGE = NO
SCIENTIFIC_RESULT_CHANGE = NO
SOURCE_POLICY_CHANGE = NO
```

Authority remains:

```text
GIT = PROVENANCE_AUTHORITY
CANONICAL_MARKDOWN_ARTIFACTS = SCIENTIFIC_AND_GOVERNANCE_AUTHORITY
STRUCTURED_NAVIGATION_LAYER = DERIVED_NAVIGATION_ONLY
CONFLICT_RULE = UNDERLYING_CANONICAL_ARTIFACT_WINS
```

## 2. Qualification identity versus canonical publication identity

FCP distinguishes the identity reviewed before publication from the identity that becomes canonical after publication.

```text
QUALIFICATION_IDENTITY =
PREPUBLICATION_COMMIT_TREE_AND_BLOB_IDENTITY_REVIEWED_FOR_ACCEPTANCE

CANONICAL_PUBLICATION_IDENTITY =
ACTUAL_GIT_IDENTITY_REACHABLE_FROM_CANONICAL_MAIN_AFTER_INTEGRATION
```

Exact prepublication commit-object preservation is preferred when it is practical, but it is not a scientific invariant.

```text
EXACT_PREPUBLICATION_COMMIT_OBJECT_PRESERVATION = PREFERRED_NOT_REQUIRED
SCIENTIFIC_BLOB_PRESERVATION = REQUIRED
ACCEPTED_NONDERIVED_CONTENT_PRESERVATION = REQUIRED
FINAL_LOGICAL_PHASE_TREE_PRESERVATION = REQUIRED_WHERE_NOT_COMMIT_IDENTITY_DEPENDENT
CANDIDATE_TO_PUBLICATION_IDENTITY_MAPPING = REQUIRED
```

A publication commit may differ from its qualification commit solely because of publication-interface metadata or because a derived layer must be rebound to the actual publication identity. Such a difference is not a scientific change if the required content-equivalence gates pass.

## 3. Logical phase boundaries and transport commits

A logical FCP phase or maintenance step does not have to map one-to-one to a single Git commit when the available publication interface performs one atomic commit per content write.

```text
LOGICAL_PHASE_BOUNDARY != SINGLE_GIT_COMMIT_REQUIREMENT
PUBLICATION_COMMIT_COUNT = IMPLEMENTATION_DEPENDENT
INTERMEDIATE_PUBLICATION_TRANSPORT_COMMITS = PERMITTED
INTERMEDIATE_PUBLICATION_TRANSPORT_COMMITS_HAVE_SCIENTIFIC_MEANING = NO
INTERMEDIATE_PUBLICATION_TRANSPORT_COMMITS_ARE_FCP_OPERATIONS = NO
```

The final commit completing the accepted content of a logical phase is its `LOGICAL_PHASE_PUBLICATION_BOUNDARY`. Intermediate transport commits must not receive independent operation-registry rows, convergence credit, scientific interpretation, or numbered-phase status.

## 4. Publication modes

Three publication modes are permitted:

```text
MODE_1 = EXACT_OBJECT_PUBLICATION
MODE_2 = CONTENT_EQUIVALENT_PUBLICATION
MODE_3 = CONTENT_EQUIVALENT_PUBLICATION_WITH_DERIVED_REBINDING
```

`EXACT_OBJECT_PUBLICATION` is preferred when the exact accepted commit objects are already remotely addressable or can be transferred conveniently.

`CONTENT_EQUIVALENT_PUBLICATION` is permitted when the accepted file/blob content can be installed exactly but the publication interface necessarily creates different commit metadata.

`CONTENT_EQUIVALENT_PUBLICATION_WITH_DERIVED_REBINDING` is permitted when later derived files legitimately depend on the actual publication identity of an earlier logical phase.

## 5. Derived-navigation rebinding

The structured navigation layer is derived from canonical content and Git identity. If an accepted publication reconstruction produces a different logical phase commit identity, navigation must truthfully bind the actual publication identity rather than preserve stale candidate bytes.

```text
DERIVED_NAVIGATION_REGENERATION_FOR_ACTUAL_PUBLICATION_IDENTITY = PERMITTED_AND_REQUIRED_WHEN_NEEDED
DERIVED_NAVIGATION_REBINDING = NOT_SCIENTIFIC_MUTATION
UNRELATED_NAVIGATION_CHANGE = FORBIDDEN
```

The allowed difference between a qualified navigation candidate and its publication form must be auditable and attributable only to the authorized identity rebind or other explicitly declared deterministic publication input.

## 6. Required publication gates

Every publication operation must use gates appropriate to its mode. At minimum:

```text
CANONICAL_BASELINE_RACE_GATE = REQUIRED
QUALIFIED_CONTENT_IDENTITY_CHECK = REQUIRED
UNAUTHORIZED_PATH_CHANGE = FORBIDDEN
PARENTAGE_OR_ANCESTRY_SEMANTICS = REQUIRED
NON_FORCE_MAIN_INTEGRATION = REQUIRED
POST_INTEGRATION_VERIFICATION = REQUIRED
```

Where navigation is affected:

```text
NAVIGATION_CHECK = REQUIRED
DETERMINISTIC_REFRESH_IDEMPOTENCE = REQUIRED
REFERENTIAL_INTEGRITY = REQUIRED
WINDOWS_LINE_ENDING_PORTABILITY = REQUIRED_WHERE_APPLICABLE
```

## 7. Bundle + guarded PowerShell fallback

When direct connector/API object transfer is cumbersome, lossy, unavailable, or creates avoidable operational risk, the preferred fallback is an exact Git bundle plus a guarded local publication script.

```text
BUNDLE_POWERSHELL_FALLBACK = CANONICALLY_PERMITTED
BUNDLE_ROLE = QUALIFICATION_ARCHIVE_AND_EXACT_OBJECT_TRANSPORT
GUARDED_POWERSHELL_ROLE = RACE_GATED_LOCAL_PUBLICATION_OPERATOR
```

A guarded publication script should verify the bundle hash, import/verify the intended objects, re-read remote refs immediately before writes, use ordinary non-force pushes, verify the exact remote result, and stop on any unexpected ref movement or identity mismatch.

This fallback is not scientifically privileged over a safe direct publication interface. It is the preferred operational fallback when it reduces transport complexity while preserving provenance.

## 8. Remote branch lifecycle policy

Canonical scientific and governance state lives on `main`. Remote work branches are noncanonical navigation/provenance aids.

```text
CANONICAL_BRANCH = main
WORK_BRANCH_CANONICAL_STATUS = NONCANONICAL
```

Each non-main branch is classified by live relation to `main` and provenance role:

- `ACTIVE_OR_CURRENTLY_USEFUL` — current work, pending review, or an intentionally retained immediate boundary;
- `INTEGRATED_REDUNDANT` — tip is reachable from `main` and no unique remote-branch history remains;
- `DIVERGED_HISTORICAL_PROVENANCE` — tip contains unique commits outside `main` that remain useful provenance;
- `FAILED_OR_REJECTED_PROVENANCE` — unique noncanonical candidate/checkpoint history whose preservation matters even though it did not become canonical;
- `UNRESOLVED_REQUIRES_REVIEW` — relationship or provenance purpose is unclear.

Disposition rules:

```text
INTEGRATED_REDUNDANT -> DELETE_ELIGIBLE_AFTER_EXACT_REF_VERIFICATION

DIVERGED_HISTORICAL_PROVENANCE ->
ARCHIVE_IMMUTABLE_REF_FIRST__VERIFY__THEN_DELETE_BRANCH

FAILED_OR_REJECTED_PROVENANCE ->
ARCHIVE_IMMUTABLE_REF_FIRST__VERIFY__THEN_DELETE_BRANCH

ACTIVE_OR_CURRENTLY_USEFUL -> RETAIN

UNRESOLVED_REQUIRES_REVIEW -> RETAIN_AND_STOP
```

A branch name is not itself archival authority. Before deleting a branch with unique commits outside canonical ancestry, an immutable archive ref must preserve the exact tip.

## 9. Archive-ref policy

Current FCP archival practice uses lightweight Git tags under `archive/`.

```text
ARCHIVE_REF_NAMESPACE = refs/tags/archive/
ARCHIVE_REF_MUTABILITY = IMMUTABLE
ARCHIVE_REF_FORCE_MOVE = FORBIDDEN
```

For a diverged branch that is archived before deletion, the default name is a stable descriptive tag such as:

```text
archive/<branch-purpose-with-slashes-normalized>
```

If the target archive tag already exists at the exact expected commit, archival is idempotently satisfied. If it exists at any other object, cleanup must stop rather than move the tag.

Integrated redundant branches do not require an additional archive tag solely to permit deletion because their tip and history remain reachable from canonical `main`; canonical artifacts and operation-registry records retain the scientific provenance.

## 10. Branch deletion rules

Branch deletion is repository housekeeping, not scientific adjudication. It is allowed only when:

1. the exact expected branch tip has been re-read immediately before deletion;
2. the branch is classified under this policy;
3. any required archive tag exists at the exact unique tip;
4. no open/pending operation depends on the branch as its only reachable provenance;
5. canonical `main` is not rewritten or force-updated.

```text
FORCE_DELETE_OR_FORCE_MOVE_TO_MASK_MISMATCH = FORBIDDEN
DELETE_MAIN = FORBIDDEN
DELETE_UNRESOLVED_BRANCH = FORBIDDEN
```

A deleted branch does not delete its canonical integrated commits from history. A divergent unique tip remains reachable through its archive tag.

## 11. Publication branch lifecycle

A temporary publication or maintenance branch may be used to stage and verify a candidate. Once canonical `main` has advanced to the exact accepted publication boundary and post-integration verification passes, the staging branch is normally `INTEGRATED_REDUNDANT` and may be deleted in the same separately authorized housekeeping/publication operation.

This permits a clean long-lived remote state without sacrificing canonical history.

## 12. Qualification-to-publication mapping

Whenever qualification and publication identities differ, the operation report or handoff must record at least:

```text
QUALIFIED_COMMIT
QUALIFIED_TREE
PUBLICATION_COMMIT_OR_LOGICAL_BOUNDARY
PUBLICATION_TREE
CONTENT_EQUIVALENCE_RESULT
AUTHORIZED_DERIVED_REBINDING_IF_ANY
```

If a transport chain contains multiple atomic commits, the report must distinguish transport-only commits from logical phase boundaries.

## 13. Scientific firewall

Nothing in this policy authorizes:

```text
SOURCE_SEARCH
SOURCE_ADMISSION
FRAMEWORK_STATUS_CHANGE
K1_K10_CHANGE
PAIRWISE_COMPARISON
CONVERGENCE_CREDIT
RECURRENCE_RECOMPUTATION
EMPIRICAL_CLASS_CHANGE
ATOMIC_CLOCK_CLAIM_ADVANCEMENT
NUMBERED_PHASE_SELECTION
```

Repository transport and ref cleanup may never be used to smuggle scientific reinterpretation into canonical state.

## 14. Policy activation

This policy becomes controlling repository-publication and remote-ref-lifecycle governance when its enclosing housekeeping candidate is canonically integrated.

```text
POLICY_STATUS_AFTER_INTEGRATION = ACTIVE
METHOD_0_2_0_STATUS = UNCHANGED
FRAMEWORK_WINNER = NONE
SCALAR_FRAMEWORK_SCORE = FORBIDDEN
```
