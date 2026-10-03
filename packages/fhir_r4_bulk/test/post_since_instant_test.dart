import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

/// The POST kick-off's `_since` is an instant: the Bulk Data IG 2.0.0
/// OperationDefinition `export`
/// (http://hl7.org/fhir/uv/bulkdata/OperationDefinition/export, fetched
/// 2026-10-03) types `_since` `instant`, `_outputFormat`, `_type` and
/// `_typeFilter` `string`.
void main() {
  test('a POST kick-off sends _since as valueInstant', () async {
    String? body;
    final client = MockClient((request) async {
      body = request.body;
      return http.Response('', 400);
    });
    await BulkRequestSystem(
      base: Uri.parse('http://example.com/fhir'),
      useHttpPost: true,
      since: '2024-01-01T00:00:00Z'.toFhirDateTime,
      types: [WhichResource(R4ResourceType.Patient)],
      client: client,
    ).request();
    final params = ((jsonDecode(body!) as Map<String, dynamic>)['parameter']
            as List<dynamic>)
        .cast<Map<String, dynamic>>();
    expect(
      params.singleWhere((p) => p['name'] == '_since'),
      {'name': '_since', 'valueInstant': '2024-01-01T00:00:00Z'},
    );
    expect(
      params.singleWhere((p) => p['name'] == '_type')['valueString'],
      'Patient',
    );
  });
}
