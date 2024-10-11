// ignore_for_file: always_specify_types, prefer_const_declarations

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final issued = FhirDateTime.fromDateTime(DateTime.now());
  final offset = timeZoneOffsetToString(issued.timeZoneOffset.toDouble());
  test('Check DateTime type with the regex', () {
    final pattern = RegExp(
        r'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?');
    expect(pattern.hasMatch(issued.toString()), true);
  });
  group('FhirDateTimePrecision enum tests', () {
    test('All enum values should have unique string representations', () {
      final values = FhirDateTimePrecision.values;
      final uniqueStrings = values.map((e) => e.toString()).toSet();
      expect(uniqueStrings.length, equals(values.length));
    });

    test(
        'FhirDateTimePrecisionExtension should correctly convert DateTime objects',
        () {
      final DateTime dateTime = DateTime(2023, 7, 15, 12, 30, 45);
      expect(FhirDateTimePrecision.yyyy.dateTimeToString(dateTime),
          equals('2023'));
      expect(FhirDateTimePrecision.yyyy_MM.dateTimeToString(dateTime),
          equals('2023-07'));
      expect(FhirDateTimePrecision.yyyy_MM_dd.dateTimeToString(dateTime),
          equals('2023-07-15'));
    });

    test('FhirDate fromString should handle different date string formats', () {
      // Test different valid date string formats
      final dateString1 = '2023-07-15';
      final date1 = FhirDate.fromString(dateString1);
      expect(date1.isValid, equals(true));
      expect(date1.valueString, equals('2023-07-15'));
      expect(date1.valueDateTime, equals(DateTime(2023, 7, 15)));
    });
    test('FhirDate fromUnits should handle different input units', () {
      // Test with valid units
      final date = FhirDate.fromUnits(year: 2023, month: 7, day: 15);
      expect(date.isValid, equals(true));
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
      final validDateString = '2023-07-15';
      final validDate = FhirDate.fromString(validDateString);
      expect(validDate.isValid, equals(true));
      expect(validDate.valueString, equals(validDateString));
      expect(validDate.valueDateTime, equals(DateTime(2023, 7, 15)));
    });

    test('FhirDate fromUnits should construct valid dates from units', () {
      final validDate = FhirDate.fromUnits(year: 2023, month: 7, day: 15);
      expect(validDate.isValid, equals(true));
      expect(validDate.valueString, equals('2023-07-15'));
      expect(validDate.valueDateTime, equals(DateTime(2023, 7, 15)));
    });
  });
  group('FhirDateTime tests', () {
    test('FhirDateTime fromString should parse valid datetime strings', () {
      final validDateTimeString = '2023-07-15T13:45:30Z';
      final validDateTime = FhirDateTime.fromString(validDateTimeString);
      expect(validDateTime.isValid, equals(true));
      expect(validDateTime.valueString, equals(validDateTimeString));
      expect(validDateTime.valueDateTime,
          equals(DateTime(2023, 7, 15, 13, 45, 30)));
    });

    test('FhirDateTime fromDateTime should construct valid datetimes', () {
      final validDateTime =
          FhirDateTime.fromDateTime(DateTime(2023, 7, 15, 13, 45, 30));
      expect(validDateTime.isValid, equals(true));
      final offset =
          timeZoneOffsetToString(validDateTime.timeZoneOffset.toDouble());
      expect(
          validDateTime.valueString, equals('2023-07-15T13:45:30.000$offset'));
      expect(validDateTime.valueDateTime, DateTime(2023, 7, 15, 13, 45, 30));
    });

    test('FhirDateTime fromYaml should convert YAML strings correctly', () {
      final yamlString = '2023-07-15T13:45:30Z';
      final dateTime = FhirDateTime.fromYaml(yamlString);
      expect(dateTime.isValid, equals(true));
      expect(dateTime.valueString, equals('2023-07-15T13:45:30Z'));
      expect(dateTime.valueDateTime, equals(DateTime(2023, 7, 15, 13, 45, 30)));
    });

    test('FhirDateTime getters should retrieve correct date components', () {
      final dateTime =
          FhirDateTime.fromDateTime(DateTime(2023, 7, 15, 13, 45, 30));
      expect(dateTime.hour, equals(13));
      expect(dateTime.minute, equals(45));
      expect(dateTime.second, equals(30));
      final offset = timeZoneOffsetToString(dateTime.timeZoneOffset.toDouble());
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

    test('FhirDateTime fromJson should handle various JSON formats', () {
      // Test valid JSON strings with different formats and variations
      final validJsonString = '"2023-07-15T13:45:30Z"';
      final dateTime = FhirDateTime.fromJson(validJsonString);
      expect(dateTime.isValid, equals(true));
      expect(dateTime.valueString, equals('2023-07-15T13:45:30Z'));
      expect(dateTime.valueDateTime, equals(DateTime(2023, 7, 15, 13, 45, 30)));
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
          millisecond: 000);
      final json = dateTime.toJson();
      expect(json, equals('2023-07-15T13:45:30.000'));
    });
  });

  group('FhirInstant tests', () {
    // Add tests specifically for FhirInstant functionalities and scenarios

    test('FhirInstant fromDateTime should handle various DateTime inputs', () {
      // Test valid DateTime inputs
      final dateTime = DateTime(2023, 7, 15, 13, 45, 30);
      final instant = FhirInstant.fromDateTime(dateTime);
      expect(instant.isValid, equals(true));
      expect(instant.valueString, equals('2023-07-15T13:45:30.000$offset'));
      expect(instant.valueDateTime, equals(DateTime(2023, 7, 15, 13, 45, 30)));
    });
  });

  group('FhirDateTime Tests', () {
    test('Valid FhirDateTime String', () {
      final fhirDateTime = FhirDateTime.fromString('2023-12-22T12:34:56.789Z');
      expect(fhirDateTime.isValid, isTrue);
      expect(fhirDateTime.value, isA<DateTime>());
      expect(fhirDateTime.year, 2023);
      expect(fhirDateTime.month, 12);
      expect(fhirDateTime.day, 22);
      expect(fhirDateTime.hour, 12);
      expect(fhirDateTime.minute, 34);
      expect(fhirDateTime.second, 56);
      expect(fhirDateTime.millisecond, 789);
    });

    test('Invalid FhirDateTime String', () {
      final fhirDateTime = FhirDateTime.fromString('invalid_datetime');
      expect(fhirDateTime.isValid, isFalse);
      expect(fhirDateTime.value, DateTime(1));
      expect(fhirDateTime.year, 1);
      expect(fhirDateTime.month, 1);
      expect(fhirDateTime.day, 1);
      expect(fhirDateTime.hour, 0);
      expect(fhirDateTime.minute, 0);
      expect(fhirDateTime.second, 0);
      expect(fhirDateTime.millisecond, 0);
    });

    test('FhirDateTime Comparison', () {
      final fhirDateTime1 = FhirDateTime.fromString('2023-12-22T12:34:56.789Z');
      final fhirDateTime2 = FhirDateTime.fromString('2024-01-01T00:00:00.000Z');
      final fhirDateTime3 = FhirDateTime.fromString('2023-12-22T12:34:56.789Z');

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
      expect(fhirDate.isValid, isTrue);
      expect(fhirDate.value, isA<DateTime>());
      expect(fhirDate.year, 2023);
      expect(fhirDate.month, 12);
      expect(fhirDate.day, 22);
    });

    test('Invalid FhirDate String', () {
      final fhirDate = FhirDate.fromString('invalid_date');
      expect(fhirDate.isValid, isFalse);
      expect(fhirDate.value, DateTime(1));
      expect(fhirDate.year, 1);
      expect(fhirDate.month, 1);
      expect(fhirDate.day, 1);
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

    // Add more test cases as needed.
  });
}
