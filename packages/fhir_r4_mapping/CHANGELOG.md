# fhir_r4_mapping

## [Unreleased]

- **`FhirDateTimeBaseBuilder.valueDateTime` honours the offset**, the same change as in the core package: a value with `Z` or an offset comes back in UTC at the instant it denotes; one without stays local.
- **A map that leaves a required element unset now says so usefully.** `transformBuilder` ends in `result.build()`, which is `Type.fromJson(toJson())`, and `fromJson` dereferences the required elements — so an unset one surfaced as `Null check operator used on a null value`, naming neither the type nor the element, inside an OperationOutcome the caller could do nothing with. The failure now reports the target type and the elements the map actually did set, which is the list the missing one is absent from.

## [0.12.0]

- No code changes; version aligned with the fhir_r4 0.12.0 family release

## [0.9.0]

- No code changes; version aligned with the fhir_r4 0.9.0 family release

## [0.8.0]

- Carries the `memberOf` behavior change from fhir_r4_path ^0.8.0 — an invariant or expression using `memberOf` against a value set that cannot be resolved now throws rather than silently answering no. See the fhir_r4_path 0.8.0 entry
- fhir_r4 ^0.8.0

## [0.7.0]

- BREAKING: `MedicationrequestStatusBuilder` -> `MedicationRequestStatusBuilder` and `MessageheaderResponseRequestBuilder` -> `MessageHeaderResponseRequestBuilder` (with their `...BuilderEnum` companions), matching the core enum rename (GH fhir_r4#34). Old names remain as deprecated typedef aliases
- Web/WASM compatible transitively (fhir_r4_path 0.7.0 removed the last dart:io in the dependency chain)
- fhir_r4 ^0.7.0, fhir_r4_path ^0.7.0

## [0.6.0]

- Family lockstep 0.6.0; fhir_node dependency now declared explicitly
- FHIRPath host services migrated to the post-split fhirpath engine API
- xml constraint widened to '>=6.6.1 <8.0.0'
- README rewritten and verified against the API; analyzer clean

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r4 packages
* Updated dependencies

## [0.4.2]

* Added id to xhtml _allowedAttributes
* Updated dependencies

## [0.4.1]

* Dependencies updated

## [0.4.0]

* First time publishing this. 
* Performs parsing of FHIR maps
* Performs application of FHIR maps

## [0.3.0]

* Most of the details are here https://fhir-fli.github.io/fhir_fli_documentation/docs

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