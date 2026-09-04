# Search audit against R4B search.html, section by section

Started 2026-09-04. Every numbered section of
https://hl7.org/fhir/R4B/search.html read verbatim against `lib/src/fhir_dao.dart`,
with a test per rule in `test/`. **The release waits until every row is ✅ or ⛔
(server's job, not this package's).** Measurements are on the 928,935-resource
MIMIC-IV-on-FHIR demo unless stated.

| § | Rule (quoted) | This package | Test |
|---|---|---|---|
| 3.1.1.3 | "Empty parameters are not an error - they are just ignored" | ✅ ignored (was: whole search empty) | `search_paged_in_sql_test` "an unknown parameter is ignored, an empty one too" |
| 3.1.1.3 | "servers SHOULD ignore unknown or unsupported parameters" (strict is the client's `Prefer` header, the server's job) | ✅ ignored (was: whole search empty via a type-guessing path) | same |
| 3.1.1.3 | "Where the content of the parameter is syntactically incorrect, servers SHOULD return an error" | ✅ throws `InvalidSearchValue` for date, number, quantity (was: empty set) — **fhirant must map it to 400** | "a date value that is not a date is an error", "a number value that is not a number is an error" |
| 3.1.1.3 | logical miss (unknown subject, unknown code) → empty set, not an error | ✅ | throughout |
| 3.1.1.4.1 | `_id`: "servers SHALL use exact match … always case sensitive", no system | ✅ `resources.id = ?` (BINARY collation) | "_id and _lastUpdated page in SQL" |
| 3.1.1.4.1 | `_lastUpdated=gt2010-10-01` | ✅ same range rule as every date | "_lastUpdated uses the same semantics" |
| 3.1.1.4.1 | `_tag`, `_security` token; `_profile` on `meta.profile`; `_source` | ✅ indexed (were never indexed; schema 9 fills) | "_tag, _security, _profile and _source page in SQL" |
| 3.1.1.4.1 | `_profile=Profile/lipid` "relative and refers a local profile on the same server"; prose says reference, the R4B definition says **uri** | ⚠️ follows the definition (uri, exact). In R5/R6 the definition is reference and `StructureDefinition/lipid` matches the canonical's tail. | — |
| 3.1.1.4.1 | `_content`, `_text`, `_list`, `_query`, `_type`, `_filter` | ⛔ `_filter` is fhirant's; `_text`/`_content` need full-text (see 3.1.1.4.20); `_list` 3.1.1.4.22; `_type` 3.1.1.4.24 | below |
| 3.1.1.4.2 | "matches if any of the paths contain matching content" (multi-path parameters) | ✅ every path is a row with the same `searchName` | e.g. `combo-code` |
| 3.1.1.4.2 | only `_id` is required; custom parameters allowed | ⚠️ a parameter not in the generated definitions is ignored (nothing indexes it). Custom SearchParameter support is a separate design item (memory `fhirant-search-indexing-gap`). | — |
