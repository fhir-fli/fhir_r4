import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final offset =
      DateTime(2020).timeZoneOffset.inHours.toDouble().timeZoneOffsetToString;

  group('FhirInstantTests', () {
    test('FhirInstant fromDateTime should handle various DateTime inputs', () {
      // Test valid DateTime inputs
      final dateTime = DateTime(2020, 1, 15, 13, 45, 30);
      final instant = FhirInstant.fromDateTime(dateTime);

      expect(instant.valueString, equals('2020-01-15T13:45:30.000$offset'));
      expect(instant.valueDateTime, equals(DateTime(2020, 1, 15, 13, 45, 30)));
    });
  });
  test('Check Instant type with the regex', () {
    final issued = FhirInstant.fromDateTime(DateTime.now()).toString();
    final pattern = RegExp(
      r'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))',
    );
    expect(pattern.hasMatch(issued), true);
  });
  test('Valid FhirInstant String', () {
    final fhirInstant = FhirInstant.fromString('2023-12-22T12:34:56.789Z');

    expect(fhirInstant.value, isA<DateTime>());
    expect(fhirInstant.year, 2023);
    expect(fhirInstant.month, 12);
    expect(fhirInstant.day, 22);
    expect(fhirInstant.hour, 12);
    expect(fhirInstant.minute, 34);
    expect(fhirInstant.second, 56);
    expect(fhirInstant.millisecond, 789);
  });

  test('Invalid FhirDate from string with Offset', () {
    expect(
      () => FhirInstant.fromString('invalid_instant'),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('FhirInstant Comparison', () {
    final fhirInstant1 = FhirInstant.fromString('2023-12-22T12:34:56.789Z');
    final fhirInstant2 = FhirInstant.fromString('2024-01-01T00:00:00.000Z');
    final fhirInstant3 = FhirInstant.fromString('2023-12-22T12:34:56.789Z');

    expect(fhirInstant1 == fhirInstant2, isFalse);
    expect(fhirInstant1 == fhirInstant3, isTrue);
    expect(fhirInstant1 < fhirInstant2, isTrue);
    expect(fhirInstant1 <= fhirInstant2, isTrue);
    expect(fhirInstant1 > fhirInstant2, isFalse);
    expect(fhirInstant1 >= fhirInstant2, isFalse);
  });
  test('FhirInstant regex Check', () {
    final issued = FhirInstant.fromDateTime(DateTime.now()).toString();
    expect(patternInstant.hasMatch(issued), true);
  });

  test('FhirDateTime regex check', () {
    final issued = FhirDateTime.fromDateTime(input: DateTime.now());
    expect(patternDateTime.hasMatch(issued.toString()), true);
  });

  const yyyy = '2012';
  final yyyyDateTime = DateTime(2012);

  test('Invalid FhirInstant from string', () {
    expect(() => FhirInstant.fromString(yyyy), throwsA(isA<ArgumentError>()));
  });
  final yyyyEmptyTimeZoneString = '2012-01-01T00:00:00.000$offset';

  final dateyyyyFromDateTime = FhirInstant.fromDateTime(yyyyDateTime);
  test('dateyyyyFromDateTime', () {
    expect(dateyyyyFromDateTime.valueString, equals(yyyyEmptyTimeZoneString));
    expect(dateyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
    expect(
      dateyyyyFromDateTime.toJson()['value'],
      equals(yyyyEmptyTimeZoneString),
    );
  });

  final yyyyMMddTHHmmssSSSEmptyString = '2012-01-31T12:30:59.123$offset';

  final dateyyyyMMddTHHmmssSSSFromString =
      FhirInstant.fromString(yyyyMMddTHHmmssSSSEmptyString);
  final dateyyyyMMddTHHmmssSSSFromUnits = FhirInstant.fromUnits(
    year: 2012,
    month: 1,
    day: 31,
    hour: 12,
    minute: 30,
    second: 59,
    millisecond: 123,
    timeZoneOffset: offset.stringToTimeZoneOffset!,
  );

  test('dateyyyyMMddTHHmmssSSSFromString', () {
    expect(
      dateyyyyMMddTHHmmssSSSFromString.valueString,
      equals(yyyyMMddTHHmmssSSSEmptyString),
    );
    expect(
      dateyyyyMMddTHHmmssSSSFromString.toJson()['value'],
      equals(yyyyMMddTHHmmssSSSEmptyString),
    );
  });

  test('dateyyyyMMddTHHmmssSSSFromUnits', () {
    expect(
      dateyyyyMMddTHHmmssSSSFromUnits.valueString,
      equals(yyyyMMddTHHmmssSSSEmptyString),
    );
    expect(
      dateyyyyMMddTHHmmssSSSFromUnits.toJson()['value'],
      equals(yyyyMMddTHHmmssSSSEmptyString),
    );
  });

  final yyyyMMddTHHmmssSSSmmm = '2012-01-31T12:30:59.123456$offset';
  final yyyyMMddTHHmmssSSSmmmDateTime =
      DateTime(2012, 1, 31, 12, 30, 59, 123, 456);
  final dateyyyyMMddTHHmmssSSSmmmFromString =
      FhirInstant.fromString(yyyyMMddTHHmmssSSSmmm);
  final dateyyyyMMddTHHmmssSSSmmmFromDateTime =
      FhirInstant.fromDateTime(yyyyMMddTHHmmssSSSmmmDateTime);
  final dateyyyyMMddTHHmmssSSSmmmFromUnits = FhirInstant.fromUnits(
    year: 2012,
    month: 1,
    day: 31,
    hour: 12,
    minute: 30,
    second: 59,
    millisecond: 123,
    microsecond: 456,
    timeZoneOffset: offset.stringToTimeZoneOffset!,
  );

  const yyyyMMddTHHmmssSSSmmmEmptyString = '2012-01-31T12:30:59.123456-05:00';
  final yyyyMMddTHHmmssSSSmmmEmptyTimeZoneString =
      '2012-01-31T12:30:59.123456$offset';
  test('dateyyyyMMddTHHmmssSSSmmmFromString', () {
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromString.valueString,
      equals(yyyyMMddTHHmmssSSSmmmEmptyString),
    );
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromString.valueDateTime,
      equals(yyyyMMddTHHmmssSSSmmmDateTime),
    );
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromString.toJson()['value'],
      equals(yyyyMMddTHHmmssSSSmmm),
    );
  });
  test('dateyyyyMMddTHHmmssSSSmmmFromDateTime', () {
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromDateTime.valueString,
      equals(yyyyMMddTHHmmssSSSmmmEmptyTimeZoneString),
    );
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromDateTime.valueDateTime,
      equals(yyyyMMddTHHmmssSSSmmmDateTime),
    );
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromDateTime.toJson()['value'],
      equals(yyyyMMddTHHmmssSSSmmm),
    );
  });
  test('dateyyyyMMddTHHmmssSSSmmmFromUnits', () {
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromUnits.valueString,
      equals(yyyyMMddTHHmmssSSSmmmEmptyTimeZoneString),
    );
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromUnits.valueDateTime,
      equals(yyyyMMddTHHmmssSSSmmmDateTime),
    );
    expect(
      dateyyyyMMddTHHmmssSSSmmmFromUnits.toJson()['value'],
      equals(yyyyMMddTHHmmssSSSmmmEmptyTimeZoneString),
    );
  });
}

final RegExp patternInstant = RegExp(
  r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$',
);

final RegExp patternDateTime = RegExp(
  r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$',
);
