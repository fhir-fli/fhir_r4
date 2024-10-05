// ignore_for_file: always_specify_types, prefer_const_declarations

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final offset =
      timeZoneOffsetToString(DateTime(2020).timeZoneOffset.inHours.toDouble());

  group('FhirInstant Tests', () {
    final yyyy = '2012';
    final yyyyDateTime = DateTime(2012);
    group('yyyy - 2012', () {
      final dateyyyyFromString = FhirInstant(yyyy);
      final yyyyEmptyString = '2012-01-01T00:00:00.000+00:00';
      final yyyyEmptyTimeZoneString = '2012-01-01T00:00:00.000$offset';
      test('dateyyyyFromString', () {
        expect(dateyyyyFromString.isValid, isFalse);
        expect(dateyyyyFromString.valueString, equals(yyyyEmptyString));
        expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromString.toJson(), equals(yyyy));
      });
      final dateyyyyFromDateTime =
          FhirInstant(yyyyDateTime, FhirDateTimePrecision.yyyy);
      test('dateyyyyFromDateTime', () {
        expect(dateyyyyFromDateTime.isValid, isFalse);
        expect(
            dateyyyyFromDateTime.valueString, equals(yyyyEmptyTimeZoneString));
        expect(dateyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromDateTime.toJson(), equals(yyyy));
      });
    });
    group('yyyyMM - 2012-01', () {
      final yyyyMM = '2012-01';
      final yyyyMMDateTime = DateTime(2012);
      final dateyyyyMMFromString = FhirInstant(yyyyMM);
      final yyyyMMEmptyString = '2012-01-01T00:00:00.000+00:00';
      final yyyyMMEmptyTimeZoneString = '2012-01-01T00:00:00.000$offset';
      test('dateyyyyMMFromString', () {
        expect(dateyyyyMMFromString.isValid, isFalse);
        expect(dateyyyyMMFromString.valueString, equals(yyyyMMEmptyString));
        expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromString.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromDateTime =
          FhirInstant(yyyyMMDateTime, FhirDateTimePrecision.yyyy_MM);
      test('dateyyyyMMFromDateTime', () {
        expect(dateyyyyMMFromDateTime.isValid, isFalse);
        expect(dateyyyyMMFromDateTime.valueString,
            equals(yyyyMMEmptyTimeZoneString));
        expect(dateyyyyMMFromDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromDateTime.toJson(), equals(yyyyMM));
      });
    });
    group('yyyyMMdd - 2012-01-31', () {
      final yyyyMMdd = '2012-01-31';
      final yyyyMMddDateTime = DateTime(2012, 1, 31);
      final dateyyyyMMddFromString = FhirInstant(yyyyMMdd);
      final yyyyMMddEmptyString = '2012-01-31T00:00:00.000+00:00';
      final yyyyMMddEmptyTimeZoneString = '2012-01-31T00:00:00.000$offset';

      test('dateyyyyMMddFromString', () {
        expect(dateyyyyMMddFromString.isValid, isFalse);
        expect(dateyyyyMMddFromString.valueString, equals(yyyyMMddEmptyString));
        expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromString.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromDateTime =
          FhirInstant(yyyyMMddDateTime, FhirDateTimePrecision.yyyy_MM_dd);
      test('dateyyyyMMddFromDateTime', () {
        expect(dateyyyyMMddFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddFromDateTime.valueString,
            equals(yyyyMMddEmptyTimeZoneString));
        expect(
            dateyyyyMMddFromDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddT - 2012-01-31T', () {
      final yyyyMMddT = '2012-01-31T';
      final yyyyMMddTDateTime = DateTime(2012, 1, 31);
      final dateyyyyMMddTFromString = FhirInstant(yyyyMMddT);
      final dateyyyyMMddTFromDateTime = FhirInstant(
          yyyyMMddTDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS);
      final yyyyMMddTEmptyString = '2012-01-31T00:00:00.000+00:00';
      final yyyyMMddTEmptyTimeZoneString = '2012-01-31T00:00:00.000$offset';
      test('dateyyyyMMddTFromString', () {
        expect(dateyyyyMMddTFromString.isValid, isFalse);
        expect(
            dateyyyyMMddTFromString.valueString, equals(yyyyMMddTEmptyString));
        expect(
            dateyyyyMMddTFromString.valueDateTime, equals(yyyyMMddTDateTime));
        expect(dateyyyyMMddTFromString.toJson(), equals(yyyyMMddT));
      });
      test('dateyyyyMMddTFromDateTime', () {
        expect(dateyyyyMMddTFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTFromDateTime.valueString,
            equals(yyyyMMddTEmptyTimeZoneString));
        expect(
            dateyyyyMMddTFromDateTime.valueDateTime, equals(yyyyMMddTDateTime));
        expect(dateyyyyMMddTFromDateTime.toJson(),
            equals(yyyyMMddTDateTime.toIso8601String()));
      });
    });
    group('yyyyMMddTZZ - 2012-01-31T$offset', () {
      final yyyyMMddTZZ = '2012-01-31T$offset';
      final yyyyMMddTZZDateTime = DateTime(2012, 1, 31);
      final dateyyyyMMddTZZFromString = FhirInstant(yyyyMMddTZZ);
      final dateyyyyMMddTZZFromDateTime = FhirInstant(
          yyyyMMddTZZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_ZZ);
      final yyyyMMddTZZEmptyTimeZoneString = '2012-01-31T00:00:00.000$offset';

      test('dateyyyyMMddTZZFromString', () {
        expect(dateyyyyMMddTZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTZZFromString.valueString,
            equals(yyyyMMddTZZEmptyTimeZoneString));
        expect(dateyyyyMMddTZZFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromString.toJson(), equals(yyyyMMddTZZ));
      });
      test('dateyyyyMMddTZZFromDateTime', () {
        expect(dateyyyyMMddTZZFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTZZFromDateTime.valueString,
            equals(yyyyMMddTZZEmptyTimeZoneString));
        expect(dateyyyyMMddTZZFromDateTime.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromDateTime.toJson(), equals(yyyyMMddTZZ));
      });
    });
    group('yyyyMMddTHH - 2012-01-31T12', () {
      final yyyyMMddTHH = '2012-01-31T12';
      final yyyyMMddTHHDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHFromString = FhirInstant(yyyyMMddTHH);
      final dateyyyyMMddTHHFromDateTime = FhirInstant(
          yyyyMMddTHHDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH);
      final yyyyMMddTHHEmptyString = '2012-01-31T12:00:00.000+00:00';
      final yyyyMMddTHHEmptyTimeZoneString = '2012-01-31T12:00:00.000$offset';

      test('dateyyyyMMddTHHFromString', () {
        expect(dateyyyyMMddTHHFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHFromString.valueString,
            equals(yyyyMMddTHHEmptyString));
        expect(dateyyyyMMddTHHFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromString.toJson(), equals(yyyyMMddTHH));
      });
      test('dateyyyyMMddTHHFromDateTime', () {
        expect(dateyyyyMMddTHHFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHFromDateTime.valueString,
            equals(yyyyMMddTHHEmptyTimeZoneString));
        expect(dateyyyyMMddTHHFromDateTime.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromDateTime.toJson(), equals(yyyyMMddTHH));
      });
    });
    group('dateyyyyMMddTHHZ - 2012-01-31T12Z', () {
      final yyyyMMddTHHZ = '2012-01-31T12Z';
      final yyyyMMddTHHZDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHZFromString = FhirInstant(yyyyMMddTHHZ);
      final dateyyyyMMddTHHZFromDateTime = FhirInstant(
          yyyyMMddTHHZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z);
      final yyyyMMddTHHZEmptyString = '2012-01-31T12:00:00.000+00:00';
      final yyyyMMddTHHZEmptyTimeZoneString = '2012-01-31T12:00:00.000$offset';
      test('dateyyyyMMddTHHZFromString', () {
        expect(dateyyyyMMddTHHZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHZFromString.valueString,
            equals(yyyyMMddTHHZEmptyString));
        expect(dateyyyyMMddTHHZFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromString.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromDateTime', () {
        expect(dateyyyyMMddTHHZFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHZFromDateTime.valueString,
            equals(yyyyMMddTHHZEmptyTimeZoneString));
        expect(dateyyyyMMddTHHZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromDateTime.toJson(), equals(yyyyMMddTHHZ));
      });
    });
    group('yyyyMMddTHHZZ - 2012-01-31T12$offset', () {
      final yyyyMMddTHHZZ = '2012-01-31T12$offset';
      final yyyyMMddTHHZZDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHZZFromString = FhirInstant(yyyyMMddTHHZZ);
      final dateyyyyMMddTHHZZFromDateTime = FhirInstant(
          yyyyMMddTHHZZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ);
      final yyyyMMddTHHZZEmptyTimeZoneString = '2012-01-31T12:00:00.000$offset';

      test('dateyyyyMMddTHHZZFromString', () {
        expect(dateyyyyMMddTHHZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHZZFromString.valueString,
            equals(yyyyMMddTHHZZEmptyTimeZoneString));
        expect(dateyyyyMMddTHHZZFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromString.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromDateTime', () {
        expect(dateyyyyMMddTHHZZFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHZZFromDateTime.valueString,
            equals(yyyyMMddTHHZZEmptyTimeZoneString));
        expect(dateyyyyMMddTHHZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromDateTime.toJson(), equals(yyyyMMddTHHZZ));
      });
    });
    group('yyyyMMddTHHmm - 2012-01-31T12:30', () {
      final yyyyMMddTHHmm = '2012-01-31T12:30';
      final yyyyMMddTHHmmDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmFromString = FhirInstant(yyyyMMddTHHmm);
      final dateyyyyMMddTHHmmFromDateTime = FhirInstant(
          yyyyMMddTHHmmDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm);
      final yyyyMMddTHHmmEmptyString = '2012-01-31T12:30:00.000+00:00';
      final yyyyMMddTHHmmEmptyTimeZoneString = '2012-01-31T12:30:00.000$offset';
      test('dateyyyyMMddTHHmmFromString', () {
        expect(dateyyyyMMddTHHmmFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmFromString.valueString,
            equals(yyyyMMddTHHmmEmptyString));
        expect(dateyyyyMMddTHHmmFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromString.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromDateTime', () {
        expect(dateyyyyMMddTHHmmFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHmmFromDateTime.valueString,
            equals(yyyyMMddTHHmmEmptyTimeZoneString));
        expect(dateyyyyMMddTHHmmFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromDateTime.toJson(), equals(yyyyMMddTHHmm));
      });
    });
    group('dateyyyyMMddTHHmmZ - 2012-01-31T12:30Z', () {
      final yyyyMMddTHHmmZ = '2012-01-31T12:30Z';
      final yyyyMMddTHHmmZDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmZFromString = FhirInstant(yyyyMMddTHHmmZ);
      final dateyyyyMMddTHHmmZFromDateTime = FhirInstant(
          yyyyMMddTHHmmZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z);
      final yyyyMMddTHHmmZEmptyString = '2012-01-31T12:30:00.000+00:00';
      final yyyyMMddTHHmmZEmptyTimeZoneString =
          '2012-01-31T12:30:00.000$offset';

      test('dateyyyyMMddTHHmmZFromString', () {
        expect(dateyyyyMMddTHHmmZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmZFromString.valueString,
            equals(yyyyMMddTHHmmZEmptyString));
        expect(dateyyyyMMddTHHmmZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromString.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHmmZFromDateTime.valueString,
            equals(yyyyMMddTHHmmZEmptyTimeZoneString));
        expect(dateyyyyMMddTHHmmZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromDateTime.toJson(), equals(yyyyMMddTHHmmZ));
      });
    });
    group('dateyyyyMMddTHHmmZZ - 2012-01-31T12:30$offset', () {
      final yyyyMMddTHHmmZZ = '2012-01-31T12:30$offset';
      final yyyyMMddTHHmmZZDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmZZFromString = FhirInstant(yyyyMMddTHHmmZZ);
      final dateyyyyMMddTHHmmZZFromDateTime = FhirInstant(
          yyyyMMddTHHmmZZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ);
      final yyyyMMddTHHmmZZEmptyTimeZoneString =
          '2012-01-31T12:30:00.000$offset';

      test('dateyyyyMMddTHHmmZZFromString', () {
        expect(dateyyyyMMddTHHmmZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmZZFromString.valueString,
            equals(yyyyMMddTHHmmZZEmptyTimeZoneString));
        expect(dateyyyyMMddTHHmmZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromString.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZZFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmZZEmptyTimeZoneString));
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(
            dateyyyyMMddTHHmmZZFromDateTime.toJson(), equals(yyyyMMddTHHmmZZ));
      });
    });
    group('dateyyyyMMddTHHmmss - 2012-01-31T12:30:59', () {
      final yyyyMMddTHHmmss = '2012-01-31T12:30:59';
      final yyyyMMddTHHmmssDateTime = DateTime(2012, 1, 31, 12, 30, 59);
      final dateyyyyMMddTHHmmssFromString = FhirInstant(yyyyMMddTHHmmss);
      final dateyyyyMMddTHHmmssFromDateTime = FhirInstant(
          yyyyMMddTHHmmssDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss);
      final yyyyMMddTHHmmssEmptyString = '2012-01-31T12:30:59.000+00:00';
      final yyyyMMddTHHmmssEmptyTimeZoneString =
          '2012-01-31T12:30:59.000$offset';

      test('dateyyyyMMddTHHmmssFromString', () {
        expect(dateyyyyMMddTHHmmssFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssFromString.valueString,
            equals(yyyyMMddTHHmmssEmptyString));
        expect(dateyyyyMMddTHHmmssFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromString.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromDateTime', () {
        expect(dateyyyyMMddTHHmmssFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssFromDateTime.valueString,
            equals(yyyyMMddTHHmmssEmptyTimeZoneString));
        expect(dateyyyyMMddTHHmmssFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(
            dateyyyyMMddTHHmmssFromDateTime.toJson(), equals(yyyyMMddTHHmmss));
      });
    });
    group('dateyyyyMMddTHHmmssZ - 2012-01-31T12:30:59Z', () {
      final yyyyMMddTHHmmssZ = '2012-01-31T12:30:59Z';
      final yyyyMMddTHHmmssZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
      final dateyyyyMMddTHHmmssZFromString = FhirInstant(yyyyMMddTHHmmssZ);
      final dateyyyyMMddTHHmmssZFromDateTime = FhirInstant(
          yyyyMMddTHHmmssZDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z);
      final dateyyyyMMddTHHmmssZEmptyString = '2012-01-31T12:30:59Z';
      final dateyyyyMMddTHHmmssZEmptyTimeZoneString = '2012-01-31T12:30:59Z';
      final dateyyyyMMddTHHmmssZFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          isUtc: true,
          timeZoneOffset: 0);

      test('dateyyyyMMddTHHmmssZFromString', () {
        expect(dateyyyyMMddTHHmmssZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromString.valueString,
            equals(dateyyyyMMddTHHmmssZEmptyString));
        expect(dateyyyyMMddTHHmmssZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromString.toJson(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueString,
            equals(dateyyyyMMddTHHmmssZEmptyTimeZoneString));
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromUnits', () {
        expect(dateyyyyMMddTHHmmssZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromUnits.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromUnits.toJson(), equals(yyyyMMddTHHmmssZ));
      });
    });
    group('yyyyMMddTHHmmssZZ - 2012-01-31T12:30:59$offset', () {
      final yyyyMMddTHHmmssZZ = '2012-01-31T12:30:59$offset';
      final yyyyMMddTHHmmssZZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
      final dateyyyyMMddTHHmmssZZFromString = FhirInstant(yyyyMMddTHHmmssZZ);
      final dateyyyyMMddTHHmmssZZFromDateTime = FhirInstant(
          yyyyMMddTHHmmssZZDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ);
      final dateyyyyMMddTHHmmssZZFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          timeZoneOffset: stringToTimeZoneOffset(offset)!);

      test('dateyyyyMMddTHHmmssZZFromString', () {
        expect(dateyyyyMMddTHHmmssZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromString.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromString.toJson(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromUnits', () {
        expect(dateyyyyMMddTHHmmssZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromUnits.valueString,
            equals(yyyyMMddTHHmmssZZ));
        expect(dateyyyyMMddTHHmmssZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(
            dateyyyyMMddTHHmmssZZFromUnits.toJson(), equals(yyyyMMddTHHmmssZZ));
      });
    });
    group('yyyyMMddTHHmmssSSS - 2012-01-31T12:30:59.001', () {
      final yyyyMMddTHHmmssSSS = '2012-01-31T12:30:59.001';
      final yyyyMMddTHHmmssSSSDateTime = DateTime(2012, 1, 31, 12, 30, 59, 1);
      final dateyyyyMMddTHHmmssSSSFromString = FhirInstant(yyyyMMddTHHmmssSSS);
      final dateyyyyMMddTHHmmssSSSFromDateTime = FhirInstant(
          yyyyMMddTHHmmssSSSDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS);
      final dateyyyyMMddTHHmmssSSSEmptyString = '2012-01-31T12:30:59.001+00:00';
      final dateyyyyMMddTHHmmssSSSEmptyTimeZoneString =
          '2012-01-31T12:30:59.001$offset';
      final dateyyyyMMddTHHmmssSSSFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 1,
          timeZoneOffset: stringToTimeZoneOffset(offset)!);
      test('dateyyyyMMddTHHmmssSSSFromString', () {
        expect(dateyyyyMMddTHHmmssSSSFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssSSSFromString.valueString,
            equals(dateyyyyMMddTHHmmssSSSEmptyString));
        expect(dateyyyyMMddTHHmmssSSSFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueString,
            equals(dateyyyyMMddTHHmmssSSSEmptyTimeZoneString));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueString,
            equals(dateyyyyMMddTHHmmssSSSEmptyTimeZoneString));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toJson(),
            equals(dateyyyyMMddTHHmmssSSSEmptyTimeZoneString));
      });
    });
    group('yyyyMMddTHHmmssSSSZ - 2012-01-31T12:30:59.010Z', () {
      final yyyyMMddTHHmmssSSSZ = '2012-01-31T12:30:59.010Z';
      final yyyyMMddTHHmmssSSSZDateTime = DateTime(2012, 1, 31, 12, 30, 59, 10);
      final dateyyyyMMddTHHmmssSSSZFromString =
          FhirInstant(yyyyMMddTHHmmssSSSZ);
      final dateyyyyMMddTHHmmssSSSZFromDateTime = FhirInstant(
          yyyyMMddTHHmmssSSSZDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z);
      final dateyyyyMMddTHHmmssSSSZFromUnits = FhirInstant.fromUnits(
        year: 2012,
        month: 1,
        day: 31,
        hour: 12,
        minute: 30,
        second: 59,
        millisecond: 10,
        isUtc: true,
        timeZoneOffset: 0,
      );

      test('dateyyyyMMddTHHmmssSSSZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSSZ));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
    });
    group('yyyyMMddTHHmmssSSSZZ - 2012-01-31T12:30:59.100$offset', () {
      final yyyyMMddTHHmmssSSSZZ = '2012-01-31T12:30:59.100$offset';
      final yyyyMMddTHHmmssSSSZZDateTime =
          DateTime(2012, 1, 31, 12, 30, 59, 100);
      final dateyyyyMMddTHHmmssSSSZZFromString =
          FhirInstant(yyyyMMddTHHmmssSSSZZ);
      final dateyyyyMMddTHHmmssSSSZZFromDateTime = FhirInstant(
          yyyyMMddTHHmmssSSSZZDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ);
      final dateyyyyMMddTHHmmssSSSZZFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 100,
          timeZoneOffset: stringToTimeZoneOffset(offset)!);

      test('dateyyyyMMddTHHmmssSSSZZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromString.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSSZZ));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
    });
    group('dateInstant - 2012-01-31T12:30:59.111$offset', () {
      final instant = '2012-01-31T12:30:59.111$offset';
      final instantDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111);
      final dateInstantFromString = FhirInstant(instant);
      final dateInstantFromDateTime =
          FhirInstant(instantDateTime, FhirDateTimePrecision.instant);
      final dateInstantFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 111,
          timeZoneOffset: stringToTimeZoneOffset(offset)!);

      test('dateInstantFromString', () {
        expect(dateInstantFromString.isValid, isTrue);
        expect(dateInstantFromString.valueString, equals(instant));
        expect(dateInstantFromString.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromString.toJson(), equals(instant));
      });
      test('dateInstantFromDateTime', () {
        expect(dateInstantFromDateTime.isValid, isTrue);
        expect(dateInstantFromDateTime.valueString, equals(instant));
        expect(dateInstantFromDateTime.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromDateTime.toJson(), equals(instant));
      });
      test('dateInstantFromUnits', () {
        expect(dateInstantFromUnits.isValid, isTrue);
        expect(dateInstantFromUnits.valueString, equals(instant));
        expect(dateInstantFromUnits.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromUnits.toJson(), equals(instant));
      });
    });
    group('DateTime - 2012-01-31T12:30:59.111111$offset', () {
      final dateTime = '2012-01-31T12:30:59.111111$offset';
      final dateTimeDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111, 111);
      final dateDateTimeFromString = FhirInstant(dateTime);
      final dateDateTimeFromDateTime =
          FhirInstant(dateTimeDateTime, FhirDateTimePrecision.dateTime);
      final dateTimeEmptyTimeZoneString = '2012-01-31T12:30:59.111$offset';
      final dateDateTimeFromUnits = FhirInstant.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 111,
          microsecond: 111,
          timeZoneOffset: stringToTimeZoneOffset(offset)!);

      test('dateDateTimeFromString', () {
        expect(dateDateTimeFromString.isValid, isFalse);
        expect(dateDateTimeFromString.valueString,
            equals(dateTimeEmptyTimeZoneString));
        expect(dateDateTimeFromString.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromString.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromDateTime', () {
        expect(dateDateTimeFromDateTime.isValid, isFalse);
        expect(dateDateTimeFromDateTime.valueString,
            equals(dateTimeEmptyTimeZoneString));
        expect(
            dateDateTimeFromDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromDateTime.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromUnits', () {
        expect(dateDateTimeFromUnits.isValid, isFalse);
        expect(dateDateTimeFromUnits.valueString,
            equals(dateTimeEmptyTimeZoneString));
        expect(dateDateTimeFromUnits.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromUnits.toJson(), equals(dateTime));
      });
    });
  });
}
