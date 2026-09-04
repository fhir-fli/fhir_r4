# fhir_r4_db

## [Unreleased]

- **A search returning one page no longer reads every match.** `search` hydrated every matching id — one query and one parse each — built the whole list in memory and then discarded all but the page. The ids are now sorted and cut to the requested page BEFORE any resource is read. Measured on 928,935 MIMIC-IV-on-FHIR resources, `Observation?status=final` with `count: 20` over 813,513 matches: **174.58s → 12.68s**.
- **Paging is stable.** The matching ids were a `Set`, whose iteration order is undefined, so offset 20 was not guaranteed to continue where offset 0 stopped. They are sorted before paging.
- **`searchCount` no longer reads any resource.** It called `search` with no count and returned `results.length`, so counting 813,513 matches parsed all 813,513 resources. The id resolution is its own method now and counting uses that: **217.94s → 10.52s**.
- **Only the id column is read from the index tables**, not every column of every matching row. Selecting whole rows marshalled searchPath, searchName, values, paramIndex and lastUpdated for each of 813,513 matches to keep one string. Converted for token, string, date, number, quantity and uri. Measured on the same 928,935 resources, warm: token search **12.68s → 5.97s**, count **10.52s → 6.25s**, a date search **48.28s → 5.34s** against the published 0.12.0.
- **The value indexes are created by this package.** Every search table's primary key is `(resource_type, id, search_path, search_name, param_index)`, whose leading columns are what a search produces, not what it filters on, and this package created no index on any value column. fhirant had created them itself since its first schema, so it never showed the problem; any other consumer got a full scan per resource type on every search. Twelve indexes now, one per value column, including one on `quantity_value` that fhirant's list never had. Schema 6 → 7.
- **The database is ANALYZEd when it has no statistics.** Without `sqlite_stat1` the planner guessed, and on a 5 GB database it chose the primary key for a `SELECT DISTINCT id … WHERE reference_id_part = ?`, whose leading column matched 2.9 million rows: 0.01s became 10.35s. With statistics the same query is 0.00s. `ensurePlannerStatistics` runs on create, on upgrade, or when the table is missing. **It and `createValueIndexes` are public** because a subclass that overrides `migration` — fhirant does — replaces `beforeOpen` and `onUpgrade` wholesale and has to call them itself.
- **The page is cut in SQL for a single token parameter.** `status=final` alone, with `_count=20`, used to have SQLite hand every one of 813,513 ids to Dart so Dart could keep 20. For one plain token parameter — one repetition, no modifier, no comma, no `_has`, no `_sort` — the resolver now runs `ORDER BY id LIMIT count OFFSET offset` itself. Measured on 928,935 resources, warm: **5.13s → 1.19s**, of which 0.55s is SQLite finding the page and the rest is reading 20 resources. Every other shape still takes the general path; widening this to several parameters means `INTERSECT` across the index tables.
- **Several token parameters page in SQL too.** Each further plain token parameter becomes `id IN (SELECT id … WHERE …)` on the first one's select, through Drift's `isInQuery`, so SQLite intersects the parameters and stops at the page. Four tests pin stable paging, intersection rather than union (a mutation to union fails with the exact wrong rows), and agreement with the general path. `status=final AND code=227969`, 20 rows, measured at 2.10s — **under a load average of 7.3 from an unrelated process**, on a run where the single-parameter figure read 2.74s against 1.19s clean, so the true figure is lower and was not obtainable.
- A sort still reads every match before paging, because ordering has to happen before the page can be chosen. That, and resolving the ids in Dart rather than in SQL, are what the remaining ~10s is.

## [0.12.0]

- **A save that cannot be indexed now fails instead of succeeding quietly.** `_updateSearchParameters` caught every exception, printed it and returned `false`, and `saveResource` ignored that `false` and returned the resource. A record could therefore be stored with no index rows while the caller was told the save had worked, and it was then invisible to every search — a wrong answer rather than an error. The failure propagates now.
- **`saveResource` writes the resource, its history row and its index rows in one transaction**, so a failure part way through leaves the store as it was rather than leaving a resource nothing can find. A failed update keeps the previous version.
- `FhirDao.extractSearchParameters` is a `@visibleForTesting` field holding the generated extractor, which is what lets a test make indexing fail. Production behaviour is unchanged.

## [0.11.0]

- **A repeated search parameter is an AND, and a comma is an OR.** R4 3.1.1.4.17 gives the two separators different meanings: `?given=Anna&given=Beth` asks for records having *both*, `?given=Anna,Beth` for records having *either*. Every value handed to `search` was previously treated as one OR group, so the AND form returned the OR answer. Each element of a parameter's value list is now one repetition, and the elements are intersected; the comma split happens inside each element, where FHIR's escaping applies, so `name=Clinic\, North` stays a single value rather than becoming two.
- The comma split belongs here rather than in a caller: it needs the escaping rules and the parameter's declared type, and a caller that splits first turns an OR into an AND with no way for this package to tell the difference.

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