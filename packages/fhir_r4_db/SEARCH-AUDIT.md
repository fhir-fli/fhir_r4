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
| 3.1.1.4.3 | number "SHALL be a number" | ✅ `InvalidSearchValue` otherwise | above |
| 3.1.1.4.3 | string "case-insensitive and accent-insensitive. May match just the start" | ✅ normalized starts-with | "a string parameter pages in SQL with the starts-with default" |
| 3.1.1.4.3 | token: text, display, code, code/codesystem; identifier label/system/key | ✅ codes and system\|code; `:text` on display and CodeableConcept.text; Identifier system\|value | "token modifiers page in SQL" |
| 3.1.1.4.3 | reference: Reference or canonical | ✅ both extracted | — |
| 3.1.1.4.4 | `:missing` all types except composite; `true` = element omitted or present with no @value | ✅ a primitive with no value writes no row | ":missing pages in SQL" |
| 3.1.1.4.4 | string `:exact` "including casing and combining characters"; `:contains` anywhere, case/accent-insensitive | ✅ `exact_value` as written; `LIKE %v%` on the normalized column | "string modifiers page in SQL" |
| 3.1.1.4.4 | token `:text` "text portion of a CodeableConcept or the display portion of a Coding" | ✅ (was: CodeableConcept.text written as a **code**, so `code=Heart Rate` matched and `:text` did not) | "token modifiers page in SQL" |
| 3.1.1.4.4 | token `:in`, `:not-in` | ✅ over the stored ValueSet's expansion | general path tests |
| 3.1.1.4.4 | token `:below`, `:above` (subsumption, 3.1.1.4.10) | ⛔ **refused** (`UnsupportedSearchModifier`), was answered as a plain match | "a modifier this server does not support is refused" |
| 3.1.1.4.4 | reference `:[type]`, `:identifier` | ✅ | "reference modifiers page in SQL" |
| 3.1.1.4.4 | reference `:above`, `:below` (hierarchies, 3.1.1.4.14) | ⛔ **refused**, was treated as a resource type named "above" | same |
| 3.1.1.4.4 | uri `:below` (search term left-matches the value), `:above` (vice-versa) | ✅ `:below` in SQL; `:above` on the Dart path | "uri :below pages in SQL; :above falls back" |
| 3.1.1.4.4 | "Server SHALL reject any search request … suffixed by a modifier that the server does not support" | ✅ thrown before building, both paths; fhirant maps to 400 | same |
| 3.1.1.4.8 | string: "insensitive to casing and included combining characters"; "Punctuation and non-significant whitespace … should also be ignored" | ✅ (was: combining marks, punctuation and whitespace runs all significant) | "a string search folds case, accents, combining marks, punctuation and whitespace" |
| 3.1.1.4.8 | "equals or starts with … after both have been normalized" | ✅ | "a string parameter pages in SQL with the starts-with default" |
| 3.1.1.4.8 | `:contains` anywhere; `:exact` "entire supplied parameter, including casing and accents" | ✅ | "string modifiers page in SQL" |
| 3.1.1.4.8 | "servers should search the parts of a family name independently" ("Carreno" or "Quinones" match "Carreno Quinones") | ✅ name parts (`name.family/given/prefix/suffix/text`) indexed word by word; `:exact` keeps the whole (was: whole-string starts-with only) | same folding test |
| 3.1.1.4.8 | HumanName/Address search covers the string elements, not `use`/`period` | ✅ extractor | extraction tests |
| 3.1.1.4.8 | phone numbers: "a server might remove all spaces and - characters" (discretion) | ⚠️ punctuation folds to a space on both sides, so `555-1234` = `555 1234` ≠ `5551234` | "extracts ContactPoint value" |
| 3.1.1.4.9 | uri: "matches are precise (e.g. case, accent, and escape) sensitive, and the entire URI must match" | ✅ stored and compared as written (was: scheme/host lower-cased, trailing slash stripped on the stored side only, so an as-written search could miss) | "uri :below and :above page in SQL, for URLs only" |
| 3.1.1.4.9 | `:below` left-matches, `:above` the converse; "only apply to URLs, and not URNs such as OIDs" | ✅ both in SQL (`substr` / `instr`, not LIKE); a URN is matched whole | same |
| 3.1.1.4.9 | canonical URLs: "SHOULD support automatically detecting a \|[version] portion … as a search on the version" | ✅ when the resource type has a `version` parameter | "a uri with \|version searches the version too" |
