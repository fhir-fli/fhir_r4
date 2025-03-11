# FHIR R4b

- this part of the library is for working with FHIR resources. 
- Lists that include a null value throw an error currently, I could fix it, but that would require setting all lists to be able to contain nulls, and that seems like a pain in the ass for everyone involved. So for now at least, I'm going to leave it
- NO XML SUPPORT (I don't like XML - but if someone really needs it, let me know and I'll see what I can do)

## How To Use

In order to use this package in your app, you must include the following in your pubspec.yaml file under dependencies:

Currently this package is really just for serializing/deserializing FHIR data, and being able to create FHIR resources.

To do something like create a patient, you can do the following:

```dart
var newPatient = Patient(
  name: [
    HumanName(family: 'LastName', given: ['FirstName'])
  ],
  birthDate: FhirDate('2020-01-01'),
  gender: FhirCode('female'),
);
```

All of the FHIR resources are immutable classes using the [freezed package](https://pub.dev/packages/freezed), which means you can take advantage of it's functionality for things like copying/updating:

```dart
  var changePatientName = newPatient.copyWith(name: [
    HumanName(family: 'NewLastName', given: ['SameFirstName'])
  ]);
```

## Examples

This [demonstration](https://github.com/MayJuun/fluttercon_health) was done at Fluttercon 2024! 

## Validation

- For validation testing, I run all of the sample files from hl7 through a tester. It imbibes the json, serializes it, deserializes it, and compares the map before and after.
- The errors that I haven't fixed involved Codes, IDs, and nulls.
- The Codes have to due with the fact that [code is not supposed to have leading or trailing white space](https://www.hl7.org/fhir/datatypes.html#code). But some of the test examples do.
- The issues with the IDs are that [IDs are not supposed to be more than 64 characters](https://www.hl7.org/fhir/datatypes.html#id), but some have more.
- There are a few tests that have null values in them. This will throw and error.
- Also, for r5, there are some fields that I'm not sure if they're supposed to be lists or not, and there are a number of reference I'm not sure if I have the correct name (because the name is different on the website vs. the downloadable schema). I've kept whichever one seemed to be present in the examples.
- For validating the toYaml() functions, I first read the map into a Resource, convert it into Yaml, convert it back into a Resource, and then use that in the validation function above.

## Code Generation

I think it's the new compiling. It's actually great though, [json_serializable](https://pub.dev/packages/json_serializable) and [freezed](https://pub.dev/packages/freezed) are used extensively throughout. In order to allow a field to contain any resource, it is passed to the resource class and is passed to a switch case statement (which feels a little clunky, but I haven't managed a better way yet).

## Formatting Notes

- Class names: upper camel case.
- Variables: lower camel case.
- File names: snake case.
- FHIR nested classes (including enums) listed under the primary class
- There are a number of FHIR fields that are reserved words in Dart. For these, I have added a '_' to the end of the field. (note that this does not change the json format), as when that happens the @JsonKey has been added to the field like so:

```dart
@JsonKey(name: 'extension') List<FhirExtension> extension_,
```

FHIR® is a registered trademark of Health Level Seven International (HL7) and its use does not constitute an endorsement of products by HL7®