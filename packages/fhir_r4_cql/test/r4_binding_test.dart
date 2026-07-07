import 'package:fhir_r4/fhir_r4.dart' as r4;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

/// Smoke tests for the FHIR R4 binding: prove the [R4ModelResolver] maps R4
/// FHIR values to CQL System types and navigates R4 data. The CQL engine
/// itself is exercised exhaustively by the `cql` suite; here we only verify
/// the R4 boundary wiring.
void main() {
  const mr = R4ModelResolver();

  group('R4ModelResolver.toCqlSystemType', () {
    test('FHIR primitives → CQL System primitives', () {
      expect(mr.toCqlSystemType(r4.FhirBoolean(true)), isA<CqlBoolean>());
      expect(mr.toCqlSystemType(r4.FhirInteger(7)), isA<CqlInteger>());
      expect(mr.toCqlSystemType(r4.FhirString('hi')), isA<CqlString>());
      expect(
        mr.toCqlSystemType(r4.FhirDecimal(1.5)),
        isA<CqlDecimal>(),
      );
    });

    test('FHIR Coding → CQL Code', () {
      final code = mr.toCqlSystemType(
        r4.Coding(system: r4.FhirUri('s'), code: r4.FhirCode('c')),
      );
      expect(code, isA<CqlCode>());
      expect((code as CqlCode).code, 'c');
      expect(code.system, 's');
    });

    test('FHIR CodeableConcept → CQL Concept', () {
      final concept = mr.toCqlSystemType(
        r4.CodeableConcept(
          coding: [r4.Coding(system: r4.FhirUri('s'), code: r4.FhirCode('c'))],
        ),
      );
      expect(concept, isA<CqlConcept>());
    });
  });

  group('R4ModelResolver.is_', () {
    test('recognizes FHIR + System types', () {
      expect(mr.is_(r4.FhirBoolean(true), 'boolean'), isTrue);
      expect(mr.is_(const r4.Coding(), 'Coding'), isTrue);
      expect(mr.is_(CqlInteger(1), 'Integer'), isTrue);
      expect(mr.is_(r4.FhirBoolean(true), 'Coding'), isFalse);
    });
  });

  group('R4ModelResolver.resolvePath', () {
    test('navigates a raw FHIR R4 resource map', () async {
      final patient = <String, dynamic>{
        'resourceType': 'Patient',
        'id': 'example',
        'gender': 'male',
      };
      final gender = await mr.resolvePath(patient, 'gender');
      // Resolves to the FHIR code value; ToString-style conversion is the
      // engine's job via the translator-inserted FHIRHelpers.
      expect(gender, isNotNull);
    });
  });

  test('R4TerminologyProvider instantiates', () {
    expect(R4TerminologyProvider(), isA<TerminologyProvider>());
  });
}
