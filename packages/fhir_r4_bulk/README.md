# fhir_r4_bulk

[![pub package](https://img.shields.io/pub/v/fhir_r4_bulk.svg)](https://pub.dev/packages/fhir_r4_bulk)

A Dart package for FHIR R4a Bulk Data operations, supporting NDJSON conversion, compression, and the standard FHIR bulk import/export operations.

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Features

- **NDJSON Handling**: Convert between FHIR resources and NDJSON format
- **Compression Support**: Handle ZIP, GZ, and TAR.GZ files for bulk data
- **Bulk Export**: Perform `$export` operations at system, group, or patient level
- **Bulk Import**: Execute `$import` operations with full parameter support
- **Standards-Compliant**: Follows the FHIR Bulk Data Access implementation guide

## Installation

```yaml
dependencies:
  fhir_r4_bulk: ^0.4.0
  fhir_r4: ^0.4.1
```

## Usage

### NDJSON Operations

```dart
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';

// Convert FHIR resources to NDJSON
final resources = <Resource>[patient1, observation1];
final ndjsonString = FhirBulk.toNdJson(resources);

// Convert NDJSON to FHIR resources
final parsedResources = FhirBulk.fromNdJson(ndjsonString);

// Read from compressed files
final zipResources = await FhirBulk.fromCompressedFile('data.zip');

// Create compressed archives
final ndJsonMap = {
  'Patient': FhirBulk.toNdJson(patients),
  'Observation': FhirBulk.toNdJson(observations),
};
final zipBytes = await FhirBulk.toZipFile(ndJsonMap);
```

### Bulk Export

```dart
// System-level export
final exportRequest = BulkRequestSystem(
  base: Uri.parse('https://example.com/fhir'),
  since: FhirDateTime('2023-01-01'),
  types: [
    WhichResource(R4ResourceType.Patient),
    WhichResource(R4ResourceType.Observation),
  ],
  headers: {'Authorization': 'Bearer token'},
);

// Execute the request
final resources = await exportRequest.request();

// Process results by type
final patients = resources.whereType<Patient>();
print('Exported ${patients.length} patients');
```

### Bulk Import

```dart
final importRequest = BulkImportRequest(
  base: Uri.parse('https://example.com/fhir'),
  files: [
    ImportFile(
      resourceType: R4ResourceType.Patient,
      url: Uri.parse('https://example.com/patients.ndjson'),
    ),
    ImportFile(
      resourceType: R4ResourceType.Observation,
      url: Uri.parse('https://example.com/observations.ndjson'),
    ),
  ],
  headers: {'Authorization': 'Bearer token'},
);

// Execute the import
final outcome = await importRequest.importData();

// Check for job ID in the response
final jobId = outcome.issue?.first.diagnostics?.value;
print('Import job started: $jobId');
```

## Export Options

The library supports all standard export parameters:

```dart
final request = BulkRequestGroup(
  base: Uri.parse('https://example.com/fhir'),
  id: FhirId('diabetes-cohort'),
  // Only resources updated since this date
  since: FhirDateTime('2023-01-01'),
  // Specific resource types to include
  types: [
    WhichResource(R4ResourceType.Patient),
    WhichResource(R4ResourceType.Observation),
  ],
  // Additional filters
  typeFilters: ['Patient?gender=female'],
  // Change output format
  outputFormat: 'application/fhir+ndjson',
  // Use newer POST-based approach
  useHttpPost: true,
);
```

## Error Handling

```dart
final resources = await bulkRequest.request();

// Check for errors
for (final resource in resources) {
  if (resource is OperationOutcome) {
    print('Error: ${resource.issue?.first.diagnostics?.value}');
  }
}
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

FHIR® is the registered trademark of Health Level Seven International (HL7) and its use does not constitute endorsement of products by HL7®.