// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

/// A class to handle FHIR Bulk requests
class BulkRequestPatient extends BulkRequest {
  /// Constructor for a patient bulk request
  const BulkRequestPatient({
    required super.base,
    super.since,
    super.types,
    super.headers,
    super.client,
  });
}

/// A class to handle FHIR Bulk requests
class BulkRequestGroup extends BulkRequest {
  /// Constructor for a group bulk request
  const BulkRequestGroup({
    required super.base,
    required this.id,
    super.since,
    super.types,
    super.headers,
    super.client,
  });

  /// The id of the group to request
  final FhirId id;
}

/// A class to handle FHIR Bulk requests
class BulkRequestSystem extends BulkRequest {
  /// Constructor for a system bulk request
  const BulkRequestSystem({
    required super.base,
    super.since,
    super.types,
    super.headers,
    super.client,
  });
}

/// A class to handle FHIR Bulk requests
abstract class BulkRequest {
  /// Constructor for a bulk request
  const BulkRequest({
    required this.base,
    this.since,
    this.types,
    this.headers,
    this.client,
  });

  /// The base url for the request
  final Uri base;

  /// The date to request resources since
  final FhirDateTime? since;

  /// The types of resources to request
  final List<WhichResource>? types;

  /// The headers to use for the request
  final Map<String, String>? headers;

  /// The client to use for the request
  final Client? client;

  /// Actually perform the request by type
  Future<List<Resource?>> request() async {
    final requestHeaders = headers ?? <String, String>{};
    requestHeaders['accept'] = 'application/fhir+json';
    requestHeaders['prefer'] = 'respond-async';
    String baseUrl;
    if (this is BulkRequestPatient) {
      baseUrl = '$base/Patient/\$export${_parameters(since, types)}';
    } else if (this is BulkRequestGroup) {
      baseUrl =
          '$base/Group/${(this as BulkRequestGroup).id}/\$export${_parameters(since, types)}';
    } else {
      baseUrl = '$base/\$export${_parameters(since, types)}';
    }
    return _request(baseUrl, requestHeaders, client);
  }

  /// Returns the string of parameters allowed in the request
  String _parameters(
    FhirDateTime? since,
    List<WhichResource>? types,
  ) {
    var sinceString = '';
    var typeString = '';
    if (since != null) {
      sinceString = '?_since=$since';
    }
    if (types != null) {
      typeString = sinceString.isEmpty ? '?' : '&';
      for (final type in types) {
        if (type.resourceType != null) {
          typeString += typeString.length == 1 ? '_type=' : ',';
          typeString +=
              '${type.resourceType}${type.id != null ? "/${type.id}" : ""}';
        }
      }
    }
    return '$sinceString$typeString';
  }

  /// Actual request (private class) after all formatting and parameters have
  /// been added
  Future<List<Resource?>> _request(
    String uri,
    Map<String, String> headers,
    Client? client,
  ) async {
    final newClient = client ?? Client();
    final returnList = <Resource?>[];
    String? currentLocation;

    try {
      final resultWithLocation =
          await newClient.get(Uri.parse(uri), headers: headers);
      if (_errorCodes.keys.contains(resultWithLocation.statusCode)) {
        return _failedHttp(resultWithLocation.statusCode, resultWithLocation);
      }
      currentLocation = resultWithLocation.headers['content-location'];
    } catch (e) {
      return _operationOutcome(
        'Failed to initiate a Bulk request',
        diagnostics: 'Exception: $e',
      );
    }

    var retryAfter = 1;
    var responseLinks = Response('{}', 422);
    while (retryAfter > 0) {
      try {
        if (currentLocation != null) {
          responseLinks =
              await newClient.get(Uri.parse(currentLocation), headers: headers);
          retryAfter =
              int.tryParse(responseLinks.headers['retry-after'] ?? '-1') ?? -1;
        }
      } catch (e) {
        return _operationOutcome(
          'Failed to wait for a Bulk request',
          diagnostics: 'Exception: $e',
        );
      }
      if (retryAfter > 0) {
        await Future<dynamic>.delayed(Duration(seconds: retryAfter));
      }
    }

    final resourceLinks =
        jsonDecode(responseLinks.body)['output'] as List<dynamic>? ??
            <dynamic>[];

    for (final dynamic link in resourceLinks) {
      final newLink = Uri.tryParse(link['url'].toString());
      if (newLink == null) {
        returnList.add(
          _operationOutcome('Failed to download, url specified as: '
                  '${link["url"]} is not a Uri')
              .first,
        );
      } else {
        try {
          final ndjsonList = await newClient.get(newLink, headers: headers);
          returnList.addAll(FhirBulk.fromNdJson(ndjsonList.body));
        } catch (e) {
          return _operationOutcome(
            'Failed to download from ${link['url']}',
            diagnostics: 'Exception: $e',
          );
        }
      }
    }
    return returnList;
  }

  /// Creates and returns an OperationOutcome if the http request is
  /// unsuccessful
  List<OperationOutcome> _failedHttp(int statusCode, Response result) {
    return <OperationOutcome>[
      OperationOutcome(
        issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.invalid,
            details: CodeableConcept(
              text: FhirString('Failed to make restful request'),
            ),
            diagnostics: FhirString(
              '\nStatus Code: $statusCode -'
              ' ${_errorCodes[statusCode]}'
              '\nResult headers: ${result.headers}'
              '\nResult body: ${result.body}',
            ),
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
              severity: IssueSeverity.error,
              code: IssueType.invalid,
              details: CodeableConcept(text: issue.toFhirString),
              diagnostics: diagnostics?.toFhirString,
            ),
          ],
        ),
      ];

  /// Map of error codes to be able to return more useful information than just
  /// a number
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

/// Simple class defining the resourceType & ID of the resource being requested
class WhichResource {
  /// WhichResource Constructor
  WhichResource(this.resourceType, this.id);

  /// The resourceType of the resource being requested
  final R4ResourceType? resourceType;

  /// The ID of the resource being requested
  final FhirId? id;
}
