import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void addressTest() {
  group('Address', () {
    test('construction with all fields', () {
      final address = Address(
        use: AddressUse.home,
        type: AddressType.both,
        text: FhirString('123 Main St, Springfield, IL 62701'),
        line: [FhirString('123 Main St'), FhirString('Apt 4B')],
        city: FhirString('Springfield'),
        district: FhirString('Sangamon'),
        state: FhirString('IL'),
        postalCode: FhirString('62701'),
        country: FhirString('US'),
        period: Period(start: FhirDateTime.fromString('2010-01-01')),
      );

      expect(address.use, AddressUse.home);
      expect(address.type, AddressType.both);
      expect(address.text?.valueString, '123 Main St, Springfield, IL 62701');
      expect(address.line?.length, 2);
      expect(address.line?[0].valueString, '123 Main St');
      expect(address.line?[1].valueString, 'Apt 4B');
      expect(address.city?.valueString, 'Springfield');
      expect(address.district?.valueString, 'Sangamon');
      expect(address.state?.valueString, 'IL');
      expect(address.postalCode?.valueString, '62701');
      expect(address.country?.valueString, 'US');
      expect(address.period, isNotNull);
      expect(address.fhirType, 'Address');
    });

    test('construction with minimal fields', () {
      const address = Address();
      expect(address.use, isNull);
      expect(address.type, isNull);
      expect(address.text, isNull);
      expect(address.line, isNull);
      expect(address.city, isNull);
      expect(address.state, isNull);
      expect(address.postalCode, isNull);
      expect(address.country, isNull);
    });

    test('toJson produces correct JSON', () {
      final address = Address(
        use: AddressUse.home,
        line: [FhirString('123 Main St')],
        city: FhirString('Springfield'),
        state: FhirString('IL'),
        postalCode: FhirString('62701'),
        country: FhirString('US'),
      );
      final json = address.toJson();
      expect(json['use'], 'home');
      expect(json['line'], ['123 Main St']);
      expect(json['city'], 'Springfield');
      expect(json['state'], 'IL');
      expect(json['postalCode'], '62701');
      expect(json['country'], 'US');
      expect(json.containsKey('text'), isFalse);
      expect(json.containsKey('district'), isFalse);
    });

    test('fromJson round-trips correctly', () {
      final original = Address(
        use: AddressUse.work,
        line: [FhirString('456 Office Park')],
        city: FhirString('Chicago'),
        state: FhirString('IL'),
        postalCode: FhirString('60601'),
      );
      final json = original.toJson();
      final restored = Address.fromJson(json);
      expect(restored.use?.valueString, original.use?.valueString);
      expect(
        restored.line?[0].valueString,
        original.line?[0].valueString,
      );
      expect(restored.city?.valueString, original.city?.valueString);
      expect(restored.state?.valueString, original.state?.valueString);
      expect(
        restored.postalCode?.valueString,
        original.postalCode?.valueString,
      );
    });

    test('fromJsonString works', () {
      const json = '{"city":"Boston","state":"MA"}';
      final address = Address.fromJsonString(json);
      expect(address.city?.valueString, 'Boston');
      expect(address.state?.valueString, 'MA');
    });

    test('copyWith creates modified copy', () {
      final original = Address(
        city: FhirString('Springfield'),
        state: FhirString('IL'),
      );
      final modified = original.copyWith(
        city: FhirString('Chicago'),
      );
      expect(modified.city?.valueString, 'Chicago');
      expect(modified.state?.valueString, 'IL');
    });

    test('copyWith with no args returns equal object', () {
      final original = Address(
        city: FhirString('Springfield'),
      );
      final copy = original.copyWith();
      expect(copy.equalsDeep(original), isTrue);
    });

    test('equalsDeep returns true for identical content', () {
      final a = Address(city: FhirString('Springfield'));
      final b = Address(city: FhirString('Springfield'));
      expect(a.equalsDeep(b), isTrue);
    });

    test('equalsDeep returns false for different content', () {
      final a = Address(city: FhirString('Springfield'));
      final b = Address(city: FhirString('Chicago'));
      expect(a.equalsDeep(b), isFalse);
    });

    test('getChildByName returns correct values', () {
      final address = Address(
        city: FhirString('Springfield'),
        state: FhirString('IL'),
      );
      expect(address.getChildByName('city'), isA<FhirString>());
      expect(address.getChildByName('state'), isA<FhirString>());
      expect(address.getChildByName('district'), isNull);
    });

    test('getChildrenByName returns line list', () {
      final address = Address(
        line: [FhirString('123 Main'), FhirString('Apt 4')],
      );
      final children = address.getChildrenByName('line');
      expect(children.length, 2);
    });

    test('clone creates deep copy', () {
      final address = Address(
        city: FhirString('Springfield'),
        state: FhirString('IL'),
      );
      final cloned = address.clone();
      expect(cloned.equalsDeep(address), isTrue);
    });

    test('different address uses', () {
      const home = Address(use: AddressUse.home);
      const work = Address(use: AddressUse.work);
      const temp = Address(use: AddressUse.temp);
      expect(home.use, AddressUse.home);
      expect(work.use, AddressUse.work);
      expect(temp.use, AddressUse.temp);
    });

    test('different address types', () {
      const postal = Address(type: AddressType.postal);
      const physical = Address(type: AddressType.physical);
      const both = Address(type: AddressType.both);
      expect(postal.type, AddressType.postal);
      expect(physical.type, AddressType.physical);
      expect(both.type, AddressType.both);
    });
  });
}
