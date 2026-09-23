# fhir_r4_cds_hooks

## [Unreleased]

- The CDS Hooks code now lives in `fhir_cds_hooks` 0.13.0, which serves every
  FHIR version and carries resources as JSON. This package re-exports it and
  adds R4B-typed views: `prefetchResources`, `typedResource`, and
  `draftOrdersBundle`-style getters on the hook contexts. `CdsRequest.prefetch`,
  `CdsAction.resource` and the contexts' bundle fields are `Map<String, dynamic>`
  (were `Resource`/`Bundle`); pass `resource.toJson()` in.

## [0.12.0]

- No code changes; version aligned with the fhir_r4 0.12.0 family release

## [0.9.0]

- No code changes; version aligned with the fhir_r4 0.9.0 family release

## [0.8.0]

- No code changes; version aligned with the fhir_r4 0.8.0 family release

## [0.7.0]

- Family release train: cores and companions released in lockstep at 0.7.0
- README example updated for the MedicationRequestStatus rename
- fhir_r4 ^0.7.0

## [0.6.0]

- Family lockstep 0.6.0 (fhir_r4 ^0.6.0)
- README rewritten and verified against the API; analyzer clean under very_good_analysis

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r4 packages
* Initial publication to pub.dev

## [0.1.0]

* Initial release
* CDS Hooks 2.0 model classes with JSON serialization
* Hook context classes for all standard hooks
* CDS client for discovery, invocation, and feedback
* Response builder and prefetch resolver for service implementations
