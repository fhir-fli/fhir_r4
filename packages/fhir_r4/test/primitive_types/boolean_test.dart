import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void booleanTest() {
  group('FhirBoolean Tests', () {
    test('True Boolean Value', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool.valueBoolean, isTrue);
      expect(fhirBool.toJson(), equals({'value': true}));
      expect(fhirBool.toString(), equals('true'));
    });

    test('False Boolean Value', () {
      final fhirBool = FhirBoolean(false);
      expect(fhirBool.valueBoolean, isFalse);
      expect(fhirBool.toJson(), equals({'value': false}));
      expect(fhirBool.toString(), equals('false'));
    });

    test('TryParse - Valid "true" String', () {
      final parsedBool = FhirBoolean.tryParse('true');
      expect(parsedBool, isNotNull);
      expect(parsedBool!.valueBoolean, isTrue);
    });

    test('TryParse - Valid "false" String', () {
      final parsedBool = FhirBoolean.tryParse('false');
      expect(parsedBool, isNotNull);
      expect(parsedBool!.valueBoolean, isFalse);
    });

    test('TryParse - Invalid String', () {
      final parsedBool = FhirBoolean.tryParse('invalid');
      expect(parsedBool, isNull);
    });

    test('TryParse - Boolean Input', () {
      final parsedBool = FhirBoolean.tryParse(true);
      expect(parsedBool, isNotNull);
      expect(parsedBool!.valueBoolean, isTrue);
    });

    test('TryParse - Non-Boolean Input', () {
      final parsedBool = FhirBoolean.tryParse(123);
      expect(parsedBool, isNull);
    });

    test('FromJson - Boolean Input', () {
      final fhirBool = FhirBoolean.fromJson({'value': true});
      expect(fhirBool.valueBoolean, isTrue);
    });

    test('FromJson - Invalid Input', () {
      try {
        FhirBoolean.fromJson({'value': 'invalid'});
      } catch (e) {
        expect(e, isA<ArgumentError>());
      }
    });

    test('FromYaml - Valid Yaml', () {
      final yamlBool = FhirBoolean.fromYaml('value: true');
      expect(yamlBool.valueBoolean, isTrue);
    });

    test('FromYaml - Invalid Yaml', () {
      expect(
        () => FhirBoolean.fromYaml(123),
        throwsArgumentError,
      );
    });

    test('ToJson', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool.toJson(), equals({'value': true}));
    });

    test('ToString', () {
      final fhirBool = FhirBoolean(true);
      expect(fhirBool.toString(), equals('true'));
    });

    test('Clone', () {
      final fhirBool = FhirBoolean(true);
      final clonedBool = fhirBool.clone();
      expect(clonedBool, equals(fhirBool));
      expect(clonedBool.valueBoolean, equals(true));
    });

    test('CopyWith - No New Value', () {
      final fhirBool = FhirBoolean(true);
      final copiedBool = fhirBool.copyWith();
      expect(copiedBool.valueBoolean, equals(fhirBool.valueBoolean));
    });

    test('CopyWith - New Value', () {
      final fhirBool = FhirBoolean(true);
      final copiedBool = fhirBool.copyWith(newValue: false);
      expect(copiedBool.valueBoolean, isFalse);
    });
  });
}
