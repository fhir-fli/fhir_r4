# fhir_r4

[![pub package](https://img.shields.io/pub/v/fhir_r4.svg)](https://pub.dev/packages/fhir_r4)

A Dart implementation of the FHIR (Fast Healthcare Interoperability Resources) R4 specification. This package provides FHIR R4 resource models and utilities for serialization/deserialization, working with primitive types, polymorphic fields, and more.

## Our New Online Guide!

It's still a work on progress, but I plan on outlining in-depth all of the functionality in all of the packages. [Take a look! FHIR-FLI Online Tutorial](https://fhir-fli.github.io/fhir_fli_documentation/docs)

## Features

- **Complete FHIR R4 Resource Models**: Fully-typed Dart classes for all FHIR R4 resources generated from the official specification
- **Robust Serialization/Deserialization**: Convert between Dart objects and JSON/YAML formats
- **Type-Safe Implementation**: Strong typing and validation for all FHIR elements
- **Reflection-Like Capabilities**: Dynamic field access and manipulation without requiring runtime reflection
- **Immutable Data Model**: All classes follow immutable design patterns with copyWith functionality

## Model-Independent Architecture

`fhir_r4` is a thin FHIR-version binding on top of a set of model-independent engines. Every resource and data type extends `FhirBase`, which implements the `FhirNode` reflection contract from [`package:fhir_node`](https://pub.dev/packages/fhir_node). Because navigation (`getChildrenByName`, `listChildrenNames`, `fhirType`, ...) is expressed through that contract, the shared [`fhir_path`](https://pub.dev/packages/fhir_path), [`cql`](https://pub.dev/packages/cql), and [`ucum`](https://pub.dev/packages/ucum) engines can operate on R4 data without any coupling to a specific FHIR version. The same engines power the R5 and R6 packages unchanged.

## Installation

```yaml
dependencies:
  fhir_r4: ^0.6.0
```

## Basic Usage

### Creating FHIR Resources

```dart
final patient = Patient(
  id: FhirString('123'),
  name: [
    HumanName(
      family: 'Doe'.toFhirString,
      given: ['John'.toFhirString],
    ),
  ],
  birthDate: '1990-01-01'.toFhirDate,
);
```

### Serialization/Deserialization

```dart
// Serialize to JSON Map
final jsonMap = patient.toJson();

// Serialize directly to JSON String (convenience method)
final jsonString = patient.toJsonString();

// Deserialize from JSON
final parsedPatient = Patient.fromJson(jsonMap);

// Deserialize directly from JSON String (convenience method)
final parsedFromString = Patient.fromJsonString(jsonString);

// YAML support
final yamlString = patient.toYaml();
```

### Dynamic Resource Handling

```dart
// Parse any FHIR resource from JSON
final unknownResource = Resource.fromJson(jsonMap);

// Type checking
if (unknownResource is Patient) {
  // Work with Patient fields
}
```

## Key Features

### Primitive Types

All FHIR primitive types (string, integer, boolean, etc.) are implemented as Dart classes with validation and additional functionality:

```dart
// Creating primitive types
final myString = FhirString('Hello');
final myBoolean = FhirBoolean(true);
final myDateTime = FhirDateTime('2023-06-15T13:30:45Z');

// Using extension methods
final myString2 = 'Hello'.toFhirString;
final myBoolean2 = true.toFhirBoolean;

// Accessing values
final stringValue = myString.value;
final boolValue = myBoolean.valueBoolean;
```

### Polymorphic Fields

FHIR-FLI handles polymorphic fields (fields that can contain different types) with clear conventions:

```dart
// Observation.value[x] is a polymorphic field; assign via the `valueX` setter
final observation = Observation(
  status: ObservationStatus.final_,
  code: CodeableConcept(text: 'Body Weight'.toFhirString),
  valueX: Quantity(
    value: FhirDecimal(72.5),
    unit: 'kg'.toFhirString,
  ),
);

// Access polymorphic fields safely via the typed getters
if (observation.valueQuantity != null) {
  // Work with a Quantity value
} else if (observation.valueString != null) {
  // Work with a String value
}
```

### FHIR "Enums"

FHIR code sets are implemented as specialized enum-like classes:

```dart
// Using predefined values
final status = AccountStatus.active;

// Accessing metadata
final displayText = status.display?.value;  // 'Active'
final system = status.system?.value;        // 'http://hl7.org/fhir/ValueSet/account-status'
```

### Class Utility Methods

Each FHIR class includes methods for dynamic access and manipulation:

```dart
// Get field names
final fieldNames = patient.listChildrenNames();

// Get a field by name
final value = patient.getChildByName('birthDate');

// Get all children matching a name (returns a List<FhirBase>)
final givenNames = patient.getChildrenByName('name');

// Modify with copyWith
final modifiedPatient = patient.copyWith(
  active: FhirBoolean(true),
);

// Deep equality check
final areEqual = patient1.equalsDeep(patient2);
```

## License

This project is licensed under the MIT License - see LICENSE file for details.

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Contact us

You're always welcome to join the [FHIR-FLI Slack Channel](https://join.slack.com/t/fhir-fli/shared_invite/zt-337bi02s4-r5RYdLf8_CLXQxosRMdv9A), or to contact me directly, email me at grey.fhirfli@gmail.com.