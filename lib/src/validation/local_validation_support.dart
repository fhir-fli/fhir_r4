// Example Implementation of ValidationSupport
import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';

/// Local Validation Support
class LocalValidationSupport implements ValidationSupport {
  /// Constructor
  LocalValidationSupport(this.localProfiles);

  /// Local profiles
  final Map<String, String> localProfiles;

  @override
  Future<Map<String, Object>?> fetchStructureDefinition(String url) async {
    if (localProfiles.containsKey(url)) {
      return jsonDecode(localProfiles[url]!) as Map<String, Object>;
    }
    return null;
  }

  @override
  Future<Map<String, Object>?> fetchValueSet(String url) async {
    // Placeholder for value set fetching
    return null;
  }

  @override
  Future<Map<String, Object>?> fetchCodeSystem(String url) async {
    // Placeholder for code system fetching
    return null;
  }
}
