# fhir_r4_cql

## [Unreleased]

- **The June 2026 suite is back** (2,283 cases: the cqf CqlTestSuite, error and timezone suites, the engine test files, the fourteen exercise libraries, WHO measles): deleted 2026-07-07 as "stale", restored verbatim 2026-10-06 and brought to 0 failures with cql main. Every pin asserts the measured answer and cites the spec sentence it disagrees with.
- **The boundary contract with the cql engine** (measured 2026-10-07 against that suite): `resolvePath` hands a FHIR primitive, or a composite the model info maps (Quantity, Coding, CodeableConcept, Period, Range, Ratio), to the engine as its System value; a value that crossed the boundary still `is` its FHIR type (`O.value is Quantity` over a converted Quantity); a map with no `resourceType` is a CQL Tuple (ELM 04, Property: "the source may be a Tuple") whose element is the key, instead of being handed to `Resource.fromJson`, which threw and stopped the whole CqlTestSuite. `test/r4_boundary_contract_test.dart`.

## [0.13.0]

- **Re-exports cql 0.7.0** (breaking there: `To*`, `ConvertsTo*` and the
  `resolve*Ref` lookups answer null where they threw; impossible dates are
  refused with a `FormatException`). Reads definitions through
  fhir_r4_path 0.13.0's `TypedResourceCache`. Every catch names what it
  catches.

## [0.12.0]

- No code changes; version aligned with the fhir_r4 0.12.0 family release

## [0.9.0]

- No code changes; version aligned with the fhir_r4 0.9.0 family release

## [0.8.0]

- Carries the `memberOf` behavior change from fhir_r4_path ^0.8.0 — an invariant or expression using `memberOf` against a value set that cannot be resolved now throws rather than silently answering no. See the fhir_r4_path 0.8.0 entry
- fhir_r4 ^0.8.0

## [0.7.0]

- Family release train: cores and companions released in lockstep at 0.7.0
- Web/WASM compatible transitively (fhir_r4_path 0.7.0 removed the last dart:io in the dependency chain)
- fhir_r4 ^0.7.0, fhir_r4_path ^0.7.0

## [0.6.0]

- Rebuilt as a thin FHIR R4 binding over the model-independent [cql](https://pub.dev/packages/cql) engine: this package now provides the R4ModelResolver and R4TerminologyProvider implementations (and re-exports package:cql); the translator and engine themselves live in cql
- Family version lockstep: depends on cql ^0.6.0, fhir_r4 ^0.6.0, fhir_r4_path ^0.6.0, ucum ^0.9.0
- Rewrote README for the new architecture; removed stale engine-era docs

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r4 packages
* Initial publication to pub.dev
* CQL (Clinical Quality Language) engine implementation
* 98.5%+ CQF test pass rate
