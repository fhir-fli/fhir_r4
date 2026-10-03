import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

/// The R4B layer over fhir_bulk: typed constructors, typed returns, and the
/// model the core reads resource type names from.
void main() {
  test('r4Bulk parses and writes fhir_r4 resources and knows its types', () {
    expect(r4Bulk.fhirVersion, '4.3.0');
    expect(r4Bulk.resourceTypeNames, contains('Patient'));
    expect(r4Bulk.resourceTypeNames, isNot(contains('Foo')));
    expect(r4Bulk.resourceTypeNames.length, R4ResourceType.values.length);
    final p = r4Bulk.fromJson({'resourceType': 'Patient', 'id': 'x'});
    expect(p, isA<Patient>());
    expect(r4Bulk.toJson(p), {'resourceType': 'Patient', 'id': 'x'});
  });

  test('WhichResource and ImportFile take the typed names', () {
    final wr = WhichResource(R4ResourceType.Observation, FhirId('obs-1'));
    expect(wr.resourceType, 'Observation');
    expect(wr.id, 'obs-1');
    expect(WhichResource(null).resourceType, isNull);
    final f = ImportFile(
      resourceType: R4ResourceType.Patient,
      url: Uri.parse('https://data.example.com/p.ndjson'),
    );
    expect(f.resourceType, 'Patient');
  });

  test('kickoff and filter checks go through the R4B model', () {
    final k = BulkExportKickoff.fromQuery({
      '_type': ['Patient,Foo'],
    });
    expect(k.unknownTypes(r4Bulk), ['Foo']);
    expect(TypeFilter.parse('Patient?x=1').resourceTypeKnown(r4Bulk), isTrue);
    expect(TypeFilter.parse('Foo?x=1').resourceTypeKnown(r4Bulk), isFalse);
  });

  test('fromParameters reads a typed Parameters by element name', () {
    final k = BulkExportKickoff.fromParameters(
      Parameters.fromJson({
        'resourceType': 'Parameters',
        'parameter': [
          {
            'name': 'patient',
            'valueReference': {'reference': 'Patient/123'},
          },
          {'name': '_type', 'valueString': 'Patient,Observation'},
          {'name': '_since', 'valueInstant': '2020-01-01T00:00:00Z'},
        ],
      }),
    );
    expect(k.patients, ['Patient/123']);
    expect(k.types, ['Patient', 'Observation']);
    expect(k.since, DateTime.utc(2020));
  });

  test('a Group request sends the FhirId and the FhirDateTime as text',
      () async {
    String? url;
    final client = MockClient((request) async {
      url = request.url.toString();
      return http.Response('', 400);
    });
    final result = await BulkRequestGroup(
      base: Uri.parse('http://example.com/fhir'),
      id: FhirId('grp-99'),
      types: [WhichResource(R4ResourceType.Patient, FhirId('p1'))],
      since: '2024-06-01T00:00:00+05:00'.toFhirDateTime,
      client: client,
    ).request();
    expect(url, contains(r'Group/grp-99/$export'));
    expect(url, contains('_type=Patient/p1'));
    expect(url, contains('_since=2024-06-01T00%3A00%3A00%2B05%3A00'));
    expect(result.single, isA<OperationOutcome>());
    expect(
      (result.single as OperationOutcome)
          .issue
          .first
          .details
          ?.text
          ?.valueString,
      contains('400'),
    );
  });

  test('import answers with a typed OperationOutcome', () async {
    final client = MockClient(
      (request) async => http.Response(
        jsonEncode({
          'resourceType': 'OperationOutcome',
          'issue': [
            {'severity': 'information', 'code': 'informational'},
          ],
        }),
        202,
      ),
    );
    final outcome = await BulkImportRequest(
      base: Uri.parse('http://example.com/fhir'),
      files: [
        ImportFile(
          resourceType: R4ResourceType.Patient,
          url: Uri.parse('https://data.example.com/p.ndjson'),
        ),
      ],
      client: client,
    ).importData();
    expect(outcome.issue.single.severity, IssueSeverity.information);
  });
}
