# fhir_r4_auth

[![pub package](https://img.shields.io/pub/v/fhir_r4_auth.svg)](https://pub.dev/packages/fhir_r4_auth)
[![License: BSD-3-Clause](https://img.shields.io/badge/license-BSD--3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

SMART on FHIR sign-in for Flutter apps that use FHIR R4B
([fhir_r4](https://pub.dev/packages/fhir_r4)).

This package re-exports [fhir_auth](https://pub.dev/packages/fhir_auth),
which serves every FHIR version: nothing in it depends on the R4B model.
Depend on it to keep your FHIR packages in one family; its classes and
usage are fhir_auth's, documented in
[fhir_auth's README](https://pub.dev/packages/fhir_auth).

For plain Dart (a web page without Flutter, a server, a command-line tool),
use [fhir_auth_core](https://pub.dev/packages/fhir_auth_core).

## Installation

```sh
dart pub add fhir_r4_auth
```

In a Flutter app, use `flutter pub add`.

```dart
import 'package:fhir_r4_auth/fhir_r4_auth.dart';
```

## License

BSD-3-Clause; see [LICENSE](LICENSE).
