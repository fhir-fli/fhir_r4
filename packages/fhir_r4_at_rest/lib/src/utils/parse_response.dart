import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:http/http.dart' as http;

/// What a FHIR server answered, sorted the way [parseRequestResult] sorts
/// a resource: the resources, the informational OperationOutcomes and the
/// error OperationOutcomes. A body that is not JSON, or JSON that is not a
/// resource, is one error OperationOutcome carrying the status and the body;
/// an error status with a resource that is not an OperationOutcome is
/// reported the same way, with that resource contained. Every caller in the
/// family used to decode the response by hand (drosophila five times, scarab
/// twice) and none reached [parseRequestResult].
ReturnResults<Resource> parseResponse(http.Response response) {
  final Resource resource;
  try {
    final json = jsonDecode(response.body);
    if (json is! Map<String, dynamic> || json['resourceType'] is! String) {
      return _failure(response, 'The body is not a FHIR resource');
    }
    resource = Resource.fromJson(json);
  } on FormatException {
    return _failure(response, 'The body is not JSON');
  }
  if (response.statusCode >= 400 && resource is! OperationOutcome) {
    return ReturnResults<Resource>(
      errorOperationOutcomes: <OperationOutcome>[
        errorOperationOutcome(
          details: 'HTTP ${response.statusCode}',
          diagnostics: 'The server answered an error status with a '
              '${resource.resourceTypeString}, contained here.',
          contained: <Resource>[resource],
        ),
      ],
    );
  }
  return parseRequestResult(resource);
}

ReturnResults<Resource> _failure(http.Response response, String what) =>
    ReturnResults<Resource>(
      errorOperationOutcomes: <OperationOutcome>[
        errorOperationOutcome(
          details: 'HTTP ${response.statusCode}: $what',
          diagnostics: response.body,
          code: IssueType.structure,
        ),
      ],
    );
