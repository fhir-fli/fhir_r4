# fhir_r4

## [0.6.1]

- Fix: fractional timezone offsets (+05:30 India, +05:45 Nepal, -03:30 Newfoundland, ...) were truncated to whole hours when rendering the value string (the object held the correct offset; serialization hardcoded ':00' minutes). Round-trips now preserve them; regression tests added
- Tests are now machine-timezone-independent (verified under UTC, Eastern, +05:30 and +05:45)

## [0.6.0]

- Family release train: all fhir-fli packages released in lockstep at 0.6.0
- BREAKING: FhirBase.equalsDeepWithNull and FhirBase.listEquals are now static (they are two-argument null-safe predicates and never used the receiver; matches the reference implementation's static Base.compareDeep). Call them as FhirBase.equalsDeepWithNull(a, b) / FhirBase.listEquals(l1, l2); instance-style calls no longer compile. Restores use outside FhirBase (GH fhir_r4#30)
- FhirBase implements the FhirNode reflection contract (fhir_node ^0.6.0) — the seam the model-independent fhirpath and cql engines build on
- Generated fhirTypeHierarchy table so subtype checks work without a populated canonical-resource cache
- xml constraint widened to '>=6.6.1 <8.0.0'
- README rewritten and verified against the API; analyzer clean under very_good_analysis

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r4 packages
* Updated dependencies

## [0.4.4]

* Fixed getChildrenByName null checks for polymorphic fields
* Added id to xhtml _allowedAttributes

## [0.4.3]

* Fixed issue about DateTimes not setting isUtc when timezone +00:00
* Fixed issue about DateTime equalsDeep with different timezones [Issue 26](https://github.com/fhir-fli/fhir_r4/issues/26)
* Added more flexible fromJson to primitives. NOTE, the OUTPUT is still what is required by FHIR to make it compliant with servers. Refernce [PR 22](https://github.com/fhir-fli/fhir_r4/pull/22) by [bartekwk2](https://github.com/bartekwk2)
* Fixed copyWith generation error described in this [PR 28](https://github.com/fhir-fli/fhir_r4/pull/28) by [bartekwk2](https://github.com/bartekwk2)
* Added ability to define type of Polymorphics for most fields (but not for required ones)
* Changed some of the equality functions, moved from Utils into FhirBase
* Changed some of the quality functions IN FhirBase to non-static
* Fixed addition and subtraction fo ExtendedDuration to FhirDateTimeBase
* Fixed construction of String for FhirDateTimeBase where year is less than 4 digits
* Fixed plus and subtract for FhirTime
* Fixed deepEquals in Primitives

## [0.4.2]

* Fixed bug not allowing DateTime to be passed to FhirDate

## [0.4.1]

* added back getChildrenByType to PrimitiveType

## [0.4.0]

* Sigh, immediately decided to change some things
* copyWith now accepts a null value to clear a field
* removed clear, empty, setChildByName, typeByElement, createProperty

## [0.3.1]

* forgot to add example

## [0.3.0]

* Ready for actual release
* Documentation here: https://fhir-fli.github.io/fhir_fli_documentation/docs

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