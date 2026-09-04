# fhir_r4_db

## [Unreleased]

- **`InsurancePlan?name=` is indexed.** Its expression is `name | alias`, with no resource prefix, and the generator dropped it silently; it was the one R4 search parameter with no extractor row. Generator `8b1f1ed`.
- **A search returning one page no longer reads every match.** `search` hydrated every matching id — one query and one parse each — built the whole list in memory and then discarded all but the page. The ids are now sorted and cut to the requested page BEFORE any resource is read. Measured on 928,935 MIMIC-IV-on-FHIR resources, `Observation?status=final` with `count: 20` over 813,513 matches: **174.58s → 12.68s**.
- **Paging is stable.** The matching ids were a `Set`, whose iteration order is undefined, so offset 20 was not guaranteed to continue where offset 0 stopped. They are sorted before paging.
- **`searchCount` no longer reads any resource.** It called `search` with no count and returned `results.length`, so counting 813,513 matches parsed all 813,513 resources. The id resolution is its own method now and counting uses that: **217.94s → 10.52s**.
- **Only the id column is read from the index tables**, not every column of every matching row. Selecting whole rows marshalled searchPath, searchName, values, paramIndex and lastUpdated for each of 813,513 matches to keep one string. Converted for token, string, date, number, quantity and uri. Measured on the same 928,935 resources, warm: token search **12.68s → 5.97s**, count **10.52s → 6.25s**, a date search **48.28s → 5.34s** against the published 0.12.0.
- **The value indexes are created by this package.** Every search table's primary key is `(resource_type, id, search_path, search_name, param_index)`, whose leading columns are what a search produces, not what it filters on, and this package created no index on any value column. fhirant had created them itself since its first schema, so it never showed the problem; any other consumer got a full scan per resource type on every search. Twelve indexes now, one per value column, including one on `quantity_value` that fhirant's list never had. Schema 6 → 7.
- **The database is ANALYZEd when it has no statistics.** Without `sqlite_stat1` the planner guessed, and on a 5 GB database it chose the primary key for a `SELECT DISTINCT id … WHERE reference_id_part = ?`, whose leading column matched 2.9 million rows: 0.01s became 10.35s. With statistics the same query is 0.00s. `ensurePlannerStatistics` runs on create, on upgrade, or when the table is missing. **It and `createValueIndexes` are public** because a subclass that overrides `migration` — fhirant does — replaces `beforeOpen` and `onUpgrade` wholesale and has to call them itself.
- **The page is cut in SQL for a single token parameter.** `status=final` alone, with `_count=20`, used to have SQLite hand every one of 813,513 ids to Dart so Dart could keep 20. For one plain token parameter — one repetition, no modifier, no comma, no `_has`, no `_sort` — the resolver now runs `ORDER BY id LIMIT count OFFSET offset` itself. Measured on 928,935 resources, warm: **5.13s → 1.19s**, of which 0.55s is SQLite finding the page and the rest is reading 20 resources. Every other shape still takes the general path; widening this to several parameters means `INTERSECT` across the index tables.
- **Several token parameters page in SQL too.** Each further plain token parameter becomes `id IN (SELECT id … WHERE …)` on the first one's select, through Drift's `isInQuery`, so SQLite intersects the parameters and stops at the page. Four tests pin stable paging, intersection rather than union (a mutation to union fails with the exact wrong rows), and agreement with the general path. `status=final AND code=227969`, 20 rows: **0.73s** on a clean machine, faster than the single parameter's 1.12s because the intersection narrows the set before the page is cut. (A first reading of 2.10s was taken under a load average of 7.3 from an unrelated process, with every query on that run doubled; the clean re-run attributes the figure.)
- **Date parameters page in SQL, alone or with tokens.** The date WHERE is a builder now (`_dateCondition`), and the SQL-paged path takes any mix of token and date parameters, each nested on its own index table. `Observation?date=gt2100-01-01`, 20 rows: **4.80s → 0.02s**, with the token figures unchanged on the same run as the control. That value matches nothing, which is the case an index wins outright; a value matching a quarter of the table costs what it costs. Three tests: date paging with the prefix honoured, a token and a date intersecting across two tables, and a non-date falling back.
- **String parameters page in SQL.** The default starts-with match is a builder (`_stringCondition`); `:exact` and `:contains` still take the general path. `Observation?value-string=no`, ~39,000 matches, 20 rows: **0.94s → 0.01s**, A/B by stashing the builder, token control unchanged. Three tests: starts-with not contains, string ∩ token, and a modifier falling back.
- **Reference, number, quantity and uri parameters page in SQL.** Each is a builder now (`_referenceCondition`, `_numberCondition`, `_quantityCondition`, `_uriCondition`), so every parameter type except composite and special pages in SQL and intersects with the others there. A/B against a worktree of the previous commit, interleaved twice under a load average of 4–5 (the unchanged `status=final` query moved 1.5–2.6s between runs on both arms, which is the noise band): `subject=Patient/…&code=227969`, one patient's 48,554 Observations against a code with 19,330, 20 rows: **0.72s / 0.44s → 0.08s / 0.12s**. `value-quantity=gt100`, 50,030 of 366,433 rows, 20 rows: **2.13s / 2.24s → 0.01s / 0.01s**. Number and uri have no rows in the MIMIC data, so they are pinned by tests only.
- **A quantity value in the specification's own form matched nothing.** R4B 3.1.1.4.11 writes it `[prefix][number]|[system]|[code]` — its example is `value-quantity=5.4|http://unitsofmeasure.org|mg`. This package read a three-part value as `system|number|code`, so the URL was parsed as the number, failed, and the search returned an empty set. Measured: `value-quantity=gt100|<system>|mg/dL` returned **0 rows** where 4,098 match; it returns them now. The two-part form that used to be accepted (`5|mg`) is not one the section defines and is no longer read; `5.4||mg` matches "either the code or the stated human unit", as the section says. A consumer whose tests assert the old `system|number|code` order (fhirant's `search_test.dart` does) will see them fail, correctly.
- **`eq`, `ne`, `sa`, `eb` and `ap` on number and quantity follow R4B 3.1.1.4.5–6.** A search number has an implicit range, half a unit of its last significant digit either side: `100` is [99.5, 100.5), `100.00` is [99.995, 100.005), `5.4` is [5.35, 5.45). `eq` ("the range of the search value fully contains the range of the target value") was exact equality, so `probability=0.3` did not find 0.31; `ne` was its complement; `sa` and `eb` were not handled at all and fell into `eq`, which is a wrong answer for both. `gt`/`lt`/`ge`/`le` stay exact, as the text says ("the implicit precision of the number is ignored"). `ap` is the range widened by the recommended 10%. The bounds are built as decimal strings and parsed, not as `value ± half` in floating point: `5.4 - 0.05` is 5.3500000000000005, which would have put a stored 5.35 outside the range that contains it. `implicitRange` is exported. One example in 3.1.1.4.6 (`1e2` as [95, 105), "1 significant figure") contradicts the rule as worded and is not followed; HAPI matches `eq` exactly by a recorded decision with the spec editor and Microsoft's server widens by the last decimal place, so neither follows the text either — the text is what is implemented, and the deviation from both is documented at `_numericPrefixCondition`.
- **Date search follows R4B §3.1.1.4.7: every value is a range, and Period and Timing values are indexed.** Three defects, found together on the 928,935-resource MIMIC-IV load. (1) A Period-valued date parameter wrote **no index row at all** — the extractor handled date, dateTime and instant and returned nothing for anything else — so `Encounter?date=…` (Encounter.period), every `effectivePeriod` and `performedPeriod` silently returned nothing: 637 Encounters, zero `Encounter.date` rows. (2) `eq` was equality on one stored instant, so `date=2013-01-14` matched only a value at exactly midnight and `date=2013` only New Year's; the section says "the date 2013-01-10 specifies all the time from 00:00 on 10-Jan 2013 to immediately before 00:00 on 11-Jan 2013". `ne` was its complement, `sa`/`eb` were `gt`/`lt`, and `ap` was ±1 day. (3) An explicit offset was discarded on the way in (fixed in `fhir_r4` itself, same release). Now every row is `[date_value, date_value_end)`: a date or dateTime covers one unit of its own precision, a Period runs from its start to the end of its end value's own range, with a missing bound stored as null ("a missing lower boundary is 'less than' any actual date. A missing upper boundary is 'greater than' any actual date"), and a Timing by "the outer limits" of its events and bounds period. The search value gets the same range, and the prefixes are the §3.1.1.4.5 range rules — every worked example in §3.1.1.4.7 is a test, including the three open-ended Periods under `ge`, `le`, `sa` and `eb`. `_lastUpdated` goes through the same rule. The search-value grammar is checked whole before parsing: `2013-1-4` used to parse as the year 2013. **Schema 7 → 8: the date index is dropped and rebuilt from the stored resources** (`rebuildDateIndex`, public for a subclass that overrides `migration`); measured **126s for 928,935 resources**, 907,477 → 921,632 rows. Measured after: `Observation?date=2116-12` **0 rows → 20 rows, 0.00s**; `Encounter?date=ge2110` **0 → 20, 0.01s**; `date=2137&status=final` 0 → 20 rows at 2.17s, which is the nested `status` subquery over 813,513 rows being materialised — the same query with `status` first is 0.6s, so the order of the parameters decides the outer select and that is the next thing to fix.
- **A multi-parameter search picks its outer select by size.** SQLite cannot: `sqlite_stat1` holds one average per index (`idx_token_value`: 25 rows per value) and this build has no STAT4, so the planner reads `status=final` as 25 rows when it is 813,513 and always walks it through the value index followed by a sort that must see every row before the `LIMIT`. Each parameter is now probed for its row count — `SELECT count(*) FROM (SELECT id … LIMIT n)`, counted inside SQLite, escalating 2,000 then 100,000 so the common case costs a few milliseconds — and the smallest set is the outer select; a nested set known to be small is materialised (`id IN (SELECT …)`), one that is not is a correlated `EXISTS` on an alias of its table, whose cost is the outer's size rather than the inner's. When every set exceeds the cap the parameters are taken in the order given with `IN`, as before. Measured on the MIMIC load, 20 rows, A/B interleaved twice: `status=final&code=227969` **0.64s → 0.23s**; `date=2137&status=final` **2.39s → 0.21s**; `subject=<963-record patient>&code` **0.10s → 0.01s**; `subject=<48,554-record patient>&code` **0.06s → 0.20s** — the one regression, a patient with more records than the second probe stage resolves cheaply, paid for by the probes themselves. A single-parameter search is not probed and is unchanged.
- **A sorted search pages in SQL, and a sort over more than ~32,000 matches no longer throws.** `_sort` used to read every matching resource, then look up each key with `id IN (<every id>)`, which SQLite caps at 32,766 variables: measured on the MIMIC load, `Observation?subject=<48,554-record patient>&_sort=-date` **threw `too many SQL variables`**, and `status=final&_sort=-date` would have read 813,513 resources first. Now each sort key is a `LEFT JOIN` to its index table with `GROUP BY id`, ordered by `MIN` of the value ascending or `MAX` descending — §3.1.1.5.1, "the sort is based on the item in the set of multiple parameters that comes earliest in the specified sort order" (the old code took `param_index = 0`, whichever value was extracted first) — `NULLS LAST` (SQLite's default for ascending is nulls first), tie-break on id, `LIMIT` in the statement. A string sorts on its normalized column, so case-insensitively as the section SHOULDs. Numbers and dates compare as themselves (the old lookup compared `numberValue.toString()`). Measured, 20 rows: `subject=<963-record patient>&_sort=-date` **0.18s → 0.01s**; the 48,554-record patient **crash → 0.34s**; `status=final&_sort=-date` **6.2s** (813,513 join probes; the previous path was not measurable). The general path's sort — reached only for a search with a modifier, chain, `_has` or comma — derives its keys from the resources through the same extractor that writes the index, so it has no variable limit and the same earliest-value semantics; a test drives every sort case through both paths. A search with no parameter at all (`Observation?_count=20`) pages in SQL from the resources table.
- **A comma (OR) and a repeated parameter (AND) page in SQL.** The SQL-paged path refused both and fell back to reading every match. Each repetition is one condition on its own aliased table; the comma-separated values inside it are ORed on that table, split with FHIR's backslash escaping so `a\,b` stays one value. `FhirDao.lastSearchPagedInSql` (`@visibleForTesting`) says which path a search took, and every paged test now asserts it: a right answer alone proves nothing about the path.
- **Modifiers page in SQL.** `:missing` on every type (`true` as `NOT EXISTS`, `false` as `EXISTS`; a search made only of negated conditions selects from the resources table), string `:exact` and `:contains`, token `:not`, `:text`, `:in` and `:not-in` (an OR over the ValueSet's codes; `:not-in` with an empty expansion excludes nothing), reference `:identifier` and the type modifier (`subject:Patient=23`), uri `:below`. Still on the general path: `:of-type` (the index has no identifier type) and uri `:above` (the stored value as a prefix of the search value). Each modifier has a test that asserts the path taken.
- **`_tag`, `_security`, `_profile` and `_source` are indexed, and `_id` and `_lastUpdated` page in SQL.** The four meta parameters are published against Resource, which the generated extractor's per-type switch could never name, so no index row was ever written for them and the DAO answered them by decoding every stored resource of the type in Dart: measured, `Observation?_profile=<mimic-observation-labevents>` on the 929k-resource MIMIC load took **13.6s**; now **0.08s**, and with `status=final` 0.23s. The extractor writes them on save (generator `dfcab53`), they take the ordinary token and uri builders, and **schema 8 → 9 fills them in for stored resources** (`indexMetaParameters`, public for a subclass that overrides `migration`; 124s for 928,935 resources, reading each resource's `meta` from its JSON rather than parsing the whole resource). `_id` and `_lastUpdated` are conditions on the resources table itself, so both combine with any other parameter in one statement. `searchParameterFor` falls back to the DomainResource and Resource definitions, which is where R4B 3.1.1.4.1's parameters live.
- `Observation?status=final&_sort=-date` at 6.2s is 813,513 primary-key probes for the join. Driving the query from the sort key's own index would stop at the page, and is the next thing to try for a sort over a large set. That, and resolving the ids in Dart rather than in SQL, are what the remaining ~10s is.

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