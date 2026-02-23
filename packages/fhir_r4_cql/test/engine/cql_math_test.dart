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

    test('FhirTime with HH:MM:SS returns 6 (total digits)', () async {
      final precision =
          Precision(operand: _ConstExpr(fhir.FhirTime('10:30:45')));
      final result = await precision.execute({});
      expect(result, equals(fhir.FhirInteger(6)));
    });

    test('FhirDate with YYYY-MM-DD returns 8 (total digits)', () async {
      final precision = Precision(
          operand: _ConstExpr(fhir.FhirDate.fromString('2024-03-15')));
      final result = await precision.execute({});
      expect(result, equals(fhir.FhirInteger(8)));
    });

    test('FhirDate with YYYY-MM returns 6 (total digits)', () async {
      final precision =
          Precision(operand: _ConstExpr(fhir.FhirDate.fromString('2024-03')));
      final result = await precision.execute({});
      expect(result, equals(fhir.FhirInteger(6)));
    });

    test('null operand returns null', () async {
      final precision = Precision(operand: LiteralNull());
      final result = await precision.execute({});
      expect(result, isNull);
    });
  });

  group('HighBoundary', () {
    test('FhirDecimal pads with 9s to target precision', () async {
      final highBoundary = HighBoundary(operand: [
        _ConstExpr(fhir.FhirDecimal(1.5)),
        LiteralInteger(8),
      ]);
      final result = await highBoundary.execute({});
      expect(result, equals(fhir.FhirDecimal(1.59999999)));
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

  // ───────────────────────────────────────────────────────────────────────────
  // TimeExpression
  // ───────────────────────────────────────────────────────────────────────────
  group('TimeExpression', () {
    test('full time with hour, minute, second, millisecond', () async {
      final timeExpr = TimeExpression(
        hour: LiteralInteger(14),
        minute: LiteralInteger(30),
        second: LiteralInteger(15),
        millisecond: LiteralInteger(500),
      );
      final result = await timeExpr.execute({});
      expect(result, isA<fhir.FhirTime>());
      expect(result, equals(fhir.FhirTime('14:30:15.500')));
    });

    test('hour and minute only', () async {
      final timeExpr = TimeExpression(
        hour: LiteralInteger(9),
        minute: LiteralInteger(5),
      );
      final result = await timeExpr.execute({});
      expect(result, isA<fhir.FhirTime>());
      expect(result, equals(fhir.FhirTime('09:05')));
    });

    test('hour only', () async {
      final timeExpr = TimeExpression(
        hour: LiteralInteger(23),
      );
      final result = await timeExpr.execute({});
      expect(result, isA<fhir.FhirTime>());
      expect(result, equals(fhir.FhirTime('23')));
    });

    test('midnight (hour=0)', () async {
      final timeExpr = TimeExpression(
        hour: LiteralInteger(0),
      );
      final result = await timeExpr.execute({});
      expect(result, isA<fhir.FhirTime>());
      expect(result, equals(fhir.FhirTime('00')));
    });

    test('end-of-day 23:59:59.999', () async {
      final timeExpr = TimeExpression(
        hour: LiteralInteger(23),
        minute: LiteralInteger(59),
        second: LiteralInteger(59),
        millisecond: LiteralInteger(999),
      );
      final result = await timeExpr.execute({});
      expect(result, isA<fhir.FhirTime>());
      expect(result, equals(fhir.FhirTime('23:59:59.999')));
    });

    test('hour, minute, second without millisecond', () async {
      final timeExpr = TimeExpression(
        hour: LiteralInteger(10),
        minute: LiteralInteger(30),
        second: LiteralInteger(45),
      );
      final result = await timeExpr.execute({});
      expect(result, isA<fhir.FhirTime>());
      expect(result, equals(fhir.FhirTime('10:30:45')));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // DateTimeExpression
  // ───────────────────────────────────────────────────────────────────────────
  group('DateTimeExpression', () {
    test('full datetime with all components', () async {
      final dtExpr = DateTimeExpression(
        year: LiteralInteger(2024),
        month: LiteralInteger(3),
        day: LiteralInteger(15),
        hour: LiteralInteger(10),
        minute: LiteralInteger(30),
        second: LiteralInteger(0),
        millisecond: LiteralInteger(0),
      );
      final result = await dtExpr.execute({});
      expect(result, isA<fhir.FhirDateTime>());
    });

    test('date-only datetime (year, month, day)', () async {
      final dtExpr = DateTimeExpression(
        year: LiteralInteger(2024),
        month: LiteralInteger(6),
        day: LiteralInteger(1),
      );
      final result = await dtExpr.execute({});
      expect(result, isA<fhir.FhirDateTime>());
    });

    test('year-only datetime', () async {
      final dtExpr = DateTimeExpression(
        year: LiteralInteger(2024),
      );
      final result = await dtExpr.execute({});
      expect(result, isA<fhir.FhirDateTime>());
    });

    test('null year returns null', () async {
      final dtExpr = DateTimeExpression(
        year: LiteralNull(),
      );
      final result = await dtExpr.execute({});
      expect(result, isNull);
    });

    test('full precision with millisecond produces correct string', () async {
      final dtExpr = DateTimeExpression(
        year: LiteralInteger(2024),
        month: LiteralInteger(3),
        day: LiteralInteger(15),
        hour: LiteralInteger(10),
        minute: LiteralInteger(30),
        second: LiteralInteger(0),
        millisecond: LiteralInteger(500),
      );
      final result = await dtExpr.execute({});
      expect(result, isA<fhir.FhirDateTime>());
      final dt = result as fhir.FhirDateTime;
      expect(dt.year, equals(2024));
      expect(dt.month, equals(3));
      expect(dt.day, equals(15));
      expect(dt.hour, equals(10));
      expect(dt.minute, equals(30));
      expect(dt.millisecond, equals(500));
    });

    test('with timezone offset', () async {
      final dtExpr = DateTimeExpression(
        year: LiteralInteger(2024),
        month: LiteralInteger(1),
        day: LiteralInteger(1),
        hour: LiteralInteger(12),
        minute: LiteralInteger(0),
        second: LiteralInteger(0),
        timezoneOffset: _ConstExpr(fhir.FhirDecimal(-7.0)),
      );
      final result = await dtExpr.execute({});
      expect(result, isA<fhir.FhirDateTime>());
      final dt = result as fhir.FhirDateTime;
      expect(dt.timeZoneOffset, equals(-7.0));
    });

    test('year and month only', () async {
      final dtExpr = DateTimeExpression(
        year: LiteralInteger(2024),
        month: LiteralInteger(6),
      );
      final result = await dtExpr.execute({});
      expect(result, isA<fhir.FhirDateTime>());
      final dt = result as fhir.FhirDateTime;
      expect(dt.year, equals(2024));
      expect(dt.month, equals(6));
      expect(dt.day, isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // TimeOfDay
  // ───────────────────────────────────────────────────────────────────────────
  group('TimeOfDay', () {
    test('returns current time from startTimestamp', () async {
      final now = DateTime.now();
      final context = <String, dynamic>{
        'startTimestamp':
            fhir.FhirDateTime.fromString(now.toIso8601String()),
      };
      final timeOfDay = TimeOfDay();
      final result = await timeOfDay.execute(context);
      expect(result, isA<fhir.FhirTime>());
      // Verify hour is reasonable
      final time = result as fhir.FhirTime;
      expect(time.hour, isNotNull);
    });

    test('deterministic extraction from fixed timestamp', () async {
      final context = <String, dynamic>{
        'startTimestamp':
            fhir.FhirDateTime.fromString('2024-06-15T14:30:45.123Z'),
      };
      final timeOfDay = TimeOfDay();
      final result = await timeOfDay.execute(context);
      expect(result, isA<fhir.FhirTime>());
      final time = result as fhir.FhirTime;
      expect(time.hour, equals(14));
      expect(time.minute, equals(30));
      expect(time.second, equals(45));
    });

    test('midnight timestamp returns hour 0', () async {
      final context = <String, dynamic>{
        'startTimestamp':
            fhir.FhirDateTime.fromString('2024-01-01T00:00:00.000Z'),
      };
      final timeOfDay = TimeOfDay();
      final result = await timeOfDay.execute(context);
      expect(result, isA<fhir.FhirTime>());
      final time = result as fhir.FhirTime;
      expect(time.hour, equals(0));
      expect(time.minute, equals(0));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // DateFrom
  // ───────────────────────────────────────────────────────────────────────────
  group('DateFrom', () {
    test('extracts date from FhirDateTime', () async {
      final dateFrom = DateFrom(
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:00Z')),
      );
      final result = await dateFrom.execute({});
      expect(result, isA<fhir.FhirDate>());
      expect(result, equals(fhir.FhirDate.fromString('2024-03-15')));
    });

    test('extracts partial date (year-month)', () async {
      final dateFrom = DateFrom(
        operand: _ConstExpr(fhir.FhirDateTime.fromString('2024-03')),
      );
      final result = await dateFrom.execute({});
      expect(result, isA<fhir.FhirDate>());
      expect(result, equals(fhir.FhirDate.fromString('2024-03')));
    });

    test('null operand returns null', () async {
      final dateFrom = DateFrom(operand: LiteralNull());
      final result = await dateFrom.execute({});
      expect(result, isNull);
    });

    test('year-only DateTime returns year-only date', () async {
      final dateFrom = DateFrom(
        operand: _ConstExpr(fhir.FhirDateTime.fromString('2024')),
      );
      final result = await dateFrom.execute({});
      expect(result, isA<fhir.FhirDate>());
      final date = result as fhir.FhirDate;
      expect(date.year, equals(2024));
      expect(date.month, isNull);
    });

    test('FhirDate passthrough returns equivalent FhirDate', () async {
      final dateFrom = DateFrom(
        operand: _ConstExpr(fhir.FhirDate.fromString('2024-07-04')),
      );
      final result = await dateFrom.execute({});
      expect(result, isA<fhir.FhirDate>());
      expect(result, equals(fhir.FhirDate.fromString('2024-07-04')));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // TimeFrom
  // ───────────────────────────────────────────────────────────────────────────
  group('TimeFrom', () {
    test('extracts time from FhirDateTime', () async {
      final timeFrom = TimeFrom(
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:45Z')),
      );
      final result = await timeFrom.execute({});
      expect(result, isA<fhir.FhirTime>());
      final time = result as fhir.FhirTime;
      expect(time.hour, equals(10));
      expect(time.minute, equals(30));
      expect(time.second, equals(45));
    });

    test('null operand returns null', () async {
      final timeFrom = TimeFrom(operand: LiteralNull());
      final result = await timeFrom.execute({});
      expect(result, isNull);
    });

    test('FhirDate (no time component) returns null', () async {
      final timeFrom = TimeFrom(
        operand: _ConstExpr(fhir.FhirDate.fromString('2024-03-15')),
      );
      final result = await timeFrom.execute({});
      expect(result, isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // TimezoneOffsetFrom
  // ───────────────────────────────────────────────────────────────────────────
  group('TimezoneOffsetFrom', () {
    test('extracts positive timezone offset', () async {
      final tzFrom = TimezoneOffsetFrom(
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:00+05:00')),
      );
      final result = await tzFrom.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect(result, equals(fhir.FhirDecimal(5.0)));
    });

    test('extracts negative timezone offset', () async {
      final tzFrom = TimezoneOffsetFrom(
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-01-01T12:30:00-07:00')),
      );
      final result = await tzFrom.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect(result, equals(fhir.FhirDecimal(-7.0)));
    });

    test('explicit +00:00 offset returns 0', () async {
      final tzFrom = TimezoneOffsetFrom(
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:00+00:00')),
      );
      final result = await tzFrom.execute({});
      expect(result, isA<fhir.FhirDecimal>());
      expect(result, equals(fhir.FhirDecimal(0.0)));
    });

    test('null operand returns null', () async {
      final tzFrom = TimezoneOffsetFrom(operand: LiteralNull());
      final result = await tzFrom.execute({});
      expect(result, isNull);
    });

    test('non-DateTime (FhirDate) returns null', () async {
      final tzFrom = TimezoneOffsetFrom(
        operand: _ConstExpr(fhir.FhirDate.fromString('2024-03-15')),
      );
      final result = await tzFrom.execute({});
      expect(result, isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // DateTimeComponentFrom
  // ───────────────────────────────────────────────────────────────────────────
  group('DateTimeComponentFrom', () {
    test('extracts year from FhirDateTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.year,
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:00Z')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(2024)));
    });

    test('extracts month from FhirDateTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.month,
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:00Z')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(3)));
    });

    test('extracts day from FhirDateTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.day,
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:00Z')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(15)));
    });

    test('extracts hour from FhirDateTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.hour,
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:00Z')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(10)));
    });

    test('extracts minute from FhirDateTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.minute,
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:00Z')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(30)));
    });

    test('extracts year from FhirDate', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.year,
        operand: _ConstExpr(fhir.FhirDate.fromString('2024-06')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(2024)));
    });

    test('extracts month from FhirDate', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.month,
        operand: _ConstExpr(fhir.FhirDate.fromString('2024-06-15')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(6)));
    });

    test('returns null for unavailable component (day from year-only date)',
        () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.day,
        operand: _ConstExpr(fhir.FhirDate.fromString('2024')),
      );
      final result = await comp.execute({});
      expect(result, isNull);
    });

    test('extracts hour from FhirTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.hour,
        operand: _ConstExpr(fhir.FhirTime('14:30:15')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(14)));
    });

    test('null operand returns null', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.year,
        operand: LiteralNull(),
      );
      final result = await comp.execute({});
      expect(result, isNull);
    });

    test('extracts second from FhirDateTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.second,
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:45Z')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(45)));
    });

    test('extracts millisecond from FhirDateTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.millisecond,
        operand: _ConstExpr(
            fhir.FhirDateTime.fromString('2024-03-15T10:30:45.123Z')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(123)));
    });

    test('extracts minute from FhirTime', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.minute,
        operand: _ConstExpr(fhir.FhirTime('14:30:15')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(30)));
    });

    test('extracts day from FhirDate', () async {
      final comp = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.day,
        operand: _ConstExpr(fhir.FhirDate.fromString('2024-06-15')),
      );
      final result = await comp.execute({});
      expect(result, equals(fhir.FhirInteger(15)));
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
