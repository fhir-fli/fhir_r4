# fhir_r4_path

[![pub package](https://img.shields.io/pub/v/fhir_r4_path.svg)](https://pub.dev/packages/fhir_r4_path)

A Dart implementation of the [FHIRPath](https://hl7.org/fhirpath/) specification for FHIR R4 resources, allowing you to query and manipulate FHIR data using standardized expressions.

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Features

- **Complete implementation** of the FHIRPath specification
- **High performance** evaluation engine with optimization for repeated use
- **Resource caching** for canonical resources like CodeSystems and StructureDefinitions
- **Async API** for seamless integration with Flutter and Dart applications
- **Type-safe** working with FHIR R4 resources from the `fhir_r4` package

## Installation

```yaml
dependencies:
  fhir_r4_path: ^0.4.0
  fhir_r4: ^0.4.1
```

## Basic Usage

### Simple Approach

```dart
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

// Create a patient resource
final patient = Patient(
  name: [
    HumanName(
      family: 'Doe'.toFhirString,
      given: ['John'.toFhirString],
      use: HumanNameUse.official,
    ),
  ],
);

// Evaluate a FHIRPath expression
final result = await walkFhirPath(
  context: patient,
  pathExpression: "Patient.name.where(use = 'official').family",
);

// Process the result
print(result.map((e) => e.toString()).join(', ')); // Outputs: Doe
```

### Performance-Optimized Approach

For better performance, especially when evaluating multiple expressions:

```dart
// Create an engine instance (async)
final engine = await FHIRPathEngine.create(WorkerContext());

// Parse the expression once
final node = engine.parse("Patient.name.where(use = 'official').family");

// Evaluate against multiple resources
final result1 = await engine.evaluate(patient1, node);
final result2 = await engine.evaluate(patient2, node);
```

## Common FHIRPath Examples

```dart
// Basic field access
"Patient.active"

// Filtering
"Patient.name.where(use = 'official')"

// Functions
"Patient.telecom.where(system = 'phone').count()"

// Logical operators
"Patient.active = true and Patient.deceased = false"

// Environment variables
"Patient.birthDate < %today"
```

## Advanced Features

### Resource Caching

The library includes a `CanonicalResourceManager` for efficient handling of canonical resources:

```dart
// Create a manager
final manager = CanonicalResourceManager();

// Store a canonical resource
final valueSet = ValueSet(
  url: 'http://example.org/fhir/ValueSet/my-codes'.toFhirUri,
  version: '1.0.0'.toFhirString,
);
manager.see(valueSet);

// Retrieve by URL (latest version)
final retrieved = await manager.getCanonicalResource<ValueSet>(
  'http://example.org/fhir/ValueSet/my-codes'
);

// Retrieve specific version
final specificVersion = await manager.getCanonicalResource<ValueSet>(
  'http://example.org/fhir/ValueSet/my-codes',
  '1.0.0'
);
```

### Environment Variables

```dart
final result = await walkFhirPath(
  context: patient,
  pathExpression: "birthDate < %cutoffDate",
  environment: {
    '%cutoffDate': [FhirDate('2000-01-01')],
  },
);
```

## Error Handling

```dart
try {
  final result = await walkFhirPath(
    context: patient,
    pathExpression: "Patient.invalid.expression",
  );
} on PathEngineException catch (e) {
  print('Expression error: ${e.message}');
}
```

## Documentation

For more detailed documentation, see the [FHIR-FLI documentation site](https://docs.fire.ly).

For the complete FHIRPath specification, see the [official HL7 documentation](https://hl7.org/fhirpath/).

## License

This project is licensed under the MIT License - see the LICENSE file for details.

FHIR® is the registered trademark of Health Level Seven International (HL7) and its use does not constitute endorsement of products by HL7®.