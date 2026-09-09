import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:test/test.dart';

/// The kick-off parameters and the complete-status manifest, checked against
/// the Bulk Data Access IG 2.0.0 export.html (read whole 2026-09-08): its
/// example response body is the fixture below, verbatim.
void main() {
  // export.html's own _typeFilter example, two subqueries joined with a comma.
  const twoFilters = 'MedicationRequest?status=active,'
      'MedicationRequest?status=completed&date=gt2018-07-01T00:00:00Z';

  group('BulkExportKickoff.fromQuery', () {
    test('repeated and comma-delimited values are one list', () {
      // export.html: "The server SHALL treat the values provided as if they
      // were comma delimited values within a single instance of the
      // parameter."
      final k = BulkExportKickoff.fromQuery({
        '_type': ['Patient,Observation', 'Condition'],
        '_typeFilter': [twoFilters],
        '_elements': ['id', 'Patient.name'],
        'includeAssociatedData': ['LatestProvenanceResources'],
        '_since': ['2021-01-01T00:00:00Z'],
        '_outputFormat': ['ndjson'],
      });
      expect(k.types, ['Patient', 'Observation', 'Condition']);
      expect(k.typeFilters.map((f) => f.toString()), [
        'MedicationRequest?status=active',
        'MedicationRequest?status=completed&date=gt2018-07-01T00:00:00Z',
      ]);
      expect(k.elements, ['id', 'Patient.name']);
      expect(k.includeAssociatedData, ['LatestProvenanceResources']);
      expect(k.since, DateTime.utc(2021));
      expect(k.outputFormat, 'ndjson');
      expect(k.outputFormatSupported, isTrue);
      expect(k.unknownTypes, isEmpty);
    });

    test('nothing given is all defaults', () {
      const k = BulkExportKickoff();
      expect(BulkExportKickoff.fromQuery({}).toQuery(), k.toQuery());
      expect(k.outputFormat, isNull);
      expect(k.outputFormatSupported, isTrue);
      expect(k.types, isEmpty);
      expect(k.toQuery(), isEmpty);
    });

    test(
        'the three output formats a server SHALL accept, and one it need '
        'not', () {
      // export.html, _outputFormat: "The server SHALL accept the full
      // content type of application/fhir+ndjson as well as the abbreviated
      // representations application/ndjson and ndjson."
      for (final f in [
        'application/fhir+ndjson',
        'application/ndjson',
        'ndjson',
      ]) {
        expect(
          BulkExportKickoff.fromQuery({
            '_outputFormat': [f],
          }).outputFormatSupported,
          isTrue,
          reason: f,
        );
      }
      expect(
        BulkExportKickoff.fromQuery({
          '_outputFormat': ['application/fhir+xml'],
        }).outputFormatSupported,
        isFalse,
      );
    });

    test('a bad _since or a _typeFilter without ? is a FormatException', () {
      expect(
        () => BulkExportKickoff.fromQuery({
          '_since': ['yesterday'],
        }),
        throwsFormatException,
      );
      expect(
        () => BulkExportKickoff.fromQuery({
          '_typeFilter': ['Patient'],
        }),
        throwsFormatException,
      );
    });

    test('unknown resource types in _type are named', () {
      expect(
        BulkExportKickoff.fromQuery({
          '_type': ['Patient,Foo,Bar'],
        }).unknownTypes,
        ['Foo', 'Bar'],
      );
    });

    test('toQuery round-trips through fromQuery', () {
      final k = BulkExportKickoff.fromQuery({
        '_type': ['Patient', 'Observation'],
        '_typeFilter': ['Patient?active=true', 'Observation?code=1234-5'],
        '_since': ['2021-01-01T00:00:00.000Z'],
      });
      final again = BulkExportKickoff.fromQuery(
        k.toQuery().map((key, value) => MapEntry(key, [value])),
      );
      expect(again.toQuery(), k.toQuery());
    });
  });

  group('BulkExportKickoff.fromParameters', () {
    test('a POST body with repeated patient references and string values', () {
      // export.html, Group Membership Request Pattern, the POST example:
      // two `patient` parameters carrying valueReference.
      final k = BulkExportKickoff.fromParameters(
        Parameters.fromJson({
          'resourceType': 'Parameters',
          'parameter': [
            {
              'name': 'patient',
              'valueReference': {'reference': 'Patient/123'},
            },
            {
              'name': 'patient',
              'valueReference': {'reference': 'Patient/456'},
            },
            {'name': '_type', 'valueString': 'Patient,Observation'},
            {'name': '_since', 'valueInstant': '2020-01-01T00:00:00Z'},
            {'name': '_outputFormat', 'valueString': 'application/ndjson'},
          ],
        }),
      );
      expect(k.patients, ['Patient/123', 'Patient/456']);
      expect(k.types, ['Patient', 'Observation']);
      expect(k.since, DateTime.utc(2020));
      expect(k.outputFormat, 'application/ndjson');
    });
  });

  group('TypeFilter', () {
    test('parses type and query, decodes the search parameters', () {
      final f = TypeFilter.parse(
        'MedicationRequest?status=completed&date=gt2018-07-01T00%3A00%3A00Z',
      );
      expect(f.resourceType, 'MedicationRequest');
      expect(f.resourceTypeKnown, isTrue);
      expect(f.searchParameters, {
        'status': ['completed'],
        'date': ['gt2018-07-01T00:00:00Z'],
      });
      expect(f.responseParameters, isEmpty);
    });

    test('names the response parameters the specification forbids', () {
      // export.html: "FHIR search response parameters such as _include and
      // _sort SHALL NOT be used."
      final f = TypeFilter.parse(
        'Patient?_include=Patient:organization&_sort=name&active=true',
      );
      expect(f.responseParameters, ['_include', '_sort']);
      expect(TypeFilter.parse('Foo?x=1').resourceTypeKnown, isFalse);
    });
  });

  group('BulkExportManifest', () {
    // export.html, Response - Complete Status, "Example response body",
    // verbatim.
    const example = r'''
{
  "transactionTime": "2021-01-01T00:00:00Z",
  "request" : "https://example.com/fhir/Patient/$export?_type=Patient,Observation",
  "requiresAccessToken" : true,
  "output" : [{
    "type" : "Patient",
    "url" : "https://example.com/output/patient_file_1.ndjson"
  },{
    "type" : "Patient",
    "url" : "https://example.com/output/patient_file_2.ndjson"
  },{
    "type" : "Observation",
    "url" : "https://example.com/output/observation_file_1.ndjson"
  }],
  "deleted" : [{
    "type" : "Bundle",
    "url" : "https://example.com/output/del_file_1.ndjson"
  }],
  "error" : [{
    "type" : "OperationOutcome",
    "url" : "https://example.com/output/err_file_1.ndjson"
  }],
  "extension" : {"https://example.com/extra-property" : true}
}''';

    test('reads the specification example, field by field', () {
      final m = BulkExportManifest.fromJson(
        jsonDecode(example) as Map<String, dynamic>,
      );
      expect(m.transactionTime, DateTime.utc(2021));
      expect(
        m.request,
        r'https://example.com/fhir/Patient/$export?_type=Patient,Observation',
      );
      expect(m.requiresAccessToken, isTrue);
      expect(
        m.output.map((f) => f.type),
        ['Patient', 'Patient', 'Observation'],
      );
      expect(
        m.output.map((f) => f.url).last,
        'https://example.com/output/observation_file_1.ndjson',
      );
      expect(m.output.every((f) => f.count == null), isTrue);
      expect(m.deleted.single.type, 'Bundle');
      expect(m.error.single.type, 'OperationOutcome');
      expect(m.extension, {'https://example.com/extra-property': true});
    });

    test('toJson gives the example back, key for key', () {
      final json = jsonDecode(example) as Map<String, dynamic>;
      final again = BulkExportManifest.fromJson(json).toJson();
      // transactionTime is re-serialised with milliseconds; compare as
      // instants and the rest as written.
      expect(
        DateTime.parse(again['transactionTime'] as String),
        DateTime.parse(json['transactionTime'] as String),
      );
      for (final key in [
        'request',
        'requiresAccessToken',
        'output',
        'deleted',
        'error',
        'extension',
      ]) {
        expect(again[key], json[key], reason: key);
      }
      expect(again.keys.toSet(), json.keys.toSet());
    });

    test('count is kept when given; deleted and extension may be absent', () {
      final m = BulkExportManifest.fromJson({
        'transactionTime': '2021-01-01T00:00:00Z',
        'request': r'https://example.com/fhir/$export',
        'requiresAccessToken': false,
        'output': [
          {
            'type': 'Patient',
            'url': 'https://example.com/p.ndjson',
            'count': 42,
          },
        ],
        'error': <dynamic>[],
      });
      expect(m.output.single.count, 42);
      expect(m.deleted, isEmpty);
      expect(m.extension, isNull);
      expect(m.toJson().containsKey('deleted'), isFalse);
      expect(m.toJson()['output'], [
        {'type': 'Patient', 'url': 'https://example.com/p.ndjson', 'count': 42},
      ]);
    });

    test('a required field missing is a FormatException', () {
      Map<String, dynamic> base() => {
            'transactionTime': '2021-01-01T00:00:00Z',
            'request': r'https://example.com/fhir/$export',
            'requiresAccessToken': true,
            'output': <dynamic>[],
            'error': <dynamic>[],
          };
      for (final key in [
        'transactionTime',
        'request',
        'requiresAccessToken',
        'output',
        'error',
      ]) {
        final json = base()..remove(key);
        expect(
          () => BulkExportManifest.fromJson(json),
          throwsFormatException,
          reason: key,
        );
      }
      expect(
        () => BulkExportManifest.fromJson(
          base()
            ..['output'] = [
              {'type': 'Patient'},
            ],
        ),
        throwsFormatException,
        reason: 'a file item without url',
      );
    });
  });
}
