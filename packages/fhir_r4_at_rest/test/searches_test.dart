import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:test/test.dart';

/// Tests for the auto-generated Search* classes in lib/src/searches/.
///
/// All 135 search classes follow the same 4 parameter patterns (string, token,
/// date, quantity). We test SearchResource (base), SearchPatient (covers all 4
/// types), and SearchObservation (quantity-specific) as representative samples.
void main() {
  // ──────────────────────────────────────────────────────────────────────────
  // SearchResource (base class)
  // ──────────────────────────────────────────────────────────────────────────
  group('SearchResource:', () {
    late SearchResource search;

    setUp(() {
      search = SearchResource();
    });

    test('content() adds _content parameter', () {
      search.content('test query'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('_content=test'));
    });

    test('id() adds _id parameter', () {
      search.id('abc123'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('_id=abc123'));
    });

    test('id() with system adds system|value', () {
      search.id(
        '123'.toFhirString,
        system: FhirUri('http://example.org'),
      );
      final query = search.buildQuery();
      expect(query, contains('_id=http'));
      expect(query, contains('example.org'));
      expect(query, contains('123'));
    });

    test('lastUpdated() adds _lastUpdated parameter', () {
      search.lastUpdated(FhirDateTime.fromString('2024-01-15'));
      final query = search.buildQuery();
      expect(query, contains('_lastUpdated=2024-01-15'));
    });

    test('lastUpdated() with modifier', () {
      search.lastUpdated(
        FhirDateTime.fromString('2024-01-15'),
        modifier: SearchModifier.ge,
      );
      final query = search.buildQuery();
      expect(query, contains('_lastUpdated=ge2024-01-15'));
    });

    test('profile() adds _profile parameter', () {
      search.profile(
        FhirUri(
          'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient',
        ),
      );
      final query = search.buildQuery();
      expect(query, contains('_profile='));
      expect(query, contains('us-core-patient'));
    });

    test('tag() adds _tag with system|value', () {
      search.tag(
        'important'.toFhirString,
        system: FhirUri('http://example.org/tags'),
      );
      final query = search.buildQuery();
      expect(query, contains('_tag='));
      expect(query, contains('important'));
    });

    test('security() adds _security parameter', () {
      search.security(
        'R'.toFhirString,
        system:
            FhirUri('http://terminology.hl7.org/CodeSystem/v3-Confidentiality'),
      );
      final query = search.buildQuery();
      expect(query, contains('_security='));
    });

    test('resourceSource() adds _source parameter', () {
      search.resourceSource(FhirUri('http://example.org'));
      final query = search.buildQuery();
      expect(query, contains('_source='));
    });

    test('filter() as token with system', () {
      search.filter(
        'active'.toFhirString,
        system: FhirUri('http://example.org'),
      );
      final query = search.buildQuery();
      expect(query, contains('_filter='));
    });

    test('resourceType() adds _type parameter', () {
      search.resourceType('Patient'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('_type=Patient'));
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // SearchPatient — string parameters
  // ──────────────────────────────────────────────────────────────────────────
  group('SearchPatient string parameters:', () {
    late SearchPatient search;

    setUp(() {
      search = SearchPatient();
    });

    test('family() adds family parameter', () {
      search.family('Smith'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('family=Smith'));
    });

    test('given() adds given parameter', () {
      search.given('Alice'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('given=Alice'));
    });

    test('name() adds name parameter', () {
      search.name('John Smith'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('name=John'));
    });

    test('address() adds address parameter', () {
      search.address('Boston'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('address=Boston'));
    });

    test('addressCity() adds address-city parameter', () {
      search.addressCity('Boston'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('address-city=Boston'));
    });

    test('addressState() adds address-state parameter', () {
      search.addressState('MA'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('address-state=MA'));
    });

    test('addressPostalcode() adds address-postalcode parameter', () {
      search.addressPostalcode('02101'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('address-postalcode=02101'));
    });

    test('addressCountry() adds address-country parameter', () {
      search.addressCountry('US'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('address-country=US'));
    });

    test('phonetic() adds phonetic parameter', () {
      search.phonetic('Smith'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('phonetic=Smith'));
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // SearchPatient — token parameters
  // ──────────────────────────────────────────────────────────────────────────
  group('SearchPatient token parameters:', () {
    late SearchPatient search;

    setUp(() {
      search = SearchPatient();
    });

    test('gender() adds gender parameter (value only)', () {
      search.gender('male'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('gender=male'));
    });

    test('gender() with system adds system|value', () {
      search.gender(
        'male'.toFhirString,
        system: FhirUri('http://hl7.org/fhir/administrative-gender'),
      );
      final query = search.buildQuery();
      expect(query, contains('gender='));
      expect(query, contains('administrative-gender'));
      expect(query, contains('male'));
    });

    test('identifier() adds identifier parameter', () {
      search.identifier(
        'MRN12345'.toFhirString,
        system: FhirUri('http://hospital.example.org/mrn'),
      );
      final query = search.buildQuery();
      expect(query, contains('identifier='));
      expect(query, contains('MRN12345'));
    });

    test('active() adds active parameter', () {
      search.active('true'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('active=true'));
    });

    test('email() adds email parameter', () {
      search.email('test@example.com'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('email='));
    });

    test('phone() adds phone parameter', () {
      search.phone('555-1234'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('phone=555-1234'));
    });

    test('telecom() adds telecom parameter', () {
      search.telecom('555-1234'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('telecom=555-1234'));
    });

    test('language() adds language parameter', () {
      search.language('en'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('language=en'));
    });

    test('addressUse() adds address-use parameter', () {
      search.addressUse('home'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('address-use=home'));
    });

    test('deceased() adds deceased parameter', () {
      search.deceased('true'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('deceased=true'));
    });

    test('token with system', () {
      search.gender(
        'male'.toFhirString,
        system: FhirUri('http://hl7.org/fhir/administrative-gender'),
      );
      final query = search.buildQuery();
      expect(
        query,
        contains('gender=http://hl7.org/fhir/administrative-gender|male'),
      );
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // SearchPatient — date parameters
  // ──────────────────────────────────────────────────────────────────────────
  group('SearchPatient date parameters:', () {
    late SearchPatient search;

    setUp(() {
      search = SearchPatient();
    });

    test('birthdate() adds birthdate parameter', () {
      search.birthdate(FhirDateTime.fromString('1990-01-15'));
      final query = search.buildQuery();
      expect(query, contains('birthdate=1990-01-15'));
    });

    test('deathDate() adds death-date parameter', () {
      search.deathDate(FhirDateTime.fromString('2024-06-15'));
      final query = search.buildQuery();
      expect(query, contains('death-date=2024-06-15'));
    });

    test('date param with ge modifier', () {
      search.birthdate(
        FhirDateTime.fromString('1990-01-01'),
        modifier: SearchModifier.ge,
      );
      final query = search.buildQuery();
      expect(query, contains('birthdate=ge1990-01-01'));
    });

    test('date param with le modifier', () {
      search.birthdate(
        FhirDateTime.fromString('2000-12-31'),
        modifier: SearchModifier.le,
      );
      final query = search.buildQuery();
      expect(query, contains('birthdate=le2000-12-31'));
    });

    test('date param with gt modifier', () {
      search.birthdate(
        FhirDateTime.fromString('1990-01-01'),
        modifier: SearchModifier.gt,
      );
      final query = search.buildQuery();
      expect(query, contains('birthdate=gt1990-01-01'));
    });

    test('date param with lt modifier', () {
      search.birthdate(
        FhirDateTime.fromString('2000-12-31'),
        modifier: SearchModifier.lt,
      );
      final query = search.buildQuery();
      expect(query, contains('birthdate=lt2000-12-31'));
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // SearchObservation — quantity parameters
  // ──────────────────────────────────────────────────────────────────────────
  group('SearchObservation quantity parameters:', () {
    late SearchObservation search;

    setUp(() {
      search = SearchObservation();
    });

    test('valueQuantity() adds value-quantity parameter (value only)', () {
      search.valueQuantity(FhirDecimal(98.6));
      final query = search.buildQuery();
      expect(query, contains('value-quantity='));
      expect(query, contains('98.6'));
    });

    test('valueQuantity() with unit and system', () {
      search.valueQuantity(
        FhirDecimal(120),
        unit: 'mm[Hg]'.toFhirString,
        system: FhirUri('http://unitsofmeasure.org'),
      );
      final query = search.buildQuery();
      expect(query, contains('value-quantity='));
      expect(query, contains('120'));
    });

    test('valueQuantity() with gt modifier', () {
      search.valueQuantity(FhirDecimal(100), modifier: SearchModifier.gt);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=gt100'));
    });

    test('valueQuantity() with lt modifier', () {
      search.valueQuantity(FhirDecimal(200), modifier: SearchModifier.lt);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=lt200'));
    });

    test('valueQuantity() with ge modifier', () {
      search.valueQuantity(FhirDecimal(100), modifier: SearchModifier.ge);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=ge100'));
    });

    test('valueQuantity() with le modifier', () {
      search.valueQuantity(FhirDecimal(200), modifier: SearchModifier.le);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=le200'));
    });

    test('valueQuantity() with ap modifier', () {
      search.valueQuantity(FhirDecimal(150), modifier: SearchModifier.ap);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=ap150'));
    });

    test('valueQuantity() with eq modifier', () {
      search.valueQuantity(FhirDecimal(100), modifier: SearchModifier.eq);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=eq100'));
    });

    test('valueQuantity() with ne modifier', () {
      search.valueQuantity(FhirDecimal(100), modifier: SearchModifier.ne);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=ne100'));
    });

    test('valueQuantity() with sa modifier', () {
      search.valueQuantity(FhirDecimal(100), modifier: SearchModifier.sa);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=sa100'));
    });

    test('valueQuantity() with eb modifier', () {
      search.valueQuantity(FhirDecimal(100), modifier: SearchModifier.eb);
      final query = search.buildQuery();
      expect(query, contains('value-quantity=eb100'));
    });

    test('comboValueQuantity() with modifier', () {
      search.comboValueQuantity(FhirDecimal(50), modifier: SearchModifier.ge);
      final query = search.buildQuery();
      expect(query, contains('combo-value-quantity=ge50'));
    });

    test('componentValueQuantity() with modifier', () {
      search.componentValueQuantity(
        FhirDecimal(80),
        modifier: SearchModifier.le,
      );
      final query = search.buildQuery();
      expect(query, contains('component-value-quantity=le80'));
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // SearchObservation — other parameter types
  // ──────────────────────────────────────────────────────────────────────────
  group('SearchObservation other parameters:', () {
    late SearchObservation search;

    setUp(() {
      search = SearchObservation();
    });

    test('code() adds code token parameter', () {
      search.code(
        '718-7'.toFhirString,
        system: FhirUri('http://loinc.org'),
      );
      final query = search.buildQuery();
      expect(query, contains('code='));
      expect(query, contains('loinc.org'));
      expect(query, contains('718-7'));
    });

    test('date() adds date parameter', () {
      search.date(FhirDateTime.fromString('2024-01-15'));
      final query = search.buildQuery();
      expect(query, contains('date=2024-01-15'));
    });

    test('status() adds status token parameter', () {
      search.status('final'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('status=final'));
    });

    test('category() adds category token parameter', () {
      search.category(
        'laboratory'.toFhirString,
        system: FhirUri(
          'http://terminology.hl7.org/CodeSystem/observation-category',
        ),
      );
      final query = search.buildQuery();
      expect(query, contains('category='));
      expect(query, contains('laboratory'));
    });

    test('valueString() adds value-string string parameter', () {
      search.valueString('positive'.toFhirString);
      final query = search.buildQuery();
      expect(query, contains('value-string=positive'));
    });

    test('valueDate() adds value-date date parameter', () {
      search.valueDate(FhirDateTime.fromString('2024-03-01'));
      final query = search.buildQuery();
      expect(query, contains('value-date=2024-03-01'));
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Fluent chaining
  // ──────────────────────────────────────────────────────────────────────────
  group('Fluent chaining:', () {
    test('SearchPatient methods return this for chaining', () {
      final search = SearchPatient()
          .family('Smith'.toFhirString)
          .given('Alice'.toFhirString)
          .gender('female'.toFhirString)
          .birthdate(FhirDateTime.fromString('1990-01-15'));

      final query = search.buildQuery();
      expect(query, contains('family=Smith'));
      expect(query, contains('given=Alice'));
      expect(query, contains('gender=female'));
      expect(query, contains('birthdate=1990-01-15'));
    });

    test('SearchObservation methods return this for chaining', () {
      final search = SearchObservation()
          .code('718-7'.toFhirString, system: FhirUri('http://loinc.org'))
          .status('final'.toFhirString)
          .date(
            FhirDateTime.fromString('2024-01-01'),
            modifier: SearchModifier.ge,
          );

      final query = search.buildQuery();
      expect(query, contains('code='));
      expect(query, contains('status=final'));
      expect(query, contains('date=ge2024-01-01'));
    });

    test('SearchResource base methods chain from subclass', () {
      final search = SearchPatient().family('Smith'.toFhirString)
        ..id('abc'.toFhirString)
        ..lastUpdated(
          FhirDateTime.fromString('2024-01-01'),
          modifier: SearchModifier.ge,
        );

      final query = search.buildQuery();
      expect(query, contains('family=Smith'));
      expect(query, contains('_id=abc'));
      expect(query, contains('_lastUpdated=ge2024-01-01'));
    });

    test('multiple values for same parameter', () {
      final search = SearchPatient()
          .family('Smith'.toFhirString)
          .family('Jones'.toFhirString);

      final query = search.buildQuery();
      expect(query, contains('family=Smith'));
      expect(query, contains('family=Jones'));
    });
  });

  // ──────────────────────────────────────────────────────────────────────────
  // Inherited RestfulParameters methods
  // ──────────────────────────────────────────────────────────────────────────
  group('Inherited RestfulParameters:', () {
    test('addCount works on search classes', () {
      final search = SearchPatient()
        ..family('Smith'.toFhirString)
        ..addCount(10);

      final query = search.buildQuery();
      expect(query, contains('family=Smith'));
      expect(query, contains('_count=10'));
    });

    test('addPage works on search classes', () {
      final search = SearchPatient()..addPage(2);
      final query = search.buildQuery();
      expect(query, contains('_page=2'));
    });

    test('requestSummary works on search classes', () {
      final search = SearchPatient()..requestSummary(Summary.count);
      final query = search.buildQuery();
      expect(query, contains('_summary=count'));
    });
  });
}
