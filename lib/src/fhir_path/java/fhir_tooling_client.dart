import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

/// Simplified FHIR client for terminology validation operations.
class FhirToolingClient {
  /// Creates a new FHIR Tooling Client with the specified base URI and user
  /// agent.
  FhirToolingClient({
    Uri? baseUri,
    this.userAgent = 'FHIR Tooling Client',
  }) : baseUri = baseUri ?? Uri.parse('https://hapi.fhir.org/baseR4') {
    headers['User-Agent'] = userAgent;
    headers['Accept'] = 'application/fhir+json';
    headers['Content-Type'] = 'application/fhir+json';
  }

  /// The base URI of the FHIR server.
  final Uri baseUri;

  /// The user agent string to include in the HTTP headers.
  final String userAgent;

  /// The HTTP headers to include in the request.
  final Map<String, String> headers = {};

  /// Returns the address of the FHIR server.
  String getAddress() {
    return baseUri.toString();
  }

  /// Validates a CodeSystem using a Parameters resource.
  Future<Parameters> validateCS(Parameters input) async {
    final endpoint = Uri.parse('$baseUri/CodeSystem/\$validate-code');
    return _postRequest(endpoint, input);
  }

  /// Validates a ValueSet using a Parameters resource.
  Future<Parameters> validateVS(Parameters input) async {
    final endpoint = Uri.parse('$baseUri/ValueSet/\$validate-code');
    return _postRequest(endpoint, input);
  }

  /// Executes a POST request and returns the response as a Parameters resource.
  Future<Parameters> _postRequest(Uri endpoint, Parameters input) async {
    try {
      final response = await _sendHttpRequest(
        endpoint: endpoint,
        method: 'POST',
        body: input.toJson(),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        return Parameters.fromJson(jsonResponse);
      } else {
        throw Exception(
          'Failed to validate: ${response.statusCode} - ${response.body}',
        );
      }
    } catch (e) {
      throw Exception('Error during request: $e');
    }
  }

  /// Sends an HTTP request to the FHIR server.
  Future<Response> _sendHttpRequest({
    required Uri endpoint,
    required String method,
    Map<String, dynamic>? body,
  }) async {
    final client = Client();
    try {
      if (method == 'POST') {
        return await client.post(
          endpoint,
          headers: headers,
          body: body != null ? jsonEncode(body) : null,
        );
      } else if (method == 'GET') {
        return await client.get(
          endpoint,
          headers: headers,
        );
      } else {
        throw Exception('Unsupported HTTP method: $method');
      }
    } catch (e) {
      throw Exception('HTTP Request Error: $e');
    } finally {
      client.close();
    }
  }
}
