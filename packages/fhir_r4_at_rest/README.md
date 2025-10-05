# fhir_r4_at_rest

[![pub package](https://img.shields.io/pub/v/fhir_r4_at_rest.svg)](https://pub.dev/packages/fhir_r4_at_rest)

A Dart package for building FHIR R4 RESTful requests and parsing responses. This package handles request construction and response parsing, while authentication is handled by passing authenticated HTTP clients (e.g., from the `fhir_r4_auth` package).

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Features

- Type-safe request builders for all FHIR RESTful operations
- Fluent interface for constructing complex queries
- Resource-specific search parameter builders
- Structured response parsing with `ReturnResults`
- Works with any HTTP client (authenticated or not)
- Comprehensive parameter validation

## Quick Start

```dart
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:fhir_r4/fhir_r4.dart';

// Simple read from an open server
final request = FhirReadRequest(
  base: Uri.parse('http://hapi.fhir.org/baseR4'),
  resourceType: 'Patient', 
  id: '12345',
);

final response = await request.sendRequest();
final patient = Patient.fromJson(jsonDecode(response.body));
```

## Installation

```yaml
dependencies:
  fhir_r4_at_rest: ^0.4.0
  fhir_r4: ^0.4.2
  
  # Optional: For authenticated requests
  fhir_r4_auth: ^0.4.0
```

## FHIR Version Support

This package supports FHIR R4. For other FHIR versions, see:
- `fhir_r5_at_rest` - R5 support
- `fhir_r6_at_rest` - R6 support

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

### Basic Response Handling

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

### Using ReturnResults for Structured Response Handling

The library provides `ReturnResults` to separate successful resources from errors:

```dart
final response = await request.sendRequest();
final resource = Resource.fromJson(jsonDecode(response.body));
final result = parseRequestResult(resource);

// Check for successfully returned resources
if (result.resources.isNotEmpty) {
  for (final resource in result.resources) {
    // Process each resource
    print('Retrieved resource: ${resource.id}');
  }
}

// Check for error OperationOutcomes
if (result.errorOperationOutcomes.isNotEmpty) {
  for (final error in result.errorOperationOutcomes) {
    print('Error: ${error.issue.first.diagnostics}');
  }
}

// Check for informational OperationOutcomes
if (result.informationOperationOutcomes.isNotEmpty) {
  for (final info in result.informationOperationOutcomes) {
    print('Info: ${info.issue.first.diagnostics}');
  }
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

## Authentication

This package works with any HTTP client, including authenticated clients from the `fhir_r4_auth` package.

### Using with fhir_r4_auth Package

```dart
import 'package:fhir_r4_auth/fhir_r4_auth.dart';

// Create and authenticate a SMART on FHIR client
final authClient = SmartFhirClient(
  fhirUri: FhirUri('https://server.org/fhir'),
  clientId: 'my-client-id',
  redirectUri: FhirUri('https://myapp.com/callback'),
  scopes: ['patient/*.read'],
);

await authClient.login();

// Pass the authenticated client to any request
final request = FhirReadRequest(
  base: Uri.parse('https://server.org/fhir'),
  resourceType: 'Patient',
  id: '12345',
  client: authClient, // Authenticated client handles auth headers
);

final response = await request.sendRequest();
```

### Using with Custom Headers

For simple token-based authentication without a full OAuth flow:

```dart
final request = FhirReadRequest(
  base: Uri.parse('https://server.org/fhir'),
  resourceType: 'Patient',
  id: '12345',
  headers: {'Authorization': 'Bearer your-access-token'},
);
```

### Using with Any Custom HTTP Client

```dart
// Any client that extends http.Client
final customClient = MyCustomHttpClient(); 

final request = FhirReadRequest(
  base: Uri.parse('https://server.org/fhir'),
  resourceType: 'Patient',
  id: '12345',
  client: customClient,
);
```

## Documentation

For more detailed documentation, examples, and API reference, visit:
[FHIR-FLI Documentation](https://fhir-fli.github.io/fhir_fli_documentation/docs)

## License

This project is licensed under the MIT License - see the LICENSE file for details.

FHIR® is the registered trademark of Health Level Seven International (HL7) and its use does not constitute endorsement of products by HL7®.