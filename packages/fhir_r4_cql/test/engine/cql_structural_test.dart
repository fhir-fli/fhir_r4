import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

/// Helper that returns a constant value from execute().
class _ConstExpr extends CqlExpression {
  final dynamic value;
  _ConstExpr(this.value);

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async => value;

  @override
  Map<String, dynamic> toJson() => {'type': 'ConstExpr'};
}

void main() {
  // ───────────────────────────────────────────────────────────────────────────
  // Tuple
  // ───────────────────────────────────────────────────────────────────────────
  group('Tuple', () {
    test('constructs map from named elements', () async {
      final tuple = Tuple(element: [
        TupleElement(name: 'name', value: LiteralString('Alice')),
        TupleElement(name: 'age', value: LiteralInteger(30)),
      ]);
      final result = await tuple.execute({});
      expect(result, isA<Map<String, dynamic>>());
      expect(result['name'], equals('Alice'));
      expect(result['age'], equals(fhir.FhirInteger(30)));
    });

    test('empty tuple returns empty map', () async {
      final tuple = Tuple(element: []);
      final result = await tuple.execute({});
      expect(result, isA<Map<String, dynamic>>());
      expect((result as Map).isEmpty, isTrue);
    });

    test('single element tuple', () async {
      final tuple = Tuple(element: [
        TupleElement(name: 'x', value: LiteralBoolean(true)),
      ]);
      final result = await tuple.execute({});
      expect(result, isA<Map<String, dynamic>>());
      expect(result['x'], equals(fhir.FhirBoolean(true)));
    });

    test('tuple with null element value', () async {
      final tuple = Tuple(element: [
        TupleElement(name: 'val', value: LiteralNull()),
      ]);
      final result = await tuple.execute({});
      expect(result, isA<Map<String, dynamic>>());
      expect(result['val'], isNull);
    });

    test('tuple with computed expressions', () async {
      final tuple = Tuple(element: [
        TupleElement(
          name: 'sum',
          value: Add(operand: [LiteralInteger(2), LiteralInteger(3)]),
        ),
      ]);
      final result = await tuple.execute({});
      expect(result['sum'], equals(fhir.FhirInteger(5)));
    });

    test('Tuple() with no element arg throws on execute', () async {
      final tuple = Tuple();
      expect(() => tuple.execute({}), throwsA(isA<TypeError>()));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Message
  // ───────────────────────────────────────────────────────────────────────────
  group('Message', () {
    test('returns source value unchanged', () async {
      final message = Message(
        source: LiteralInteger(42),
        condition: LiteralBoolean(true),
        code: LiteralString('INFO'),
        severity: LiteralString('Information'),
        message: LiteralString('Test message'),
      );
      final result = await message.execute({});
      expect(result, equals(fhir.FhirInteger(42)));
    });

    test('returns null source as null', () async {
      final message = Message(
        source: LiteralNull(),
        message: LiteralString('Null value'),
      );
      final result = await message.execute({});
      expect(result, isNull);
    });

    test('returns string source unchanged', () async {
      final message = Message(
        source: LiteralString('hello'),
        message: LiteralString('Debug'),
      );
      final result = await message.execute({});
      expect(result, equals('hello'));
    });

    test('returns list source unchanged', () async {
      final message = Message(
        source: ListExpression(element: [
          LiteralInteger(1),
          LiteralInteger(2),
        ]),
        message: LiteralString('List check'),
      );
      final result = await message.execute({});
      expect(result, isA<List>());
      expect(
          (result as List),
          equals([
            fhir.FhirInteger(1),
            fhir.FhirInteger(2),
          ]));
    });

    test('condition=false still passes source through', () async {
      final message = Message(
        source: LiteralInteger(99),
        condition: LiteralBoolean(false),
        code: LiteralString('WARN'),
        severity: LiteralString('Warning'),
        message: LiteralString('This warning is not triggered'),
      );
      final result = await message.execute({});
      expect(result, equals(fhir.FhirInteger(99)));
    });

    test('boolean source returned unchanged', () async {
      final message = Message(
        source: LiteralBoolean(true),
        message: LiteralString('Bool check'),
      );
      final result = await message.execute({});
      expect(result, equals(fhir.FhirBoolean(true)));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Slice
  // ───────────────────────────────────────────────────────────────────────────
  group('Slice', () {
    test('slices a sublist from startIndex to endIndex', () async {
      final source = ListExpression(element: [
        LiteralInteger(10),
        LiteralInteger(20),
        LiteralInteger(30),
        LiteralInteger(40),
        LiteralInteger(50),
      ]);
      final slice = Slice(
        source: source,
        startIndex: LiteralInteger(1),
        endIndex: LiteralInteger(3),
      );
      final result = await slice.execute({});
      expect(
          result,
          equals([
            fhir.FhirInteger(20),
            fhir.FhirInteger(30),
          ]));
    });

    test('null source returns null', () async {
      final slice = Slice(
        source: LiteralNull(),
        startIndex: LiteralInteger(0),
        endIndex: LiteralInteger(2),
      );
      final result = await slice.execute({});
      expect(result, isNull);
    });

    test('startIndex 0 with null endIndex returns entire list', () async {
      final source = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      final slice = Slice(
        source: source,
        startIndex: LiteralInteger(0),
        endIndex: LiteralNull(),
      );
      final result = await slice.execute({});
      expect(
          result,
          equals([
            fhir.FhirInteger(1),
            fhir.FhirInteger(2),
            fhir.FhirInteger(3),
          ]));
    });

    test('empty list returns empty list', () async {
      final slice = Slice(
        source: ListExpression(element: []),
        startIndex: LiteralInteger(0),
        endIndex: LiteralInteger(5),
      );
      final result = await slice.execute({});
      expect(result, equals([]));
    });

    test('startIndex beyond list length returns empty', () async {
      final source = ListExpression(element: [
        LiteralInteger(1),
      ]);
      final slice = Slice(
        source: source,
        startIndex: LiteralInteger(10),
        endIndex: LiteralInteger(20),
      );
      final result = await slice.execute({});
      expect(result, equals([]));
    });

    test('negative startIndex returns empty list', () async {
      final source = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      final slice = Slice(
        source: source,
        startIndex: LiteralInteger(-1),
        endIndex: LiteralInteger(2),
      );
      final result = await slice.execute({});
      expect(result, equals([]));
    });

    test('null startIndex returns empty list', () async {
      final source = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(2),
        LiteralInteger(3),
      ]);
      final slice = Slice(
        source: source,
        startIndex: LiteralNull(),
        endIndex: LiteralInteger(2),
      );
      final result = await slice.execute({});
      expect(result, equals([]));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // CalculateAge
  // ───────────────────────────────────────────────────────────────────────────
  group('CalculateAge', () {
    // CalculateAge calls Today() internally, which requires startTimestamp
    final startTimestamp =
        fhir.FhirDateTime.fromString(DateTime.now().toIso8601String());

    test('calculates age in years from birthdate', () async {
      // Use a birthdate that yields a predictable age
      final birthDate = DateTime(DateTime.now().year - 30, 1, 1);
      final birthDateStr =
          '${birthDate.year}-${birthDate.month.toString().padLeft(2, '0')}-${birthDate.day.toString().padLeft(2, '0')}';
      final calcAge = CalculateAge(
        precision: CqlDateTimePrecision.year,
        operand: _ConstExpr(fhir.FhirDate.fromString(birthDateStr)),
      );
      final result = await calcAge.execute({'startTimestamp': startTimestamp});
      expect(result, equals(fhir.FhirInteger(30)));
    });

    test('null birthdate returns null', () async {
      final calcAge = CalculateAge(
        precision: CqlDateTimePrecision.year,
        operand: LiteralNull(),
      );
      final result = await calcAge.execute({'startTimestamp': startTimestamp});
      expect(result, isNull);
    });

    test('calculates age in months', () async {
      // Born exactly 6 months ago on the 1st
      final now = DateTime.now();
      int targetMonth = now.month - 6;
      int targetYear = now.year;
      if (targetMonth <= 0) {
        targetMonth += 12;
        targetYear--;
      }
      final birthDateStr =
          '$targetYear-${targetMonth.toString().padLeft(2, '0')}-01';
      final calcAge = CalculateAge(
        precision: CqlDateTimePrecision.month,
        operand: _ConstExpr(fhir.FhirDate.fromString(birthDateStr)),
      );
      final result = await calcAge.execute({'startTimestamp': startTimestamp});
      expect(result, isA<fhir.FhirInteger>());
      // Should be approximately 6 months (may vary by ±1)
      final months = (result as fhir.FhirInteger).valueNum!.toInt();
      expect(months, greaterThanOrEqualTo(5));
      expect(months, lessThanOrEqualTo(7));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // CalculateAgeAt
  // ───────────────────────────────────────────────────────────────────────────
  group('CalculateAgeAt', () {
    test('calculates age at a specific date', () async {
      final calcAgeAt = CalculateAgeAt(
        precision: CqlDateTimePrecision.year,
        operand: [
          _ConstExpr(fhir.FhirDate.fromString('1990-06-15')),
          _ConstExpr(fhir.FhirDate.fromString('2024-06-15')),
        ],
      );
      final result = await calcAgeAt.execute({});
      expect(result, isA<fhir.FhirInteger>());
      expect(result, equals(fhir.FhirInteger(34)));
    });

    test('birthday not yet reached in target year', () async {
      final calcAgeAt = CalculateAgeAt(
        precision: CqlDateTimePrecision.year,
        operand: [
          _ConstExpr(fhir.FhirDate.fromString('1990-12-25')),
          _ConstExpr(fhir.FhirDate.fromString('2024-06-15')),
        ],
      );
      final result = await calcAgeAt.execute({});
      expect(result, isA<fhir.FhirInteger>());
      expect(result, equals(fhir.FhirInteger(33)));
    });

    test('null birthdate returns null', () async {
      final calcAgeAt = CalculateAgeAt(
        precision: CqlDateTimePrecision.year,
        operand: [
          LiteralNull(),
          _ConstExpr(fhir.FhirDate.fromString('2024-06-15')),
        ],
      );
      final result = await calcAgeAt.execute({});
      expect(result, isNull);
    });

    test('null as-of date returns null', () async {
      final calcAgeAt = CalculateAgeAt(
        precision: CqlDateTimePrecision.year,
        operand: [
          _ConstExpr(fhir.FhirDate.fromString('1990-06-15')),
          LiteralNull(),
        ],
      );
      final result = await calcAgeAt.execute({});
      expect(result, isNull);
    });

    test('calculates age in days', () async {
      final calcAgeAt = CalculateAgeAt(
        precision: CqlDateTimePrecision.day,
        operand: [
          _ConstExpr(fhir.FhirDate.fromString('2024-01-01')),
          _ConstExpr(fhir.FhirDate.fromString('2024-01-11')),
        ],
      );
      final result = await calcAgeAt.execute({});
      expect(result, isA<fhir.FhirInteger>());
      expect(result, equals(fhir.FhirInteger(10)));
    });
  });
}
