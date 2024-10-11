import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirBoolean Tests', () {
    test('True Boolean Value', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      expect(fhirBool.value, isTrue);
      expect(fhirBool.toJson(), isTrue);
      expect(fhirBool.toYaml(), isTrue);
      expect(fhirBool.toString(), equals('true'));
    });

    test('False Boolean Value', () {
      final FhirBoolean fhirBool = FhirBoolean(false);
      expect(fhirBool.value, isFalse);
      expect(fhirBool.toJson(), isFalse);
      expect(fhirBool.toYaml(), isFalse);
      expect(fhirBool.toString(), equals('false'));
    });

    test('TryParse - Valid "true" String', () {
      final FhirBoolean? parsedBool = FhirBoolean.tryParse('true');
      expect(parsedBool, isNotNull);
      expect(parsedBool!.value, isTrue);
    });

    test('TryParse - Valid "false" String', () {
      final FhirBoolean? parsedBool = FhirBoolean.tryParse('false');
      expect(parsedBool, isNotNull);
      expect(parsedBool!.value, isFalse);
    });

    test('TryParse - Invalid String', () {
      final FhirBoolean? parsedBool = FhirBoolean.tryParse('invalid');
      expect(parsedBool, isNull);
    });

    test('TryParse - Boolean Input', () {
      final FhirBoolean? parsedBool = FhirBoolean.tryParse(true);
      expect(parsedBool, isNotNull);
      expect(parsedBool!.value, isTrue);
    });

    test('TryParse - Non-Boolean Input', () {
      final FhirBoolean? parsedBool = FhirBoolean.tryParse(123);
      expect(parsedBool, isNull);
    });

    test('FromJson - Boolean Input', () {
      final FhirBoolean fhirBool = FhirBoolean.fromJson(true);
      expect(fhirBool.value, isTrue);
    });

    test('FromJson - String Input "true"', () {
      final FhirBoolean fhirBool = FhirBoolean.fromJson('true');
      expect(fhirBool.value, isTrue);
    });

    test('FromJson - String Input "false"', () {
      final FhirBoolean fhirBool = FhirBoolean.fromJson('false');
      expect(fhirBool.value, isFalse);
    });

    test('FromJson - Invalid String Input', () {
      expect(
          () => FhirBoolean.fromJson('invalid'),
          throwsA(isA<FormatException>().having(
              (FormatException e) => e.message,
              'message',
              equals('Invalid input for FhirBoolean'))));
    });

    test('FromYaml - Valid Yaml', () {
      final FhirBoolean yamlBool = FhirBoolean.fromYaml('true');
      expect(yamlBool.value, isTrue);
    });

    test('FromYaml - Invalid Yaml', () {
      expect(
          () => FhirBoolean.fromYaml(123),
          throwsA(isA<FormatException>().having(
              (FormatException e) => e.message,
              'message',
              equals('Invalid Yaml format for FhirBoolean'))));
    });

    test('Equality - FhirBoolean', () {
      final FhirBoolean fhirBool1 = FhirBoolean(true);
      final FhirBoolean fhirBool2 = FhirBoolean(true);
      expect(fhirBool1, equals(fhirBool2));
    });

    test('Equality - bool', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      // ignore: unrelated_type_equality_checks
      expect(fhirBool == true, isTrue);
    });

    test('Inequality - FhirBoolean', () {
      final FhirBoolean fhirBool1 = FhirBoolean(true);
      final FhirBoolean fhirBool2 = FhirBoolean(false);
      expect(fhirBool1, isNot(equals(fhirBool2)));
    });

    test('Inequality - bool', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      // ignore: unrelated_type_equality_checks
      expect(fhirBool == false, isFalse);
    });

    test('HashCode', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      expect(fhirBool.hashCode, equals(true.hashCode));
    });

    test('Clone', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      final FhirBoolean clonedBool = fhirBool.clone();
      expect(clonedBool, equals(fhirBool));
      expect(clonedBool.value, equals(true));
    });

    test('Set Element', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      final Element newElement = Element();
      final FhirBoolean updatedBool = fhirBool.setElement('dummy', newElement);
      expect(updatedBool.value, equals(true));
    });

    test('CopyWith - No New Value', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      final FhirBoolean copiedBool = fhirBool.copyWith();
      expect(copiedBool.value, equals(fhirBool.value));
    });

    test('CopyWith - New Value', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      final FhirBoolean copiedBool = fhirBool.copyWith(newValue: false);
      expect(copiedBool.value, isFalse);
    });

    test('Logical AND with FhirBoolean', () {
      final FhirBoolean fhirBool1 = FhirBoolean(true);
      final FhirBoolean fhirBool2 = FhirBoolean(true);
      expect(fhirBool1 & fhirBool2, isTrue);
    });

    test('Logical AND with bool', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      expect(fhirBool & false, isFalse);
    });

    test('Logical OR with FhirBoolean', () {
      final FhirBoolean fhirBool1 = FhirBoolean(false);
      final FhirBoolean fhirBool2 = FhirBoolean(true);
      expect(fhirBool1 | fhirBool2, isTrue);
    });

    test('Logical OR with bool', () {
      final FhirBoolean fhirBool = FhirBoolean(false);
      expect(fhirBool | true, isTrue);
    });

    test('Logical XOR with FhirBoolean', () {
      final FhirBoolean fhirBool1 = FhirBoolean(true);
      final FhirBoolean fhirBool2 = FhirBoolean(false);
      expect(fhirBool1 ^ fhirBool2, isTrue);
    });

    test('Logical XOR with bool', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      expect(fhirBool ^ true, isFalse);
    });

    test('ToJson', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      expect(fhirBool.toJson(), isTrue);
    });

    test('ToYaml', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      expect(fhirBool.toYaml(), isTrue);
    });

    test('ToString', () {
      final FhirBoolean fhirBool = FhirBoolean(true);
      expect(fhirBool.toString(), equals('true'));
    });
  });
}
