import 'package:fhir_r4/fhir_r4.dart' hide Count, Quantity, Ratio;
import 'package:fhir_r4/fhir_r4.dart' as fhir show Quantity, Ratio;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Helper expression that returns a fixed value when executed.
class _Literal extends CqlExpression {
  _Literal(this.value);
  final dynamic value;

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async => value;

  @override
  Map<String, dynamic> toJson() => {};

  @override
  String get type => '_Literal';
}

void main() {
  /// Helper to build a context with a CqlLibrary and the R4 resolver
  /// (FHIR-typed inputs convert at the resolver boundary).
  Map<String, dynamic> ctx() => {
        'library': CqlLibrary(),
        ContextKey.modelResolver: const R4ModelResolver(),
      };

  // ---------------------------------------------------------------------------
  // ToString
  // ---------------------------------------------------------------------------
  group('ToString', () {
    test('CqlString returns plain String', () async {
      final ref = FunctionRef(
        name: 'ToString',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlString('hello'))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('hello'));
    });

    test('FhirCode returns String value', () async {
      final ref = FunctionRef(
        name: 'ToString',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(FhirCode('active'))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('active'));
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToString',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToBoolean
  // ---------------------------------------------------------------------------
  group('ToBoolean', () {
    test('CqlBoolean passthrough', () async {
      final ref = FunctionRef(
        name: 'ToBoolean',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlBoolean(true))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlBoolean(true)));
    });

    test('bool to CqlBoolean', () async {
      final ref = FunctionRef(
        name: 'ToBoolean',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(false)],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlBoolean(false)));
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToBoolean',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToInteger
  // ---------------------------------------------------------------------------
  group('ToInteger', () {
    test('CqlInteger passthrough', () async {
      final ref = FunctionRef(
        name: 'ToInteger',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlInteger(42))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlInteger(42)));
    });

    test('FhirPositiveInt to CqlInteger', () async {
      final ref = FunctionRef(
        name: 'ToInteger',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(FhirPositiveInt(5))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlInteger(5)));
    });

    test('FhirUnsignedInt to CqlInteger', () async {
      final ref = FunctionRef(
        name: 'ToInteger',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(FhirUnsignedInt(10))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlInteger(10)));
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToInteger',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToDecimal
  // ---------------------------------------------------------------------------
  group('ToDecimal', () {
    test('CqlDecimal passthrough', () async {
      final ref = FunctionRef(
        name: 'ToDecimal',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlDecimal(3.14))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlDecimal(3.14)));
    });

    test('double to CqlDecimal', () async {
      final ref = FunctionRef(
        name: 'ToDecimal',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(2.5)],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlDecimal(2.5)));
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToDecimal',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToDateTime
  // ---------------------------------------------------------------------------
  group('ToDateTime', () {
    test('CqlDateTime passthrough', () async {
      final ref = FunctionRef(
        name: 'ToDateTime',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlDateTime.fromString('2024-01-01'))],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlDateTime>());
      expect((result as CqlDateTime).valueString, equals('2024-01-01'));
    });

    test('CqlDate to CqlDateTime', () async {
      final ref = FunctionRef(
        name: 'ToDateTime',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlDate.fromString('2024-06-15'))],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlDateTime>());
    });

    test('String to CqlDateTime', () async {
      final ref = FunctionRef(
        name: 'ToDateTime',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('2024-03-20T10:30:00')],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlDateTime>());
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToDateTime',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToDate
  // ---------------------------------------------------------------------------
  group('ToDate', () {
    test('CqlDate passthrough', () async {
      final ref = FunctionRef(
        name: 'ToDate',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlDate.fromString('2024-01-01'))],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlDate>());
      expect((result as CqlDate).valueString, equals('2024-01-01'));
    });

    test('CqlDateTime to CqlDate', () async {
      final ref = FunctionRef(
        name: 'ToDate',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlDateTime.fromString('2024-06-15T10:30:00'))],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlDate>());
      expect((result as CqlDate).valueString, equals('2024-06-15'));
    });

    test('String to CqlDate', () async {
      final ref = FunctionRef(
        name: 'ToDate',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('2024-03-20')],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlDate>());
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToDate',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToTime
  // ---------------------------------------------------------------------------
  group('ToTime', () {
    test('CqlTime passthrough', () async {
      final ref = FunctionRef(
        name: 'ToTime',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlTime('14:30:00'))],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlTime>());
    });

    test('String to CqlTime', () async {
      final ref = FunctionRef(
        name: 'ToTime',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('10:15:00')],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlTime>());
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToTime',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToCode
  // ---------------------------------------------------------------------------
  group('ToCode', () {
    test('Coding to CqlCode', () async {
      final coding = Coding(
        system: FhirUri('http://example.com'),
        code: FhirCode('A'),
        display: FhirString('Alpha'),
      );
      final ref = FunctionRef(
        name: 'ToCode',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(coding)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlCode>());
      final cqlCode = result as CqlCode;
      expect(cqlCode.code, equals('A'));
      expect(cqlCode.system, equals('http://example.com'));
      expect(cqlCode.display, equals('Alpha'));
    });

    test('CqlCode passthrough', () async {
      final code = CqlCode(
        code: 'B',
        system: 'http://example.com',
        display: 'Beta',
      );
      final ref = FunctionRef(
        name: 'ToCode',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(code)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlCode>());
      expect((result as CqlCode).code, equals('B'));
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToCode',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToConcept
  // ---------------------------------------------------------------------------
  group('ToConcept', () {
    test('CodeableConcept to CqlConcept', () async {
      final cc = CodeableConcept(
        coding: [
          Coding(
            system: FhirUri('http://example.com'),
            code: FhirCode('A'),
          ),
        ],
      );
      final ref = FunctionRef(
        name: 'ToConcept',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(cc)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlConcept>());
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToConcept',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToQuantity
  // ---------------------------------------------------------------------------
  group('ToQuantity', () {
    test('FHIR Quantity to ValidatedQuantity', () async {
      final qty = fhir.Quantity(
        value: FhirDecimal(5.0),
        unit: FhirString('mg'),
      );
      final ref = FunctionRef(
        name: 'ToQuantity',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(qty)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<ValidatedQuantity>());
    });

    test('ValidatedQuantity passthrough', () async {
      final vq = ValidatedQuantity.fromNumber(10, unit: 'kg');
      final ref = FunctionRef(
        name: 'ToQuantity',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(vq)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<ValidatedQuantity>());
      expect(result, equals(vq));
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToQuantity',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToInterval
  // ---------------------------------------------------------------------------
  group('ToInterval', () {
    test('Period to CqlInterval', () async {
      final period = Period(
        start: FhirDateTime.fromString('2024-01-01'),
        end: FhirDateTime.fromString('2024-12-31'),
      );
      final ref = FunctionRef(
        name: 'ToInterval',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(period)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlInterval>());
    });

    test('Range to CqlInterval', () async {
      final range = Range(
        low: fhir.Quantity(value: FhirDecimal(1.0), unit: FhirString('mg')),
        high: fhir.Quantity(value: FhirDecimal(10.0), unit: FhirString('mg')),
      );
      final ref = FunctionRef(
        name: 'ToInterval',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(range)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlInterval>());
    });

    test('CqlInterval passthrough', () async {
      final interval = CqlInterval(
        low: CqlInteger(1),
        high: CqlInteger(10),
        lowClosed: true,
        highClosed: true,
      );
      final ref = FunctionRef(
        name: 'ToInterval',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(interval)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlInterval>());
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToInterval',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToCalendarUnit
  // ---------------------------------------------------------------------------
  group('ToCalendarUnit', () {
    test('ms maps to millisecond', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('ms')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('millisecond'));
    });

    test('s maps to second', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('s')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('second'));
    });

    test('min maps to minute', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('min')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('minute'));
    });

    test('h maps to hour', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('h')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('hour'));
    });

    test('d maps to day', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('d')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('day'));
    });

    test('wk maps to week', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('wk')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('week'));
    });

    test('mo maps to month', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('mo')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('month'));
    });

    test('a maps to year', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('a')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('year'));
    });

    test('unknown unit passes through unchanged', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('unknown')],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('unknown'));
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToCalendarUnit',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToRatio
  // ---------------------------------------------------------------------------
  group('ToRatio', () {
    test('FHIR Ratio to ValidatedRatio', () async {
      final ratio = fhir.Ratio(
        numerator: fhir.Quantity(
          value: FhirDecimal(1.0),
          unit: FhirString('mg'),
        ),
        denominator: fhir.Quantity(
          value: FhirDecimal(2.0),
          unit: FhirString('mL'),
        ),
      );
      final ref = FunctionRef(
        name: 'ToRatio',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(ratio)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<ValidatedRatio>());
    });

    test('ValidatedRatio passthrough', () async {
      final vr = ValidatedRatio(
        numerator: ValidatedQuantity.fromNumber(1, unit: 'mg'),
        denominator: ValidatedQuantity.fromNumber(2, unit: 'mL'),
      );
      final ref = FunctionRef(
        name: 'ToRatio',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(vr)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<ValidatedRatio>());
      expect(result, equals(vr));
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToRatio',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToQuantityIgnoringComparator (delegates to ToQuantity logic)
  // ---------------------------------------------------------------------------
  group('ToQuantityIgnoringComparator', () {
    test('FHIR Quantity to ValidatedQuantity', () async {
      final qty = fhir.Quantity(
        value: FhirDecimal(5.0),
        unit: FhirString('mg'),
      );
      final ref = FunctionRef(
        name: 'ToQuantityIgnoringComparator',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(qty)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<ValidatedQuantity>());
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToQuantityIgnoringComparator',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToValueSet
  // ---------------------------------------------------------------------------
  group('ToValueSet', () {
    test('String to CqlValueSet', () async {
      final ref = FunctionRef(
        name: 'ToValueSet',
        libraryName: 'FHIRHelpers',
        operand: [_Literal('http://example.com/vs')],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlValueSet>());
      expect((result as CqlValueSet).id, equals('http://example.com/vs'));
    });

    test('FhirUri to CqlValueSet', () async {
      final ref = FunctionRef(
        name: 'ToValueSet',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(FhirUri('http://example.com/vs2'))],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlValueSet>());
      expect(
        (result as CqlValueSet).id,
        equals('http://example.com/vs2'),
      );
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToValueSet',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // ToValue
  // ---------------------------------------------------------------------------
  group('ToValue', () {
    test('CqlBoolean passthrough', () async {
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlBoolean(true))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlBoolean(true)));
    });

    test('CqlString unwraps to String', () async {
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlString('hello'))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals('hello'));
    });

    test('CqlInteger passthrough', () async {
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(CqlInteger(42))],
      );
      final result = await ref.execute(ctx());
      expect(result, equals(CqlInteger(42)));
    });

    test('FHIR Quantity to ValidatedQuantity', () async {
      final qty = fhir.Quantity(
        value: FhirDecimal(5.0),
        unit: FhirString('mg'),
      );
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(qty)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<ValidatedQuantity>());
    });

    test('CodeableConcept to CqlConcept', () async {
      final cc = CodeableConcept(
        coding: [
          Coding(
            system: FhirUri('http://example.com'),
            code: FhirCode('A'),
          ),
        ],
      );
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(cc)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlConcept>());
    });

    test('Coding to CqlCode', () async {
      final coding = Coding(
        system: FhirUri('http://example.com'),
        code: FhirCode('A'),
      );
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(coding)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlCode>());
    });

    test('Period to CqlInterval', () async {
      final period = Period(
        start: FhirDateTime.fromString('2024-01-01'),
        end: FhirDateTime.fromString('2024-12-31'),
      );
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(period)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlInterval>());
    });

    test('Range to CqlInterval', () async {
      final range = Range(
        low: fhir.Quantity(
          value: FhirDecimal(1.0),
          unit: FhirString('mg'),
        ),
        high: fhir.Quantity(
          value: FhirDecimal(10.0),
          unit: FhirString('mg'),
        ),
      );
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(range)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<CqlInterval>());
    });

    test('FHIR Ratio to ValidatedRatio', () async {
      final ratio = fhir.Ratio(
        numerator: fhir.Quantity(
          value: FhirDecimal(1.0),
          unit: FhirString('mg'),
        ),
        denominator: fhir.Quantity(
          value: FhirDecimal(2.0),
          unit: FhirString('mL'),
        ),
      );
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(ratio)],
      );
      final result = await ref.execute(ctx());
      expect(result, isA<ValidatedRatio>());
    });

    test('null returns null', () async {
      final ref = FunctionRef(
        name: 'ToValue',
        libraryName: 'FHIRHelpers',
        operand: [_Literal(null)],
      );
      final result = await ref.execute(ctx());
      expect(result, isNull);
    });
  });

  // ---------------------------------------------------------------------------
  // External stubs regression
  //
  // These 17 functions are external FHIR functions that are not implemented as
  // CQL helpers. They should return null.
  // ---------------------------------------------------------------------------
  group('External stubs regression', () {
    final externalStubNames = [
      'resolve',
      'reference',
      'extension',
      'modifierExtension',
      'hasValue',
      'getValue',
      'ofType',
      'is',
      'as',
      'elementDefinition',
      'slice',
      'checkModifiers',
      'conformsTo',
      'memberOf',
      'subsumes',
      'subsumedBy',
      'htmlChecks',
    ];

    for (final funcName in externalStubNames) {
      test('$funcName returns null', () async {
        final ref = FunctionRef(
          name: funcName,
          libraryName: 'FHIRHelpers',
          operand: [_Literal(CqlDateTime.fromString('2024-01-01'))],
        );
        final result = await ref.execute(ctx());
        expect(result, isNull, reason: '$funcName should return null');
      });
    }
  });
}
