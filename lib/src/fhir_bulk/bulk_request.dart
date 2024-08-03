// ignore_for_file: avoid_dynamic_calls

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

// Project imports:
import '../../fhir_r4.dart';

part 'bulk_request.freezed.dart';

@freezed

/// Freezed union class for making different types of Bulk Requests
class BulkRequest with _$BulkRequest {
  BulkRequest._();

  ///  Patient
  const factory BulkRequest.patient({
    required Uri base,
    FhirDateTime? since,
    List<WhichResource>? types,
    Client? client,
  }) = _BulkPatientRequest;

  ///  Group
  const factory BulkRequest.group({
    required Uri base,
    required FhirId id,
    FhirDateTime? since,
    List<WhichResource>? types,
    Client? client,
  }) = _BulkGroupRequest;

  ///  System
  const factory BulkRequest.system({
    required Uri base,
    FhirDateTime? since,
    List<WhichResource>? types,
    Client? client,
  }) = _BulkSystemRequest;

  /// Actually perform the request by type
  Future<List<Resource?>> request({
    required Map<String, String> headers,
  }) async {
    headers['accept'] = 'application/fhir+json';
    headers['prefer'] = 'respond-async';
    return map(
      patient: (_BulkPatientRequest request) async => _request(
        RestfulRequest.get_,
        '$base/Patient/\$export${_parameters(since, types)}',
        headers,
        client,
      ),
      group: (_BulkGroupRequest request) async => _request(
        RestfulRequest.get_,
        '$base/Group/${request.id}/\$export${_parameters(since, types)}',
        headers,
        client,
      ),
      system: (_BulkSystemRequest request) async => _request(
        RestfulRequest.get_,
        '$base/\$export${_parameters(since, types)}',
        headers,
        client,
      ),
    );
  }

  /// Returns the string of parameters allowed in the request
  String _parameters(
    FhirDateTime? since,
    List<WhichResource>? types,
  ) {
    String sinceString = '';
    String typeString = '';
    if (since != null) {
      sinceString = '?_since=$since';
    }
    if (types != null) {
      typeString = sinceString.isEmpty ? '?' : '&';
      for (final WhichResource type in types) {
        if (type.resourceType != null) {
          typeString += typeString.length == 1 ? '_type=' : ',';
          typeString +=
              '${type.resourceType}${type.id != null ? "/${type.id}" : ""}';
        }
      }
    }
    return '$sinceString$typeString';
  }

  /// Actual request (private class) after all formatting and parameters have been added
  Future<List<Resource?>> _request(
    RestfulRequest type,
    String uri,
    Map<String, String> headers,
    Client? client,
  ) async {
    client ??= Client();
    final List<Resource?> returnList = <Resource?>[];
    String? currentLocation;

    if (kTestMode) {
      return _operationOutcome(uri);
    }

    try {
      final Response resultWithLocation =
          await client.get(Uri.parse(uri), headers: headers);
      if (_errorCodes.keys.contains(resultWithLocation.statusCode)) {
        return _failedHttp(resultWithLocation.statusCode, resultWithLocation);
      }
      currentLocation = resultWithLocation.headers['content-location'];
    } catch (e) {
      return _operationOutcome('Failed to initiate a Bulk request',
          diagnostics: 'Exception: $e');
    }

    int retryAfter = 1;
    Response responseLinks = Response('{}', 422);
    while (retryAfter > 0) {
      if (currentLocation == null) {
        throw Exception('"content-location" was null for bulk request');
      } else {
        try {
          responseLinks =
              await client.get(Uri.parse(currentLocation), headers: headers);
          retryAfter =
              int.tryParse(responseLinks.headers['retry-after'] ?? '-1') ?? -1;
        } catch (e) {
          return _operationOutcome('Failed to wait for a Bulk request',
              diagnostics: 'Exception: $e');
        }
        if (retryAfter > 0) {
          await Future<dynamic>.delayed(Duration(seconds: retryAfter));
        }
      }
    }

    final List<dynamic> resourceLinks =
        jsonDecode(responseLinks.body)['output'] as List<dynamic>? ??
            <dynamic>[];

    for (final dynamic link in resourceLinks) {
      final Uri? newLink = Uri.tryParse(link['url'].toString());
      if (newLink == null) {
        returnList
            .add(_operationOutcome('Failed to download, url specified as: '
                    '${link["url"]} is not a Uri')
                .first);
      } else {
        try {
          final Response ndjsonList =
              await client.get(newLink, headers: headers);
          returnList.addAll(FhirBulk.fromNdJson(ndjsonList.body));
        } catch (e) {
          return _operationOutcome('Failed to download from ${link['url']}',
              diagnostics: 'Exception: $e');
        }
      }
    }
    return returnList;
  }

  /// Creates and returns an OperationOutcome if the http request is unsuccessful
  List<OperationOutcome> _failedHttp(int statusCode, Response result) {
    return <OperationOutcome>[
      OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: FhirCode('error'),
            code: FhirCode('unknown'),
            details:
                const CodeableConcept(text: 'Failed to make restful request'),
            diagnostics: '\nStatus Code: $statusCode -'
                ' ${_errorCodes[statusCode]}'
                '\nResult headers: ${result.headers}'
                '\nResult body: ${result.body}',
          ),
        ],
      ),
    ];
  }

  /// Convenience class to create an operationOutcome if the request fails
  List<OperationOutcome> _operationOutcome(
    String issue, {
    String? diagnostics,
  }) =>
      <OperationOutcome>[
        OperationOutcome(
          issue: <OperationOutcomeIssue>[
            OperationOutcomeIssue(
              severity: FhirCode('error'),
              code: FhirCode('value'),
              details: CodeableConcept(text: issue),
              diagnostics: diagnostics,
            ),
          ],
        ),
      ];

  /// Map of error codes to be able to return more useful information than just a number
  static const Map<int, String> _errorCodes = <int, String>{
    400: 'Bad Request',
    401: 'Not Authorized',
    404: 'Not Found',
    405: 'Method Not Allowed',
    409: 'Version Conflict',
    412: 'Version Conflict',
    422: 'Unprocessable Entity',
  };
}

bool kTestMode = false;
