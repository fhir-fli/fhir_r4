import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void contactPointTest() {
  group('ContactPoint', () {
    test('construction with all fields', () {
      final cp = ContactPoint(
        system: ContactPointSystem.phone,
        value: FhirString('555-123-4567'),
        use: ContactPointUse.home,
        rank: FhirPositiveInt(1),
        period: Period(start: FhirDateTime.fromString('2020-01-01')),
      );

      expect(cp.system, ContactPointSystem.phone);
      expect(cp.value?.valueString, '555-123-4567');
      expect(cp.use, ContactPointUse.home);
      expect(cp.rank?.valueString, '1');
      expect(cp.period, isNotNull);
      expect(cp.fhirType, 'ContactPoint');
    });

    test('construction with minimal fields', () {
      const cp = ContactPoint();
      expect(cp.system, isNull);
      expect(cp.value, isNull);
      expect(cp.use, isNull);
      expect(cp.rank, isNull);
      expect(cp.period, isNull);
    });

    test('toJson produces correct JSON', () {
      final cp = ContactPoint(
        system: ContactPointSystem.email,
        value: FhirString('john@example.com'),
        use: ContactPointUse.work,
      );
      final json = cp.toJson();
      expect(json['system'], 'email');
      expect(json['value'], 'john@example.com');
      expect(json['use'], 'work');
      expect(json.containsKey('rank'), isFalse);
      expect(json.containsKey('period'), isFalse);
    });

    test('fromJson round-trips correctly', () {
      final original = ContactPoint(
        system: ContactPointSystem.phone,
        value: FhirString('555-123-4567'),
        use: ContactPointUse.home,
        rank: FhirPositiveInt(1),
      );
      final json = original.toJson();
      final restored = ContactPoint.fromJson(json);
      expect(restored.system?.valueString, original.system?.valueString);
      expect(restored.value?.valueString, original.value?.valueString);
      expect(restored.use?.valueString, original.use?.valueString);
      expect(restored.rank?.valueString, original.rank?.valueString);
    });

    test('fromJsonString works', () {
      const json = '{"system":"phone","value":"555-0000"}';
      final cp = ContactPoint.fromJsonString(json);
      expect(cp.system, ContactPointSystem.phone);
      expect(cp.value?.valueString, '555-0000');
    });

    test('copyWith creates modified copy', () {
      final original = ContactPoint(
        system: ContactPointSystem.phone,
        value: FhirString('555-1111'),
        use: ContactPointUse.home,
      );
      final modified = original.copyWith(
        value: FhirString('555-2222'),
      );
      expect(modified.value?.valueString, '555-2222');
      expect(modified.system, ContactPointSystem.phone);
      expect(modified.use, ContactPointUse.home);
    });

    test('copyWith with no args returns equal object', () {
      final original = ContactPoint(
        system: ContactPointSystem.phone,
        value: FhirString('555-1111'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = ContactPoint(
        system: ContactPointSystem.email,
        value: FhirString('test@test.com'),
      );
      final b = ContactPoint(
        system: ContactPointSystem.email,
        value: FhirString('test@test.com'),
      );
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = ContactPoint(value: FhirString('555-1111'));
      final b = ContactPoint(value: FhirString('555-2222'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final cp = ContactPoint(
        system: ContactPointSystem.phone,
        value: FhirString('555-1111'),
      );
      expect(cp.getChildByName('system'), isA<ContactPointSystem>());
      expect(cp.getChildByName('value'), isA<FhirString>());
      expect(cp.getChildByName('rank'), isNull);
    });

    test('clone creates deep copy', () {
      final cp = ContactPoint(
        system: ContactPointSystem.phone,
        value: FhirString('555-1111'),
      );
      final cloned = cp.clone();
      expect(cloned.equalsDeep(cp), isTrue);
    });

    test('different contact point systems', () {
      const phone = ContactPoint(system: ContactPointSystem.phone);
      const email = ContactPoint(system: ContactPointSystem.email);
      const fax = ContactPoint(system: ContactPointSystem.fax);
      const url = ContactPoint(system: ContactPointSystem.url);
      expect(phone.system, ContactPointSystem.phone);
      expect(email.system, ContactPointSystem.email);
      expect(fax.system, ContactPointSystem.fax);
      expect(url.system, ContactPointSystem.url);
    });

    test('different contact point uses', () {
      const home = ContactPoint(use: ContactPointUse.home);
      const work = ContactPoint(use: ContactPointUse.work);
      const mobile = ContactPoint(use: ContactPointUse.mobile);
      expect(home.use, ContactPointUse.home);
      expect(work.use, ContactPointUse.work);
      expect(mobile.use, ContactPointUse.mobile);
    });
  });
}
