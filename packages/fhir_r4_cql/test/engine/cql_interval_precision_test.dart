import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

void main() {
  group('Meets with precision', () {
    test(
        'Interval[@2024-01-01, @2024-01-31] meets day Interval[@2024-02-01, @2024-02-28]',
        () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-02-01'),
        high: LiteralDate('2024-02-28'),
      );
      final meets = Meets(
        operand: [interval1, interval2],
        precision: CqlDateTimePrecision.day,
      );
      final result = await meets.execute({});
      expect(result, FhirBoolean(true));
    });

    test(
        'Interval[@2024-01, @2024-06] meets month Interval[@2024-07, @2024-12]',
        () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-06'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-07'),
        high: LiteralDate('2024-12'),
      );
      final meets = Meets(
        operand: [interval1, interval2],
        precision: CqlDateTimePrecision.month,
      );
      final result = await meets.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Integer intervals with no precision (existing behavior)', () async {
      final interval1 = IntervalExpression(
        low: LiteralInteger(6),
        high: LiteralInteger(10),
      );
      final interval2 = IntervalExpression(
        low: LiteralInteger(0),
        high: LiteralInteger(5),
      );
      final meets = Meets(operand: [interval1, interval2]);
      final result = await meets.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Non-meeting datetime intervals with day precision', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-03-01'),
        high: LiteralDate('2024-03-31'),
      );
      final meets = Meets(
        operand: [interval1, interval2],
        precision: CqlDateTimePrecision.day,
      );
      final result = await meets.execute({});
      expect(result, FhirBoolean(false));
    });
  });

  group('MeetsBefore with precision', () {
    test('DateTime intervals at day precision', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-02-01'),
        high: LiteralDate('2024-02-28'),
      );
      final meetsBefore = MeetsBefore(
        operand: [interval1, interval2],
        precision: CqlDateTimePrecision.day,
      );
      final result = await meetsBefore.execute({});
      expect(result, FhirBoolean(true));
    });

    test('DateTime intervals at month precision', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-06'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-07'),
        high: LiteralDate('2024-12'),
      );
      final meetsBefore = MeetsBefore(
        operand: [interval1, interval2],
        precision: CqlDateTimePrecision.month,
      );
      final result = await meetsBefore.execute({});
      expect(result, FhirBoolean(true));
    });

    test('MeetsBefore false at day precision when gap exists', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-29'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-02-01'),
        high: LiteralDate('2024-02-28'),
      );
      final meetsBefore = MeetsBefore(
        operand: [interval1, interval2],
        precision: CqlDateTimePrecision.day,
      );
      final result = await meetsBefore.execute({});
      expect(result, FhirBoolean(false));
    });
  });

  group('MeetsAfter with precision', () {
    test('DateTime intervals at day precision', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-02-01'),
        high: LiteralDate('2024-02-28'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final meetsAfter = MeetsAfter(
        operand: [interval1, interval2],
        precision: CqlDateTimePrecision.day,
      );
      final result = await meetsAfter.execute({});
      expect(result, FhirBoolean(true));
    });

    test('MeetsAfter false at day precision when gap exists', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-03-01'),
        high: LiteralDate('2024-03-31'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final meetsAfter = MeetsAfter(
        operand: [interval1, interval2],
        precision: CqlDateTimePrecision.day,
      );
      final result = await meetsAfter.execute({});
      expect(result, FhirBoolean(false));
    });
  });

  group('IncludedIn with precision', () {
    test('Point included in interval at day precision', () async {
      final point = LiteralDate('2024-01-15');
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final includedIn = IncludedIn(
        operand: [point, interval],
        precision: CqlDateTimePrecision.day,
      );
      final result = await includedIn.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Interval included in interval at month precision', () async {
      final inner = LiteralDateInterval(
        low: LiteralDate('2024-03'),
        high: LiteralDate('2024-06'),
      );
      final outer = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final includedIn = IncludedIn(
        operand: [inner, outer],
        precision: CqlDateTimePrecision.month,
      );
      final result = await includedIn.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Point included in interval at year precision', () async {
      final point = LiteralDate('2024-06-15');
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-12-31'),
      );
      final includedIn = IncludedIn(
        operand: [point, interval],
        precision: CqlDateTimePrecision.year,
      );
      final result = await includedIn.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Interval not included at month precision', () async {
      final inner = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2025-01'),
      );
      final outer = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final includedIn = IncludedIn(
        operand: [inner, outer],
        precision: CqlDateTimePrecision.month,
      );
      final result = await includedIn.execute({});
      expect(result, FhirBoolean(false));
    });

    test('Integer interval without precision (existing behavior)', () async {
      final inner = IntervalExpression(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final outer = IntervalExpression(
        low: LiteralInteger(0),
        high: LiteralInteger(5),
      );
      final includedIn = IncludedIn(operand: [inner, outer]);
      final result = await includedIn.execute({});
      expect(result, FhirBoolean(true));
    });
  });

  group('Collapse with per', () {
    test('Collapse datetime intervals with per 1 month', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-03'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-04'),
        high: LiteralDate('2024-06'),
      );
      final list = ListExpression(element: [interval1, interval2]);
      final per = LiteralQuantity(LiteralDecimal(1), unit: 'month');
      final collapse = Collapse(operand: [list, per]);
      final result = await collapse.execute({});
      expect(result, isNotNull);
      expect(result, hasLength(1));
      expect(
        result!.first.getStart(),
        FhirDate.fromString('2024-01'),
      );
      expect(
        result.first.getEnd(),
        FhirDate.fromString('2024-06'),
      );
    });

    test('Collapse with null per (infer precision from boundaries)', () async {
      final interval1 = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final interval2 = LiteralDateInterval(
        low: LiteralDate('2024-02-01'),
        high: LiteralDate('2024-02-28'),
      );
      final list = ListExpression(element: [interval1, interval2]);
      final collapse = Collapse(operand: [list, LiteralNull()]);
      final result = await collapse.execute({});
      expect(result, isNotNull);
      expect(result, hasLength(1));
    });

    test('Integer intervals (existing behavior preserved)', () async {
      final interval1 = IntervalExpression(
        lowClosed: true,
        low: LiteralInteger(1),
        highClosed: true,
        high: LiteralInteger(4),
      );
      final interval2 = IntervalExpression(
        lowClosed: true,
        low: LiteralInteger(4),
        highClosed: true,
        high: LiteralInteger(8),
      );
      final interval3 = IntervalExpression(
        lowClosed: true,
        low: LiteralInteger(7),
        highClosed: true,
        high: LiteralInteger(9),
      );
      final list =
          ListExpression(element: [interval1, interval2, interval3]);
      final collapse = Collapse(operand: [list]);
      final result = await collapse.execute({});
      expect(result, [CqlInterval(low: FhirInteger(1), high: FhirInteger(9))]);
    });
  });

  group('Contains with precision', () {
    test('Interval contains point at day precision', () async {
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final point = LiteralDate('2024-01-15');
      final contains = Contains(
        operand: [interval, point],
        precision: CqlDateTimePrecision.day,
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Interval does not contain point at day precision', () async {
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final point = LiteralDate('2024-02-15');
      final contains = Contains(
        operand: [interval, point],
        precision: CqlDateTimePrecision.day,
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(false));
    });

    test('Interval contains point at year precision', () async {
      final interval = LiteralDateInterval(
        low: LiteralDate('2020-01-01'),
        high: LiteralDate('2025-12-31'),
      );
      final point = LiteralDate('2024-06-15');
      final contains = Contains(
        operand: [interval, point],
        precision: CqlDateTimePrecision.year,
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Contains at boundary with day precision', () async {
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final point = LiteralDate('2024-01-01');
      final contains = Contains(
        operand: [interval, point],
        precision: CqlDateTimePrecision.day,
      );
      final result = await contains.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Integer interval without precision (existing behavior)', () async {
      final interval = IntervalExpression(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final point = LiteralInteger(4);
      final contains = Contains(operand: [interval, point]);
      final result = await contains.execute({});
      expect(result, FhirBoolean(true));
    });
  });

  group('In with precision', () {
    test('Point in interval at day precision', () async {
      final point = LiteralDate('2024-01-15');
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final inOp = In(
        operand: [point, interval],
        precision: CqlDateTimePrecision.day,
      );
      final result = await inOp.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Point not in interval at day precision', () async {
      final point = LiteralDate('2024-02-15');
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final inOp = In(
        operand: [point, interval],
        precision: CqlDateTimePrecision.day,
      );
      final result = await inOp.execute({});
      expect(result, FhirBoolean(false));
    });

    test('Point in interval at month precision', () async {
      final point = LiteralDate('2024-06');
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final inOp = In(
        operand: [point, interval],
        precision: CqlDateTimePrecision.month,
      );
      final result = await inOp.execute({});
      expect(result, FhirBoolean(true));
    });
  });

  group('ProperContains with precision', () {
    test('Interval properly contains point at day precision', () async {
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final point = LiteralDate('2024-01-15');
      final properContains = ProperContains(
        operand: [interval, point],
        precision: CqlDateTimePrecision.day,
      );
      final result = await properContains.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Interval does not properly contain boundary point at day precision',
        () async {
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final point = LiteralDate('2024-01-01');
      final properContains = ProperContains(
        operand: [interval, point],
        precision: CqlDateTimePrecision.day,
      );
      final result = await properContains.execute({});
      expect(result, FhirBoolean(false));
    });

    test('Interval does not properly contain end boundary at day precision',
        () async {
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final point = LiteralDate('2024-01-31');
      final properContains = ProperContains(
        operand: [interval, point],
        precision: CqlDateTimePrecision.day,
      );
      final result = await properContains.execute({});
      expect(result, FhirBoolean(false));
    });
  });

  group('ProperIn with precision', () {
    test('Point properly in interval at day precision', () async {
      final point = LiteralDate('2024-01-15');
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final properIn = ProperIn(
        operand: [point, interval],
        precision: CqlDateTimePrecision.day,
      );
      final result = await properIn.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Boundary point not properly in interval at day precision', () async {
      final point = LiteralDate('2024-01-01');
      final interval = LiteralDateInterval(
        low: LiteralDate('2024-01-01'),
        high: LiteralDate('2024-01-31'),
      );
      final properIn = ProperIn(
        operand: [point, interval],
        precision: CqlDateTimePrecision.day,
      );
      final result = await properIn.execute({});
      expect(result, FhirBoolean(false));
    });
  });

  group('ProperIncludes with precision', () {
    test('Interval properly includes smaller interval at month precision',
        () async {
      final outer = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final inner = LiteralDateInterval(
        low: LiteralDate('2024-03'),
        high: LiteralDate('2024-06'),
      );
      final properIncludes = ProperIncludes(
        operand: [outer, inner],
        precision: CqlDateTimePrecision.month,
      );
      final result = await properIncludes.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Equal intervals not properly included at month precision', () async {
      final outer = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final inner = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final properIncludes = ProperIncludes(
        operand: [outer, inner],
        precision: CqlDateTimePrecision.month,
      );
      final result = await properIncludes.execute({});
      expect(result, FhirBoolean(false));
    });
  });

  group('ProperIncludedIn with precision', () {
    test('Interval properly included in larger interval at month precision',
        () async {
      final inner = LiteralDateInterval(
        low: LiteralDate('2024-03'),
        high: LiteralDate('2024-06'),
      );
      final outer = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final properIncludedIn = ProperIncludedIn(
        operand: [inner, outer],
        precision: CqlDateTimePrecision.month,
      );
      final result = await properIncludedIn.execute({});
      expect(result, FhirBoolean(true));
    });

    test('Equal intervals not properly included in at month precision',
        () async {
      final inner = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final outer = LiteralDateInterval(
        low: LiteralDate('2024-01'),
        high: LiteralDate('2024-12'),
      );
      final properIncludedIn = ProperIncludedIn(
        operand: [inner, outer],
        precision: CqlDateTimePrecision.month,
      );
      final result = await properIncludedIn.execute({});
      expect(result, FhirBoolean(false));
    });
  });
}
