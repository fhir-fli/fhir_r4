import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/fhir_r4_bulk.dart';
import 'package:test/test.dart';

void main() {
  group('NDJSON parsing - malformed lines', () {
    test('fromNdJson throws FormatException on invalid JSON', () {
      const ndjson = '{"resourceType":"Patient","id":"1"}\n'
          'this is not valid json\n'
          '{"resourceType":"Patient","id":"2"}';

      expect(
        () => FhirBulk.fromNdJson(ndjson),
        throwsA(isA<FormatException>()),
      );
    });

    test('fromNdJson throws FormatException on JSON array instead of object',
        () {
      const ndjson = '[{"resourceType":"Patient","id":"1"}]';

      expect(
        () => FhirBulk.fromNdJson(ndjson),
        throwsA(isA<FormatException>()),
      );
    });

    test('fromNdJson throws FormatException on JSON missing resourceType', () {
      const ndjson = '{"id":"1","name":"test"}';

      expect(
        () => FhirBulk.fromNdJson(ndjson),
        throwsA(isA<FormatException>()),
      );
    });

    test(
        'fromNdJson throws FormatException on line with '
        'unrecognized resourceType', () {
      const ndjson = '{"resourceType":"NotARealResource","id":"1"}';

      expect(
        () => FhirBulk.fromNdJson(ndjson),
        throwsA(isA<FormatException>()),
      );
    });
  });

  group('NDJSON parsing - empty and whitespace input', () {
    test('fromNdJson returns empty list for empty string', () {
      final result = FhirBulk.fromNdJson('');
      expect(result, isEmpty);
    });

    test('fromNdJson returns empty list for whitespace-only string', () {
      final result = FhirBulk.fromNdJson('   \n  \n   ');
      expect(result, isEmpty);
    });

    test('fromNdJson returns empty list for newlines only', () {
      final result = FhirBulk.fromNdJson('\n\n\n');
      expect(result, isEmpty);
    });

    test('toNdJson returns empty string for empty list', () {
      final result = FhirBulk.toNdJson([]);
      expect(result, '');
    });
  });

  group('NDJSON parsing - single resource', () {
    test('fromNdJson parses single Patient without trailing newline', () {
      const ndjson = '{"resourceType":"Patient","id":"only-one"}';
      final result = FhirBulk.fromNdJson(ndjson);
      expect(result, hasLength(1));
      expect(result.first, isA<Patient>());
      expect((result.first as Patient).id, FhirString('only-one'));
    });

    test('fromNdJson parses single Patient with trailing newline', () {
      const ndjson = '{"resourceType":"Patient","id":"only-one"}\n';
      final result = FhirBulk.fromNdJson(ndjson);
      expect(result, hasLength(1));
      expect(result.first, isA<Patient>());
    });

    test('toNdJson with single resource produces no trailing newline', () {
      final ndjson = FhirBulk.toNdJson([Patient(id: 'solo'.toFhirString)]);
      expect(ndjson.endsWith('\n'), isFalse);
      expect(ndjson.split('\n'), hasLength(1));
    });
  });

  group('NDJSON - special characters in string fields', () {
    test('round-trips Patient with unicode characters in name', () {
      final patient = Patient(
        id: 'unicode-test'.toFhirString,
        name: [
          HumanName(
            family: 'O\'Brien'.toFhirString,
            given: ['Rene\u0301e'.toFhirString],
          ),
        ],
      );

      final ndjson = FhirBulk.toNdJson([patient]);
      final result = FhirBulk.fromNdJson(ndjson);

      expect(result, hasLength(1));
      final decoded = result.first as Patient;
      expect(decoded.name?.first.family?.valueString, "O'Brien");
      expect(decoded.name?.first.given?.first.valueString, 'Rene\u0301e');
    });

    test('round-trips Patient with escaped quotes in text', () {
      final patient = Patient(
        id: 'quotes-test'.toFhirString,
        text: Narrative(
          status: NarrativeStatus.generated,
          div: '<div xmlns="http://www.w3.org/1999/xhtml">She said '
              '&quot;hello&quot;</div>'
              .toFhirXhtml,
        ),
      );

      final ndjson = FhirBulk.toNdJson([patient]);
      final result = FhirBulk.fromNdJson(ndjson);

      expect(result, hasLength(1));
      expect(result.first, isA<Patient>());
      expect(
        (result.first as Patient).text?.div.valueString,
        contains('hello'),
      );
    });

    test('round-trips Patient with newline in address text', () {
      final patient = Patient(
        id: 'newline-addr'.toFhirString,
        address: [
          Address(
            text: '123 Main St\nApt 4B\nSpringfield, IL'.toFhirString,
          ),
        ],
      );

      final ndjson = FhirBulk.toNdJson([patient]);
      // JSON encoding should escape the newline, keeping NDJSON valid
      expect(ndjson.contains(r'\n'), isTrue);

      final result = FhirBulk.fromNdJson(ndjson);
      expect(result, hasLength(1));
      final decoded = result.first as Patient;
      expect(decoded.address?.first.text?.valueString, contains('Apt 4B'));
    });

    test('round-trips Patient with empty string fields', () {
      final patient = Patient(
        id: 'empty-fields'.toFhirString,
        name: [
          HumanName(family: ''.toFhirString),
        ],
      );

      final ndjson = FhirBulk.toNdJson([patient]);
      final result = FhirBulk.fromNdJson(ndjson);

      expect(result, hasLength(1));
      expect(result.first, isA<Patient>());
    });
  });

  group('NDJSON round-trip - various resource types', () {
    test('round-trips Observation', () {
      final obs = Observation(
        id: 'obs-rt'.toFhirString,
        status: ObservationStatus.final_,
        code: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri('http://loinc.org'),
              code: '29463-7'.toFhirCode,
              display: 'Body Weight'.toFhirString,
            ),
          ],
        ),
        valueX: Quantity(
          value: FhirDecimal(85.5),
          unit: 'kg'.toFhirString,
          system: FhirUri('http://unitsofmeasure.org'),
          code: 'kg'.toFhirCode,
        ),
      );

      final ndjson = FhirBulk.toNdJson([obs]);
      final result = FhirBulk.fromNdJson(ndjson);

      expect(result, hasLength(1));
      expect(result.first, isA<Observation>());
      final decoded = result.first as Observation;
      expect(decoded.id, FhirString('obs-rt'));
      expect(decoded.status, ObservationStatus.final_);
      expect((decoded.valueX as Quantity?)?.value?.valueNum, 85.5);
    });

    test('round-trips Condition', () {
      final condition = Condition(
        id: 'cond-rt'.toFhirString,
        subject: Reference(
          reference: 'Patient/123'.toFhirString,
        ),
        code: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri('http://snomed.info/sct'),
              code: '73211009'.toFhirCode,
              display: 'Diabetes mellitus'.toFhirString,
            ),
          ],
        ),
      );

      final ndjson = FhirBulk.toNdJson([condition]);
      final result = FhirBulk.fromNdJson(ndjson);

      expect(result, hasLength(1));
      expect(result.first, isA<Condition>());
      final decoded = result.first as Condition;
      expect(decoded.id, FhirString('cond-rt'));
    });

    test('round-trips Practitioner', () {
      final practitioner = Practitioner(
        id: 'pract-rt'.toFhirString,
        active: FhirBoolean(true),
        name: [
          HumanName(
            family: 'Smith'.toFhirString,
            given: ['John'.toFhirString],
            prefix: ['Dr.'.toFhirString],
          ),
        ],
      );

      final ndjson = FhirBulk.toNdJson([practitioner]);
      final result = FhirBulk.fromNdJson(ndjson);

      expect(result, hasLength(1));
      expect(result.first, isA<Practitioner>());
      final decoded = result.first as Practitioner;
      expect(decoded.id, FhirString('pract-rt'));
      expect(decoded.active?.valueBoolean, isTrue);
    });

    test('round-trips Encounter', () {
      final encounter = Encounter(
        id: 'enc-rt'.toFhirString,
        status: EncounterStatus.finished,
        class_: Coding(
          system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/v3-ActCode',
          ),
          code: 'AMB'.toFhirCode,
          display: 'ambulatory'.toFhirString,
        ),
      );

      final ndjson = FhirBulk.toNdJson([encounter]);
      final result = FhirBulk.fromNdJson(ndjson);

      expect(result, hasLength(1));
      expect(result.first, isA<Encounter>());
      final decoded = result.first as Encounter;
      expect(decoded.status, EncounterStatus.finished);
    });

    test('round-trips mixed resource types in single NDJSON', () {
      final resources = <Resource>[
        Patient(id: 'p1'.toFhirString),
        Observation(
          id: 'o1'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(text: 'test'.toFhirString),
        ),
        Condition(
          id: 'c1'.toFhirString,
          subject: Reference(reference: 'Patient/p1'.toFhirString),
        ),
        Encounter(
          id: 'e1'.toFhirString,
          status: EncounterStatus.planned,
          class_: Coding(code: 'AMB'.toFhirCode),
        ),
        AllergyIntolerance(
          id: 'ai1'.toFhirString,
          patient: Reference(reference: 'Patient/p1'.toFhirString),
        ),
      ];

      final ndjson = FhirBulk.toNdJson(resources);
      expect(ndjson.split('\n'), hasLength(5));

      final result = FhirBulk.fromNdJson(ndjson);
      expect(result, hasLength(5));
      expect(result[0], isA<Patient>());
      expect(result[1], isA<Observation>());
      expect(result[2], isA<Condition>());
      expect(result[3], isA<Encounter>());
      expect(result[4], isA<AllergyIntolerance>());
    });
  });

  group('NDJSON - lines with leading/trailing whitespace', () {
    test('fromNdJson trims whitespace around valid JSON lines', () {
      const ndjson = '  {"resourceType":"Patient","id":"ws1"}  \n'
          '\t{"resourceType":"Patient","id":"ws2"}\t';
      final result = FhirBulk.fromNdJson(ndjson);
      expect(result, hasLength(2));
      expect((result[0] as Patient).id, FhirString('ws1'));
      expect((result[1] as Patient).id, FhirString('ws2'));
    });
  });

  group('NDJSON round-trip - preserves data fidelity', () {
    test('round-trip preserves nested extensions', () {
      final patient = Patient(
        id: 'ext-test'.toFhirString,
        extension_: [
          FhirExtension(
            url: 'http://example.org/fhir/ext/race'.toFhirString,
            valueX: CodeableConcept(
              coding: [
                Coding(
                  system: FhirUri('urn:oid:2.16.840.1.113883.6.238'),
                  code: '2106-3'.toFhirCode,
                  display: 'White'.toFhirString,
                ),
              ],
            ),
          ),
        ],
      );

      final ndjson = FhirBulk.toNdJson([patient]);
      final result = FhirBulk.fromNdJson(ndjson);

      expect(result, hasLength(1));
      final decoded = result.first as Patient;
      expect(decoded.extension_, isNotNull);
      expect(decoded.extension_, hasLength(1));
      expect(
        decoded.extension_!.first.url?.valueString,
        'http://example.org/fhir/ext/race',
      );
    });

    test('round-trip produces identical JSON', () {
      final resources = <Resource>[
        Patient(
          id: 'json-id'.toFhirString,
          active: FhirBoolean(true),
          gender: AdministrativeGender.male,
          birthDate: '1990-01-15'.toFhirDate,
        ),
      ];

      final ndjson1 = FhirBulk.toNdJson(resources);
      final decoded = FhirBulk.fromNdJson(ndjson1);
      final ndjson2 = FhirBulk.toNdJson(decoded);

      expect(ndjson2, ndjson1);
    });

    test('double round-trip is stable', () {
      final resources = <Resource>[
        Patient(id: 'stable1'.toFhirString),
        Observation(
          id: 'stable2'.toFhirString,
          status: ObservationStatus.preliminary,
          code: CodeableConcept(text: 'BP'.toFhirString),
        ),
      ];

      final pass1 = FhirBulk.toNdJson(resources);
      final pass2 = FhirBulk.toNdJson(FhirBulk.fromNdJson(pass1));
      final pass3 = FhirBulk.toNdJson(FhirBulk.fromNdJson(pass2));

      expect(pass2, pass1);
      expect(pass3, pass1);
    });
  });

  group('NDJSON compression round-trip', () {
    test('toZipFile and fromCompressedData round-trip', () async {
      final resources = <Resource>[
        Patient(id: 'zip1'.toFhirString),
        Patient(id: 'zip2'.toFhirString),
      ];

      final ndjson = FhirBulk.toNdJson(resources);
      final zipBytes =
          await FhirBulk.toZipFile({'patients': ndjson});
      expect(zipBytes, isNotNull);

      final decoded = await FhirBulk.fromCompressedData(
        'application/zip',
        zipBytes!,
      );
      expect(decoded, hasLength(2));
      expect(decoded[0], isA<Patient>());
      expect(decoded[1], isA<Patient>());
    });

    test('toGZipFile and fromCompressedData round-trip', () async {
      final resources = <Resource>[
        Patient(id: 'gz1'.toFhirString),
      ];

      final ndjson = FhirBulk.toNdJson(resources);
      final gzBytes = FhirBulk.toGZipFile({'patients': ndjson});
      expect(gzBytes, isNotNull);

      final decoded = await FhirBulk.fromCompressedData(
        'application/gzip',
        gzBytes!,
      );
      expect(decoded, hasLength(1));
      expect((decoded.first as Patient).id, FhirString('gz1'));
    });

    test('toTarGzFile and fromCompressedData round-trip', () async {
      final resources = <Resource>[
        Patient(id: 'tar1'.toFhirString),
        Observation(
          id: 'tar2'.toFhirString,
          status: ObservationStatus.final_,
          code: CodeableConcept(text: 'test'.toFhirString),
        ),
      ];

      final ndjsonPatient = FhirBulk.toNdJson([resources[0]]);
      final ndjsonObs = FhirBulk.toNdJson([resources[1]]);
      final tarGzBytes = await FhirBulk.toTarGzFile({
        'patients': ndjsonPatient,
        'observations': ndjsonObs,
      });
      expect(tarGzBytes, isNotNull);

      final decoded = await FhirBulk.fromCompressedData(
        'application/x-tar',
        tarGzBytes!,
      );
      expect(decoded, hasLength(2));
    });

    test('fromCompressedData with unknown content type returns empty', () async {
      final result = await FhirBulk.fromCompressedData(
        'application/octet-stream',
        [1, 2, 3],
      );
      expect(result, isEmpty);
    });
  });

  group('NDJSON - large batch', () {
    test('round-trips 100 resources correctly', () {
      final resources = List<Resource>.generate(
        100,
        (i) => Patient(id: 'patient-$i'.toFhirString),
      );

      final ndjson = FhirBulk.toNdJson(resources);
      expect(ndjson.split('\n'), hasLength(100));

      final decoded = FhirBulk.fromNdJson(ndjson);
      expect(decoded, hasLength(100));
      for (var i = 0; i < 100; i++) {
        expect((decoded[i] as Patient).id, FhirString('patient-$i'));
      }
    });
  });
}
