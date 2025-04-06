# fhir_r4_at_rest

[![pub package](https://img.shields.io/pub/v/fhir_r4_at_rest.svg)](https://pub.dev/packages/fhir_r4_at_rest)

A Dart package providing type-safe, fluent RESTful operations for FHIR R4 resources. This library simplifies interactions with FHIR servers by providing structured request classes for all standard FHIR operations.

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Features

- Type-safe request builders for all FHIR RESTful operations
- Fluent interface for constructing complex queries
- Resource-specific search parameter builders
- HTTP client abstraction for easy testing and customization
- Comprehensive parameter validation

## Installation

```yaml
dependencies:
  fhir_r4_at_rest: ^0.3.0
  fhir_r4: ^0.3.0
```

## Basic Usage

### Reading a Resource

```dart
final request = FhirReadRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  id: '12345',
  headers: {'Authorization': 'Bearer token123'},
);

final response = await request.sendRequest();
```

### Creating a Resource

```dart
final patient = Patient(
  name: [
    HumanName(
      family: 'Doe'.toFhirString,
      given: ['John'.toFhirString],
    ),
  ],
);

final request = FhirCreateRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  resource: patient.toJson(),
  headers: {'Authorization': 'Bearer token123'},
);

final response = await request.sendRequest();
```

### Updating a Resource

```dart
final patient = Patient(
  id: '12345'.toFhirString,
  name: [
    HumanName(
      family: 'Doe'.toFhirString,
      given: ['John'.toFhirString],
    ),
  ],
);

final request = FhirUpdateRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  id: '12345',
  resource: patient.toJson(),
  headers: {'Authorization': 'Bearer token123'},
);

final response = await request.sendRequest();
```

### Deleting a Resource

```dart
final request = FhirDeleteRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  id: '12345',
  headers: {'Authorization': 'Bearer token123'},
);

final response = await request.sendRequest();
```

## Request Parameters

The library provides a fluent API for building request parameters:

```dart
final parameters = RestfulParameters()
  .requestPretty()
  .addCount(10)
  .requestSummary(Summary.true_)
  .add('_format', 'json');

final request = FhirReadRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  id: '12345',
  parameters: parameters,
);
```

## Type-Safe Searching

The library provides type-safe search builders for FHIR resources:

```dart
// Search for active male patients born after 1970
final search = SearchPatient()
  .active(FhirString('true'))
  .gender(FhirString('male'))
  .birthdate(
    FhirDateTime('1970-01-01'),
    modifier: SearchModifier.gt,
  );

final request = FhirSearchRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  search: search,
);

final response = await request.sendRequest();
```

## Advanced Operations

### Working with History

```dart
final request = FhirHistoryRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  id: '12345',
  parameters: RestfulParameters()
    .add('_count', '10')
    .add('_since', '2020-01-01'),
);

final response = await request.sendRequest();
```

### Batch and Transaction Operations

```dart
final bundle = Bundle(
  type: BundleType.transaction,
  entry: [
    BundleEntry(
      request: BundleRequest(
        method: HTTPVerb.POST,
        url: FhirUri('Patient'),
      ),
      resource: Patient(
        name: [
          HumanName(
            family: FhirString('Doe'),
            given: [FhirString('John')],
          ),
        ],
      ),
    ),
  ],
);

final request = FhirTransactionRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  bundle: bundle.toJson(),
);

final response = await request.sendRequest();
```

### Capabilities Statement

```dart
final request = FhirCapabilitiesRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  mode: Mode.normative,
);

final response = await request.sendRequest();
```

### Custom Operations

```dart
final request = FhirOperationRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  id: '12345',
  operation: 'everything',
  parameters: RestfulParameters()
    .add('start', '2020-01-01')
    .add('end', '2020-12-31'),
);

final response = await request.sendRequest();
```

## Handling Responses

```dart
try {
  final response = await request.sendRequest();
  
  if (response.statusCode == 200) {
    final patient = Patient.fromJson(
      jsonDecode(response.body),
    );
    // Work with the patient resource
  } else {
    // Handle error response
    print('Error: ${response.statusCode}');
    print('Body: ${response.body}');
  }
} catch (e) {
  // Handle network or parsing exceptions
  print('Exception: $e');
}
```

## Custom HTTP Client

```dart
final client = http.Client(); // Your custom HTTP client
final request = FhirReadRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient',
  id: '12345',
  client: client,
);
```

## Documentation

For more detailed documentation, examples, and API reference, visit:
[FHIR-FLI Documentation](https://docs.fire.ly)

## License

This project is licensed under the MIT License - see the LICENSE file for details.

FHIR® is the registered trademark of Health Level Seven International (HL7) and its use does not constitute endorsement of products by HL7®.