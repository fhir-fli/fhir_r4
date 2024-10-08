// ignore_for_file: avoid_dynamic_calls

// Dart imports:
import 'dart:convert';

import 'package:http/http.dart';

import '../../fhir_r4.dart';

class BulkRequestPatient extends BulkRequest {
  const BulkRequestPatient(
      {required super.base, super.since, super.types, super.client});
}

class BulkRequestGroup extends BulkRequest {
  const BulkRequestGroup(
      {required super.base,
      required this.id,
      super.since,
      super.types,
      super.client});

  final FhirId id;
}

class BulkRequestSystem extends BulkRequest {
  const BulkRequestSystem(
      {required super.base, super.since, super.types, super.client});
}

abstract class BulkRequest {
  const BulkRequest({
    required this.base,
    this.since,
    this.types,
    this.client,
  });

  final Uri base;
  final FhirDateTime? since;
  final List<WhichResource>? types;
  final Client? client;

  /// Actually perform the request by type
  Future<List<Resource?>> request() async {
    final Map<String, String> headers = <String, String>{};
    headers['accept'] = 'application/fhir+json';
    headers['prefer'] = 'respond-async';
    String baseUrl;
    if (this is BulkRequestPatient) {
      baseUrl = '$base/Patient/\$export${_parameters(since, types)}';
    } else if (this is BulkRequestGroup) {
      baseUrl =
          '$base/Group/${(this as BulkRequestGroup).id}/\$export${_parameters(since, types)}';
    } else {
      baseUrl = '$base/\$export${_parameters(since, types)}';
    }
    return _request(baseUrl, headers, client);
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
            details: CodeableConcept(
                text: FhirString('Failed to make restful request')),
            diagnostics: FhirString('\nStatus Code: $statusCode -'
                ' ${_errorCodes[statusCode]}'
                '\nResult headers: ${result.headers}'
                '\nResult body: ${result.body}'),
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
              details: CodeableConcept(text: issue.toFhirString),
              diagnostics: diagnostics?.toFhirString,
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
