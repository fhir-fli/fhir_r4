// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:http/http.dart';

/// Simple class defining which resourceType & optional ID to request in a
/// Bulk Export.
class WhichResource {
  /// Constructor for [WhichResource].
  WhichResource(this.resourceType, [this.id]);

  /// The FHIR resourceType (e.g. "Patient", "Observation", etc.)
  final R4ResourceType? resourceType;

  /// The optional ID of the resource (e.g. "12345")
  final FhirId? id;
}

/// Abstract base class for FHIR Bulk Export requests.
///
/// Now it supports **both** GET-based calls (default) **and** an optional
/// POST-based mode (if `useHttpPost = true`).
abstract class BulkRequest {
  /// Constructor for [BulkRequest].
  const BulkRequest({
    required this.base,
    this.since,
    this.types,
    this.headers,
    this.client,
    this.typeFilters,
    this.outputFormat, // e.g. 'application/fhir+ndjson'
    this.useHttpPost = false,
  });

  /// The base endpoint (e.g., `https://example.com/fhir`)
  final Uri base;

  /// If supplied, only resources changed on or after this date/time will be included.
  final FhirDateTime? since;

  /// Which resources to include in the export (_type).
  final List<WhichResource>? types;

  /// Additional request headers (e.g. for Auth)
  final Map<String, String>? headers;

  /// Optional custom HTTP client (for mocking or special behavior)
  final Client? client;

  /// The `_typeFilter` parameter(s). E.g.
  /// `['Patient?identifier=foo','Practitioner?name=john']`.
  final List<String>? typeFilters;

  /// The `_outputFormat` parameter. Defaults to `application/fhir+ndjson`.
  final String? outputFormat;

  /// **If true**, do a POST with a Parameters resource
  /// instead of a GET with query params.
  final bool useHttpPost;

  /// Triggers the Bulk Export. Returns a list of **FHIR Resources** if
  /// successful, or a list containing one or more OperationOutcome(s) if
  /// there was an error.
  ///
  /// Throws [TimeoutException] if polling exceeds the default timeout
  /// (1 hour) or max attempts (1000).
  Future<List<Resource?>> request() async {
    // Merge in the user’s custom headers
    final requestHeaders = <String, String>{
      'prefer': 'respond-async',
      'accept': 'application/fhir+json, application/fhir+ndjson, */*',
    };
    if (headers != null) {
      requestHeaders.addAll(headers!);
    }

    final httpClient = client ?? Client();
    final shouldCloseClient = client == null;
    try {
      // If "useHttpPost" is true, we do a POST with `Parameters`.
      // Otherwise, we do the older GET-based approach.
      late Response initialResponse;
      try {
      if (useHttpPost) {
        initialResponse =
            await _initiateExportViaPost(httpClient, requestHeaders);
      } else {
        initialResponse =
            await _initiateExportViaGet(httpClient, requestHeaders);
      }
      } catch (e) {
      return _operationOutcome(
        'Failed to initiate bulk export request',
        diagnostics: e.toString(),
      );
      }

      // Check for immediate error
      if (_errorCodes.containsKey(initialResponse.statusCode)) {
      return _failedHttp(initialResponse.statusCode, initialResponse);
      }

      // Typically, we expect a 202 + Content-Location for async. Some servers
      // might return 200 if the data is small/instant.
      if (initialResponse.statusCode != 202 &&
        initialResponse.statusCode != 200) {
      return _operationOutcome(
        'Unexpected HTTP ${initialResponse.statusCode} from server',
        diagnostics: initialResponse.body,
      );
      }

      if (initialResponse.statusCode == 200) {
      // Possibly an immediate final result
      return _parseFinalResponse(initialResponse);
      }

      // Otherwise, 202 -> we must poll
      final pollUrl = initialResponse.headers['content-location'];
      if (pollUrl == null) {
      return _operationOutcome(
        'Server returned 202 Accepted but no Content-Location header to poll.',
      );
      }

      late Response pollResponse;
      try {
      pollResponse =
          await _pollForCompletion(httpClient, pollUrl, requestHeaders);
      } catch (e) {
      return _operationOutcome(
        'Failed while polling bulk export status',
        diagnostics: e.toString(),
      );
      }

      if (pollResponse.statusCode ~/ 100 != 2) {
      // 4xx or 5xx
      return _failedHttp(pollResponse.statusCode, pollResponse);
      }

      return _parseFinalResponse(pollResponse);
    } finally {
      if (shouldCloseClient) {
        httpClient.close();
      }
    }
  }

  /// Build the GET URL if useHttpPost=false
  Future<Response> _initiateExportViaGet(
    Client httpClient,
    Map<String, String> headers,
  ) {
    final url = _buildExportUrl();
    return httpClient.get(Uri.parse(url), headers: headers);
  }

  /// Build the POST call with a FHIR Parameters resource if useHttpPost=true
  Future<Response> _initiateExportViaPost(
    Client httpClient,
    Map<String, String> headers,
  ) async {
    final url = _exportEndpoint();
    final paramsResource = _buildParametersResource();
    final body = jsonEncode(paramsResource.toJson());

    // ensure content-type is fhir+json
    headers['content-type'] =
        headers['content-type'] ?? 'application/fhir+json';

    return httpClient.post(Uri.parse(url), headers: headers, body: body);
  }

  /// Actually builds the GET query parameters
  String _buildExportUrl() {
    final endpoint = _exportEndpoint();
    final query = <String>[];

    if (outputFormat != null && outputFormat!.isNotEmpty) {
      query.add('_outputFormat=${Uri.encodeQueryComponent(outputFormat!)}');
    }
    if (since != null) {
      query.add('_since=$since');
    }
    if (types != null && types!.isNotEmpty) {
      final typeValue = types!.map((r) {
        final rt = r.resourceType?.name ?? '';
        return r.id == null ? rt : '$rt/${r.id}';
      }).join(',');
      query.add('_type=$typeValue');
    }
    if (typeFilters != null && typeFilters!.isNotEmpty) {
      for (final filter in typeFilters!) {
        query.add('_typeFilter=${Uri.encodeQueryComponent(filter)}');
      }
    }

    final paramString = query.isEmpty ? '' : '?${query.join('&')}';
    return '$endpoint$paramString';
  }

  /// Figures out the base path:
  /// - If BulkRequestGroup => [base]/Group/[id]/$export
  /// - If BulkRequestPatient => [base]/Patient/$export
  /// - Else => [base]/$export (system-level)
  String _exportEndpoint() {
    final baseStr = base.toString().endsWith('/')
        ? base.toString().substring(0, base.toString().length - 1)
        : base.toString();

    if (this is BulkRequestGroup) {
      final groupId = (this as BulkRequestGroup).id;
      return '$baseStr/Group/$groupId/\$export';
    } else if (this is BulkRequestPatient) {
      return '$baseStr/Patient/\$export';
    } else {
      return '$baseStr/\$export';
    }
  }

  /// Builds a Parameters resource for POST-based approach
  Parameters _buildParametersResource() {
    final params = <ParametersParameter>[];

    // Example: _outputFormat
    if (outputFormat != null && outputFormat!.isNotEmpty) {
      params.add(
        ParametersParameter(
          name: '_outputFormat'.toFhirString,
          valueX: outputFormat?.toFhirString,
        ),
      );
    }
    // _since
    if (since != null) {
      params.add(
        ParametersParameter(
          name: '_since'.toFhirString,
          valueX: since,
        ),
      );
    }
    // _type
    if (types != null && types!.isNotEmpty) {
      for (final w in types!) {
        final rtName = w.resourceType?.name;
        if (rtName == null) continue;
        final resourceString = w.id == null ? rtName : '$rtName/${w.id}';
        params.add(
          ParametersParameter(
            name: '_type'.toFhirString,
            valueX: resourceString.toFhirString,
          ),
        );
      }
    }
    // _typeFilter
    if (typeFilters != null && typeFilters!.isNotEmpty) {
      for (final tf in typeFilters!) {
        params.add(
          ParametersParameter(
            name: '_typeFilter'.toFhirString,
            valueX: tf.toFhirString,
          ),
        );
      }
    }

    return Parameters(parameter: params);
  }

  /// Poll until 200 or error
  ///
  /// Throws [TimeoutException] if polling exceeds [timeout] duration
  /// or [maxAttempts] number of attempts.
  Future<Response> _pollForCompletion(
    Client httpClient,
    String pollUrl,
    Map<String, String> headers, {
    Duration? timeout,
    int? maxAttempts,
  }) async {
    final startTime = DateTime.now();
    final timeoutDuration = timeout ?? const Duration(hours: 1);
    int attempts = 0;
    final max = maxAttempts ?? 1000;

    while (attempts < max) {
      if (DateTime.now().difference(startTime) > timeoutDuration) {
        throw TimeoutException(
          'Bulk export polling exceeded timeout of ${timeoutDuration.inHours} hours',
          timeoutDuration,
        );
      }

      final resp = await httpClient.get(Uri.parse(pollUrl), headers: headers);
      if (resp.statusCode ~/ 100 == 2 && resp.statusCode != 202) {
        // 200 or 2xx => done
        return resp;
      }
      if (_errorCodes.containsKey(resp.statusCode) ||
          (resp.statusCode ~/ 100) == 4 ||
          (resp.statusCode ~/ 100) == 5) {
        // error
        return resp;
      }
      // If 202, wait
      final retryAfterStr = resp.headers['retry-after'] ?? '5';
      final retrySeconds = int.tryParse(retryAfterStr) ?? 5;
      await Future<void>.delayed(Duration(seconds: retrySeconds));
      attempts++;
    }

    throw TimeoutException(
      'Bulk export polling exceeded max attempts of $max',
    );
  }

  /// Parse the final 200 response for "output" array, fetch NDJSON
  Future<List<Resource?>> _parseFinalResponse(Response response) async {
    if (response.body.isEmpty) {
      return _operationOutcome('No body returned from final bulk export poll');
    }

    Map<String, dynamic> decoded;
    try {
      decoded = jsonDecode(response.body) as Map<String, dynamic>;
    } catch (e) {
      return _operationOutcome(
        'Failed to parse Bulk Export completion response as JSON',
        diagnostics: e.toString(),
      );
    }

    final output = decoded['output'] as List<dynamic>? ?? <dynamic>[];
    if (output.isEmpty) {
      // no resources
      return <Resource>[];
    }

    final results = <Resource>[];
    final httpClient = client ?? Client();

    for (final dynamic item in output) {
      if (item is! Map<String, dynamic>) {
        results.addAll(
          _operationOutcome(
            'Invalid output item in final response',
            diagnostics: 'Item: $item',
          ),
        );
        continue;
      }
      final url = item['url'];
      if (url == null || url.toString().isEmpty) {
        results.addAll(_operationOutcome('Missing or empty "url" in output array.'));
        continue;
      }
      final uri = Uri.tryParse(url.toString());
      if (uri == null) {
        results.addAll(_operationOutcome('Invalid URL: $url'));
        continue;
      }

      late Response fileResponse;
      try {
        fileResponse = await httpClient.get(uri, headers: headers);
      } catch (e) {
        results.addAll(
          _operationOutcome(
            'Failed to download $url',
            diagnostics: e.toString(),
          ),
        );
        continue;
      }

      if (_errorCodes.containsKey(fileResponse.statusCode)) {
        results.addAll(_failedHttp(fileResponse.statusCode, fileResponse));
        continue;
      }

      final contentType =
          fileResponse.headers['content-type']?.toLowerCase() ?? '';
      List<Resource> fileResources;
      final normalizedType = contentType;
      if (normalizedType.contains('zip') || 
          normalizedType.contains('application/zip') ||
          normalizedType.contains('application/x-zip-compressed')) {
        fileResources = await FhirBulk.fromCompressedData(
          'application/zip',
          fileResponse.bodyBytes,
        );
      } else if (normalizedType.contains('gzip') ||
          normalizedType.contains('x-gzip') ||
          normalizedType.contains('application/gzip')) {
        fileResources = await FhirBulk.fromCompressedData(
          'application/gzip',
          fileResponse.bodyBytes,
        );
      } else if (normalizedType.contains('tar') ||
          normalizedType.contains('application/x-tar')) {
        fileResources = await FhirBulk.fromCompressedData(
          'application/x-tar',
          fileResponse.bodyBytes,
        );
      } else {
        // assume NDJSON
        fileResources = FhirBulk.fromNdJson(fileResponse.body);
      }
      results.addAll(fileResources);
    }

    return results;
  }

  /// Creates an OperationOutcome for an HTTP error
  List<OperationOutcome> _failedHttp(int statusCode, Response result) {
    final message = _errorCodes[statusCode] ?? 'Unknown Error';
    return [
      OperationOutcome(
        issue: [
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.invalid,
            details: CodeableConcept(
              text: 'HTTP $statusCode: $message'.toFhirString,
            ),
            diagnostics: result.body.toFhirString,
          ),
        ],
      ),
    ];
  }

  /// Convenience to create an OperationOutcome for non-HTTP errors
  List<OperationOutcome> _operationOutcome(
    String issue, {
    String? diagnostics,
  }) {
    return [
      OperationOutcome(
        issue: [
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.invalid,
            details: CodeableConcept(text: issue.toFhirString),
            diagnostics: diagnostics?.toFhirString,
          ),
        ],
      ),
    ];
  }

  /// Known HTTP error codes -> textual meaning
  static const Map<int, String> _errorCodes = {
    400: 'Bad Request',
    401: 'Not Authorized',
    403: 'Forbidden',
    404: 'Not Found',
    405: 'Method Not Allowed',
    409: 'Conflict',
    412: 'Precondition Failed',
    422: 'Unprocessable Entity',
    500: 'Internal Server Error',
    501: 'Not Implemented',
    503: 'Service Unavailable',
  };
}

/// Export for all patients
class BulkRequestPatient extends BulkRequest {
  /// Constructor for [BulkRequestPatient].
  const BulkRequestPatient({
    required super.base,
    super.since,
    super.types,
    super.headers,
    super.client,
    super.typeFilters,
    super.outputFormat,
    super.useHttpPost,
  });
}

/// Export for a specific group
class BulkRequestGroup extends BulkRequest {
  /// Constructor for [BulkRequestGroup].
  const BulkRequestGroup({
    required super.base,
    required this.id,
    super.since,
    super.types,
    super.headers,
    super.client,
    super.typeFilters,
    super.outputFormat,
    super.useHttpPost,
  });

  /// The ID of the Group to export
  final FhirId id;
}

/// Export for the entire system
class BulkRequestSystem extends BulkRequest {
  /// Constructor for [BulkRequestSystem].
  const BulkRequestSystem({
    required super.base,
    super.since,
    super.types,
    super.headers,
    super.client,
    super.typeFilters,
    super.outputFormat,
    super.useHttpPost,
  });
}
