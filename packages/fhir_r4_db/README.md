# fhir_r4_db

[![pub package](https://img.shields.io/pub/v/fhir_r4_db.svg)](https://pub.dev/packages/fhir_r4_db)

A local database for FHIR R4 resources, backed by [Drift](https://drift.simonbinder.eu/)/SQLite with search-parameter indexing and optional SQLCipher encryption.

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

## Features

- **SQLite-backed**: Durable on-disk storage via Drift, plus in-memory mode for tests
- **Search-parameter indexing**: Resources are indexed into typed search tables (string, token, reference, date, number, quantity, uri, composite, special) for FHIR search
- **FHIR search**: Query by search parameters, including `_id`, `_lastUpdated`, `_tag`, `_profile`, `_security`, `_source`, `:missing`, chained references, and `_has` reverse chaining
- **Resource versioning**: Full history tracking, with deletes recorded as tombstone history entries
- **Optional encryption**: SQLCipher (AES-256) with a PBKDF2-HMAC-SHA256 derived key
- **Sync support**: Optional tracking of changed resources for offline-first applications
- **Canonical resource cache**: Store and retrieve canonical resources by URL
- **General storage**: A key/value area for non-FHIR application data

## Installation

```yaml
dependencies:
  fhir_r4_db: ^0.6.0
  fhir_r4: ^0.6.0
  drift: ^2.33.0
```

To open a database you supply a Drift `QueryExecutor`. On native platforms this
comes from `package:drift/native.dart`; for Flutter apps you will also want
`sqlite3_flutter_libs` (and `sqlcipher_flutter_libs` if you use encryption).

## Quick Start

The database is a Drift database (`FhirDb`); all FHIR CRUD, search, and history
operations live on its data-access object, `db.fhirDao`.

```dart
import 'dart:io';
import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
// Hide Resource: fhir_r4_db also exports a Drift row class named `Resource`.
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;

// On-disk database
final db = FhirDb(NativeDatabase(File('/path/to/fhir.sqlite')));

// Or an in-memory database (useful for tests)
// final db = FhirDb(NativeDatabase.memory());

final dao = db.fhirDao;

// ... use the dao ...

await db.close();
```

### Basic CRUD Operations

```dart
final patient = Patient(
  name: [
    HumanName(
      family: 'Doe'.toFhirString,
      given: ['John'.toFhirString],
    ),
  ],
);

// Insert or update. Assigns an id if missing and increments the versionId.
final saved = await dao.saveResource(patient);

// Retrieve by type and id
final fetched = await dao.getResource(
  R4ResourceType.Patient,
  saved.id!.valueString!,
);

// All resources of a type (most recent first)
final patients = await dao.getResourcesByType(R4ResourceType.Patient);

// Paginated retrieval
final page = await dao.getResourcesWithPagination(
  resourceType: R4ResourceType.Patient,
  count: 20,
  offset: 0,
);

// Count / existence
final total = await dao.getResourceCount(R4ResourceType.Patient);
final present = await dao.exists(R4ResourceType.Patient, saved.id!.valueString!);

// Delete (writes a tombstone history entry, then removes the current row)
await dao.deleteResource(R4ResourceType.Patient, saved.id!.valueString!);

// Batch insert/update
await dao.saveResources([patient1, observation1, observation2]);
```

### Resource Versioning

Resources are automatically versioned on every save; previous versions are kept
in the history table.

```dart
// Optionally use a timestamp as the versionId instead of an incrementing integer
dao.versionIdAsTime = true;

// Full history for a resource
final history = await dao.getResourceHistory(
  R4ResourceType.Patient,
  saved.id!.valueString!,
);
```

### FHIR Search

Saved resources are indexed into typed search tables, so you can query by FHIR
search parameters.

```dart
// name=Doe & gender=female
final results = await dao.search(
  resourceType: R4ResourceType.Patient,
  searchParameters: {
    'name': ['Doe'],
    'gender': ['female'],
  },
);

// Count of matches
final n = await dao.searchCount(
  resourceType: R4ResourceType.Patient,
  searchParameters: {'name': ['Doe']},
);
```

`_has` reverse chaining is supported via `HasParameter`:

```dart
// Patients referenced by an Observation whose code is 1234-5
final has = HasParameter.parse('_has:Observation:patient:code', '1234-5');
final patients = await dao.search(
  resourceType: R4ResourceType.Patient,
  hasParameters: [has!],
);
```

### Offline Sync Support

```dart
// Track every saved resource for later sync
dao.storeForSync = true;

// Retrieve resources that need syncing
final pending = await dao.getSync();

// Clear the sync queue after a successful server sync
await dao.clearSync();

// Or observe the sync queue reactively
final subscription = dao.watchSync().listen((resources) {
  // handle changes
});
```

### Canonical Resources

```dart
// Save a canonical resource (keyed by its url)
await dao.saveCanonicalResource(valueSet);

// Retrieve by URL
final vs = await dao.getCanonicalResource(
  'http://example.org/fhir/ValueSet/my-codes',
);

// Introspect the cache
final hasKey = await dao.containsCanonicalKey('http://example.org/fhir/ValueSet/my-codes');
final urls = await dao.listCanonicalKeys();
```

### General Storage

A key/value area for non-FHIR application data. Values are stored as strings, so
serialize structured data yourself.

```dart
import 'dart:convert';

// Save arbitrary data; returns the row id
final key = await dao.saveGeneral(
  value: jsonEncode({'appSettings': 'value'}),
);

// Retrieve by id
final raw = await dao.readGeneral(key);
final settings = raw == null ? null : jsonDecode(raw);
```

## Security

Encryption is provided by SQLCipher. Derive a key from a password with
`deriveDbKey` (PBKDF2-HMAC-SHA256, 100,000 iterations) and enable encryption at
construction time with `cipherSetup`:

```dart
import 'dart:io';
import 'package:drift/native.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;

const dir = '/path/to/db';
final hexKey = await deriveDbKey(password: 'secure-password', dbPath: dir);

final db = FhirDb(
  NativeDatabase(
    File('$dir/fhir.sqlite'),
    setup: cipherSetup(hexKey),
  ),
);
```

`deriveDbKey` returns `null` (and `cipherSetup(null)` is a no-op) when no
password is supplied, so the same code path works with and without encryption.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

FHIR® is the registered trademark of Health Level Seven International (HL7) and its use does not constitute endorsement of products by HL7®.
