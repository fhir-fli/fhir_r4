import 'dart:convert';
import 'dart:developer';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

/// Singleton cache instance
final FhirDb resourceCache = FhirDb();

/// Utility method to retrieve a resource from the given URL, checking online
/// first and then locally if not found.
Future<Map<String, dynamic>?> getResource(
  String url,
  Client client,
) async {
  // Check cache first
  final cachedResource = await resourceCache.getCanonicalResource(url: url);
  if (cachedResource != null) {
    return cachedResource.toJson();
  } else {
    final result = await _requestFromCanonical(url, client);
    if (result != null) {
      final resource = Resource.fromJson(result);
      if (resource is CanonicalResource) {
        await resourceCache.saveCanonicalResource(resource: resource);
      }
      return result;
    }
  }
  // Normalize URL
  final normalizedUrl = url.contains('|') ? url.split('|')[0] : url;
  if (normalizedUrl != url) {
    await getResource(normalizedUrl, client);
  }
  return null;
}

/// Function to request a resource from a canonical URL.
Future<Map<String, dynamic>?> _requestFromCanonical(
  String canonical,
  Client client,
) async {
  try {
    final response = await client.get(
      Uri.parse(canonical),
      headers: <String, String>{'Accept': 'application/fhir+json'},
    );
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body) as Map<String, dynamic>;
      final resource = Resource.fromJson(result);
      if (resource is CanonicalResource) {
        await resourceCache.saveCanonicalResource(resource: resource);
      }
      return result;
    }
  } catch (e) {
    log('Error requesting from canonical: $canonical, error: $e');
    // Handle exception or logging.
  }
  return null;
}
