import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void identifierTest() {
  group('Identifier', () {
    test('construction with all fields', () {
      final id = Identifier(
        use: IdentifierUse.official,
        type: CodeableConcept(
          coding: [
            Coding(
              system: FhirUri(
                  'http://terminology.hl7.org/CodeSystem/v2-0203'),
              code: FhirCode('MR'),
            ),
          ],
        ),
        system: FhirUri('http://hospital.example.org'),
        value: FhirString('MRN-12345'),
        period: Period(start: FhirDateTime.fromString('2020-01-01')),
        assigner: Reference(
          display: FhirString('Example Hospital'),
        ),
      );

      expect(id.use, IdentifierUse.official);
      expect(id.type?.coding?[0].code?.valueString, 'MR');
      expect(id.system?.valueString, 'http://hospital.example.org');
      expect(id.value?.valueString, 'MRN-12345');
      expect(id.period, isNotNull);
      expect(id.assigner?.display?.valueString, 'Example Hospital');
      expect(id.fhirType, 'Identifier');
    });

    test('construction with minimal fields', () {
      const id = Identifier();
      expect(id.use, isNull);
      expect(id.type, isNull);
      expect(id.system, isNull);
      expect(id.value, isNull);
      expect(id.period, isNull);
      expect(id.assigner, isNull);
    });

    test('construction with system and value only', () {
      final id = Identifier(
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
      );
      expect(id.system?.valueString, 'http://example.org');
      expect(id.value?.valueString, '12345');
      expect(id.use, isNull);
    });

    test('toJson produces correct JSON', () {
      final id = Identifier(
        use: IdentifierUse.usual,
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
      );
      final json = id.toJson();
      expect(json['use'], 'usual');
      expect(json['system'], 'http://example.org');
      expect(json['value'], '12345');
      expect(json.containsKey('type'), isFalse);
      expect(json.containsKey('period'), isFalse);
      expect(json.containsKey('assigner'), isFalse);
    });

    test('toJson with nested objects', () {
      final id = Identifier(
        type: CodeableConcept(
          coding: [Coding(code: FhirCode('MR'))],
        ),
        assigner: Reference(display: FhirString('Hospital')),
      );
      final json = id.toJson();
      expect(json['type'], isA<Map>());
      expect(json['assigner'], isA<Map>());
      expect(json['assigner']['display'], 'Hospital');
    });

    test('fromJson round-trips correctly', () {
      final original = Identifier(
        use: IdentifierUse.official,
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
        assigner: Reference(display: FhirString('Hospital')),
      );
      final json = original.toJson();
      final restored = Identifier.fromJson(json);
      expect(restored.use?.valueString, original.use?.valueString);
      expect(restored.system?.valueString, original.system?.valueString);
      expect(restored.value?.valueString, original.value?.valueString);
      expect(restored.assigner?.display?.valueString, 'Hospital');
    });

    test('fromJsonString works', () {
      final json = '{"system":"http://example.org","value":"12345"}';
      final id = Identifier.fromJsonString(json);
      expect(id.system?.valueString, 'http://example.org');
      expect(id.value?.valueString, '12345');
    });

    test('copyWith creates modified copy', () {
      final original = Identifier(
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
      );
      final modified = original.copyWith(
        value: FhirString('67890'),
      );
      expect(modified.value?.valueString, '67890');
      expect(modified.system?.valueString, 'http://example.org');
    });

    test('copyWith with no args returns equal object', () {
      final original = Identifier(
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Identifier(
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
      );
      final b = Identifier(
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Identifier(value: FhirString('12345'));
      final b = Identifier(value: FhirString('67890'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final id = Identifier(
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
      );
      expect(id.getChildByName('system'), isA<FhirUri>());
      expect(id.getChildByName('value'), isA<FhirString>());
      expect(id.getChildByName('period'), isNull);
    });

    test('clone creates deep copy', () {
      final id = Identifier(
        system: FhirUri('http://example.org'),
        value: FhirString('12345'),
      );
      final cloned = id.clone();
      expect(cloned.equalsDeep(id), isTrue);
    });

    test('different identifier uses', () {
      final official = Identifier(use: IdentifierUse.official);
      final usual = Identifier(use: IdentifierUse.usual);
      final temp = Identifier(use: IdentifierUse.temp);
      final secondary = Identifier(use: IdentifierUse.secondary);
      expect(official.use, IdentifierUse.official);
      expect(usual.use, IdentifierUse.usual);
      expect(temp.use, IdentifierUse.temp);
      expect(secondary.use, IdentifierUse.secondary);
    });
  });
}
