import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void ratioTest() {
  group('Ratio', () {
    test('construction with all fields', () {
      final ratio = Ratio(
        numerator: Quantity(
          value: FhirDecimal(1),
          unit: FhirString('mg'),
        ),
        denominator: Quantity(
          value: FhirDecimal(1),
          unit: FhirString('mL'),
        ),
      );

      expect(ratio.numerator?.value?.valueNum, 1);
      expect(ratio.numerator?.unit?.valueString, 'mg');
      expect(ratio.denominator?.value?.valueNum, 1);
      expect(ratio.denominator?.unit?.valueString, 'mL');
      expect(ratio.fhirType, 'Ratio');
    });

    test('construction with minimal fields', () {
      const ratio = Ratio();
      expect(ratio.numerator, isNull);
      expect(ratio.denominator, isNull);
    });

    test('construction with numerator only', () {
      final ratio = Ratio(
        numerator: Quantity(value: FhirDecimal(5)),
      );
      expect(ratio.numerator, isNotNull);
      expect(ratio.denominator, isNull);
    });

    test('toJson produces correct JSON', () {
      final ratio = Ratio(
        numerator: Quantity(
          value: FhirDecimal(500),
          unit: FhirString('mg'),
        ),
        denominator: Quantity(
          value: FhirDecimal(10),
          unit: FhirString('mL'),
        ),
      );
      final json = ratio.toJson();
      expect(json['numerator'], isA<Map>());
      expect(json['numerator']['value'], 500);
      expect(json['numerator']['unit'], 'mg');
      expect(json['denominator'], isA<Map>());
      expect(json['denominator']['value'], 10);
    });

    test('fromJson round-trips correctly', () {
      final original = Ratio(
        numerator: Quantity(
          value: FhirDecimal(250),
          unit: FhirString('mg'),
        ),
        denominator: Quantity(
          value: FhirDecimal(5),
          unit: FhirString('mL'),
        ),
      );
      final json = original.toJson();
      final restored = Ratio.fromJson(json);
      expect(restored.numerator?.value?.valueNum, 250);
      expect(restored.denominator?.value?.valueNum, 5);
      expect(restored.numerator?.unit?.valueString, 'mg');
    });

    test('fromJsonString works', () {
      const json = '{"numerator":{"value":1},"denominator":{"value":2}}';
      final ratio = Ratio.fromJsonString(json);
      expect(ratio.numerator?.value?.valueNum, 1);
      expect(ratio.denominator?.value?.valueNum, 2);
    });

    test('copyWith creates modified copy', () {
      final original = Ratio(
        numerator: Quantity(value: FhirDecimal(1)),
        denominator: Quantity(value: FhirDecimal(2)),
      );
      final modified = original.copyWith(
        numerator: Quantity(value: FhirDecimal(3)),
      );
      expect(modified.numerator?.value?.valueNum, 3);
      expect(modified.denominator?.value?.valueNum, 2);
    });

    test('copyWith with no args returns equal object', () {
      final original = Ratio(
        numerator: Quantity(value: FhirDecimal(1)),
        denominator: Quantity(value: FhirDecimal(2)),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Ratio(
        numerator: Quantity(value: FhirDecimal(1)),
        denominator: Quantity(value: FhirDecimal(2)),
      );
      final b = Ratio(
        numerator: Quantity(value: FhirDecimal(1)),
        denominator: Quantity(value: FhirDecimal(2)),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Ratio(numerator: Quantity(value: FhirDecimal(1)));
      final b = Ratio(numerator: Quantity(value: FhirDecimal(2)));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final ratio = Ratio(
        numerator: Quantity(value: FhirDecimal(1)),
        denominator: Quantity(value: FhirDecimal(2)),
      );
      expect(ratio.getChildByName('numerator'), isA<Quantity>());
      expect(ratio.getChildByName('denominator'), isA<Quantity>());
    });

    test('clone creates deep copy', () {
      final ratio = Ratio(
        numerator: Quantity(value: FhirDecimal(1)),
        denominator: Quantity(value: FhirDecimal(2)),
      );
      final cloned = ratio.clone();
      expect(cloned.equalsDeep(ratio), isTrue);
    });

    test('fromJson with empty map', () {
      final ratio = Ratio.fromJson(<String, dynamic>{});
      expect(ratio.numerator, isNull);
      expect(ratio.denominator, isNull);
    });
  });
}
