import 'dart:convert';

/// Converts a FHIR Bundle into the `Map<String, dynamic>` context format
/// the CQL engine's [Retrieve] expression expects.
///
/// Resources are grouped by resourceType. Patient is stored as a single
/// resource (not a list) since CQL uses `context Patient`.
class BundleDataProvider {
  /// Creates a CQL execution context map from a parsed FHIR Bundle.
  ///
  /// The returned map groups resources by their `resourceType`:
  /// - `Patient` is stored as a single `Map<String, dynamic>`
  /// - All other resource types are stored as `List<Map<String, dynamic>>`
  static Map<String, dynamic> fromBundle(Map<String, dynamic> bundle) {
    final context = <String, dynamic>{};
    final entries = bundle['entry'];
    if (entries is! List) return context;

    for (final entry in entries) {
      if (entry is! Map<String, dynamic>) continue;
      final resource = entry['resource'];
      if (resource is! Map<String, dynamic>) continue;

      final resourceType = resource['resourceType'];
      if (resourceType is! String || resourceType.isEmpty) continue;

      if (resourceType == 'Patient') {
        // CQL `context Patient` expects a single resource
        context['Patient'] = resource;
      } else {
        final list = context.putIfAbsent(resourceType, () => <dynamic>[]) as List;
        list.add(resource);
      }
    }

    return context;
  }

  /// Creates a CQL execution context map from a JSON string containing a
  /// FHIR Bundle.
  static Map<String, dynamic> fromBundleJson(String json) {
    final decoded = jsonDecode(json);
    if (decoded is! Map<String, dynamic>) {
      throw ArgumentError('Expected a JSON object representing a FHIR Bundle');
    }
    return fromBundle(decoded);
  }
}
