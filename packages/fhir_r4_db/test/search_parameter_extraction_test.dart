import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show
        DateSearchParametersExtension,
        NumberSearchParametersExtension,
        QuantitySearchParametersExtension,
        ReferenceSearchParametersExtension,
        StringSearchParametersExtension,
        TokenSearchParametersExtension,
        UriSearchParametersExtension;
import 'package:test/test.dart';

/// Common args for all extraction calls.
const _rt = 'Patient';
const _id = 'test-1';
final int _lu = DateTime(2024).millisecondsSinceEpoch;
const _path = 'Patient.name';
const _idx = 0;

void main() {
  // ──────────────────────────────────────────────────────────────────────────
  // String extraction
  // ──────────────────────────────────────────────────────────────────────────
  group('StringSearchParametersExtension:', () {
    test('extracts FhirString value', () {
      final str = 'hello world'.toFhirString;
      final results = str.toStringSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.stringValue.value, 'hello world');
    });

    test('extracts HumanName parts', () {
      final name = HumanName(
        family: 'Smith'.toFhirString,
        given: <FhirString>['John'.toFhirString, 'Q'.toFhirString],
        prefix: <FhirString>['Dr'.toFhirString],
        suffix: <FhirString>['Jr'.toFhirString],
        text: 'Dr John Q Smith Jr'.toFhirString,
      );
      final results = name.toStringSearchParameter(_rt, _id, _lu, _path, _idx);
      // family + 2 given + 1 prefix + 1 suffix + 1 text = 6
      expect(results.length, 6);

      final values = results.map((r) => r.stringValue.value).toList();
      expect(values, contains('smith'));
      expect(values, contains('john'));
      expect(values, contains('q'));
      expect(values, contains('dr'));
      expect(values, contains('jr'));
      expect(values, contains('dr john q smith jr'));
    });

    test('extracts HumanName with only family', () {
      final name = HumanName(family: 'Doe'.toFhirString);
      final results = name.toStringSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.stringValue.value, 'doe');
    });

    test('normalizes strings to lowercase', () {
      final str = 'UPPERCASE'.toFhirString;
      final results = str.toStringSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.first.stringValue.value, 'uppercase');
    });

    test('extracts Address parts', () {
      final addr = Address(
        line: <FhirString>['123 Main St'.toFhirString],
        city: 'Boston'.toFhirString,
        state: 'MA'.toFhirString,
        postalCode: '02101'.toFhirString,
        country: 'US'.toFhirString,
      );
      final results =
          addr.toStringSearchParameter(_rt, _id, _lu, 'Patient.address', _idx);
      expect(results.length, 5);

      final values = results.map((r) => r.stringValue.value).toList();
      expect(values, contains('123 main st'));
      expect(values, contains('boston'));
      expect(values, contains('ma'));
      expect(values, contains('02101'));
      expect(values, contains('us'));
    });

    test('extracts Address with district and text', () {
      final addr = Address(
        district: 'Suffolk'.toFhirString,
        text: '123 Main St, Boston, MA'.toFhirString,
      );
      final results =
          addr.toStringSearchParameter(_rt, _id, _lu, 'Patient.address', _idx);
      expect(results.length, 2);
    });

    test('extracts ContactPoint value', () {
      final cp = ContactPoint(
        system: ContactPointSystem.phone,
        value: '555-1234'.toFhirString,
      );
      final results =
          cp.toStringSearchParameter(_rt, _id, _lu, 'Patient.telecom', _idx);
      expect(results.length, 1);
      expect(results.first.stringValue.value, '555-1234');
    });

    test('returns empty for unsupported type', () {
      final coding = Coding(code: FhirCode('test'));
      final results =
          coding.toStringSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Token extraction
  // ──────────────────────────────────────────────────────────────────────────
  group('TokenSearchParametersExtension:', () {
    test('extracts FhirCode', () {
      final code = FhirCode('active');
      final results = code.toTokenSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.tokenValue.value, 'active');
      // FhirCode has no system
      expect(results.first.tokenSystem.present, false);
    });

    test('extracts Coding with system and display', () {
      final coding = Coding(
        system: FhirUri('http://loinc.org'),
        code: FhirCode('12345-6'),
        display: 'Hemoglobin'.toFhirString,
      );
      final results = coding.toTokenSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.tokenSystem.value, 'http://loinc.org');
      expect(results.first.tokenValue.value, '12345-6');
      expect(results.first.tokenDisplay.value, 'Hemoglobin');
    });

    test('extracts CodeableConcept with multiple codings and text', () {
      final cc = CodeableConcept(
        coding: <Coding>[
          Coding(
            system: FhirUri('http://loinc.org'),
            code: FhirCode('12345-6'),
          ),
          Coding(
            system: FhirUri('http://snomed.info/sct'),
            code: FhirCode('999999'),
          ),
        ],
        text: 'Hemoglobin test'.toFhirString,
      );
      final results = cc.toTokenSearchParameter(_rt, _id, _lu, _path, _idx);
      // 2 codings + 1 text = 3
      expect(results.length, 3);

      expect(results[0].tokenSystem.value, 'http://loinc.org');
      expect(results[0].tokenValue.value, '12345-6');
      expect(results[1].tokenSystem.value, 'http://snomed.info/sct');
      expect(results[1].tokenValue.value, '999999');
      // text entry has no system
      expect(results[2].tokenValue.value, 'Hemoglobin test');
    });

    test('extracts Identifier with system', () {
      final identifier = Identifier(
        system: FhirUri('http://hospital.example.org/mrn'),
        value: 'MRN12345'.toFhirString,
      );
      final results =
          identifier.toTokenSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(
        results.first.tokenSystem.value,
        'http://hospital.example.org/mrn',
      );
      expect(results.first.tokenValue.value, 'MRN12345');
    });

    test('extracts FhirBoolean', () {
      final b = FhirBoolean(true);
      final results = b.toTokenSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.tokenValue.value, 'true');
    });

    test('extracts FhirString as token', () {
      final str = 'some-value'.toFhirString;
      final results = str.toTokenSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.tokenValue.value, 'some-value');
    });

    test('extracts FhirCodeEnum', () {
      const status = ObservationStatus.final_;
      final results =
          status.toTokenSearchParameter('Observation', _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.tokenValue.value, 'final');
    });

    test('returns empty for unsupported type', () {
      final addr = Address(city: 'Boston'.toFhirString);
      final results = addr.toTokenSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Reference extraction
  // ──────────────────────────────────────────────────────────────────────────
  group('ReferenceSearchParametersExtension:', () {
    test('extracts simple reference (Type/id)', () {
      final ref = Reference(reference: 'Patient/123'.toFhirString);
      final results = ref.toReferenceSearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.subject',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.referenceValue.value, 'Patient/123');
      expect(results.first.referenceResourceType.value, 'Patient');
      expect(results.first.referenceIdPart.value, '123');
    });

    test('extracts absolute reference', () {
      final ref = Reference(
        reference: 'http://example.org/fhir/Patient/456'.toFhirString,
      );
      final results = ref.toReferenceSearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.subject',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.referenceResourceType.value, 'Patient');
      expect(results.first.referenceIdPart.value, '456');
      expect(results.first.referenceBaseUrl.value, isNotNull);
    });

    test('extracts versioned reference', () {
      final ref = Reference(
        reference: 'Patient/123/_history/2'.toFhirString,
      );
      final results = ref.toReferenceSearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.subject',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.referenceResourceType.value, 'Patient');
      expect(results.first.referenceIdPart.value, '123');
      expect(results.first.referenceVersion.value, '2');
    });

    test('extracts reference with identifier', () {
      final ref = Reference(
        identifier: Identifier(
          system: FhirUri('http://hospital.example.org/mrn'),
          value: 'MRN123'.toFhirString,
        ),
      );
      final results = ref.toReferenceSearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.subject',
        _idx,
      );
      expect(results.length, 1);
      expect(
        results.first.identifierSystem.value,
        'http://hospital.example.org/mrn',
      );
      expect(results.first.identifierValue.value, 'MRN123');
    });

    test('extracts FhirCanonical as reference', () {
      final canonical = FhirCanonical(
        'http://hl7.org/fhir/StructureDefinition/Patient',
      );
      final results = canonical.toReferenceSearchParameter(
        'StructureDefinition',
        _id,
        _lu,
        'SD.baseDefinition',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.referenceResourceType.value, 'StructureDefinition');
      expect(results.first.referenceIdPart.value, 'Patient');
    });

    test('returns empty for unsupported type', () {
      final str = 'not-a-reference'.toFhirString;
      final results =
          str.toReferenceSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results, isEmpty);
    });

    test('handles null reference string', () {
      const ref = Reference();
      final results = ref.toReferenceSearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.subject',
        _idx,
      );
      // A Reference with no reference string and no identifier is display-only
      // and should be skipped
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // ReferenceComponents parsing
  // ──────────────────────────────────────────────────────────────────────────
  group('ReferenceComponents (via _parseReference):', () {
    // We test _parseReference indirectly through the extension method.

    test('parses id-only reference', () {
      final ref = Reference(reference: 'just-an-id'.toFhirString);
      final results = ref.toReferenceSearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.subject',
        _idx,
      );
      // id-only: no slash, so id = 'just-an-id', no resourceType
      expect(results.first.referenceIdPart.value, 'just-an-id');
      expect(results.first.referenceResourceType.present, false);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Date extraction
  // ──────────────────────────────────────────────────────────────────────────
  group('DateSearchParametersExtension:', () {
    test('extracts FhirDate', () {
      final date = FhirDate.fromString('2024-06-15');
      final results = date.toDateSearchParameter(
        _rt,
        _id,
        _lu,
        'Patient.birthDate',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.dateString.value, contains('2024-06-15'));
    });

    test('extracts FhirDateTime', () {
      final dt = FhirDateTime.fromDateTime(DateTime(2024, 3, 15, 10, 30));
      final results = dt.toDateSearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.effectiveDateTime',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.dateString.value, isNotEmpty);
      expect(results.first.dateValue.value, isA<DateTime>());
    });

    test('extracts FhirInstant', () {
      final instant =
          FhirInstant.fromDateTime(DateTime.utc(2024, 3, 15, 10, 30));
      final results = instant.toDateSearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.issued',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.dateString.value, isNotEmpty);
    });

    test('returns empty for unsupported type', () {
      final str = '2024-01-01'.toFhirString;
      final results = str.toDateSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Number extraction
  // ──────────────────────────────────────────────────────────────────────────
  group('NumberSearchParametersExtension:', () {
    test('extracts FhirInteger', () {
      final num_ = FhirInteger(42);
      final results = num_.toNumberSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.numberValue.value, 42.0);
    });

    test('extracts FhirDecimal', () {
      final dec = FhirDecimal(3.14);
      final results = dec.toNumberSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.numberValue.value, closeTo(3.14, 0.001));
    });

    test('returns empty for non-number type', () {
      final str = '42'.toFhirString;
      final results = str.toNumberSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Quantity extraction
  // ──────────────────────────────────────────────────────────────────────────
  group('QuantitySearchParametersExtension:', () {
    test('extracts Quantity with all fields', () {
      final qty = Quantity(
        value: FhirDecimal(120.0),
        unit: 'mmHg'.toFhirString,
        system: FhirUri('http://unitsofmeasure.org'),
        code: FhirCode('mm[Hg]'),
      );
      final results = qty.toQuantitySearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.valueQuantity',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.quantityValue.value, 120.0);
      expect(results.first.quantityUnit.value, 'mmHg');
      expect(
        results.first.quantitySystem.value,
        'http://unitsofmeasure.org',
      );
      expect(results.first.quantityCode.value, 'mm[Hg]');
    });

    test('extracts Quantity with value only', () {
      final qty = Quantity(value: FhirDecimal(98.6));
      final results = qty.toQuantitySearchParameter(
        'Observation',
        _id,
        _lu,
        'Observation.valueQuantity',
        _idx,
      );
      expect(results.length, 1);
      expect(results.first.quantityValue.value, closeTo(98.6, 0.01));
      expect(results.first.quantityUnit.present, false);
    });

    test('returns empty for non-Quantity type', () {
      final str = '120'.toFhirString;
      final results = str.toQuantitySearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results, isEmpty);
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // URI extraction
  // ──────────────────────────────────────────────────────────────────────────
  group('UriSearchParametersExtension:', () {
    test('extracts FhirUri', () {
      final uri = FhirUri('http://example.org/ValueSet/test');
      final results = uri.toUriSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(
        results.first.uriValue.value,
        'http://example.org/ValueSet/test',
      );
    });

    test('extracts FhirUrl', () {
      final url = FhirUrl('http://example.org/endpoint');
      final results = url.toUriSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.uriValue.value, contains('example.org'));
    });

    test('extracts FhirCanonical', () {
      final canonical = FhirCanonical(
        'http://hl7.org/fhir/StructureDefinition/Patient',
      );
      final results =
          canonical.toUriSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.length, 1);
      expect(results.first.uriValue.value, contains('Patient'));
    });

    test('normalizes trailing slash', () {
      final uri = FhirUri('http://example.org/fhir/');
      final results = uri.toUriSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.first.uriValue.value, isNot(endsWith('/')));
    });

    test('normalizes scheme and host to lowercase', () {
      final uri = FhirUri('HTTP://EXAMPLE.ORG/ValueSet/test');
      final results = uri.toUriSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results.first.uriValue.value, startsWith('http://example.org'));
    });

    test('returns empty for unsupported type', () {
      final str = 'http://example.org'.toFhirString;
      final results = str.toUriSearchParameter(_rt, _id, _lu, _path, _idx);
      expect(results, isEmpty);
    });
  });
}
