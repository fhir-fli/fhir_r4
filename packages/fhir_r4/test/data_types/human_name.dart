import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void humanNameTest() {
  group('HumanName', () {
    test('construction with all fields', () {
      final name = HumanName(
        use: NameUse.official,
        text: FhirString('John Michael Doe'),
        family: FhirString('Doe'),
        given: [FhirString('John'), FhirString('Michael')],
        prefix: [FhirString('Mr.')],
        suffix: [FhirString('Jr.')],
        period: Period(
          start: FhirDateTime.fromString('2020-01-01'),
          end: FhirDateTime.fromString('2025-12-31'),
        ),
      );

      expect(name.use, NameUse.official);
      expect(name.text?.valueString, 'John Michael Doe');
      expect(name.family?.valueString, 'Doe');
      expect(name.given?.length, 2);
      expect(name.given?[0].valueString, 'John');
      expect(name.given?[1].valueString, 'Michael');
      expect(name.prefix?.length, 1);
      expect(name.prefix?[0].valueString, 'Mr.');
      expect(name.suffix?.length, 1);
      expect(name.suffix?[0].valueString, 'Jr.');
      expect(name.period, isNotNull);
      expect(name.fhirType, 'HumanName');
    });

    test('construction with minimal fields', () {
      const name = HumanName();
      expect(name.use, isNull);
      expect(name.text, isNull);
      expect(name.family, isNull);
      expect(name.given, isNull);
      expect(name.prefix, isNull);
      expect(name.suffix, isNull);
      expect(name.period, isNull);
    });

    test('toJson produces correct JSON', () {
      final name = HumanName(
        use: NameUse.official,
        family: FhirString('Smith'),
        given: [FhirString('Jane')],
      );
      final json = name.toJson();
      expect(json['use'], 'official');
      expect(json['family'], 'Smith');
      expect(json['given'], ['Jane']);
      expect(json.containsKey('text'), isFalse);
    });

    test('fromJson round-trips correctly', () {
      final original = HumanName(
        use: NameUse.usual,
        family: FhirString('Doe'),
        given: [FhirString('John')],
        prefix: [FhirString('Dr.')],
      );
      final json = original.toJson();
      final restored = HumanName.fromJson(json);
      expect(restored.use?.valueString, original.use?.valueString);
      expect(restored.family?.valueString, original.family?.valueString);
      expect(restored.given?.length, original.given?.length);
      expect(restored.given?[0].valueString, original.given?[0].valueString);
      expect(
        restored.prefix?[0].valueString,
        original.prefix?[0].valueString,
      );
    });

    test('fromJsonString works', () {
      const json = '{"family":"Doe","given":["John"]}';
      final name = HumanName.fromJsonString(json);
      expect(name.family?.valueString, 'Doe');
      expect(name.given?[0].valueString, 'John');
    });

    test('copyWith creates modified copy preserving other fields', () {
      final original = HumanName(
        family: FhirString('Doe'),
        given: [FhirString('John')],
      );
      final modified = original.copyWith(
        family: FhirString('Smith'),
      );
      expect(modified.family?.valueString, 'Smith');
      expect(modified.given?[0].valueString, 'John');
    });

    test('copyWith with no args returns equal object', () {
      final original = HumanName(
        family: FhirString('Doe'),
        given: [FhirString('John')],
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = HumanName(
        family: FhirString('Doe'),
        given: [FhirString('John')],
      );
      final b = HumanName(
        family: FhirString('Doe'),
        given: [FhirString('John')],
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = HumanName(family: FhirString('Doe'));
      final b = HumanName(family: FhirString('Smith'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final name = HumanName(family: FhirString('Doe'));
      expect(name.getChildByName('family'), isA<FhirString>());
      expect(name.getChildByName('text'), isNull);
    });

    test('getChildrenByName returns list for given', () {
      final name = HumanName(
        given: [FhirString('John'), FhirString('Michael')],
      );
      final children = name.getChildrenByName('given');
      expect(children.length, 2);
    });

    test('clone creates deep copy', () {
      final name = HumanName(
        family: FhirString('Doe'),
        given: [FhirString('John')],
      );
      final cloned = name.clone();
      expect(cloned.equalsDeep(name), isTrue);
    });

    test('fromJson with empty map', () {
      final name = HumanName.fromJson(<String, dynamic>{});
      expect(name.family, isNull);
      expect(name.given, isNull);
    });

    test('multiple name uses', () {
      final official = HumanName(
        use: NameUse.official,
        family: FhirString('Doe'),
      );
      final nickname = HumanName(
        use: NameUse.nickname,
        text: FhirString('Johnny'),
      );
      expect(official.use, NameUse.official);
      expect(nickname.use, NameUse.nickname);
    });
  });
}
