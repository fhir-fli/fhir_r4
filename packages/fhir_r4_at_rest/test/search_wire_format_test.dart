import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:test/test.dart';

/// Wire-format conformance: buildQuery() output is asserted EXACTLY against
/// the syntax and examples of https://hl7.org/fhir/R4/search.html.
/// [parameter]=[prefix][value] — the prefix (eq/ne/gt/lt/ge/le/sa/eb/ap)
/// goes immediately after '=', and applies only to date/number/quantity.
void main() {
  group('wire format — parameter names:', () {
    test('hyphenated SearchParameter.code goes on the wire verbatim', () {
      expect(
        SearchPatient().addressCity('Boston'.toFhirString).buildQuery(),
        equals('address-city=Boston'),
      );
      expect(
        SearchPatient()
            .deathDate(FhirDateTime.fromString('2024-06-15'))
            .buildQuery(),
        equals('death-date=2024-06-15'),
      );
    });

    test('underscore control parameters keep their underscore', () {
      expect(
        SearchResource().id('abc123'.toFhirString).buildQuery(),
        equals('_id=abc123'),
      );
    });
  });

  group('wire format — string (no prefixes):', () {
    test('plain value only', () {
      expect(
        SearchPatient().family('Smith'.toFhirString).buildQuery(),
        equals('family=Smith'),
      );
    });
  });

  group('wire format — token:', () {
    test('code only', () {
      expect(
        SearchPatient().gender('male'.toFhirString).buildQuery(),
        equals('gender=male'),
      );
    });

    test('system|code', () {
      expect(
        SearchPatient()
            .gender(
              'male'.toFhirString,
              system: FhirUri('http://hl7.org/fhir/administrative-gender'),
            )
            .buildQuery(),
        equals('gender=http://hl7.org/fhir/administrative-gender|male'),
      );
    });
  });

  group('wire format — date ([prefix][date]):', () {
    test('no prefix', () {
      expect(
        SearchPatient()
            .birthdate(FhirDateTime.fromString('1970-01-01'))
            .buildQuery(),
        equals('birthdate=1970-01-01'),
      );
    });

    test('prefix immediately after =', () {
      expect(
        SearchPatient()
            .birthdate(
              FhirDateTime.fromString('1970-01-01'),
              modifier: SearchModifier.ge,
            )
            .buildQuery(),
        equals('birthdate=ge1970-01-01'),
      );
    });
  });

  group('wire format — number ([prefix][number], no pipes):', () {
    test('no prefix', () {
      expect(
        SearchRiskAssessment().probability(FhirDecimal(0.8)).buildQuery(),
        equals('probability=0.8'),
      );
    });

    test('spec example probability=gt0.8', () {
      expect(
        SearchRiskAssessment()
            .probability(FhirDecimal(0.8), modifier: SearchModifier.gt)
            .buildQuery(),
        equals('probability=gt0.8'),
      );
    });
  });

  group('wire format — quantity ([prefix][number]|[system]|[code]):', () {
    test('number only — no trailing pipes', () {
      expect(
        SearchObservation().valueQuantity(FhirDecimal(5.4)).buildQuery(),
        equals('value-quantity=5.4'),
      );
    });

    test('empty system keeps its slot: 5.4||mg', () {
      expect(
        SearchObservation()
            .valueQuantity(FhirDecimal(5.4), unit: 'mg'.toFhirString)
            .buildQuery(),
        equals('value-quantity=5.4||mg'),
      );
    });

    test('spec example le5.4|http://unitsofmeasure.org|mg', () {
      expect(
        SearchObservation()
            .valueQuantity(
              FhirDecimal(5.4),
              modifier: SearchModifier.le,
              system: FhirUri('http://unitsofmeasure.org'),
              unit: 'mg'.toFhirString,
            )
            .buildQuery(),
        equals('value-quantity=le5.4|http://unitsofmeasure.org|mg'),
      );
    });
  });

  group('wire format — reference:', () {
    test('id, Type/id, and URL forms pass through verbatim', () {
      expect(
        SearchObservation().subject('Patient/123'.toFhirString).buildQuery(),
        equals('subject=Patient/123'),
      );
      expect(
        SearchObservation().subject('123'.toFhirString).buildQuery(),
        equals('subject=123'),
      );
      expect(
        SearchPatient()
            .generalPractitioner(
              'https://example.org/fhir/Practitioner/9'.toFhirString,
            )
            .buildQuery(),
        equals('general-practitioner=https://example.org/fhir/Practitioner/9'),
      );
    });
  });

  group('wire format — uri:', () {
    test('plain uri value', () {
      expect(
        SearchValueSet()
            .url(FhirUri('http://acme.org/fhir/ValueSet/123'))
            .buildQuery(),
        equals('url=http://acme.org/fhir/ValueSet/123'),
      );
    });
  });

  group('wire format — combinations:', () {
    test('parameters join with & and repeats are preserved', () {
      expect(
        SearchPatient()
            .gender('male'.toFhirString)
            .birthdate(
              FhirDateTime.fromString('2010-01-01'),
              modifier: SearchModifier.ge,
            )
            .birthdate(
              FhirDateTime.fromString('2011-12-31'),
              modifier: SearchModifier.le,
            )
            .buildQuery(),
        equals('gender=male&birthdate=ge2010-01-01&birthdate=le2011-12-31'),
      );
    });
  });
}
