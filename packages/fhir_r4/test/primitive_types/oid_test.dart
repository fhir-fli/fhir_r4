import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void oidTest() {
  group('FhirOid Tests', () {
    const validOid = 'urn:oid:1.2.3.4.5';
    const invalidOid = 'urn:oid:1.2. 3.4.5'; // Invalid because of the space
    const jsonOid = 'urn:oid:2.16.840.1.113883.3';
    const yamlOid = 'urn:oid:0.9.2345.678';

    test('OID', () {
      expect(FhirOid('urn:oid:1.2.3.4').toString(), 'urn:oid:1.2.3.4');
      expect(
        FhirOid('urn:oid:1.2.3.4').toJson()['value'],
        'urn:oid:1.2.3.4',
      );
      expect(FhirOid('urn:oid:1.2.3.4').valueString, 'urn:oid:1.2.3.4');
      expect(
        FhirOid('urn:oid:2.999.9999').toString(),
        'urn:oid:2.999.9999',
      );
      expect(
        FhirOid('urn:oid:2.999.9999').toJson()['value'],
        'urn:oid:2.999.9999',
      );
      expect(
        FhirOid('urn:oid:2.999.9999').valueString,
        'urn:oid:2.999.9999',
      );
      expect(FhirOid('urn:oid:0.1').toString(), 'urn:oid:0.1');
      expect(FhirOid('urn:oid:0.1').toJson()['value'], 'urn:oid:0.1');
    });

    test('Invalid FhirOid - cannot be empty', () {
      expect(
        () => FhirOid(''),
        throwsA(isA<FormatException>()),
      );
    });

    test('Valid FhirOid from String', () {
      final fhirOid = FhirOid(validOid);
      expect(fhirOid.valueString, equals(validOid));
      expect(fhirOid.toString(), equals(validOid));
      expect(fhirOid.toJson()['value'], equals(validOid));
    });

    test('Invalid FhirOid throws FormatException', () {
      expect(() => FhirOid(invalidOid), throwsA(isA<FormatException>()));
    });

    test('FhirOid tryParse with valid String', () {
      final fhirOid = FhirOid.tryParse(validOid);
      expect(fhirOid?.valueString, equals(validOid));
      expect(fhirOid?.toString(), equals(validOid));
      expect(fhirOid?.toJson()['value'], equals(validOid));
    });

    test('FhirOid tryParse with invalid String', () {
      final fhirOid = FhirOid.tryParse(invalidOid);
      expect(fhirOid, isNull);
    });

    test('FhirOid fromJson with valid String', () {
      final fhirOid = FhirOid.fromJson({'value': jsonOid});
      expect(fhirOid.valueString, equals(jsonOid));
      expect(fhirOid.toJson()['value'], equals(jsonOid));
    });

    test('FhirOid fromJson with invalid type throws FormatException', () {
      expect(
        () => FhirOid.fromJson({'value': 123}),
        throwsA(
          isA<ArgumentError>(),
        ),
      );
    });

    test('FhirOid fromYaml with valid YAML', () {
      final fhirOid = FhirOid.fromYaml('value: $yamlOid');
      expect(fhirOid.valueString, equals(yamlOid));
      expect(fhirOid.toJson()['value'], equals(yamlOid));
    });

    test('FhirOid equality with another FhirOid', () {
      final fhirOid1 = FhirOid(validOid);
      final fhirOid2 = FhirOid(validOid);
      expect(fhirOid1 == fhirOid2, isTrue);
      expect(fhirOid1.equals(fhirOid2), isTrue);
    });

    test('FhirOid equality with a String', () {
      final fhirOid = FhirOid(validOid);
      // ignore: unrelated_type_equality_checks
      expect(fhirOid == validOid, isTrue);
    });

    test('FhirOid inequality with a different String', () {
      final fhirOid = FhirOid(validOid);
      // ignore: unrelated_type_equality_checks
      expect(fhirOid == 'urn:oid:1.1.1.1', isFalse);
    });

    test('FhirOid clone', () {
      final originalOid = FhirOid(validOid);
      final clonedOid = originalOid.clone();
      expect(clonedOid.valueString, equals(validOid));
      expect(clonedOid == originalOid, isTrue);
      expect(clonedOid.hashCode, equals(originalOid.hashCode));
    });

    test('Invalid FhirOid throws FormatException for starting with 3', () {
      expect(
        () => FhirOid('urn:oid:3.1.1.1'),
        throwsA(isA<FormatException>()),
      );
    });

    test('FhirOid toJsonString', () {
      final fhirOid = FhirOid(validOid);
      expect(fhirOid.toJsonString(), equals('{"value":"$validOid"}'));
    });
  });
}
