# fhir_r4_db

[![pub package](https://img.shields.io/pub/v/fhir_r4_db.svg)](https://pub.dev/packages/fhir_r4_db)

A lightweight, encrypted local database for FHIR R4 resources using Hive.

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Features

- **Fast in-memory database**: Exceptional performance for local FHIR storage
- **Always encrypted**: AES-256 encryption with optional password protection
- **Automatic versioning**: Resource history tracking built-in
- **Reactive updates**: Stream-based API for observing database changes
- **Cross-platform**: Works on all platforms supported by Flutter
- **Sync support**: Optional tracking for offline-first applications

## Installation

```yaml
dependencies:
  fhir_r4_db: ^0.4.0
  fhir_r4: ^0.4.2
```

## Quick Start

### Initialization

```dart
// Initialize without encryption
await FhirDb().init();

// Or with encryption (recommended)
await FhirDb().init(pw: 'secure-password');
```

### Basic CRUD Operations

```dart
// Create or update a resource
final patient = Patient(
  name: [
    HumanName(
      family: 'Doe'.toFhirString,
      given: ['John'.toFhirString],
    ),
  ],
);

// Save automatically handles IDs and versioning
final savedPatient = await FhirDb().save(resource: patient);

// Retrieve by type and ID
final fetchedPatient = await FhirDb().get(
  resourceType: R4ResourceType.Patient,
  id: savedPatient.id!.valueString!,
);

// Find resources matching criteria
final results = await FhirDb().find(
  resourceType: R4ResourceType.Patient,
  field: ['name', 0, 'family'],
  value: 'Doe',
);

// Delete a resource
await FhirDb().delete(resource: savedPatient);
```

### Resource Versioning

Resources are automatically versioned when updated. Previous versions are preserved in history.

```dart
// Enable timestamp-based versioning (optional)
FhirDb().versionIdAsTime = true;

// Save a resource
final patient = await FhirDb().save(resource: patient);

// Update the resource
patient.active = FhirBoolean(true);
final updatedPatient = await FhirDb().save(resource: patient);

// updatedPatient now has an incremented versionId
```

### Reactive Updates

```dart
// Subscribe to changes for a specific resource
final subscription = FhirDb().subject(
  resourceType: R4ResourceType.Patient,
  id: '12345',
).listen((patient) {
  if (patient != null) {
    // Handle updated patient
  } else {
    // Handle patient deletion
  }
});
```

### Offline Sync Support

```dart
// Enable sync tracking
FhirDb().storeForSync = true;

// Later, retrieve resources that need syncing
final resourcesForSync = await FhirDb().getSync();

// Clear the sync queue after successful server sync
await FhirDb().clearSync();
```

### Canonical Resources

```dart
// Save a canonical resource
await FhirDb().saveCanonicalResource(resource: valueSet);

// Retrieve by URL
final valueSet = await FhirDb().getCanonicalResource(
  url: 'http://example.org/fhir/ValueSet/my-codes',
);
```

### Advanced Search

```dart
// Custom search with a finder function
final activePatients = await FhirDb().search(
  resourceType: R4ResourceType.Patient,
  finder: (resource) => resource['active'] == true,
);

// Get all resources of certain types
final allObservations = await FhirDb().getActiveResourcesOfType(
  resourceTypes: [R4ResourceType.Observation],
);
```

### General Storage

The database also provides a general storage area for non-FHIR data:

```dart
// Save arbitrary objects
final key = await FhirDb().saveGeneral(
  object: {'appSettings': 'value'},
);

// Retrieve by key
final settings = await FhirDb().readGeneral(key: key);
```

## Performance Considerations

- The database keeps all data in memory, providing exceptional speed
- Large datasets (e.g., 20GB of FHIR data) are supported with sufficient RAM
- For optimization with large datasets, you can close unused resource boxes:

```dart
// Close specific resource boxes
await FhirDb().closeResourceBoxes(
  types: [R4ResourceType.Patient],
);
```

## Security

The database uses AES-256 encryption:

```dart
// Update password
await FhirDb().updatePw(
  oldPw: 'old-password',
  newPw: 'new-password',
);
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

FHIR® is the registered trademark of Health Level Seven International (HL7) and its use does not constitute endorsement of products by HL7®.