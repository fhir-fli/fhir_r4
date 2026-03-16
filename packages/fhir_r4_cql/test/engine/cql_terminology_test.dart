import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

/// A minimal CqlExpression wrapper that returns a constant value.
class _ConstExpr extends CqlExpression {
  final dynamic value;
  _ConstExpr(this.value);

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async => value;

  @override
  Map<String, dynamic> toJson() => {'type': 'ConstExpr'};
}

/// Builds a context map containing a CqlLibrary with the given terminology
/// definitions. This is needed because CodeSystemRef, ValueSetRef, CodeRef,
/// and ConceptRef all look up definitions through `context['library']`.
Map<String, dynamic> _buildContext({
  List<CodeSystemDef>? codeSystemDefs,
  List<ValueSetDef>? valueSetDefs,
  List<CodeDef>? codeDefs,
  List<ConceptDef>? conceptDefs,
  Map<String, dynamic>? valueSetsExpansion,
}) {
  final library = CqlLibrary(
    codeSystems: codeSystemDefs != null
        ? (CodeSystemDefs()..def = codeSystemDefs)
        : null,
    valueSets:
        valueSetDefs != null ? (ValueSetDefs()..def = valueSetDefs) : null,
    codes: codeDefs != null ? (CodeDefs()..def = codeDefs) : null,
    concepts: conceptDefs != null ? (ConceptDefs()..def = conceptDefs) : null,
  );
  final context = <String, dynamic>{
    'library': library,
  };
  if (valueSetsExpansion != null) {
    context['_valueSets'] = valueSetsExpansion;
  }
  return context;
}

void main() {
  // Common code system definitions used across tests
  final loincDef = CodeSystemDef(
    name: 'LOINC',
    id: 'http://loinc.org',
    version: '2.72',
  );
  final snomedDef = CodeSystemDef(
    name: 'SNOMED',
    id: 'http://snomed.info/sct',
    version: '2021-09',
  );
  final icd10Def = CodeSystemDef(
    name: 'ICD10',
    id: 'http://hl7.org/fhir/sid/icd-10',
  );

  group('Code', () {
    test('creates CqlCode with resolved system URL and display', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final codeExpr = Code(
        code: '8480-6',
        display: 'Systolic blood pressure',
        system: CodeSystemRef(name: 'LOINC'),
      );
      final result = await codeExpr.execute(context);
      expect(result, isA<CqlCode>());
      expect(result!.code, equals('8480-6'));
      expect(result.display, equals('Systolic blood pressure'));
      expect(result.system, equals('http://loinc.org'));
    });

    test('creates CqlCode without display', () async {
      final context = _buildContext(codeSystemDefs: [snomedDef]);
      final codeExpr = Code(
        code: '271649006',
        system: CodeSystemRef(name: 'SNOMED'),
      );
      final result = await codeExpr.execute(context);
      expect(result, isA<CqlCode>());
      expect(result!.code, equals('271649006'));
      expect(result.display, isNull);
      expect(result.system, equals('http://snomed.info/sct'));
    });

    test('creates CqlCode with different code system', () async {
      final context = _buildContext(codeSystemDefs: [icd10Def]);
      final codeExpr = Code(
        code: 'J06.9',
        display: 'Acute upper respiratory infection',
        system: CodeSystemRef(name: 'ICD10'),
      );
      final result = await codeExpr.execute(context);
      expect(result, isA<CqlCode>());
      expect(result!.code, equals('J06.9'));
      expect(result.system, equals('http://hl7.org/fhir/sid/icd-10'));
    });
  });

  group('Concept', () {
    test('creates CqlConcept from multiple codes', () async {
      final context = _buildContext(codeSystemDefs: [loincDef, snomedDef]);
      final conceptExpr = Concept(
        code: [
          Code(
            code: '8480-6',
            display: 'Systolic BP',
            system: CodeSystemRef(name: 'LOINC'),
          ),
          Code(
            code: '271649006',
            display: 'Systolic BP SNOMED',
            system: CodeSystemRef(name: 'SNOMED'),
          ),
        ],
        display: 'Systolic Blood Pressure',
      );
      final result = await conceptExpr.execute(context);
      expect(result, isA<CqlConcept>());
      expect(result!.display, equals('Systolic Blood Pressure'));
      expect(result.codes.length, equals(2));
      expect(result.codes[0].code, equals('8480-6'));
      expect(result.codes[0].system, equals('http://loinc.org'));
      expect(result.codes[1].code, equals('271649006'));
      expect(result.codes[1].system, equals('http://snomed.info/sct'));
    });

    test('creates CqlConcept from single code', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final conceptExpr = Concept(
        code: [
          Code(
            code: '8480-6',
            system: CodeSystemRef(name: 'LOINC'),
          ),
        ],
      );
      final result = await conceptExpr.execute(context);
      expect(result, isA<CqlConcept>());
      expect(result!.display, isNull);
      expect(result.codes.length, equals(1));
      expect(result.codes[0].code, equals('8480-6'));
    });

    test('creates CqlConcept with display', () async {
      final context = _buildContext(codeSystemDefs: [snomedDef]);
      final conceptExpr = Concept(
        code: [
          Code(
            code: '38341003',
            display: 'Hypertension',
            system: CodeSystemRef(name: 'SNOMED'),
          ),
        ],
        display: 'Hypertensive disorder',
      );
      final result = await conceptExpr.execute(context);
      expect(result, isA<CqlConcept>());
      expect(result!.display, equals('Hypertensive disorder'));
      expect(result.codes[0].display, equals('Hypertension'));
    });
  });

  group('ConceptRef', () {
    test('resolves named concept from library', () async {
      final context = _buildContext(
        codeSystemDefs: [loincDef],
        codeDefs: [
          CodeDef(
            name: 'Systolic BP Code',
            id: '8480-6',
            display: 'Systolic blood pressure',
            codeSystem: CodeSystemRef(name: 'LOINC'),
          ),
        ],
        conceptDefs: [
          ConceptDef(
            name: 'Blood Pressure',
            display: 'Blood Pressure Concept',
            code: [CodeRef(name: 'Systolic BP Code')],
          ),
        ],
      );
      final conceptRef = ConceptRef(name: 'Blood Pressure');
      final result = await conceptRef.execute(context);
      expect(result, isA<CqlConcept>());
      final concept = result as CqlConcept;
      expect(concept.display, equals('Blood Pressure Concept'));
      expect(concept.codes.length, equals(1));
      expect(concept.codes[0].code, equals('8480-6'));
      expect(concept.codes[0].system, equals('http://loinc.org'));
    });

    test('returns null for missing concept name', () async {
      final context = _buildContext(
        codeSystemDefs: [loincDef],
        conceptDefs: [
          ConceptDef(
            name: 'Some Other Concept',
            code: [CodeRef(name: 'SomeCode')],
          ),
        ],
      );
      final conceptRef = ConceptRef(name: 'Non Existent Concept');
      final result = await conceptRef.execute(context);
      expect(result, isNull);
    });

    test('returns null when library has no concept defs', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final conceptRef = ConceptRef(name: 'Any Concept');
      final result = await conceptRef.execute(context);
      expect(result, isNull);
    });
  });

  group('InCodeSystem', () {
    test('returns true when code system matches', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final inCS = InCodeSystem(
        code: _ConstExpr(CqlCode(
          code: '8480-6',
          system: 'http://loinc.org',
        )),
        codesystem: CodeSystemRef(name: 'LOINC'),
      );
      final result = await inCS.execute(context);
      expect(result, equals(fhir.FhirBoolean(true)));
    });

    test('returns false when code system does not match', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final inCS = InCodeSystem(
        code: _ConstExpr(CqlCode(
          code: '271649006',
          system: 'http://snomed.info/sct',
        )),
        codesystem: CodeSystemRef(name: 'LOINC'),
      );
      final result = await inCS.execute(context);
      expect(result, equals(fhir.FhirBoolean(false)));
    });

    test('returns null when code is null', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final inCS = InCodeSystem(
        code: _ConstExpr(null),
        codesystem: CodeSystemRef(name: 'LOINC'),
      );
      final result = await inCS.execute(context);
      expect(result, isNull);
    });

    test('returns null for non-CqlCode types (CqlConcept)', () async {
      // InCodeSystem only handles CqlCode; for other types it returns null
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final inCS = InCodeSystem(
        code: _ConstExpr(CqlConcept(
          codes: [CqlCode(code: '8480-6', system: 'http://loinc.org')],
        )),
        codesystem: CodeSystemRef(name: 'LOINC'),
      );
      final result = await inCS.execute(context);
      expect(result, isNull);
    });
  });

  group('AnyInCodeSystem', () {
    test('returns true when list contains matching code', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final anyInCS = AnyInCodeSystem(
        codes: _ConstExpr([
          CqlCode(code: '271649006', system: 'http://snomed.info/sct'),
          CqlCode(code: '8480-6', system: 'http://loinc.org'),
        ]),
        codesystem: CodeSystemRef(name: 'LOINC'),
      );
      final result = await anyInCS.execute(context);
      expect(result, equals(fhir.FhirBoolean(true)));
    });

    test('returns false when no codes match', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final anyInCS = AnyInCodeSystem(
        codes: _ConstExpr([
          CqlCode(code: '271649006', system: 'http://snomed.info/sct'),
          CqlCode(code: '38341003', system: 'http://snomed.info/sct'),
        ]),
        codesystem: CodeSystemRef(name: 'LOINC'),
      );
      final result = await anyInCS.execute(context);
      expect(result, equals(fhir.FhirBoolean(false)));
    });

    test('returns null when codes is null', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final anyInCS = AnyInCodeSystem(
        codes: _ConstExpr(null),
        codesystem: CodeSystemRef(name: 'LOINC'),
      );
      final result = await anyInCS.execute(context);
      expect(result, isNull);
    });

    test('returns false for empty list', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final anyInCS = AnyInCodeSystem(
        codes: _ConstExpr(<CqlCode>[]),
        codesystem: CodeSystemRef(name: 'LOINC'),
      );
      final result = await anyInCS.execute(context);
      expect(result, equals(fhir.FhirBoolean(false)));
    });
  });

  group('AnyInValueSet', () {
    test('returns true when code is in value set expansion', () async {
      final context = _buildContext(
        valueSetDefs: [
          ValueSetDef(
            name: 'Diabetes',
            id: 'http://example.org/vs/diabetes',
          ),
        ],
        valueSetsExpansion: {
          'http://example.org/vs/diabetes': [
            {'code': 'E11.9', 'system': 'http://hl7.org/fhir/sid/icd-10'},
            {'code': 'E10.9', 'system': 'http://hl7.org/fhir/sid/icd-10'},
          ],
        },
      );
      final anyInVS = AnyInValueSet(
        codes: _ConstExpr([
          CqlCode(code: 'E11.9', system: 'http://hl7.org/fhir/sid/icd-10'),
        ]),
        valueset: ValueSetRef(name: 'Diabetes'),
      );
      final result = await anyInVS.execute(context);
      expect(result, equals(fhir.FhirBoolean(true)));
    });

    test('returns false when code is not in value set expansion', () async {
      final context = _buildContext(
        valueSetDefs: [
          ValueSetDef(
            name: 'Diabetes',
            id: 'http://example.org/vs/diabetes',
          ),
        ],
        valueSetsExpansion: {
          'http://example.org/vs/diabetes': [
            {'code': 'E11.9', 'system': 'http://hl7.org/fhir/sid/icd-10'},
          ],
        },
      );
      final anyInVS = AnyInValueSet(
        codes: _ConstExpr([
          CqlCode(code: '8480-6', system: 'http://loinc.org'),
        ]),
        valueset: ValueSetRef(name: 'Diabetes'),
      );
      final result = await anyInVS.execute(context);
      expect(result, equals(fhir.FhirBoolean(false)));
    });

    test('returns null when codes is null', () async {
      final context = _buildContext(
        valueSetDefs: [
          ValueSetDef(
            name: 'Diabetes',
            id: 'http://example.org/vs/diabetes',
          ),
        ],
        valueSetsExpansion: {
          'http://example.org/vs/diabetes': [
            {'code': 'E11.9', 'system': 'http://hl7.org/fhir/sid/icd-10'},
          ],
        },
      );
      final anyInVS = AnyInValueSet(
        codes: _ConstExpr(null),
        valueset: ValueSetRef(name: 'Diabetes'),
      );
      final result = await anyInVS.execute(context);
      expect(result, isNull);
    });

    test('returns null when valueset has no expansion', () async {
      // No _valueSets in context, and no valueset expression => returns null
      final context = _buildContext(
        valueSetDefs: [
          ValueSetDef(
            name: 'Diabetes',
            id: 'http://example.org/vs/diabetes',
          ),
        ],
        // Deliberately no valueSetsExpansion
      );
      final anyInVS = AnyInValueSet(
        codes: _ConstExpr([
          CqlCode(code: 'E11.9', system: 'http://hl7.org/fhir/sid/icd-10'),
        ]),
        valueset: ValueSetRef(name: 'Diabetes'),
      );
      final result = await anyInVS.execute(context);
      expect(result, isNull);
    });
  });

  group('ExpandValueSet', () {
    test('returns list of CqlCodes from value set expansion', () async {
      final context = _buildContext(
        valueSetDefs: [
          ValueSetDef(
            name: 'Diabetes',
            id: 'http://example.org/vs/diabetes',
          ),
        ],
        valueSetsExpansion: {
          'http://example.org/vs/diabetes': [
            {
              'code': 'E11.9',
              'system': 'http://hl7.org/fhir/sid/icd-10',
              'display': 'Type 2 diabetes mellitus without complications',
            },
            {
              'code': 'E10.9',
              'system': 'http://hl7.org/fhir/sid/icd-10',
              'display': 'Type 1 diabetes mellitus without complications',
            },
          ],
        },
      );
      final expandVS = ExpandValueSet(
        operand: ValueSetRef(name: 'Diabetes'),
      );
      final result = await expandVS.execute(context);
      expect(result, isA<List>());
      final codes = result as List;
      expect(codes.length, equals(2));
      expect(codes[0], isA<CqlCode>());
      expect((codes[0] as CqlCode).code, equals('E11.9'));
      expect((codes[0] as CqlCode).system,
          equals('http://hl7.org/fhir/sid/icd-10'));
      expect((codes[0] as CqlCode).display,
          equals('Type 2 diabetes mellitus without complications'));
      expect((codes[1] as CqlCode).code, equals('E10.9'));
    });

    test('returns null when value set has no expansion', () async {
      final context = _buildContext(
        valueSetDefs: [
          ValueSetDef(
            name: 'Diabetes',
            id: 'http://example.org/vs/diabetes',
          ),
        ],
        // No _valueSets expansion
      );
      final expandVS = ExpandValueSet(
        operand: ValueSetRef(name: 'Diabetes'),
      );
      final result = await expandVS.execute(context);
      expect(result, isNull);
    });

    test('returns null when operand is null', () async {
      final context = _buildContext();
      final expandVS = ExpandValueSet(operand: LiteralNull());
      final result = await expandVS.execute(context);
      expect(result, isNull);
    });
  });

  group('Subsumes', () {
    test('returns null for non-null inputs (stub implementation)', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final subsumes = Subsumes(
        operand: [
          _ConstExpr(CqlCode(code: '8480-6', system: 'http://loinc.org')),
          _ConstExpr(CqlCode(code: '8462-4', system: 'http://loinc.org')),
        ],
      );
      final result = await subsumes.execute(context);
      // Subsumption requires a terminology server; stub returns null
      expect(result, isNull);
    });

    test('returns null when either operand is null', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final subsumes = Subsumes(
        operand: [
          _ConstExpr(null),
          _ConstExpr(CqlCode(code: '8462-4', system: 'http://loinc.org')),
        ],
      );
      final result = await subsumes.execute(context);
      expect(result, isNull);
    });
  });

  group('SubsumedBy', () {
    test('returns null for non-null inputs (stub implementation)', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final subsumedBy = SubsumedBy(
        operand: [
          _ConstExpr(CqlCode(code: '8462-4', system: 'http://loinc.org')),
          _ConstExpr(CqlCode(code: '8480-6', system: 'http://loinc.org')),
        ],
      );
      final result = await subsumedBy.execute(context);
      // Subsumption requires a terminology server; stub returns null
      expect(result, isNull);
    });

    test('returns null when either operand is null', () async {
      final context = _buildContext(codeSystemDefs: [loincDef]);
      final subsumedBy = SubsumedBy(
        operand: [
          _ConstExpr(CqlCode(code: '8462-4', system: 'http://loinc.org')),
          _ConstExpr(null),
        ],
      );
      final result = await subsumedBy.execute(context);
      expect(result, isNull);
    });
  });
}
