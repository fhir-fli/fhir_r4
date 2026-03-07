# fhir_r4_cds_hooks

A Dart package implementing [CDS Hooks 2.0](https://cds-hooks.hl7.org/2.0/) for FHIR R4.

## Features

- CDS Hooks 2.0 model classes with JSON serialization
- Hook context classes for all standard hooks (patient-view, order-select, order-sign, etc.)
- CDS client for service discovery, hook invocation, and feedback
- Response builder and prefetch resolver for service implementations

## Usage

```dart
import 'package:fhir_r4_cds_hooks/fhir_r4_cds_hooks.dart';

// Discover CDS services
final client = CdsClient(baseUrl: 'https://example.com/cds-services');
final services = await client.discoverServices();

// Invoke a hook
final request = CdsRequest(
  hook: 'patient-view',
  hookInstance: uuid.v4(),
  context: PatientViewContext(patientId: '123'),
);
final response = await client.invokeService('service-id', request);
```

## Additional information

Part of the [fhir_r4](https://pub.dev/packages/fhir_r4) package family.
Documentation at [fhirfli.dev](https://www.fhirfli.dev/).
