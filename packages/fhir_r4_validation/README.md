# fhir_r4_validation

A comprehensive validation library for FHIR R4 resources. This package validates FHIR resources against their StructureDefinitions, ensuring compliance with the FHIR specification.

## Installation

```yaml
dependencies:
  fhir_r4_validation: ^0.4.0
  fhir_r4: ^0.4.3
  fhir_r4_path: ^0.4.4
```

## Features

- **Structure Validation**: Validates that resources conform to their StructureDefinition
- **Cardinality Validation**: Ensures required fields are present and cardinality constraints are met
- **Binding Validation**: Validates code bindings against ValueSets and CodeSystems
- **Extension Validation**: Validates extensions and their structure
- **Invariant Validation**: Validates FHIRPath invariants defined in StructureDefinitions
- **Questionnaire Response Validation**: Specialized validation for QuestionnaireResponse resources

## Quick Start

```dart
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';

void main() async {
  // Create a patient resource
  final patient = Patient(
    name: [
      HumanName(
        family: 'Doe'.toFhirString,
        given: ['John'.toFhirString],
      ),
    ],
  );

  // Create validation engine
  final validator = FhirValidationEngine();

  // Validate the resource
  final results = await validator.validateFhirResource(
    structureToValidate: patient,
  );

  // Check for errors
  if (results.hasErrors) {
    print('Validation errors found:');
    for (final error in results.results.where((r) => r.severity == Severity.error)) {
      print('  ${error.path}: ${error.diagnostics}');
    }
  } else {
    print('Resource is valid!');
  }
}
```

## Usage

### Validating Resources

The `FhirValidationEngine` provides three methods for validating resources:

#### From a FHIR Resource Object

```dart
final results = await validator.validateFhirResource(
  structureToValidate: patient,
);
```

#### From a JSON String

```dart
final jsonString = '''
{
  "resourceType": "Patient",
  "name": [{
    "family": "Doe",
    "given": ["John"]
  }]
}
''';

final results = await validator.validateFhirString(
  structureToValidate: jsonString,
);
```

#### From a JSON Map

```dart
final jsonMap = {
  'resourceType': 'Patient',
  'name': [
    {
      'family': 'Doe',
      'given': ['John']
    }
  ]
};

final results = await validator.validateFhirMap(
  structureToValidate: jsonMap,
);
```

### Validation Results

The `ValidationResults` class provides detailed information about validation outcomes:

```dart
final results = await validator.validateFhirResource(
  structureToValidate: patient,
);

// Check if there are any errors
if (results.hasErrors) {
  // Handle errors
}

// Access all results
for (final result in results.results) {
  print('${result.severity}: ${result.path} - ${result.diagnostics}');
}

// Get results by severity
final errors = results.results.where((r) => r.severity == Severity.error);
final warnings = results.results.where((r) => r.severity == Severity.warning);
final info = results.results.where((r) => r.severity == Severity.information);

// Convert to JSON
final jsonResults = results.toJson();
```

### Providing StructureDefinitions

By default, the validator will attempt to fetch StructureDefinitions automatically. However, you can provide your own:

```dart
final structureDef = StructureDefinition(
  url: 'http://hl7.org/fhir/StructureDefinition/Patient'.toFhirUri,
  // ... structure definition content
);

final results = await validator.validateFhirResource(
  structureToValidate: patient,
  structureDefinition: structureDef,
);
```

### Custom HTTP Client

You can provide a custom HTTP client for fetching StructureDefinitions:

```dart
import 'package:http/http.dart';

final client = Client();
final results = await validator.validateFhirResource(
  structureToValidate: patient,
  client: client,
);
```

## Validation Types

The validation engine performs several types of validation:

1. **Structure Validation**: Validates that the resource structure matches its StructureDefinition
2. **Cardinality Validation**: Ensures required fields are present and cardinality constraints are met
3. **Binding Validation**: Validates code bindings against ValueSets and CodeSystems
4. **Extension Validation**: Validates extensions and their structure
5. **Invariant Validation**: Validates FHIRPath invariants defined in StructureDefinitions

## Questionnaire Response Validation

The package includes specialized validation for QuestionnaireResponse resources:

```dart
import 'package:fhir_r4_validation/fhir_r4_validation.dart';

// Validate a QuestionnaireResponse against its Questionnaire
final results = await validateQuestionnaireResponse(
  questionnaireResponse: questionnaireResponse,
  questionnaire: questionnaire,
  resourceCache: resourceCache,
);
```

## Error Handling

The validator provides detailed error information:

```dart
try {
  final results = await validator.validateFhirResource(
    structureToValidate: patient,
  );
  
  if (results.hasErrors) {
    // Process errors
    for (final error in results.results.where((r) => r.severity == Severity.error)) {
      print('Error at ${error.path}: ${error.diagnostics}');
    }
  }
} catch (e) {
  print('Validation failed: $e');
}
```

## Performance Considerations

- StructureDefinitions are cached automatically to avoid redundant fetching
- For batch validation, reuse the `FhirValidationEngine` instance
- Consider providing StructureDefinitions directly if you have them available
- Use a `ResourceCache` for better performance with multiple validations

## Integration with Other Packages

The validation package integrates seamlessly with other FHIR-FLI packages:

- **fhir_r4**: Uses FHIR resource models
- **fhir_r4_path**: Uses FHIRPath for invariant validation
- **fhir_r4_db**: Can validate resources before saving to the database
- **fhir_r4_at_rest**: Can validate resources before sending to a FHIR server

## Documentation

For more detailed documentation, see the [FHIR-FLI documentation site](https://fhir-fli.github.io/fhir_fli_documentation/docs/fhir_r4_validation).

## Say Hello

- As all parts of this are new (FHIR, Flutter, using the two together), I'd love to hear from you if you're working in this space. Open to PR, suggestions or requests. You can email me at <grey.fhirfli@gmail.com>. Or, feel free to [join our Slack!](https://join.slack.com/t/fhir-fli/shared_invite/zt-ofv2cycm-9yjdMj8a~zXp7nDBeB_sNQ).

A Dart/Flutter package for validating FHIR® resources. FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.
