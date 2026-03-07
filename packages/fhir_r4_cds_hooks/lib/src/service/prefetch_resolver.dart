import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart' as http;

/// Resolves CDS Hooks prefetch templates into FHIR resources.
///
/// Prefetch templates contain placeholders like `{{context.patientId}}` that
/// are substituted with actual values from the hook context, then fetched from
/// the FHIR server.
class PrefetchResolver {
  /// Creates a [PrefetchResolver].
  ///
  /// [fhirServerUrl] is the base URL of the FHIR server. [authorization] is
  /// the `Authorization` header value (e.g., `Bearer <token>`).
  PrefetchResolver({
    required this.fhirServerUrl,
    required this.authorization,
    http.Client? client,
  }) : client = client ?? http.Client();

  /// The base URL of the FHIR server.
  final String fhirServerUrl;

  /// The Authorization header value.
  final String authorization;

  /// The HTTP client used for FHIR requests.
  final http.Client client;

  /// Resolves prefetch templates by substituting context values and fetching
  /// resources from the FHIR server.
  ///
  /// [templates] maps prefetch keys to FHIR query URL templates (e.g.,
  /// `Patient/{{context.patientId}}`). [contextValues] maps context field
  /// names to their values (e.g., `{'patientId': '123'}`).
  ///
  /// Returns a map of prefetch keys to resolved FHIR resources. If a fetch
  /// fails, the value is `null`.
  Future<Map<String, Resource?>> resolve(
    Map<String, String> templates,
    Map<String, dynamic> contextValues,
  ) async {
    final results = <String, Resource?>{};
    final futures = <String, Future<Resource?>>{};

    for (final entry in templates.entries) {
      final url = _substituteTemplate(entry.value, contextValues);
      futures[entry.key] = _fetchResource(url);
    }

    for (final entry in futures.entries) {
      results[entry.key] = await entry.value;
    }

    return results;
  }

  /// Substitutes `{{context.xxx}}` placeholders in a template URL.
  String _substituteTemplate(
    String template,
    Map<String, dynamic> contextValues,
  ) {
    return template.replaceAllMapped(
      RegExp(r'\{\{context\.(\w+)\}\}'),
      (match) {
        final key = match.group(1)!;
        final value = contextValues[key];
        if (value == null) {
          throw ArgumentError(
            'Missing context value for template placeholder: $key',
          );
        }
        return value.toString();
      },
    );
  }

  Future<Resource?> _fetchResource(String relativeUrl) async {
    try {
      final response = await client.get(
        Uri.parse('$fhirServerUrl/$relativeUrl'),
        headers: <String, String>{
          'Authorization': authorization,
          'Accept': 'application/fhir+json',
        },
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Resource.fromJson(
          json.decode(response.body) as Map<String, dynamic>,
        );
      }
      return null;
    } on Exception {
      return null;
    }
  }
}
