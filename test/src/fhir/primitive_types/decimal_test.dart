import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirDecimal Tests', () {
    const validDecimal = 123.45;
    const validInteger = 123;
    const otherDecimal = 100.55;
    final element = Element(id: 'testElement'.toFhirString);

    // Basic FhirDecimal creation and validation
    test('FhirDecimal from double value', () {
      final fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.value, equals(validDecimal));
      expect(fhirDecimal.toString(), equals(validDecimal.toString()));
      expect(fhirDecimal.toJson(), equals(validDecimal));
    });

    test('FhirDecimal from int value', () {
      final fhirDecimal = FhirDecimal(validInteger);
      expect(fhirDecimal.value, equals(validInteger.toDouble()));
      expect(fhirDecimal.toString(), equals(validInteger.toString()));
      expect(fhirDecimal.toJson(), equals(validInteger));
    });

    test('FhirDecimal from FhirInteger', () {
      final fhirInteger = FhirInteger(validInteger);
      final fhirDecimal = FhirDecimal.fromFhirInteger(fhirInteger);
      expect(fhirDecimal.value, equals(validInteger.toDouble()));
      expect(fhirDecimal.toString(), equals(validInteger.toString()));
      expect(fhirDecimal.toJson(), equals(validInteger));
    });

    test('FhirDecimal fromJson with valid number', () {
      final fhirDecimal = FhirDecimal.fromJson(67.89);
      expect(fhirDecimal.value, equals(67.89));
      expect(fhirDecimal.toJson(), equals(67.89));
    });

    test('FhirDecimal fromJson with invalid input throws FormatException', () {
      expect(() => FhirDecimal.fromJson('invalid'), throwsFormatException);
    });

    test('FhirDecimal fromYaml with valid YAML', () {
      final fhirDecimal = FhirDecimal.fromYaml('200.50');
      expect(fhirDecimal.value, equals(200.50));
      expect(fhirDecimal.toJson(), equals(200.50));
    });

    // Arithmetic operations
    test('FhirDecimal addition', () {
      final fhirDecimal1 = FhirDecimal(validDecimal);
      final fhirDecimal2 = FhirDecimal(otherDecimal);
      final result = fhirDecimal1 + fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal + otherDecimal));
    });

    test('FhirDecimal subtraction', () {
      final fhirDecimal1 = FhirDecimal(validDecimal);
      final fhirDecimal2 = FhirDecimal(otherDecimal);
      final result = fhirDecimal1 - fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal - otherDecimal));
    });

    test('FhirDecimal multiplication', () {
      final fhirDecimal1 = FhirDecimal(validDecimal);
      final fhirDecimal2 = FhirDecimal(otherDecimal);
      final result = fhirDecimal1 * fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal * otherDecimal));
    });

    test('FhirDecimal division', () {
      final fhirDecimal1 = FhirDecimal(validDecimal);
      final fhirDecimal2 = FhirDecimal(otherDecimal);
      final result = fhirDecimal1 / fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal / otherDecimal));
    });

    test('FhirDecimal modulus', () {
      final fhirDecimal1 = FhirDecimal(validDecimal);
      final fhirDecimal2 = FhirDecimal(otherDecimal);
      final result = fhirDecimal1 % fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal % otherDecimal));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirDecimal absolute value', () {
      final fhirDecimal = FhirDecimal(-validDecimal);
      expect(fhirDecimal.abs(), equals(validDecimal));
    });

    test('FhirDecimal rounding', () {
      final fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.round(), equals(validDecimal.round()));
    });

    test('FhirDecimal flooring', () {
      final fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.floor(), equals(validDecimal.floor()));
    });

    test('FhirDecimal ceiling', () {
      final fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.ceil(), equals(validDecimal.ceil()));
    });

    // Comparison operations
    test('FhirDecimal comparison', () {
      final fhirDecimal1 = FhirDecimal(validDecimal);
      final fhirDecimal2 = FhirDecimal(otherDecimal);
      expect(fhirDecimal1 > fhirDecimal2, isTrue);
      expect(fhirDecimal2 < fhirDecimal1, isTrue);
    });

    test('FhirDecimal equality with another FhirDecimal', () {
      final fhirDecimal1 = FhirDecimal(validDecimal);
      final fhirDecimal2 = FhirDecimal(validDecimal);
      expect(fhirDecimal1 == fhirDecimal2, isTrue);
      expect(fhirDecimal1.equals(fhirDecimal2), isTrue);
    });

    test('FhirDecimal inequality with a different number', () {
      final fhirDecimal = FhirDecimal(validDecimal);
      // ignore: unrelated_type_equality_checks
      expect(fhirDecimal == validInteger, isFalse);
    });

    test('FhirDecimal clone', () {
      final originalDecimal = FhirDecimal(validDecimal);
      final clonedDecimal = originalDecimal.clone();
      expect(clonedDecimal.value, equals(validDecimal));
      expect(clonedDecimal == originalDecimal, isTrue);
      expect(clonedDecimal.hashCode, equals(originalDecimal.hashCode));
    });

    test('FhirDecimal copyWith new value', () {
      final originalDecimal = FhirDecimal(validDecimal);
      final copiedDecimal = originalDecimal.copyWith(newValue: 678.90);
      expect(copiedDecimal.value, equals(678.90));
      expect(originalDecimal.value, equals(validDecimal));
    });

    test('FhirDecimal setElement', () {
      final originalDecimal = FhirDecimal(validDecimal);
      final updatedDecimal =
          originalDecimal.setElement('elementName', 'newElementValue');
      expect(updatedDecimal.value, equals(validDecimal));
      expect(updatedDecimal.element != originalDecimal.element, isTrue);
    });

    test('FhirDecimal with Element', () {
      final fhirDecimal = FhirDecimal(validDecimal, element: element);
      expect(fhirDecimal.element?.id, equals('testElement'));
    });

    test('FhirDecimal toJsonString', () {
      final fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.toJsonString(), equals(validDecimal.toString()));
    });
  });
}
