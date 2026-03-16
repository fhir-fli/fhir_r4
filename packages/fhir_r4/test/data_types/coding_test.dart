import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void codingTest() {
  group('Coding', () {
    test('construction with all fields', () {
      final coding = Coding(
        system: FhirUri('http://loinc.org'),
        version: FhirString('2.72'),
        code: FhirCode('12345-6'),
        display: FhirString('Test Display'),
        userSelected: FhirBoolean(true),
      );

      expect(coding.system?.valueString, 'http://loinc.org');
      expect(coding.version?.valueString, '2.72');
      expect(coding.code?.valueString, '12345-6');
      expect(coding.display?.valueString, 'Test Display');
      expect(coding.userSelected?.valueBoolean, true);
      expect(coding.fhirType, 'Coding');
    });

    test('construction with minimal fields', () {
      const coding = Coding();
      expect(coding.system, isNull);
      expect(coding.version, isNull);
      expect(coding.code, isNull);
      expect(coding.display, isNull);
      expect(coding.userSelected, isNull);
    });

    test('toJson produces correct JSON', () {
      final coding = Coding(
        system: FhirUri('http://snomed.info/sct'),
        code: FhirCode('386661006'),
        display: FhirString('Fever'),
      );
      final json = coding.toJson();
      expect(json['system'], 'http://snomed.info/sct');
      expect(json['code'], '386661006');
      expect(json['display'], 'Fever');
      expect(json.containsKey('version'), isFalse);
      expect(json.containsKey('userSelected'), isFalse);
    });

    test('fromJson round-trips correctly', () {
      final original = Coding(
        system: FhirUri('http://loinc.org'),
        version: FhirString('2.72'),
        code: FhirCode('12345-6'),
        display: FhirString('Test Display'),
        userSelected: FhirBoolean(true),
      );
      final json = original.toJson();
      final restored = Coding.fromJson(json);
      expect(restored.system?.valueString, original.system?.valueString);
      expect(restored.version?.valueString, original.version?.valueString);
      expect(restored.code?.valueString, original.code?.valueString);
      expect(restored.display?.valueString, original.display?.valueString);
      expect(
        restored.userSelected?.valueBoolean,
        original.userSelected?.valueBoolean,
      );
    });

    test('fromJsonString round-trips correctly', () {
      final json = '{"system":"http://loinc.org","code":"12345-6"}';
      final coding = Coding.fromJsonString(json);
      expect(coding.system?.valueString, 'http://loinc.org');
      expect(coding.code?.valueString, '12345-6');
    });

    test('copyWith creates modified copy', () {
      final original = Coding(
        system: FhirUri('http://loinc.org'),
        code: FhirCode('12345-6'),
        display: FhirString('Original'),
      );
      final modified = original.copyWith(
        display: FhirString('Modified'),
      );
      expect(modified.display?.valueString, 'Modified');
      expect(modified.system?.valueString, 'http://loinc.org');
      expect(modified.code?.valueString, '12345-6');
    });

    test('copyWith with no args returns equal object', () {
      final original = Coding(
        system: FhirUri('http://loinc.org'),
        code: FhirCode('12345-6'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Coding(
        system: FhirUri('http://loinc.org'),
        code: FhirCode('12345-6'),
      );
      final b = Coding(
        system: FhirUri('http://loinc.org'),
        code: FhirCode('12345-6'),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Coding(code: FhirCode('12345-6'));
      final b = Coding(code: FhirCode('99999-9'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final coding = Coding(
        system: FhirUri('http://loinc.org'),
        code: FhirCode('12345-6'),
      );
      expect(coding.getChildByName('system'), isA<FhirUri>());
      expect(coding.getChildByName('code'), isA<FhirCode>());
      expect(coding.getChildByName('version'), isNull);
    });

    test('getChildrenByName with checkValid throws for invalid name', () {
      const coding = Coding();
      expect(
        () => coding.getChildrenByName('invalid', true),
        throwsArgumentError,
      );
    });

    test('listChildrenNames returns all field names', () {
      const coding = Coding();
      final names = coding.listChildrenNames();
      expect(names, contains('system'));
      expect(names, contains('code'));
      expect(names, contains('display'));
      expect(names, contains('version'));
      expect(names, contains('userSelected'));
    });

    test('clone creates deep copy', () {
      final coding = Coding(
        system: FhirUri('http://loinc.org'),
        code: FhirCode('12345-6'),
      );
      final cloned = coding.clone();
      expect(cloned.equalsDeep(coding), isTrue);
    });

    test('fromJson with empty map', () {
      final coding = Coding.fromJson(<String, dynamic>{});
      expect(coding.system, isNull);
      expect(coding.code, isNull);
    });
  });
}
