import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void contactDetailTest() {
  group('ContactDetail', () {
    test('construction with all fields', () {
      final cd = ContactDetail(
        name: FhirString('John Doe'),
        telecom: [
          ContactPoint(
            system: ContactPointSystem.phone,
            value: FhirString('555-1234'),
          ),
          ContactPoint(
            system: ContactPointSystem.email,
            value: FhirString('john@example.com'),
          ),
        ],
      );

      expect(cd.name?.valueString, 'John Doe');
      expect(cd.telecom?.length, 2);
      expect(cd.telecom?[0].system, ContactPointSystem.phone);
      expect(cd.telecom?[0].value?.valueString, '555-1234');
      expect(cd.telecom?[1].system, ContactPointSystem.email);
      expect(cd.fhirType, 'ContactDetail');
    });

    test('construction with minimal fields', () {
      const cd = ContactDetail();
      expect(cd.name, isNull);
      expect(cd.telecom, isNull);
    });

    test('construction with name only', () {
      final cd = ContactDetail(name: FhirString('Jane Smith'));
      expect(cd.name?.valueString, 'Jane Smith');
      expect(cd.telecom, isNull);
    });

    test('toJson produces correct JSON', () {
      final cd = ContactDetail(
        name: FhirString('John Doe'),
        telecom: [
          ContactPoint(
            system: ContactPointSystem.email,
            value: FhirString('john@example.com'),
          ),
        ],
      );
      final json = cd.toJson();
      expect(json['name'], 'John Doe');
      expect(json['telecom'], isA<List>());
      expect((json['telecom'] as List).length, 1);
    });

    test('fromJson round-trips correctly', () {
      final original = ContactDetail(
        name: FhirString('Jane Doe'),
        telecom: [
          ContactPoint(
            system: ContactPointSystem.phone,
            value: FhirString('555-5678'),
          ),
        ],
      );
      final json = original.toJson();
      final restored = ContactDetail.fromJson(json);
      expect(restored.name?.valueString, 'Jane Doe');
      expect(restored.telecom?.length, 1);
      expect(restored.telecom?[0].value?.valueString, '555-5678');
    });

    test('fromJsonString works', () {
      const json = '{"name":"Test Contact"}';
      final cd = ContactDetail.fromJsonString(json);
      expect(cd.name?.valueString, 'Test Contact');
    });

    test('copyWith creates modified copy', () {
      final original = ContactDetail(
        name: FhirString('Original Name'),
        telecom: [
          ContactPoint(value: FhirString('555-1111')),
        ],
      );
      final modified = original.copyWith(
        name: FhirString('New Name'),
      );
      expect(modified.name?.valueString, 'New Name');
      expect(modified.telecom?.length, 1);
    });

    test('copyWith with no args returns equal object', () {
      final original = ContactDetail(
        name: FhirString('Test'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = ContactDetail(name: FhirString('Test'));
      final b = ContactDetail(name: FhirString('Test'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = ContactDetail(name: FhirString('A'));
      final b = ContactDetail(name: FhirString('B'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final cd = ContactDetail(name: FhirString('Test'));
      expect(cd.getChildByName('name'), isA<FhirString>());
      expect(cd.getChildByName('telecom'), isNull);
    });

    test('getChildrenByName returns telecom list', () {
      final cd = ContactDetail(
        telecom: [
          ContactPoint(value: FhirString('a')),
          ContactPoint(value: FhirString('b')),
        ],
      );
      final children = cd.getChildrenByName('telecom');
      expect(children.length, 2);
    });

    test('clone creates deep copy', () {
      final cd = ContactDetail(
        name: FhirString('Test'),
        telecom: [ContactPoint(value: FhirString('555-1111'))],
      );
      final cloned = cd.clone();
      expect(cloned.equalsDeep(cd), isTrue);
    });
  });
}
