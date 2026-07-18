# fhir_r4_path

[![pub package](https://img.shields.io/pub/v/fhir_r4_path.svg)](https://pub.dev/packages/fhir_r4_path)

A Dart implementation of the [FHIRPath](https://hl7.org/fhirpath/) specification for FHIR R4B resources, allowing you to query and manipulate FHIR data using standardized expressions.

`fhir_r4_path` is the **R4B binding** over the model-independent [`fhir_path`](https://pub.dev/packages/fhir_path) engine. The engine itself has zero FHIR-version coupling; this package supplies the R4B `WorkerContext` (an `IWorkerContext` implementation), the R4B value factory, and the terminology/validation plumbing, then re-exports the engine. Depend on this one package and you get both the engine and its R4B model bindings.

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Features

- **Complete implementation** of the FHIRPath specification
- **High performance** evaluation engine with optimization for repeated use
- **Resource caching** for canonical resources like CodeSystems and StructureDefinitions
- **Async API** for seamless integration with Flutter and Dart applications
- **Type-safe** working with FHIR R4B resources from the `fhir_r4` package

## Installation

```yaml
dependencies:
  fhir_r4_path: ^0.6.0
  fhir_r4: ^0.6.0
```

## Basic Usage

The primary API is `FHIRPathEngine`. Create the engine once, **parse each
expression once**, then **evaluate it against as many resources as you like** —
parsing is the expensive step, so the recommended pattern is parse-once /
evaluate-many.

```dart
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

final patient = Patient(
  name: [
    HumanName(
      family: 'Doe'.toFhirString,
      given: ['John'.toFhirString],
      use: HumanNameUse.official,
    ),
  ],
);

// Create the engine once (async — it initializes its worker context).
final engine = await FHIRPathEngine.create(WorkerContext());

// Parse the expression once, then evaluate it against as many resources
// as you like — parsing is the expensive step.
final node = engine.parse("Patient.name.where(use = 'official').family");
final result = await engine.evaluate(patient, node);

print(result.map((e) => e.toString()).join(', ')); // Doe
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

The library includes a `CanonicalResourceCache` for efficient handling of canonical resources:

```dart
// Create a manager
final manager = CanonicalResourceCache();

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

## Error Handling

```dart
final engine = await FHIRPathEngine.create(WorkerContext());

try {
  final node = engine.parse("Patient.invalid.expression");
  final result = await engine.evaluate(patient, node);
} on PathEngineException catch (e) {
  print('Expression error: ${e.message}');
}
```

## Environment Variables

Pass external variables through `evaluateWithContext`. Map keys are the
variable names **without** the leading `%` (the engine strips `%` from the
expression before lookup); values are lists of FHIR types:

```dart
final engine = await FHIRPathEngine.create(WorkerContext());
final node = engine.parse('birthDate < %cutoffDate');

final result = await engine.evaluateWithContext(
  null,
  patient,
  patient,
  patient,
  node,
  environment: {
    'cutoffDate': [FhirDate.fromString('2000-01-01')],
  },
);
```

## Legacy API: walkFhirPath (deprecated)

`walkFhirPath` is **deprecated** but retained for backwards compatibility. It
wraps `FHIRPathEngine` internally, parsing and evaluating in a single call. New
code should use the `FHIRPathEngine` API shown above (parse once, evaluate
many).

## Documentation

For more detailed documentation, see the [FHIR-FLI documentation site](https://fhir-fli.github.io/fhir_fli_documentation/docs).

For the complete FHIRPath specification, see the [official HL7 documentation](https://hl7.org/fhirpath/).

## License

This project is licensed under the MIT License - see the LICENSE file for details.

FHIR® is the registered trademark of Health Level Seven International (HL7) and its use does not constitute endorsement of products by HL7®.
