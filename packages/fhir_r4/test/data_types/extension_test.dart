import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void extensionTest() {
  group('FhirExtension', () {
    test('construction with string value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext/race'),
        valueString: FhirString('Caucasian'),
      );

      expect(ext.url.valueString, 'http://example.org/fhir/ext/race');
      expect(ext.valueString?.valueString, 'Caucasian');
      expect(ext.valueX, isA<FhirString>());
      expect(ext.fhirType, 'Extension');
    });

    test('construction with boolean value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext/active'),
        valueBoolean: FhirBoolean(true),
      );
      expect(ext.valueBoolean?.valueBoolean, true);
      expect(ext.valueX, isA<FhirBoolean>());
    });

    test('construction with integer value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext/score'),
        valueInteger: FhirInteger(42),
      );
      expect(ext.valueInteger?.valueNum, 42);
    });

    test('construction with CodeableConcept value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext/category'),
        valueCodeableConcept: CodeableConcept(
          text: FhirString('Test Category'),
        ),
      );
      expect(ext.valueCodeableConcept?.text?.valueString, 'Test Category');
      expect(ext.valueX, isA<CodeableConcept>());
    });

    test('construction with Coding value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext/code'),
        valueCoding: Coding(
          system: FhirUri('http://loinc.org'),
          code: FhirCode('12345'),
        ),
      );
      expect(ext.valueCoding?.code?.valueString, '12345');
    });

    test('construction with Reference value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext/ref'),
        valueReference: Reference(
          reference: FhirString('Patient/123'),
        ),
      );
      expect(ext.valueReference?.reference?.valueString, 'Patient/123');
    });

    test('construction with no value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext/empty'),
      );
      expect(ext.valueX, isNull);
      expect(ext.valueString, isNull);
      expect(ext.valueBoolean, isNull);
    });

    test('construction with url only (required field)', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext'),
      );
      expect(ext.url.valueString, 'http://example.org/fhir/ext');
    });

    test('toJson with string value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext'),
        valueString: FhirString('test'),
      );
      final json = ext.toJson();
      expect(json['url'], 'http://example.org/fhir/ext');
      expect(json['valueString'], 'test');
    });

    test('toJson with boolean value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext'),
        valueBoolean: FhirBoolean(true),
      );
      final json = ext.toJson();
      expect(json['url'], 'http://example.org/fhir/ext');
      expect(json['valueBoolean'], true);
    });

    test('toJson with CodeableConcept value', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/fhir/ext'),
        valueCodeableConcept: CodeableConcept(
          text: FhirString('Test'),
        ),
      );
      final json = ext.toJson();
      expect(json['valueCodeableConcept'], isA<Map>());
      expect(json['valueCodeableConcept']['text'], 'Test');
    });

    test('fromJson round-trips with string value', () {
      final original = FhirExtension(
        url: FhirString('http://example.org/fhir/ext'),
        valueString: FhirString('test'),
      );
      final json = original.toJson();
      final restored = FhirExtension.fromJson(json);
      expect(restored.url.valueString, original.url.valueString);
      expect(restored.valueString?.valueString, 'test');
    });

    test('fromJson round-trips with boolean value', () {
      final original = FhirExtension(
        url: FhirString('http://example.org/fhir/ext'),
        valueBoolean: FhirBoolean(false),
      );
      final json = original.toJson();
      final restored = FhirExtension.fromJson(json);
      expect(restored.valueBoolean?.valueBoolean, false);
    });

    test('fromJsonString works', () {
      final json = '{"url":"http://example.org/ext","valueString":"hello"}';
      final ext = FhirExtension.fromJsonString(json);
      expect(ext.url.valueString, 'http://example.org/ext');
      expect(ext.valueString?.valueString, 'hello');
    });

    test('copyWith creates modified copy', () {
      final original = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('original'),
      );
      final modified = original.copyWith(
        valueX: FhirString('modified'),
      );
      expect(modified.valueString?.valueString, 'modified');
      expect(modified.url.valueString, 'http://example.org/ext');
    });

    test('copyWith with no args returns equal object', () {
      final original = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('test'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('test'),
      );
      final b = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('test'),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('a'),
      );
      final b = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('b'),
      );
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns url', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/ext'),
      );
      expect(ext.getChildByName('url'), isA<FhirString>());
    });

    test('getChildrenByName for valueX', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('test'),
      );
      final children = ext.getChildrenByName('valueX');
      expect(children.length, 1);
    });

    test('getChildrenByName for specific value type', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('test'),
      );
      final stringChildren = ext.getChildrenByName('valueString');
      expect(stringChildren.length, 1);
      final boolChildren = ext.getChildrenByName('valueBoolean');
      expect(boolChildren.length, 0);
    });

    test('clone creates deep copy', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/ext'),
        valueString: FhirString('test'),
      );
      final cloned = ext.clone();
      expect(cloned.equalsDeep(ext), isTrue);
    });

    test('nested extensions', () {
      final ext = FhirExtension(
        url: FhirString('http://example.org/ext/parent'),
        extension_: [
          FhirExtension(
            url: FhirString('http://example.org/ext/child'),
            valueString: FhirString('nested'),
          ),
        ],
      );
      expect(ext.extension_?.length, 1);
      expect(
        ext.extension_?[0].valueString?.valueString,
        'nested',
      );
    });
  });
}
