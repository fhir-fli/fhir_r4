import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

/// The one-issue error OperationOutcome every package answers a failure
/// with (bulk, the REST client, the mapping engine). Its JSON is pinned
/// here, field by field, so a change to the helper is a change everyone
/// sees.
void main() {
  test('details and diagnostics, code invalid by default', () {
    final oo = errorOperationOutcome(
      details: 'HTTP 404: Not Found',
      diagnostics: '{"error":"gone"}',
    );
    expect(oo.toJson(), {
      'resourceType': 'OperationOutcome',
      'issue': [
        {
          'severity': 'error',
          'code': 'invalid',
          'details': {'text': 'HTTP 404: Not Found'},
          'diagnostics': '{"error":"gone"}',
        },
      ],
    });
  });

  test('a code, a contained resource and no details', () {
    final patient = Patient(id: 'p1'.toFhirString);
    final oo = errorOperationOutcome(
      code: IssueType.structure,
      contained: [patient],
      diagnostics: 'expected a Patient',
    );
    expect(oo.contained, [patient]);
    expect(oo.issue.single.code, IssueType.structure);
    expect(oo.issue.single.details, isNull);
    expect(oo.issue.single.diagnostics?.valueString, 'expected a Patient');
  });
}
