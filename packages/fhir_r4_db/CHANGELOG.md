# fhir_r4_db

## [0.10.0]

- **Search modifiers and comparators now work.** They were read off the END of the value (`family=Smith:exact`, `birthdate=1980-01-01:gt`), a syntax FHIR does not have, so every modifier and every comparator was unreachable from a conforming client. Measured through a REST server before and after: 7 of 41 queries returned anything, now all 41 do. The modifier is taken from the parameter name and the comparator from the front of the value, as the specification defines them.
- A search parameter is now dispatched on its **declared type**, read from the published SearchParameter definitions and generated into `search_parameter_types.dart`. Nothing is inferred from the shape of a value any more, so a name beginning with a comparator's two letters — Apgar, Nelson, Ledger — is no longer mistaken for one. Comparators come from each parameter's own `comparator` element, so a custom parameter that narrows the set is honoured.
- A key is split at the first `.` or `:` and the remainder carried whole, which is how chained (`subject:Patient.name`) and reverse-chained (`_has:Observation:patient:code`) parameters are parsed without guessing what a colon means.
- **FHIR's escaping is honoured.** `$`, `,` and `|` inside a value are written with a leading backslash, and were previously split on regardless: `Organization?name=Clinic: SOUTH Wing` returned `Clinic: North Wing`. Values are no longer truncated at a colon, and `code=a\,b` is one code.
- **`:exact` is exact, and accents fold.** Strings are indexed twice: normalized for the default and `:contains` searches, verbatim for `:exact`. Folding covers accents as well as case, so `family=Munoz` finds `Muñoz` and `family:exact=munoz` no longer matches `Munoz`. **Schema version 5 to 6**; the string index is rebuilt from the stored resources on open, so nothing is left half-indexed.
- `eq` and `ne` were missing entirely from date, quantity and number comparators.
- `:missing` answers both `true` and `false`. `:identifier` on a reference tests `Reference.identifier` rather than the referenced resource. `:above` and `:below` on a uri are reachable. `subject:Patient=23` behaves as `subject=Patient/23`.
- An unsupported modifier now throws `UnsupportedSearchModifier` instead of being ignored, which R4 3.1.1.4.4 makes a SHALL: ignoring one silently changes what a query means. An unknown *parameter* is still ignored, as the same page says it should be.
- The search parsing API is exported so a server can catch that failure and return the 400 the specification requires.

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