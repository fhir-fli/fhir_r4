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
  Future<Map<String, dynamic>?> fetchStructureDefinition(String url) async {
    if (localProfiles.containsKey(url)) {
      return jsonDecode(localProfiles[url]!) as Map<String, dynamic>;
    }
    return null;
  }

  @override
  Future<Map<String, dynamic>?> fetchValueSet(String url) async {
    if (localProfiles.containsKey(url)) {
      return jsonDecode(localProfiles[url]!) as Map<String, dynamic>;
    }
    return null;
  }

  @override
  Future<Map<String, dynamic>?> fetchCodeSystem(String url) async {
    if (localProfiles.containsKey(url)) {
      return jsonDecode(localProfiles[url]!) as Map<String, dynamic>;
    }
    return null;
  }
}
