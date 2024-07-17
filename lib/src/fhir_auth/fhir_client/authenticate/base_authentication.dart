// Package imports:
import 'package:fhir_primitives/fhir_primitives.dart';

/// Abstract class for Authentication
abstract class BaseAuthentication {
  Future<String> authenticate({
    required Uri authorizationUrl,
    required FhirUri redirectUri,
  });
}
