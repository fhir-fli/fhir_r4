import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirBoolean Tests', () {
    test('True Boolean Value', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool.value, isTrue);
      expect(fhirBool.toJson(), isTrue);
      expect(fhirBool.toYaml(), isTrue);
      expect(fhirBool.toString(), equals('true'));
    });

    test('False Boolean Value', () {
      final fhirBool = FhirBoolean(false);
      expect(fhirBool.value, isFalse);
      expect(fhirBool.toJson(), isFalse);
      expect(fhirBool.toYaml(), isFalse);
      expect(fhirBool.toString(), equals('false'));
    });

    test('TryParse - Valid "true" String', () {
      final parsedBool = FhirBoolean.tryParse('true');
      expect(parsedBool, isNotNull);
      expect(parsedBool!.value, isTrue);
    });

    test('TryParse - Valid "false" String', () {
      final parsedBool = FhirBoolean.tryParse('false');
      expect(parsedBool, isNotNull);
      expect(parsedBool!.value, isFalse);
    });

    test('TryParse - Invalid String', () {
      final parsedBool = FhirBoolean.tryParse('invalid');
      expect(parsedBool, isNull);
    });

    test('TryParse - Boolean Input', () {
      final parsedBool = FhirBoolean.tryParse(true);
      expect(parsedBool, isNotNull);
      expect(parsedBool!.value, isTrue);
    });

    test('TryParse - Non-Boolean Input', () {
      final parsedBool = FhirBoolean.tryParse(123);
      expect(parsedBool, isNull);
    });

    test('FromJson - Boolean Input', () {
      final fhirBool = FhirBoolean.fromJson(true);
      expect(fhirBool.value, isTrue);
    });

    test('FromJson - String Input "true"', () {
      final fhirBool = FhirBoolean.fromJson('true');
      expect(fhirBool.value, isTrue);
    });

    test('FromJson - String Input "false"', () {
      final fhirBool = FhirBoolean.fromJson('false');
      expect(fhirBool.value, isFalse);
    });

    test('FromJson - Invalid String Input', () {
      expect(
        () => FhirBoolean.fromJson('invalid'),
        throwsA(
          isA<FormatException>().having(
            (FormatException e) => e.message,
            'message',
            equals('Invalid input for FhirBoolean'),
          ),
        ),
      );
    });

    test('FromYaml - Valid Yaml', () {
      final yamlBool = FhirBoolean.fromYaml('true');
      expect(yamlBool.value, isTrue);
    });

    test('FromYaml - Invalid Yaml', () {
      expect(
        () => FhirBoolean.fromYaml(123),
        throwsA(
          isA<FormatException>().having(
            (FormatException e) => e.message,
            'message',
            equals('Invalid Yaml format for FhirBoolean'),
          ),
        ),
      );
    });

    test('Equality - FhirBoolean', () {
      final fhirBool1 = FhirBoolean(true);
      final fhirBool2 = FhirBoolean(true);
      expect(fhirBool1, equals(fhirBool2));
    });

    test('Equality - bool', () {
      final fhirBool = FhirBoolean(true);
      // ignore: unrelated_type_equality_checks
      expect(fhirBool == true, isTrue);
    });

    test('Inequality - FhirBoolean', () {
      final fhirBool1 = FhirBoolean(true);
      final fhirBool2 = FhirBoolean(false);
      expect(fhirBool1, isNot(equals(fhirBool2)));
    });

    test('Inequality - bool', () {
      final fhirBool = FhirBoolean(true);
      // ignore: unrelated_type_equality_checks
      expect(fhirBool == false, isFalse);
    });

    test('HashCode', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool.hashCode, equals(true.hashCode));
    });

    test('Clone', () {
      final fhirBool = FhirBoolean(true);
      final clonedBool = fhirBool.clone();
      expect(clonedBool, equals(fhirBool));
      expect(clonedBool.value, equals(true));
    });

    test('Set Element', () {
      final fhirBool = FhirBoolean(true);
      final newElement = Element();
      final updatedBool = fhirBool.setElement('dummy', newElement);
      expect(updatedBool.value, equals(true));
    });

    test('CopyWith - No New Value', () {
      final fhirBool = FhirBoolean(true);
      final copiedBool = fhirBool.copyWith();
      expect(copiedBool.value, equals(fhirBool.value));
    });

    test('CopyWith - New Value', () {
      final fhirBool = FhirBoolean(true);
      final copiedBool = fhirBool.copyWith(newValue: false);
      expect(copiedBool.value, isFalse);
    });

    test('Logical AND with FhirBoolean', () {
      final fhirBool1 = FhirBoolean(true);
      final fhirBool2 = FhirBoolean(true);
      expect(fhirBool1 & fhirBool2, isTrue);
    });

    test('Logical AND with bool', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool & false, isFalse);
    });

    test('Logical OR with FhirBoolean', () {
      final fhirBool1 = FhirBoolean(false);
      final fhirBool2 = FhirBoolean(true);
      expect(fhirBool1 | fhirBool2, isTrue);
    });

    test('Logical OR with bool', () {
      final fhirBool = FhirBoolean(false);
      expect(fhirBool | true, isTrue);
    });

    test('Logical XOR with FhirBoolean', () {
      final fhirBool1 = FhirBoolean(true);
      final fhirBool2 = FhirBoolean(false);
      expect(fhirBool1 ^ fhirBool2, isTrue);
    });

    test('Logical XOR with bool', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool ^ true, isFalse);
    });

    test('ToJson', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool.toJson(), isTrue);
    });

    test('ToYaml', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool.toYaml(), isTrue);
    });

    test('ToString', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool.toString(), equals('true'));
    });
  });
}
