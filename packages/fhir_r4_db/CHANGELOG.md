# fhir_r4_db

## [0.9.0]

- Recovered 201 search parameters the generator had been dropping silently. Every one used an `as` cast in its FHIRPath expression, and the expression splitter did not strip the wrapping parentheses, so the parameter compiled to nothing and indexed nothing. `value-quantity`, `value-concept`, `medication` and Immunization `date` were among them, and reverse chaining with `_has` can now chain through them.
- Search index tables now include `searchName` in their primary key. Without it a resource could hold only one parameter per path, so a second parameter reading the same element silently replaced the first. **Schema version 4 to 5**; existing databases migrate automatically on open.
- Added `FhirDao.subjectOfCare`, which resolves any resource to the patient whose record it is by reading the reference search index. Only the subject-of-care parameters count, so a `performer` or `recorder` who happens to be a patient is never returned.
- fhir_r4 ^0.9.0

## [0.8.0]

- No code changes; version aligned with the fhir_r4 0.8.0 family release

## [0.7.0]

- Family release train: cores and companions released in lockstep at 0.7.0
- README: fixed non-compiling examples found by the docs verification pass
- fhir_r4 ^0.7.0

## [0.6.0]

- Family lockstep 0.6.0
- README rewritten against the actual Drift/SQLite API (the previous README documented the removed Hive API)
- Analyzer clean under very_good_analysis

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r4 packages
* Migrated from Hive to SQLite/Drift
* Added SQLCipher encryption support via sqlite3mc
* Updated dependencies

## [0.4.2]

* Added id to xhtml _allowedAttributes
* Updated dependencies

## [0.4.1]

* Updated dependencies
* Simplified password handling: only required in `init()`
* Enhanced key derivation: Replaced static salt with PBKDF2-HMAC-SHA256 key derivation using per-instance salt (100,000 iterations).
* Per-instance salt: each db instance now has a unique salt stored in `.fhir_db_salt` file, provides significantly stronger security against brute-force attacks.
* Improved error handling

## [0.4.0]

* just update to use the most recent fhir_r4 package

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