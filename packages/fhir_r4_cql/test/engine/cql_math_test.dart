import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

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
  group('DateExpression', () {
    test('full date with year, month, and day', () async {
      final dateExpr = DateExpression(
        year: LiteralInteger(2024),
        month: LiteralInteger(3),
        day: LiteralInteger(15),
      );
      final result = await dateExpr.execute({});
      expect(result, equals(fhir.FhirDate.fromString('2024-03-15')));
    });

    test('year and month only (no day)', () async {
      final dateExpr = DateExpression(
        year: LiteralInteger(2024),
        month: LiteralInteger(6),
      );
      final result = await dateExpr.execute({});
      expect(result, equals(fhir.FhirDate.fromString('2024-06')));
    });

    test('year only', () async {
      final dateExpr = DateExpression(
        year: LiteralInteger(2024),
      );
      final result = await dateExpr.execute({});
      expect(result, equals(fhir.FhirDate.fromString('2024')));
    });

    test('null year returns null', () async {
      final dateExpr = DateExpression(
        year: LiteralNull(),
      );
      final result = await dateExpr.execute({});
      expect(result, isNull);
    });

    test('pads single-digit month and day with zeros', () async {
      final dateExpr = DateExpression(
        year: LiteralInteger(2024),
        month: LiteralInteger(1),
        day: LiteralInteger(5),
      );
      final result = await dateExpr.execute({});
      expect(result, equals(fhir.FhirDate.fromString('2024-01-05')));
    });
  });

  group('Precision', () {
    test('FhirDecimal with decimal places returns digit count', () async {
      // 1.25 has 2 decimal places
      final precision = Precision(operand: _ConstExpr(fhir.FhirDecimal(1.25)));
      final result = await precision.execute({});
      expect(result, equals(fhir.FhirInteger(2)));
    });

    test('FhirTime with HH:MM:SS returns 3 (second precision)', () async {
      final precision =
          Precision(operand: _ConstExpr(fhir.FhirTime('10:30:45')));
      final result = await precision.execute({});
      expect(result, equals(fhir.FhirInteger(3)));
    });

    test('FhirDate with YYYY-MM-DD returns 3 (day precision)', () async {
      final precision = Precision(
          operand: _ConstExpr(fhir.FhirDate.fromString('2024-03-15')));
      final result = await precision.execute({});
      expect(result, equals(fhir.FhirInteger(3)));
    });

    test('FhirDate with YYYY-MM returns 2 (month precision)', () async {
      final precision =
          Precision(operand: _ConstExpr(fhir.FhirDate.fromString('2024-03')));
      final result = await precision.execute({});
      expect(result, equals(fhir.FhirInteger(2)));
    });

    test('null operand returns null', () async {
      final precision = Precision(operand: LiteralNull());
      final result = await precision.execute({});
      expect(result, isNull);
    });
  });

  group('HighBoundary', () {
    test('returns value passthrough (stub implementation)', () async {
      final highBoundary = HighBoundary(operand: [
        _ConstExpr(fhir.FhirDecimal(1.5)),
        LiteralInteger(8),
      ]);
      final result = await highBoundary.execute({});
      // Stub implementation returns the value itself
      expect(result, equals(fhir.FhirDecimal(1.5)));
    });

    test('null value returns null', () async {
      final highBoundary = HighBoundary(operand: [
        LiteralNull(),
        LiteralInteger(8),
      ]);
      final result = await highBoundary.execute({});
      expect(result, isNull);
    });
  });

  group('LowBoundary', () {
    test('returns value passthrough (stub implementation)', () async {
      final lowBoundary = LowBoundary(operand: [
        _ConstExpr(fhir.FhirDecimal(1.5)),
        LiteralInteger(8),
      ]);
      final result = await lowBoundary.execute({});
      // Stub implementation returns the value itself
      expect(result, equals(fhir.FhirDecimal(1.5)));
    });

    test('null value returns null', () async {
      final lowBoundary = LowBoundary(operand: [
        LiteralNull(),
        LiteralInteger(8),
      ]);
      final result = await lowBoundary.execute({});
      expect(result, isNull);
    });
  });

  group('Times (cartesian product)', () {
    test('cartesian product of two tuple lists', () async {
      // Left: [{a: 1}, {a: 2}], Right: [{b: 'x'}, {b: 'y'}]
      final left = _ConstExpr([
        {'a': 1},
        {'a': 2},
      ]);
      final right = _ConstExpr([
        {'b': 'x'},
        {'b': 'y'},
      ]);
      final times = Times(operand: [left, right]);
      final result = await times.execute({});
      expect(
          result,
          equals([
            {'a': 1, 'b': 'x'},
            {'a': 1, 'b': 'y'},
            {'a': 2, 'b': 'x'},
            {'a': 2, 'b': 'y'},
          ]));
    });

    test('null left operand returns null', () async {
      final times = Times(operand: [
        LiteralNull(),
        _ConstExpr([
          {'b': 1}
        ]),
      ]);
      final result = await times.execute({});
      expect(result, isNull);
    });

    test('null right operand returns null', () async {
      final times = Times(operand: [
        _ConstExpr([
          {'a': 1}
        ]),
        LiteralNull(),
      ]);
      final result = await times.execute({});
      expect(result, isNull);
    });

    test('empty list produces empty result', () async {
      final times = Times(operand: [
        _ConstExpr(<Map<String, dynamic>>[]),
        _ConstExpr([
          {'b': 1}
        ]),
      ]);
      final result = await times.execute({});
      expect(result, equals([]));
    });
  });

  group('ConvertQuantity', () {
    test('converts mg to g', () async {
      final convertQuantity = ConvertQuantity(operand: [
        LiteralQuantity(LiteralDecimal(1000.0), unit: 'mg'),
        LiteralString('g'),
      ]);
      final result = await convertQuantity.execute({});
      expect(result, isA<ValidatedQuantity>());
      final qty = result as ValidatedQuantity;
      expect(qty.unit.toString(), equals('g'));
    });

    test('null quantity returns null', () async {
      final convertQuantity = ConvertQuantity(operand: [
        LiteralNull(),
        LiteralString('g'),
      ]);
      final result = await convertQuantity.execute({});
      expect(result, isNull);
    });

    test('null target unit returns null', () async {
      final convertQuantity = ConvertQuantity(operand: [
        LiteralQuantity(LiteralDecimal(100.0), unit: 'mg'),
        LiteralNull(),
      ]);
      final result = await convertQuantity.execute({});
      expect(result, isNull);
    });

    test('converts cm to m', () async {
      final convertQuantity = ConvertQuantity(operand: [
        LiteralQuantity(LiteralDecimal(100.0), unit: 'cm'),
        LiteralString('m'),
      ]);
      final result = await convertQuantity.execute({});
      expect(result, isA<ValidatedQuantity>());
      final qty = result as ValidatedQuantity;
      expect(qty.unit.toString(), equals('m'));
    });
  });

  group('CanConvertQuantity', () {
    test('valid conversion returns true', () async {
      final canConvert = CanConvertQuantity(operand: [
        LiteralQuantity(LiteralDecimal(100.0), unit: 'cm'),
        LiteralString('m'),
      ]);
      final result = await canConvert.execute({});
      expect(result, equals(fhir.FhirBoolean(true)));
    });

    test('invalid conversion returns false', () async {
      final canConvert = CanConvertQuantity(operand: [
        LiteralQuantity(LiteralDecimal(100.0), unit: 'cm'),
        LiteralString('g'),
      ]);
      final result = await canConvert.execute({});
      expect(result, equals(fhir.FhirBoolean(false)));
    });

    test('null quantity returns null', () async {
      final canConvert = CanConvertQuantity(operand: [
        LiteralNull(),
        LiteralString('m'),
      ]);
      final result = await canConvert.execute({});
      expect(result, isNull);
    });

    test('null target unit returns null', () async {
      final canConvert = CanConvertQuantity(operand: [
        LiteralQuantity(LiteralDecimal(100.0), unit: 'cm'),
        LiteralNull(),
      ]);
      final result = await canConvert.execute({});
      expect(result, isNull);
    });
  });
}
