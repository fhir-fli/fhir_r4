import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:test/test.dart';

/// Regression guard for `memberOf`, which asks one question: is this code a
/// member of this value set.
///
/// The spec words it as membership throughout — *"returns true if the code is
/// a member of the given valueset"*, *"returns true if any code in the concept
/// is a member of the given valueset"* — and says nothing about the code also
/// being valid in its own code system.
///
/// Three separate defects made that unanswerable, all fixed together:
///
/// 1. `TypeConvertor.castToCodeableConcept` was a stub that threw
///    `UnimplementedError`, so `memberOf` on a `CodeableConcept` — the common
///    case, since that is how a diagnosis is coded — could not run at all.
/// 2. Validation asked the wider "and valid in its code system" question. A
///    value set enumerating SNOMED concepts is answerable from the enumeration
///    alone, and SNOMED is licensed, so no offline deployment holds the code
///    system. The wider question answered `false` for a code the value set
///    plainly lists: a confident wrong answer, and a silent one.
/// 3. The operator form returned `false` for a value set that could not be
///    resolved, where the spec says an error is thrown. `false` says the code
///    is not in the set; what happened is that nobody could look.
const injuryVs = 'http://example.org/ValueSet/injury';
const sct = 'http://snomed.info/sct';
const fracture = '125605004';
const asthma = '195967001';

/// A value set that enumerates its concepts and names a code system nothing
/// here supplies — the ordinary shape of a deployment-supplied value set.
ValueSet injuryValueSet() => ValueSet(
      id: FhirString('injury'),
      url: FhirUri(injuryVs),
      version: FhirString('1.0.0'),
      name: FhirString('Injury'),
      status: PublicationStatus.active,
      compose: ValueSetCompose(
        include: [
          ValueSetInclude(
            system: FhirUri(sct),
            concept: [
              ValueSetConcept(
                code: FhirCode(fracture),
                display: FhirString('Fracture of bone'),
              ),
            ],
          ),
        ],
      ),
    );

Future<FHIRPathEngine> engineWithValueSet() async {
  final cache = CanonicalResourceCache()..see(injuryValueSet());
  return FHIRPathEngine.create(WorkerContext(resourceCache: cache));
}

Condition diagnosisOf(String code) => Condition(
      id: FhirString('c1'),
      subject: Reference(reference: FhirString('Patient/p')),
      code: CodeableConcept(
        coding: [Coding(system: FhirUri(sct), code: FhirCode(code))],
      ),
    );

Future<List<FhirBase>> evaluate(
  FHIRPathEngine engine,
  Resource resource,
  String expression,
) async {
  final result = await engine.evaluateWithContext(
    null,
    resource,
    resource,
    resource,
    engine.parse(expression),
  );
  return result.whereType<FhirBase>().toList();
}

bool? asBoolean(List<FhirBase> result) =>
    result.length == 1 && result.single is FhirBoolean
        ? (result.single as FhirBoolean).valueBoolean
        : null;

void main() {
  group('memberOf, with the value set supplied and no code system', () {
    late FHIRPathEngine engine;

    setUpAll(() async {
      engine = await engineWithValueSet();
    });

    test('a code the value set lists is a member', () async {
      expect(
        asBoolean(
          await evaluate(
            engine,
            diagnosisOf(fracture),
            "code.memberOf('$injuryVs')",
          ),
        ),
        isTrue,
        reason: 'the value set enumerates this concept, so membership is '
            'answerable without holding SNOMED',
      );
    });

    test('a code it does not list is not a member', () async {
      expect(
        asBoolean(
          await evaluate(
            engine,
            diagnosisOf(asthma),
            "code.memberOf('$injuryVs')",
          ),
        ),
        isFalse,
      );
    });

    test('a Coding answers the same as the CodeableConcept around it',
        () async {
      expect(
        asBoolean(
          await evaluate(
            engine,
            diagnosisOf(fracture),
            "code.coding.first().memberOf('$injuryVs')",
          ),
        ),
        isTrue,
      );
    });

    test('the operator form answers the same as the function form', () async {
      expect(
        asBoolean(
          await evaluate(
            engine,
            diagnosisOf(fracture),
            "code memberOf '$injuryVs'",
          ),
        ),
        isTrue,
      );
    });
  });

  group('a value set nobody supplied', () {
    late FHIRPathEngine engine;

    setUpAll(() async {
      engine = await engineWithValueSet();
    });

    test('the function form throws rather than answering no', () async {
      await expectLater(
        evaluate(
          engine,
          diagnosisOf(fracture),
          "code.memberOf('http://example.org/ValueSet/not-supplied')",
        ),
        throwsA(
          isA<PathEngineException>().having(
            (e) => e.toString(),
            'names the value set it could not resolve',
            contains('not-supplied'),
          ),
        ),
      );
    });

    test('the operator form throws too', () async {
      await expectLater(
        evaluate(
          engine,
          diagnosisOf(fracture),
          "code memberOf 'http://example.org/ValueSet/not-supplied'",
        ),
        throwsA(isA<PathEngineException>()),
      );
    });
  });

  group('castToCodeableConcept', () {
    test('passes a CodeableConcept through', () {
      final concept = CodeableConcept(text: FhirString('a diagnosis'));
      expect(TypeConvertor.castToCodeableConcept(concept), same(concept));
    });

    test('wraps a code as the concept it stands for', () {
      final result = TypeConvertor.castToCodeableConcept(FhirCode('abc'));
      expect(result?.coding?.single.code?.valueString, 'abc');
    });

    test('refuses a value that is not a concept, rather than guessing', () {
      expect(
        () => TypeConvertor.castToCodeableConcept(FhirBoolean(true)),
        throwsA(isA<FHIRException>()),
      );
    });

    test('R4 has no string branch — R5 added one, do not copy it back', () {
      expect(
        () => TypeConvertor.castToCodeableConcept(FhirString('abc')),
        throwsA(isA<FHIRException>()),
        reason: "R4's Base.castToCodeableConcept accepts CodeableConcept and "
            'code only',
      );
    });

    test('null in, null out', () {
      expect(TypeConvertor.castToCodeableConcept(null), isNull);
    });
  });
}
