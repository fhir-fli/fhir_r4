import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirDecimal Tests', () {
    const double validDecimal = 123.45;
    const int validInteger = 123;
    const double otherDecimal = 100.55;
    final Element element = Element(id: 'testElement'.toFhirString);

    // Basic FhirDecimal creation and validation
    test('FhirDecimal from double value', () {
      final FhirDecimal fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.value, equals(validDecimal));
      expect(fhirDecimal.toString(), equals(validDecimal.toString()));
      expect(fhirDecimal.toJson(), equals(validDecimal));
    });

    test('FhirDecimal from int value', () {
      final FhirDecimal fhirDecimal = FhirDecimal(validInteger);
      expect(fhirDecimal.value, equals(validInteger.toDouble()));
      expect(fhirDecimal.toString(), equals(validInteger.toString()));
      expect(fhirDecimal.toJson(), equals(validInteger));
    });

    test('FhirDecimal from FhirInteger', () {
      final FhirInteger fhirInteger = FhirInteger(validInteger);
      final FhirDecimal fhirDecimal = FhirDecimal.fromFhirInteger(fhirInteger);
      expect(fhirDecimal.value, equals(validInteger.toDouble()));
      expect(fhirDecimal.toString(), equals(validInteger.toString()));
      expect(fhirDecimal.toJson(), equals(validInteger));
    });

    test('FhirDecimal fromJson with valid number', () {
      final FhirDecimal fhirDecimal = FhirDecimal.fromJson(67.89);
      expect(fhirDecimal.value, equals(67.89));
      expect(fhirDecimal.toJson(), equals(67.89));
    });

    test('FhirDecimal fromJson with invalid input throws FormatException', () {
      expect(() => FhirDecimal.fromJson('invalid'), throwsFormatException);
    });

    test('FhirDecimal fromYaml with valid YAML', () {
      final FhirDecimal fhirDecimal = FhirDecimal.fromYaml('200.50');
      expect(fhirDecimal.value, equals(200.50));
      expect(fhirDecimal.toJson(), equals(200.50));
    });

    // Arithmetic operations
    test('FhirDecimal addition', () {
      final FhirDecimal fhirDecimal1 = FhirDecimal(validDecimal);
      final FhirDecimal fhirDecimal2 = FhirDecimal(otherDecimal);
      final FhirDecimal result = fhirDecimal1 + fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal + otherDecimal));
    });

    test('FhirDecimal subtraction', () {
      final FhirDecimal fhirDecimal1 = FhirDecimal(validDecimal);
      final FhirDecimal fhirDecimal2 = FhirDecimal(otherDecimal);
      final FhirDecimal result = fhirDecimal1 - fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal - otherDecimal));
    });

    test('FhirDecimal multiplication', () {
      final FhirDecimal fhirDecimal1 = FhirDecimal(validDecimal);
      final FhirDecimal fhirDecimal2 = FhirDecimal(otherDecimal);
      final FhirDecimal result = fhirDecimal1 * fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal * otherDecimal));
    });

    test('FhirDecimal division', () {
      final FhirDecimal fhirDecimal1 = FhirDecimal(validDecimal);
      final FhirDecimal fhirDecimal2 = FhirDecimal(otherDecimal);
      final FhirDecimal result = fhirDecimal1 / fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal / otherDecimal));
    });

    test('FhirDecimal modulus', () {
      final FhirDecimal fhirDecimal1 = FhirDecimal(validDecimal);
      final FhirDecimal fhirDecimal2 = FhirDecimal(otherDecimal);
      final FhirDecimal result = fhirDecimal1 % fhirDecimal2 as FhirDecimal;
      expect(result.value, equals(validDecimal % otherDecimal));
    });

    // Numeric methods inherited from FhirNumber
    test('FhirDecimal absolute value', () {
      final FhirDecimal fhirDecimal = FhirDecimal(-validDecimal);
      expect(fhirDecimal.abs(), equals(validDecimal));
    });

    test('FhirDecimal rounding', () {
      final FhirDecimal fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.round(), equals(validDecimal.round()));
    });

    test('FhirDecimal flooring', () {
      final FhirDecimal fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.floor(), equals(validDecimal.floor()));
    });

    test('FhirDecimal ceiling', () {
      final FhirDecimal fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.ceil(), equals(validDecimal.ceil()));
    });

    // Comparison operations
    test('FhirDecimal comparison', () {
      final FhirDecimal fhirDecimal1 = FhirDecimal(validDecimal);
      final FhirDecimal fhirDecimal2 = FhirDecimal(otherDecimal);
      expect(fhirDecimal1 > fhirDecimal2, isTrue);
      expect(fhirDecimal2 < fhirDecimal1, isTrue);
    });

    test('FhirDecimal equality with another FhirDecimal', () {
      final FhirDecimal fhirDecimal1 = FhirDecimal(validDecimal);
      final FhirDecimal fhirDecimal2 = FhirDecimal(validDecimal);
      expect(fhirDecimal1 == fhirDecimal2, isTrue);
      expect(fhirDecimal1.equals(fhirDecimal2), isTrue);
    });

    test('FhirDecimal inequality with a different number', () {
      final FhirDecimal fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal == validInteger, isFalse);
    });

    test('FhirDecimal clone', () {
      final FhirDecimal originalDecimal = FhirDecimal(validDecimal);
      final FhirDecimal clonedDecimal = originalDecimal.clone();
      expect(clonedDecimal.value, equals(validDecimal));
      expect(clonedDecimal == originalDecimal, isTrue);
      expect(clonedDecimal.hashCode, equals(originalDecimal.hashCode));
    });

    test('FhirDecimal copyWith new value', () {
      final FhirDecimal originalDecimal = FhirDecimal(validDecimal);
      final FhirDecimal copiedDecimal =
          originalDecimal.copyWith(newValue: 678.90);
      expect(copiedDecimal.value, equals(678.90));
      expect(originalDecimal.value, equals(validDecimal));
    });

    test('FhirDecimal setElement', () {
      final FhirDecimal originalDecimal = FhirDecimal(validDecimal);
      final FhirDecimal updatedDecimal =
          originalDecimal.setElement('elementName', 'newElementValue');
      expect(updatedDecimal.value, equals(validDecimal));
      expect(updatedDecimal.element != originalDecimal.element, isTrue);
    });

    test('FhirDecimal with Element', () {
      final FhirDecimal fhirDecimal =
          FhirDecimal(validDecimal, element: element);
      expect(fhirDecimal.element?.id, equals('testElement'));
    });

    test('FhirDecimal toJsonString', () {
      final FhirDecimal fhirDecimal = FhirDecimal(validDecimal);
      expect(fhirDecimal.toJsonString(), equals(validDecimal.toString()));
    });
  });
}
