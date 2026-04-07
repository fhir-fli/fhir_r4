
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void quantityTest() {
  group('Quantity', () {
    test('construction with all fields', () {
      final qty = Quantity(
        value: FhirDecimal(98.6),
        comparator: QuantityComparator.lt,
        unit: FhirString('degF'),
        system: FhirUri('http://unitsofmeasure.org'),
        code: FhirCode('[degF]'),
      );

      expect(qty.value?.valueNum, 98.6);
      expect(qty.comparator, QuantityComparator.lt);
      expect(qty.unit?.valueString, 'degF');
      expect(qty.system?.valueString, 'http://unitsofmeasure.org');
      expect(qty.code?.valueString, '[degF]');
      expect(qty.fhirType, 'Quantity');
    });

    test('construction with minimal fields', () {
      const qty = Quantity();
      expect(qty.value, isNull);
      expect(qty.comparator, isNull);
      expect(qty.unit, isNull);
      expect(qty.system, isNull);
      expect(qty.code, isNull);
    });

    test('construction with just value and unit', () {
      final qty = Quantity(
        value: FhirDecimal(72),
        unit: FhirString('kg'),
      );
      expect(qty.value?.valueNum, 72);
      expect(qty.unit?.valueString, 'kg');
      expect(qty.system, isNull);
    });

    test('toJson produces correct JSON', () {
      final qty = Quantity(
        value: FhirDecimal(120),
        unit: FhirString('mmHg'),
        system: FhirUri('http://unitsofmeasure.org'),
        code: FhirCode('mm[Hg]'),
      );
      final json = qty.toJson();
      expect(json['value'], 120);
      expect(json['unit'], 'mmHg');
      expect(json['system'], 'http://unitsofmeasure.org');
      expect(json['code'], 'mm[Hg]');
      expect(json.containsKey('comparator'), isFalse);
    });

    test('fromJson round-trips correctly', () {
      final original = Quantity(
        value: FhirDecimal(98.6),
        unit: FhirString('degF'),
        system: FhirUri('http://unitsofmeasure.org'),
        code: FhirCode('[degF]'),
      );
      final json = original.toJson();
      final restored = Quantity.fromJson(json);
      expect(restored.value?.valueNum, original.value?.valueNum);
      expect(restored.unit?.valueString, original.unit?.valueString);
      expect(restored.system?.valueString, original.system?.valueString);
      expect(restored.code?.valueString, original.code?.valueString);
    });

    test('fromJsonString works', () {
      const json = '{"value":72,"unit":"kg"}';
      final qty = Quantity.fromJsonString(json);
      expect(qty.value?.valueNum, 72);
      expect(qty.unit?.valueString, 'kg');
    });

    test('copyWith creates modified copy', () {
      final original = Quantity(
        value: FhirDecimal(120),
        unit: FhirString('mmHg'),
      );
      final modified = original.copyWith(
        value: FhirDecimal(80),
      );
      expect(modified.value?.valueNum, 80);
      expect(modified.unit?.valueString, 'mmHg');
    });

    test('copyWith with no args returns equal object', () {
      final original = Quantity(
        value: FhirDecimal(120),
        unit: FhirString('mmHg'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Quantity(value: FhirDecimal(120), unit: FhirString('mmHg'));
      final b = Quantity(value: FhirDecimal(120), unit: FhirString('mmHg'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Quantity(value: FhirDecimal(120));
      final b = Quantity(value: FhirDecimal(80));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final qty = Quantity(
        value: FhirDecimal(120),
        unit: FhirString('mmHg'),
      );
      expect(qty.getChildByName('value'), isA<FhirDecimal>());
      expect(qty.getChildByName('unit'), isA<FhirString>());
      expect(qty.getChildByName('comparator'), isNull);
    });

    test('clone creates deep copy', () {
      final qty = Quantity(
        value: FhirDecimal(120),
        unit: FhirString('mmHg'),
      );
      final cloned = qty.clone();
      expect(cloned.equalsDeep(qty), isTrue);
    });

    test('comparator values', () {
      final less = Quantity(
        value: FhirDecimal(5),
        comparator: QuantityComparator.lt,
      );
      final greater = Quantity(
        value: FhirDecimal(5),
        comparator: QuantityComparator.gt,
      );
      expect(less.comparator, QuantityComparator.lt);
      expect(greater.comparator, QuantityComparator.gt);
      expect(less.equalsDeep(greater), isFalse);
    });

    test('decimal precision preserved in JSON', () {
      final qty = Quantity(value: FhirDecimal(3.14159));
      final json = qty.toJson();
      expect(json['value'], 3.14159);
    });
  });
}
