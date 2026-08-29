# fhir_r4_path

## [0.9.0]

- No code changes; version aligned with the fhir_r4 0.9.0 family release

## [0.8.1]

- Fixed: validating a `Coding` lost the code system's `display`. 0.8.0 routed `validateCodeWithCoding` through the value-set checker so that `Coding.memberOf` would actually consult the value set; the checker answered membership but dropped the display it had already resolved, so every other caller — the FHIR Mapping engine among them — produced codings with no display. The checker now carries the display out with the answer, and `memberOf` keeps its 0.8.0 semantics

## [0.8.0]

- BREAKING: `memberOf` now throws `PathEngineException` when the value set cannot be resolved, instead of returning an empty collection. The spec is explicit ("If the valueset cannot be resolved as a uri to a value set, an error is thrown"), and the old behavior made `where(code.memberOf(...)).count()` answer a confident `0` that a caller could not distinguish from a genuine none
- BREAKING: `memberOf` now asks only whether the code is in the value set, not whether it is also valid in its own code system. A value set enumerating SNOMED concepts is answerable from the enumeration alone, and SNOMED is licensed — the wider question returned `false` offline for a code the value set plainly lists. The operator form (`memberOf(...)` as an operation) had both defects and now matches the function form
- fhir_path ^0.14.0
- fhir_r4 ^0.8.0

## [0.7.0]

- BREAKING: `ClientLogger.logFile` (dart:io `File?`) -> `logFilePath` (`String?`), part of making the package web/WASM-compatible
- Web/WASM compatible: dart:io usage (client logger, terminology cache) now behind conditional imports; `universal_io` dependency removed
- Docs: environment-variable keys carry no `%` prefix
- fhir_r4 ^0.7.0

## [0.6.0]

- Rebuilt as a thin FHIR R4 binding over the model-independent [fhir_path](https://pub.dev/packages/fhir_path) engine (fhir_path ^0.13.0): version-specific model resolution lives here, the engine logic in fhirpath
- Full ported FHIRPath conformance suite green
- walkFhirPath/parseFhirPath/executeFhirPath remain available but deprecated — use FHIRPathEngine.create(...).parse()/evaluate()
- README and example rewritten around the FHIRPathEngine API; analyzer clean

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r4 packages
* Updated dependencies

## [0.4.5]

* Updated dependencies
* Minor lexing fixes

## [0.4.4]

* Updated dependencies
* Fixed parser support for negative numbers at start of expressions (e.g., `-3 != 3`)
* Uncommented and verified date timezone comparison tests (testDateNotEqualTimezoneOffsetBefore, testDateNotEqualTimezoneOffsetAfter, testDateNotEqualUTC)
* Removed unused variables (operandOperation, operandOpNext) from execute function
* Fixed compilation error by commenting out export for non-existent value_set_expansion_extensions.dart file
* Refactored and broke FhirPathEngine into multiple files for ease of maintenance

## [0.4.3]

* Naming consistency: ResourceCache, CanonicalResourceCache, OnlineResourceCache

## [0.4.2]

* Simplified CanonicalResourceManager
* Added OnlineResourceManager


## [0.4.1]

* Updated engine to work better with mapping
* Updated Lexer to work better with mapping

## [0.4.0]

* just update to use the most recent fhir_r4 package
* also changed to universal_io so no issues using with web
* added example

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