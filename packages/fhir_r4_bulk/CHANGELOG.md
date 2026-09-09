# fhir_r4_bulk

## [Unreleased]

- **Streaming NDJSON: `NdjsonStream.lines` (from a byte stream, chunked anyhow), `resources`, `encode` and `write` (to a sink, flushing every N lines).** The list-shaped `FhirBulk` helpers stay; they hold a whole file, which a server export cannot (fhirant REVIEW-2026-09-06 finding 34: 813k Observations as a list 5.1 GB, streamed 741 MB).
- **Bulk Data Access IG 2.0.0 models a client and a server both read**: `BulkExportKickoff` (from a query map or a POSTed `Parameters`; repeated and comma-delimited values are one list, as export.html requires), `TypeFilter`, `BulkExportFile`, `BulkExportManifest` (checked against export.html's own example response body), `bulkOutputFormats`. The client now reads the complete-status body through `BulkExportManifest`.

## [0.12.0]

- No code changes; version aligned with the fhir_r4 0.12.0 family release

## [0.9.0]

- No code changes; version aligned with the fhir_r4 0.9.0 family release

## [0.8.0]

- No code changes; version aligned with the fhir_r4 0.8.0 family release

## [0.7.0]

- Web/WASM compatible: dart:io usage now behind conditional imports; `universal_io` dependency removed
- README: fixed non-compiling examples found by the docs verification pass
- fhir_r4 ^0.7.0

## [0.6.0]

- Family lockstep 0.6.0 (fhir_r4 ^0.6.0)
- README rewritten and verified against the API; analyzer clean under very_good_analysis

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r4 packages
* Updated dependencies

## [0.4.2]

* Updated dependencies

## [0.4.1]

* Updated dependencies
* Fixed toNdJson() trailing newline bug
* Added error handling to fromNdJson()
* Added polling timeout and max attempts
* Added input validation to BulkImportRequest
* Fixed HTTP client cleanup
* Fixed content-type header handling
* Improved null safety checks

## [0.4.0]

* just update to use the most recent fhir_r4 package

## [0.3.0]

* More robust now, includes import and export, continues to allow compression
* More information here: https://fhir-fli.github.io/fhir_fli_documentation/docs/fhir_r4_bulk

## [0.3.0-2]

* split back up into smaller packages, that seems to be how most people use it

## [0.3.0-1]

* Lots and Lots of changes.
* Once I get Mapping working properly, I'll create some actual documentation

## [0.2.0]

* Getting ready for FlutterCon!
* Updated dependencies
* Added documentation

## [0.1.0+2]

* Added ability to store versionIds as DataTimes instead of just integers (useful for syncing)
* Added a "sync" box in the Hive db. When turned on, saves all resources when updated, to allow easily finding them for syncing.
* Updated to work with updated primitives package (that has a lot more functionality with FhirBase)
* Added a deprecated parser to fhirpath for traversing tests

## [0.1.0+1]

* Overhaul. The packages were getting too big, and most people don't use all of them at the same time. So now, one package, all the functionality.
* Addressed [this issue](https://github.com/fhir-fli/fhir_at_rest/issues/2) pointed out by [fokusfpa](https://github.com/fokusfpa) - by just returning the OperationOutcome
* All FHIR dependencies should now be within this package.
* All dependencies updated except for collection, http_parser, and meta because there are some issues with the flutter version