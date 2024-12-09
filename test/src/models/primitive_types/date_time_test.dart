import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final offset =
      DateTime(2020).timeZoneOffset.inHours.toDouble().timeZoneOffsetToString;

  group('FhirDateTime Tests', () {
    // Test for year only precision
    const yyyy = '2012';
    final yyyyDateTime = DateTime(2012);
    test('dateyyyyFromString', () {
      final dateyyyyFromString = FhirDateTime.fromString(yyyy);
      expect(dateyyyyFromString.valueString, equals(yyyy));
      expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
      expect(dateyyyyFromString.toJson()['value'], equals(yyyy));
    });
    test('dateyyyyFromUnits', () {
      final dateyyyyFromUnits = FhirDateTime.fromUnits(year: 2012);
      expect(dateyyyyFromUnits.valueString, equals(yyyy));
      expect(dateyyyyFromUnits.valueDateTime, equals(yyyyDateTime));
      expect(dateyyyyFromUnits.toJson()['value'], equals(yyyy));
    });

    // Test for year and month precision
    const yyyyMM = '2012-01';
    final yyyyMMDateTime = DateTime(2012);
    test('dateyyyyMMFromString', () {
      final dateyyyyMMFromString = FhirDateTime.fromString(yyyyMM);
      expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
      expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
      expect(dateyyyyMMFromString.toJson()['value'], equals(yyyyMM));
    });
    test('dateyyyyMMFromUnits', () {
      final dateyyyyMMFromUnits = FhirDateTime.fromUnits(year: 2012, month: 1);
      expect(dateyyyyMMFromUnits.valueString, equals(yyyyMM));
      expect(dateyyyyMMFromUnits.valueDateTime, equals(yyyyMMDateTime));
      expect(dateyyyyMMFromUnits.toJson()['value'], equals(yyyyMM));
    });

    // Test for year, month, and day precision
    const yyyyMMdd = '2012-01-31';
    final yyyyMMddDateTime = DateTime(2012, 1, 31);
    test('dateyyyyMMddFromString', () {
      final dateyyyyMMddFromString = FhirDateTime.fromString(yyyyMMdd);
      expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
      expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
      expect(dateyyyyMMddFromString.toJson()['value'], equals(yyyyMMdd));
    });
    test('dateyyyyMMddFromUnits', () {
      final dateyyyyMMddFromUnits =
          FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
      expect(dateyyyyMMddFromUnits.valueString, equals(yyyyMMdd));
      expect(dateyyyyMMddFromUnits.valueDateTime, equals(yyyyMMddDateTime));
      expect(dateyyyyMMddFromUnits.toJson()['value'], equals(yyyyMMdd));
    });

    // Test for year, month, day, and hour precision
    const yyyyMMddTHH = '2012-01-31T12';
    final yyyyMMddTHHDateTime = DateTime(2012, 1, 31, 12);
    test('dateyyyyMMddTHHFromString', () {
      final dateyyyyMMddTHHFromString = FhirDateTime.fromString(yyyyMMddTHH);
      expect(dateyyyyMMddTHHFromString.valueString, equals(yyyyMMddTHH));
      expect(
        dateyyyyMMddTHHFromString.valueDateTime,
        equals(yyyyMMddTHHDateTime),
      );
      expect(dateyyyyMMddTHHFromString.toJson()['value'], equals(yyyyMMddTHH));
    });
    test('dateyyyyMMddTHHFromUnits', () {
      final dateyyyyMMddTHHFromUnits =
          FhirDateTime.fromUnits(year: 2012, month: 1, day: 31, hour: 12);
      expect(dateyyyyMMddTHHFromUnits.valueString, equals(yyyyMMddTHH));
      expect(
        dateyyyyMMddTHHFromUnits.valueDateTime,
        equals(yyyyMMddTHHDateTime),
      );
      expect(dateyyyyMMddTHHFromUnits.toJson()['value'], equals(yyyyMMddTHH));
    });

    // Test for year, month, day, hour, and minute precision
    const yyyyMMddTHHmm = '2012-01-31T12:30';
    final yyyyMMddTHHmmDateTime = DateTime(2012, 1, 31, 12, 30);
    test('dateyyyyMMddTHHmmFromString', () {
      final dateyyyyMMddTHHmmFromString =
          FhirDateTime.fromString(yyyyMMddTHHmm);
      expect(dateyyyyMMddTHHmmFromString.valueString, equals(yyyyMMddTHHmm));
      expect(
        dateyyyyMMddTHHmmFromString.valueDateTime,
        equals(yyyyMMddTHHmmDateTime),
      );
      expect(
        dateyyyyMMddTHHmmFromString.toJson()['value'],
        equals(yyyyMMddTHHmm),
      );
    });
    test('dateyyyyMMddTHHmmFromUnits', () {
      final dateyyyyMMddTHHmmFromUnits = FhirDateTime.fromUnits(
        year: 2012,
        month: 1,
        day: 31,
        hour: 12,
        minute: 30,
      );
      expect(dateyyyyMMddTHHmmFromUnits.valueString, equals(yyyyMMddTHHmm));
      expect(
        dateyyyyMMddTHHmmFromUnits.valueDateTime,
        equals(yyyyMMddTHHmmDateTime),
      );
      expect(
        dateyyyyMMddTHHmmFromUnits.toJson()['value'],
        equals(yyyyMMddTHHmm),
      );
    });

    // Test for year, month, day, hour, minute, and second precision
    const yyyyMMddTHHmmss = '2012-01-31T12:30:45';
    final yyyyMMddTHHmmssDateTime = DateTime(2012, 1, 31, 12, 30, 45);
    test('dateyyyyMMddTHHmmssFromString', () {
      final dateyyyyMMddTHHmmssFromString =
          FhirDateTime.fromString(yyyyMMddTHHmmss);
      expect(
        dateyyyyMMddTHHmmssFromString.valueString,
        equals(yyyyMMddTHHmmss),
      );
      expect(
        dateyyyyMMddTHHmmssFromString.valueDateTime,
        equals(yyyyMMddTHHmmssDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssFromString.toJson()['value'],
        equals(yyyyMMddTHHmmss),
      );
    });
    test('dateyyyyMMddTHHmmssFromUnits', () {
      final dateyyyyMMddTHHmmssFromUnits = FhirDateTime.fromUnits(
        year: 2012,
        month: 1,
        day: 31,
        hour: 12,
        minute: 30,
        second: 45,
      );
      expect(dateyyyyMMddTHHmmssFromUnits.valueString, equals(yyyyMMddTHHmmss));
      expect(
        dateyyyyMMddTHHmmssFromUnits.valueDateTime,
        equals(yyyyMMddTHHmmssDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssFromUnits.toJson()['value'],
        equals(yyyyMMddTHHmmss),
      );
    });

    // Test for year, month, day, hour, minute, second, and millisecond
    // precision
    const yyyyMMddTHHmmssSSS = '2012-01-31T12:30:45.123';
    final yyyyMMddTHHmmssSSSDateTime = DateTime(2012, 1, 31, 12, 30, 45, 123);
    test('dateyyyyMMddTHHmmssSSSFromString', () {
      final dateyyyyMMddTHHmmssSSSFromString =
          FhirDateTime.fromString(yyyyMMddTHHmmssSSS);
      expect(
        dateyyyyMMddTHHmmssSSSFromString.valueString,
        equals(yyyyMMddTHHmmssSSS),
      );
      expect(
        dateyyyyMMddTHHmmssSSSFromString.valueDateTime,
        equals(yyyyMMddTHHmmssSSSDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssSSSFromString.toJson()['value'],
        equals(yyyyMMddTHHmmssSSS),
      );
    });
    test('dateyyyyMMddTHHmmssSSSFromUnits', () {
      final dateyyyyMMddTHHmmssSSSFromUnits = FhirDateTime.fromUnits(
        year: 2012,
        month: 1,
        day: 31,
        hour: 12,
        minute: 30,
        second: 45,
        millisecond: 123,
      );
      expect(
        dateyyyyMMddTHHmmssSSSFromUnits.valueString,
        equals(yyyyMMddTHHmmssSSS),
      );
      expect(
        dateyyyyMMddTHHmmssSSSFromUnits.valueDateTime,
        equals(yyyyMMddTHHmmssSSSDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssSSSFromUnits.toJson()['value'],
        equals(yyyyMMddTHHmmssSSS),
      );
    });

    // Test for year, month, day, hour, minute, second, millisecond, and
    //microsecond precision
    const yyyyMMddTHHmmssSSSmmm = '2012-01-31T12:30:45.123456';
    final yyyyMMddTHHmmssSSSmmmDateTime =
        DateTime(2012, 1, 31, 12, 30, 45, 123, 456);
    test('dateyyyyMMddTHHmmssSSSmmmFromString', () {
      final dateyyyyMMddTHHmmssSSSmmmFromString =
          FhirDateTime.fromString(yyyyMMddTHHmmssSSSmmm);
      expect(
        dateyyyyMMddTHHmmssSSSmmmFromString.valueString,
        equals(yyyyMMddTHHmmssSSSmmm),
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
    test('dateyyyyMMddTHHmmssSSSmmmFromUnits', () {
      final dateyyyyMMddTHHmmssSSSmmmFromUnits = FhirDateTime.fromUnits(
        year: 2012,
        month: 1,
        day: 31,
        hour: 12,
        minute: 30,
        second: 45,
        millisecond: 123,
        microsecond: 456,
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmFromUnits.valueString,
        equals(yyyyMMddTHHmmssSSSmmm),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmFromUnits.valueDateTime,
        equals(yyyyMMddTHHmmssSSSmmmDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmFromUnits.toJson()['value'],
        equals(yyyyMMddTHHmmssSSSmmm),
      );
    });

    // Test for year, month, day, hour, minute, second, millisecond,
    //microsecond, and UTC precision
    const yyyyMMddTHHmmssSSSmmmZ = '2012-01-31T12:30:45.123456Z';
    final yyyyMMddTHHmmssSSSmmmZDateTime =
        DateTime.utc(2012, 1, 31, 12, 30, 45, 123, 456);

    test('dateyyyyMMddTHHmmssSSSmmmZFromString', () {
      final dateyyyyMMddTHHmmssSSSmmmZFromString =
          FhirDateTime.fromString(yyyyMMddTHHmmssSSSmmmZ);
      expect(
        dateyyyyMMddTHHmmssSSSmmmZFromString.valueString,
        equals(yyyyMMddTHHmmssSSSmmmZ),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmZFromString.valueDateTime,
        equals(yyyyMMddTHHmmssSSSmmmZDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmZFromString.toJson()['value'],
        equals(yyyyMMddTHHmmssSSSmmmZ),
      );
    });
    test('dateyyyyMMddTHHmmssSSSmmmZFromUnits', () {
      final dateyyyyMMddTHHmmssSSSmmmZFromUnits = FhirDateTime.fromUnits(
        year: 2012,
        month: 1,
        day: 31,
        hour: 12,
        minute: 30,
        second: 45,
        millisecond: 123,
        microsecond: 456,
        isUtc: true,
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmZFromUnits.valueString,
        equals(yyyyMMddTHHmmssSSSmmmZ),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmZFromUnits.valueDateTime,
        equals(yyyyMMddTHHmmssSSSmmmZDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmZFromUnits.toJson()['value'],
        equals(yyyyMMddTHHmmssSSSmmmZ),
      );
    });

    // Test for year, month, day, hour, minute, second, millisecond,
    // microsecond, and timezone offset
    final yyyyMMddTHHmmssSSSmmmOffset = '2012-01-31T12:30:45.123456$offset';
    final yyyyMMddTHHmmssSSSmmmOffsetDateTime =
        DateTime(2012, 1, 31, 17, 30, 45, 123, 456)
            .add(Duration(hours: offset.stringToTimeZoneOffset?.toInt() ?? 0));
    test('dateyyyyMMddTHHmmssSSSmmmOffsetFromString', () {
      final dateyyyyMMddTHHmmssSSSmmmOffsetFromString =
          FhirDateTime.fromString(yyyyMMddTHHmmssSSSmmmOffset);
      expect(
        dateyyyyMMddTHHmmssSSSmmmOffsetFromString.valueString,
        equals(yyyyMMddTHHmmssSSSmmmOffset),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmOffsetFromString.valueDateTime,
        equals(yyyyMMddTHHmmssSSSmmmOffsetDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmOffsetFromString.toJson()['value'],
        equals(yyyyMMddTHHmmssSSSmmmOffset),
      );
    });

    test('dateyyyyMMddTHHmmssSSSmmmOffsetFromUnits', () {
      final yyyyMMddTHHmmssSSSmmmOffset = '2012-01-31T12:30:45.123456$offset';
      final dateyyyyMMddTHHmmssSSSmmmOffsetFromUnits = FhirDateTime.fromUnits(
        year: 2012,
        month: 1,
        day: 31,
        hour: 12,
        minute: 30,
        second: 45,
        millisecond: 123,
        microsecond: 456,
        timeZoneOffset: offset.stringToTimeZoneOffset,
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmOffsetFromUnits.valueString,
        equals(yyyyMMddTHHmmssSSSmmmOffset),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmOffsetFromUnits.valueDateTime,
        equals(yyyyMMddTHHmmssSSSmmmOffsetDateTime),
      );
      expect(
        dateyyyyMMddTHHmmssSSSmmmOffsetFromUnits.toJson()['value'],
        equals(yyyyMMddTHHmmssSSSmmmOffset),
      );
    });

    test('fdtyearstring', () {
      expect(FhirDateTime.fromString('2020').toString(), '2020');
      expect(FhirDateTime.fromString('2020').value, DateTime(2020));
    });
    test('fdtyearmonthstring', () {
      expect(FhirDateTime.fromString('2020-12').toString(), '2020-12');
      expect(FhirDateTime.fromString('2020-12').value, DateTime(2020, 12));
      expect(() => FhirDateTime.fromString('2020-Bla'), returnsNormally);

      expect(FhirDateTime.fromString('2020-Bla').value, DateTime(2020));
    });
    test('fdtdatetime', () {
      expect(
        FhirDateTime.fromDateTime(DateTime(2000)).toString(),
        '2000-01-01T00:00:00.000$offset',
      );

      final zuluTime =
          FhirDateTime.fromDateTime(DateTime.utc(1973)).toString();
      expect(zuluTime.contains('Z'), true);
      final localDateTime = DateTime.parse('2015-02-07T13:28:17');
      final localDateTimeString =
          FhirDateTime.fromDateTime(localDateTime).toString();

      /// If there's no timzeone in the input, we shouldn't have any in the
      /// output
      expect(
        localDateTimeString.contains(RegExp(r'[\+|-][0-2][0-9]:[0-6][0-9]$')),
        true,
      );
    });

    final issued = FhirDateTime.fromDateTime(DateTime.now());
    test('Check DateTime type with the regex', () {
      final pattern = RegExp(
        r'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?',
      );
      expect(pattern.hasMatch(issued.toString()), true);
    });
    group('FhirDateTimePrecision enum tests', () {
      test('FhirDate fromString should handle different date string formats',
          () {
        // Test different valid date string formats
        const dateString1 = '2023-07-15';
        final date1 = FhirDate.fromString(dateString1);

        expect(date1.valueString, equals('2023-07-15'));
        expect(date1.valueDateTime, equals(DateTime(2023, 7, 15)));
      });
      test('FhirDate fromUnits should handle different input units', () {
        // Test with valid units
        final date = FhirDate.fromUnits(year: 2023, month: 7, day: 15);

        expect(date.valueString, equals('2023-07-15'));
        expect(date.valueDateTime, equals(DateTime(2023, 7, 15)));

        // Test with incomplete units
        expect(
          FhirDate.fromUnits(year: 2023, month: 7),
          FhirDate.fromString('2023-07'),
        );
      });
    });
    group('FhirDate tests', () {
      test('FhirDate fromString should parse valid date strings', () {
        const validDateString = '2023-07-15';
        final validDate = FhirDate.fromString(validDateString);

        expect(validDate.valueString, equals(validDateString));
        expect(validDate.valueDateTime, equals(DateTime(2023, 7, 15)));
      });

      test('FhirDate fromUnits should construct valid dates from units', () {
        final validDate = FhirDate.fromUnits(year: 2023, month: 7, day: 15);

        expect(validDate.valueString, equals('2023-07-15'));
        expect(validDate.valueDateTime, equals(DateTime(2023, 7, 15)));
      });
    });
    group('FhirDateTime tests', () {
      test('FhirDateTime fromDateTime should construct valid datetimes', () {
        final validDateTime =
            FhirDateTime.fromDateTime(DateTime(2023, 7, 15, 13, 45, 30));

        final offset =
            validDateTime.timeZoneOffset?.toDouble().timeZoneOffsetToString;
        expect(
          validDateTime.valueString,
          equals('2023-07-15T13:45:30.000$offset'),
        );
        expect(validDateTime.valueDateTime, DateTime(2023, 7, 15, 13, 45, 30));
      });

      test('FhirDateTime getters should retrieve correct date components', () {
        final dateTime =
            FhirDateTime.fromDateTime(DateTime(2023, 7, 15, 13, 45, 30));
        expect(dateTime.hour, equals(13));
        expect(dateTime.minute, equals(45));
        expect(dateTime.second, equals(30));
        final offset =
            dateTime.timeZoneOffset?.toDouble().timeZoneOffsetToString;
        expect(dateTime.toString(), '2023-07-15T13:45:30.000$offset');
        final dateTime2 =
            FhirDateTime.fromDateTime(DateTime(2023, 7, 15, 13, 45, 30));

        expect(dateTime2.toString(), '2023-07-15T13:45:30.000$offset');

        // Test getters for edge cases, null values, and invalid instances
        final nullDateTime = FhirDateTime.fromDateTime(DateTime(2000));
        expect(nullDateTime.hour, equals(0));
        expect(nullDateTime.minute, equals(0));
        expect(nullDateTime.second, equals(0));
      });

      test('FhirDateTime toJson should serialize correctly', () {
        // Test serialization of a FhirDateTime instance to JSON
        final dateTime = FhirDateTime.fromUnits(
          year: 2023,
          month: 7,
          day: 15,
          hour: 13,
          minute: 45,
          second: 30,
          millisecond: 000,
        );
        final json = dateTime.toJson()['value'];
        expect(json, equals('2023-07-15T13:45:30.000'));
      });
    });

    group('FhirDateTime Tests', () {
      test('Valid FhirDateTime String', () {
        final fhirDateTime =
            FhirDateTime.fromString('2023-12-22T12:34:56.789Z');

        expect(fhirDateTime.value, isA<DateTime>());
        expect(fhirDateTime.year, 2023);
        expect(fhirDateTime.month, 12);
        expect(fhirDateTime.day, 22);
        expect(fhirDateTime.hour, 12);
        expect(fhirDateTime.minute, 34);
        expect(fhirDateTime.second, 56);
        expect(fhirDateTime.millisecond, 789);
      });

      test('FhirDateTime Comparison', () {
        final fhirDateTime1 =
            FhirDateTime.fromString('2023-12-22T12:34:56.789Z');
        final fhirDateTime2 =
            FhirDateTime.fromString('2024-01-01T00:00:00.000Z');
        final fhirDateTime3 =
            FhirDateTime.fromString('2023-12-22T12:34:56.789Z');

        expect(fhirDateTime1 == fhirDateTime2, isFalse);
        expect(fhirDateTime1 == fhirDateTime3, isTrue);
        expect(fhirDateTime1 < fhirDateTime2, isTrue);
        expect(fhirDateTime1 <= fhirDateTime2, isTrue);
        expect(fhirDateTime1 > fhirDateTime2, isFalse);
        expect(fhirDateTime1 >= fhirDateTime2, isFalse);
      });

      // Add more test cases as needed.
    });

    group('FhirDate Tests', () {
      test('Valid FhirDate String', () {
        final fhirDate = FhirDate.fromString('2023-12-22');

        expect(fhirDate.value, isA<DateTime>());
        expect(fhirDate.year, 2023);
        expect(fhirDate.month, 12);
        expect(fhirDate.day, 22);
      });

      test('Invalid FhirDate from string with Offset', () {
        expect(
          () => FhirDateTime.fromString('invalid_datetime'),
          throwsA(isA<ArgumentError>()),
        );
      });

      test('FhirDate Comparison', () {
        final fhirDate1 = FhirDate.fromString('2023-12-22');
        final fhirDate2 = FhirDate.fromString('2024-01-01');
        final fhirDate3 = FhirDate.fromString('2023-12-22');

        expect(fhirDate1 == fhirDate2, isFalse);
        expect(fhirDate1 == fhirDate3, isTrue);
        expect(fhirDate1 < fhirDate2, isTrue);
        expect(fhirDate1 <= fhirDate2, isTrue);
        expect(fhirDate1 > fhirDate2, isFalse);
        expect(fhirDate1 >= fhirDate2, isFalse);
      });
    });
  });
}
