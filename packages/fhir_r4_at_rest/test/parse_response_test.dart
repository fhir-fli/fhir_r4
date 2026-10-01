import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

/// parseResponse: the one place a server's answer is decoded.
void main() {
  test('a resource body is a resource', () {
    final r = parseResponse(
      http.Response(jsonEncode({'resourceType': 'Patient', 'id': 'p1'}), 200),
    );
    expect(r.resources.single, isA<Patient>());
    expect(r.errorOperationOutcomes, isEmpty);
  });

  test('a searchset is its entries', () {
    final bundle = {
      'resourceType': 'Bundle',
      'type': 'searchset',
      'entry': [
        {
          'resource': {'resourceType': 'Patient', 'id': 'p1'},
        },
        {
          'resource': {'resourceType': 'Patient', 'id': 'p2'},
        },
      ],
    };
    final r = parseResponse(http.Response(jsonEncode(bundle), 200));
    expect(r.resources.whereType<Patient>(), hasLength(2));
  });

  test('an OperationOutcome with an error is an error', () {
    final oo = {
      'resourceType': 'OperationOutcome',
      'issue': [
        {'severity': 'error', 'code': 'not-found', 'diagnostics': 'no such'},
      ],
    };
    final r = parseResponse(http.Response(jsonEncode(oo), 404));
    expect(r.errorOperationOutcomes, hasLength(1));
    expect(r.resources, isEmpty);
  });

  test('a body that is not JSON, or not a resource, is one error outcome', () {
    for (final body in [
      '<html>Gateway timeout</html>',
      '{"message": "nope"}',
      '[]',
    ]) {
      final r = parseResponse(http.Response(body, 502));
      final issue = r.errorOperationOutcomes.single.issue.single;
      expect(issue.code, IssueType.structure, reason: body);
      expect(issue.details?.text?.valueString, startsWith('HTTP 502'));
      expect(issue.diagnostics?.valueString, body);
    }
  });

  test('an error status with a non-outcome resource keeps the resource', () {
    final r = parseResponse(
      http.Response(jsonEncode({'resourceType': 'Patient', 'id': 'p1'}), 500),
    );
    final oo = r.errorOperationOutcomes.single;
    expect(oo.contained?.single, isA<Patient>());
    expect(r.resources, isEmpty);
  });
}
