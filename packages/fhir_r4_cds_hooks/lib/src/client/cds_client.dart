import 'dart:convert';

import 'package:fhir_r4_cds_hooks/src/models/cds_discovery_response.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_feedback_request.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_request.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_response.dart';
import 'package:http/http.dart' as http;

/// A client for invoking CDS Hooks services.
///
/// Supports discovery, service invocation, and feedback per the
/// CDS Hooks 2.0 specification.
class CdsClient {
  /// Creates a [CdsClient].
  ///
  /// [baseUrl] is the base URL of the CDS Hooks service (without trailing
  /// slash). An optional [client] can be injected for testing. Additional
  /// [headers] are sent with every request.
  CdsClient({
    required this.baseUrl,
    http.Client? client,
    this.headers = const {},
  }) : client = client ?? http.Client();

  /// The base URL of the CDS Hooks service.
  final String baseUrl;

  /// The HTTP client used for requests.
  final http.Client client;

  /// Additional headers sent with every request.
  final Map<String, String> headers;

  Map<String, String> get _defaultHeaders => <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        ...headers,
      };

  /// Discovers available CDS services.
  ///
  /// Calls `GET {baseUrl}/cds-services`.
  Future<CdsDiscoveryResponse> discover() async {
    final response = await client.get(
      Uri.parse('$baseUrl/cds-services'),
      headers: _defaultHeaders,
    );
    _checkResponse(response);
    return CdsDiscoveryResponse.fromJson(
      json.decode(response.body) as Map<String, dynamic>,
    );
  }

  /// Invokes a CDS service.
  ///
  /// Calls `POST {baseUrl}/cds-services/{serviceId}`.
  Future<CdsResponse> invoke(String serviceId, CdsRequest request) async {
    final response = await client.post(
      Uri.parse('$baseUrl/cds-services/$serviceId'),
      headers: _defaultHeaders,
      body: json.encode(request.toJson()),
    );
    _checkResponse(response);
    return CdsResponse.fromJson(
      json.decode(response.body) as Map<String, dynamic>,
    );
  }

  /// Sends feedback about a previous CDS response.
  ///
  /// Calls `POST {baseUrl}/cds-services/{serviceId}/feedback`.
  Future<void> sendFeedback(
    String serviceId,
    CdsFeedbackRequest feedback,
  ) async {
    final response = await client.post(
      Uri.parse('$baseUrl/cds-services/$serviceId/feedback'),
      headers: _defaultHeaders,
      body: json.encode(feedback.toJson()),
    );
    _checkResponse(response);
  }

  void _checkResponse(http.Response response) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw CdsClientException(
        statusCode: response.statusCode,
        body: response.body,
      );
    }
  }
}

/// Exception thrown when a CDS Hooks HTTP request fails.
class CdsClientException implements Exception {
  /// Creates a [CdsClientException].
  CdsClientException({required this.statusCode, required this.body});

  /// The HTTP status code.
  final int statusCode;

  /// The response body.
  final String body;

  @override
  String toString() => 'CdsClientException($statusCode): $body';
}
