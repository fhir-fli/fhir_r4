# fhir_r4_mapping

# FHIR-FLI Mapping (R4)

A comprehensive implementation of the FHIR Mapping Language for Dart, enabling transformations between different FHIR resources and structures.

[![pub package](https://img.shields.io/pub/v/fhir_r4_mapping.svg)](https://pub.dev/packages/fhir_r4_mapping)

## Overview

FHIR-FLI Mapping provides tools to parse the FHIR Mapping Language and execute transformations between different FHIR resources and structures. It's designed to work seamlessly with the rest of the FHIR-FLI ecosystem while taking advantage of Dart's strong typing.

## Features

- **FHIR Mapping Language Parser**: Convert mapping language text into StructureMap resources
- **Mapping Engine**: Execute transformations defined in StructureMaps
- **Resource Cache System**: Efficiently manage and retrieve canonical resources
- **Type-Safe Builders**: Create and modify FHIR resources during transformations
- **Online Resource Resolution**: Automatically fetch resources from external repositories when needed

## Installation

```yaml
dependencies:
  fhir_r4_mapping: ^0.4.0
  fhir_r4: ^0.4.2
  fhir_r4_path: ^0.4.2
```

## Quick Start

### Parsing a FHIR Map

```dart
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

Future<void> main() async {
  // Create the parser
  final parser = await StructureMapParser.create();
  
  // Define a simple mapping
  final mapText = '''
  map "http://example.org/maps/PatientToPersonMap" = PatientToPerson
  uses "http://hl7.org/fhir/StructureDefinition/Patient" as source
  uses "http://hl7.org/fhir/StructureDefinition/Person" as target
  
  group PatientToPerson(source src : Patient, target tgt : Person) {
    src.name -> tgt.name;
    src.gender -> tgt.gender;
    src.birthDate -> tgt.birthDate;
  }
  ''';
  
  // Parse into a StructureMap
  final structureMap = parser.parse(mapText, 'fhirmap');
  print('Successfully parsed map: ${structureMap.id}');
}
```

### Executing a Transformation

```dart
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

Future<void> transformPatient() async {
  // Set up the resource cache
  final resourceCache = OnlineResourceCache();
  
  // Load necessary structure definitions
  resourceCache.saveCanonicalResource(patientStructureDef);
  resourceCache.saveCanonicalResource(personStructureDef);
  
  // Create the engine with your StructureMap
  final mapEngine = await FhirMapEngine.create(resourceCache, structureMap);
  
  // Transform a Patient to a Person
  final result = await mapEngine.transformFromFhir(
    patientResource,
    structureMap,
    null, // No target - create new
  );
  
  // The result is a Person resource
  final person = result as Person;
  print('Transformed patient: ${person.name?.first.family}');
}
```

## Resource Cache System

FHIR-FLI Mapping provides three levels of resource caching:

- **ResourceCache**: Abstract base class defining the interface
- **CanonicalResourceCache**: Local in-memory cache
- **OnlineResourceCache**: Combines local caching with online resolution

```dart
// For offline-only operation
final localCache = CanonicalResourceCache();

// For mixed local/online operation
final onlineCache = OnlineResourceCache();
```

## Advanced Usage

### Working with Builders

For complex transformations, you can work directly with builders:

```dart
final result = await mapEngine.transformBuilder(
  '',  // Default group
  sourceBuilder,
  structureMap,
  targetBuilder,
);
```

### Custom Type Handling

Provide a callback to handle custom resource types:

```dart
mapEngine.extendedEmptyFromType = (String type) {
  switch (type.toLowerCase()) {
    case 'mycustomtype': 
      return MyCustomTypeBuilder.empty();
    default: 
      return null;  // Default handling
  }
};
```

## Documentation

For more detailed information, see the [official documentation](https://docs.fhir_fli.dev).

## License

MIT

## Related Packages

- [fhir](https://pub.dev/packages/fhir): Core FHIR package for Dart
- [fhir_r4](https://pub.dev/packages/fhir_r4): R4 FHIR resources and models
- [fhir_path](https://pub.dev/packages/fhir_path): FHIRPath implementation for Dart