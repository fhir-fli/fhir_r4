# fhir_r4

## [0.4.4]

* Added ability to define type of Polymorphics for most fields (but not for required ones)

## [0.4.3]

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