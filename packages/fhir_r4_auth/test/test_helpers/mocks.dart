/// Mock classes for testing
library;

import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:fhir_r4_auth/fhir_r4_auth.dart';

// Generate mocks with build_runner:
// flutter pub run build_runner build --delete-conflicting-outputs

@GenerateMocks([
  http.Client,
  TokenStorage,
  AuditLogger,
  SessionManager,
])
void main() {}
