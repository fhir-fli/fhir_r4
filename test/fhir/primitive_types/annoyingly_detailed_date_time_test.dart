// ignore_for_file: always_specify_types, prefer_const_declarations

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final offset =
      timeZoneOffsetToString(DateTime(2020).timeZoneOffset.inHours.toDouble());

  group('FhirDateTime Tests', () {
    final yyyy = '2012';
    final yyyyDateTime = DateTime(2012);
    group('yyyy - 2012', () {
      final dateyyyyFromString = FhirDateTime(yyyy);
      test('dateyyyyFromString', () {
        expect(dateyyyyFromString.isValid, isTrue);
        expect(dateyyyyFromString.valueString, equals(yyyy));
        expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromString.toJson(), equals(yyyy));
      });
      final dateyyyyFromDateTime =
          FhirDateTime(yyyyDateTime, FhirDateTimePrecision.yyyy);
      test('dateyyyyFromDateTime', () {
        expect(dateyyyyFromDateTime.isValid, isTrue);
        expect(dateyyyyFromDateTime.valueString, equals(yyyy));
        expect(dateyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromDateTime.toJson(), equals(yyyy));
      });

      final dateyyyyFromUnits = FhirDateTime.fromUnits(year: 2012);

      test('dateyyyyFromUnits', () {
        expect(dateyyyyFromUnits.isValid, isTrue);
        expect(dateyyyyFromUnits.valueString, equals(yyyy));
        expect(dateyyyyFromUnits.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromUnits.toJson(), equals(yyyy));
      });
    });
    group('yyyyMM - 2012-01', () {
      final yyyyMM = '2012-01';
      final yyyyMMDateTime = DateTime(2012);
      final dateyyyyMMFromString = FhirDateTime(yyyyMM);
      test('dateyyyyMMFromString', () {
        expect(dateyyyyMMFromString.isValid, isTrue);
        expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromString.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromDateTime =
          FhirDateTime(yyyyMMDateTime, FhirDateTimePrecision.yyyy_MM);
      test('dateyyyyMMFromDateTime', () {
        expect(dateyyyyMMFromDateTime.isValid, isTrue);
        expect(dateyyyyMMFromDateTime.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromDateTime.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromUnits = FhirDateTime.fromUnits(year: 2012, month: 1);
      test('dateyyyyMMFromUnits', () {
        expect(dateyyyyMMFromUnits.isValid, isTrue);
        expect(dateyyyyMMFromUnits.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromUnits.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromUnits.toJson(), equals(yyyyMM));
      });
    });
    group('yyyyMMdd - 2012-01-31', () {
      final yyyyMMdd = '2012-01-31';
      final yyyyMMddDateTime = DateTime(2012, 1, 31);
      final dateyyyyMMddFromString = FhirDateTime(yyyyMMdd);
      test('dateyyyyMMddFromString', () {
        expect(dateyyyyMMddFromString.isValid, isTrue);
        expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromString.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromDateTime = FhirDateTime(
          yyyyMMddDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS);
      test('dateyyyyMMddFromDateTime', () {
        expect(dateyyyyMMddFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddFromDateTime.valueString,
            equals(yyyyMMddDateTime.toIso8601String()));
        expect(
            dateyyyyMMddFromDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromDateTime.toJson(),
            equals(yyyyMMddDateTime.toIso8601String()));
      });
      final dateyyyyMMddFromUnits =
          FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);
      test('dateyyyyMMddFromUnits', () {
        expect(dateyyyyMMddFromUnits.isValid, isTrue);
        expect(dateyyyyMMddFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromUnits.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddT - 2012-01-31T', () {
      final yyyyMMddT = '2012-01-31T';
      final yyyyMMddTDateTime = DateTime(2012, 1, 31);
      final dateyyyyMMddTFromString = FhirDateTime(yyyyMMddT);
      final dateyyyyMMddTFromDateTime = FhirDateTime(
          yyyyMMddTDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS);
      final dateyyyyMMddTFromUnits =
          FhirDateTime.fromUnits(year: 2012, month: 1, day: 31);

      test('dateyyyyMMddTFromString', () {
        expect(dateyyyyMMddTFromString.isValid, isTrue);
        expect(dateyyyyMMddTFromString.valueString,
            equals(yyyyMMddT.replaceAll('T', '')));
        expect(
            dateyyyyMMddTFromString.valueDateTime, equals(yyyyMMddTDateTime));
        expect(dateyyyyMMddTFromString.toJson(), equals(yyyyMMddT));
      });
      test('dateyyyyMMddTFromDateTime', () {
        expect(dateyyyyMMddTFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTFromDateTime.valueString,
            equals(yyyyMMddTDateTime.toIso8601String()));
        expect(
            dateyyyyMMddTFromDateTime.valueDateTime, equals(yyyyMMddTDateTime));
        expect(dateyyyyMMddTFromDateTime.toJson(),
            equals(yyyyMMddTDateTime.toIso8601String()));
      });
      test('dateyyyyMMddTFromUnits', () {
        expect(dateyyyyMMddTFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTFromUnits.valueString,
            equals(yyyyMMddT.replaceAll('T', '')));
        expect(dateyyyyMMddTFromUnits.valueDateTime, equals(yyyyMMddTDateTime));
        expect(dateyyyyMMddTFromUnits.toJson(),
            equals(yyyyMMddT.replaceAll('T', '')));
      });
    });
    group('yyyyMMddTZZ - 2012-01-31T$offset', () {
      final yyyyMMddTZZ = '2012-01-31T$offset';
      final yyyyMMddTZZDateTime = DateTime(2012, 1, 31);
      final dateyyyyMMddTZZFromString = FhirDateTime(yyyyMMddTZZ);
      final dateyyyyMMddTZZFromDateTime = FhirDateTime(
          yyyyMMddTZZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_ZZ);
      final dateyyyyMMddTZZFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          timeZoneOffset: stringToTimeZoneOffset(offset));

      test('dateyyyyMMddTZZFromString', () {
        expect(dateyyyyMMddTZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTZZFromString.valueString, equals(yyyyMMddTZZ));
        expect(dateyyyyMMddTZZFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromString.toJson(), equals(yyyyMMddTZZ));
      });
      test('dateyyyyMMddTZZFromDateTime', () {
        expect(dateyyyyMMddTZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZZFromDateTime.valueString, equals(yyyyMMddTZZ));
        expect(dateyyyyMMddTZZFromDateTime.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromDateTime.toJson(), equals(yyyyMMddTZZ));
      });
      test('dateyyyyMMddTZZFromUnits', () {
        expect(dateyyyyMMddTZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTZZFromUnits.valueString, equals(yyyyMMddTZZ));
        expect(dateyyyyMMddTZZFromUnits.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromUnits.toJson(), equals(yyyyMMddTZZ));
      });
    });
    group('yyyyMMddTHH - 2012-01-31T12', () {
      final yyyyMMddTHH = '2012-01-31T12';
      final yyyyMMddTHHDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHFromString = FhirDateTime(yyyyMMddTHH);
      final dateyyyyMMddTHHFromDateTime = FhirDateTime(
          yyyyMMddTHHDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH);
      final dateyyyyMMddTHHFromUnits =
          FhirDateTime.fromUnits(year: 2012, month: 1, day: 31, hour: 12);

      test('dateyyyyMMddTHHFromString', () {
        expect(dateyyyyMMddTHHFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHFromString.valueString, equals(yyyyMMddTHH));
        expect(dateyyyyMMddTHHFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromString.toJson(), equals(yyyyMMddTHH));
      });
      test('dateyyyyMMddTHHFromDateTime', () {
        expect(dateyyyyMMddTHHFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHFromDateTime.valueString, equals(yyyyMMddTHH));
        expect(dateyyyyMMddTHHFromDateTime.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromDateTime.toJson(), equals(yyyyMMddTHH));
      });
      test('dateyyyyMMddTHHFromUnits', () {
        expect(dateyyyyMMddTHHFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHFromUnits.valueString, equals(yyyyMMddTHH));
        expect(dateyyyyMMddTHHFromUnits.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromUnits.toJson(), equals(yyyyMMddTHH));
      });
    });
    group('dateyyyyMMddTHHZ - 2012-01-31T12Z', () {
      final yyyyMMddTHHZ = '2012-01-31T12Z';
      final yyyyMMddTHHZDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHZFromString = FhirDateTime(yyyyMMddTHHZ);
      final dateyyyyMMddTHHZFromDateTime = FhirDateTime(
          yyyyMMddTHHZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_Z);
      final dateyyyyMMddTHHZFromUnits = FhirDateTime.fromUnits(
          year: 2012, month: 1, day: 31, hour: 12, isUtc: true);

      test('dateyyyyMMddTHHZFromString', () {
        expect(dateyyyyMMddTHHZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromString.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromString.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromDateTime', () {
        expect(dateyyyyMMddTHHZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromDateTime.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromDateTime.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromUnits', () {
        expect(dateyyyyMMddTHHZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromUnits.valueString, equals(yyyyMMddTHHZ));
        expect(dateyyyyMMddTHHZFromUnits.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromUnits.toJson(), equals(yyyyMMddTHHZ));
      });
    });
    group('yyyyMMddTHHZZ - 2012-01-31T12$offset', () {
      final yyyyMMddTHHZZ = '2012-01-31T12$offset';
      final yyyyMMddTHHZZDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHZZFromString = FhirDateTime(yyyyMMddTHHZZ);
      final dateyyyyMMddTHHZZFromDateTime = FhirDateTime(
          yyyyMMddTHHZZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HHZZ);
      final dateyyyyMMddTHHZZFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          timeZoneOffset: stringToTimeZoneOffset(offset));

      test('dateyyyyMMddTHHZZFromString', () {
        expect(dateyyyyMMddTHHZZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromString.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromString.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromDateTime', () {
        expect(dateyyyyMMddTHHZZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHZZFromDateTime.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromDateTime.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromUnits', () {
        expect(dateyyyyMMddTHHZZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromUnits.valueString, equals(yyyyMMddTHHZZ));
        expect(dateyyyyMMddTHHZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromUnits.toJson(), equals(yyyyMMddTHHZZ));
      });
    });
    group('yyyyMMddTHHmm - 2012-01-31T12:30', () {
      final yyyyMMddTHHmm = '2012-01-31T12:30';
      final yyyyMMddTHHmmDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmFromString = FhirDateTime(yyyyMMddTHHmm);
      final dateyyyyMMddTHHmmFromDateTime = FhirDateTime(
          yyyyMMddTHHmmDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm);
      final dateyyyyMMddTHHmmFromUnits = FhirDateTime.fromUnits(
          year: 2012, month: 1, day: 31, hour: 12, minute: 30);

      test('dateyyyyMMddTHHmmFromString', () {
        expect(dateyyyyMMddTHHmmFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromString.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromString.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromDateTime', () {
        expect(dateyyyyMMddTHHmmFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmFromDateTime.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromDateTime.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromUnits', () {
        expect(dateyyyyMMddTHHmmFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromUnits.valueString, equals(yyyyMMddTHHmm));
        expect(dateyyyyMMddTHHmmFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromUnits.toJson(), equals(yyyyMMddTHHmm));
      });
    });
    group('dateyyyyMMddTHHmmZ - 2012-01-31T12:30Z', () {
      final yyyyMMddTHHmmZ = '2012-01-31T12:30Z';
      final yyyyMMddTHHmmZDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmZFromString = FhirDateTime(yyyyMMddTHHmmZ);
      final dateyyyyMMddTHHmmZFromDateTime = FhirDateTime(
          yyyyMMddTHHmmZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_Z);
      final dateyyyyMMddTHHmmZFromUnits = FhirDateTime.fromUnits(
          year: 2012, month: 1, day: 31, hour: 12, minute: 30, isUtc: true);

      test('dateyyyyMMddTHHmmZFromString', () {
        expect(dateyyyyMMddTHHmmZFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZFromString.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromString.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZFromDateTime.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromDateTime.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromUnits', () {
        expect(dateyyyyMMddTHHmmZFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromUnits.valueString, equals(yyyyMMddTHHmmZ));
        expect(dateyyyyMMddTHHmmZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromUnits.toJson(), equals(yyyyMMddTHHmmZ));
      });
    });
    group('dateyyyyMMddTHHmmZZ - 2012-01-31T12:30$offset', () {
      final yyyyMMddTHHmmZZ = '2012-01-31T12:30$offset';
      final yyyyMMddTHHmmZZDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmZZFromString = FhirDateTime(yyyyMMddTHHmmZZ);
      final dateyyyyMMddTHHmmZZFromDateTime = FhirDateTime(
          yyyyMMddTHHmmZZDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mmZZ);
      final dateyyyyMMddTHHmmZZFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          timeZoneOffset: stringToTimeZoneOffset(offset));

      test('dateyyyyMMddTHHmmZZFromString', () {
        expect(dateyyyyMMddTHHmmZZFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromString.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromString.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueString,
            equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(
            dateyyyyMMddTHHmmZZFromDateTime.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromUnits', () {
        expect(dateyyyyMMddTHHmmZZFromUnits.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmZZFromUnits.valueString, equals(yyyyMMddTHHmmZZ));
        expect(dateyyyyMMddTHHmmZZFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromUnits.toJson(), equals(yyyyMMddTHHmmZZ));
      });
    });
    group('dateyyyyMMddTHHmmss - 2012-01-31T12:30:59', () {
      final yyyyMMddTHHmmss = '2012-01-31T12:30:59';
      final yyyyMMddTHHmmssDateTime = DateTime(2012, 1, 31, 12, 30, 59);
      final dateyyyyMMddTHHmmssFromString = FhirDateTime(yyyyMMddTHHmmss);
      final dateyyyyMMddTHHmmssFromDateTime = FhirDateTime(
          yyyyMMddTHHmmssDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss);
      final dateyyyyMMddTHHmmssFromUnits = FhirDateTime.fromUnits(
          year: 2012, month: 1, day: 31, hour: 12, minute: 30, second: 59);

      test('dateyyyyMMddTHHmmssFromString', () {
        expect(dateyyyyMMddTHHmmssFromString.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromString.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromString.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromDateTime', () {
        expect(dateyyyyMMddTHHmmssFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromDateTime.valueString,
            equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(
            dateyyyyMMddTHHmmssFromDateTime.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromUnits', () {
        expect(dateyyyyMMddTHHmmssFromUnits.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssFromUnits.valueString, equals(yyyyMMddTHHmmss));
        expect(dateyyyyMMddTHHmmssFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromUnits.toJson(), equals(yyyyMMddTHHmmss));
      });
    });
    group('dateyyyyMMddTHHmmssZ - 2012-01-31T12:30:59Z', () {
      final yyyyMMddTHHmmssZ = '2012-01-31T12:30:59Z';
      final yyyyMMddTHHmmssZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
      final dateyyyyMMddTHHmmssZFromString = FhirDateTime(yyyyMMddTHHmmssZ);
      final dateyyyyMMddTHHmmssZFromDateTime = FhirDateTime(
          yyyyMMddTHHmmssZDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z);
      final dateyyyyMMddTHHmmssZFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          isUtc: true);

      test('dateyyyyMMddTHHmmssZFromString', () {
        expect(dateyyyyMMddTHHmmssZFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromString.valueString,
            equals(yyyyMMddTHHmmssZ));
        expect(dateyyyyMMddTHHmmssZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromString.toJson(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueString,
            equals(yyyyMMddTHHmmssZ));
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
      final dateyyyyMMddTHHmmssZZFromString = FhirDateTime(yyyyMMddTHHmmssZZ);
      final dateyyyyMMddTHHmmssZZFromDateTime = FhirDateTime(
          yyyyMMddTHHmmssZZDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ);
      final dateyyyyMMddTHHmmssZZFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          timeZoneOffset: stringToTimeZoneOffset(offset));

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
      final dateyyyyMMddTHHmmssSSSFromString = FhirDateTime(yyyyMMddTHHmmssSSS);
      final dateyyyyMMddTHHmmssSSSFromDateTime = FhirDateTime(
          yyyyMMddTHHmmssSSSDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS);
      final dateyyyyMMddTHHmmssSSSFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 1);
      test('dateyyyyMMddTHHmmssSSSFromString', () {
        expect(dateyyyyMMddTHHmmssSSSFromString.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromString.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromUnits', () {
        expect(dateyyyyMMddTHHmmssSSSFromUnits.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueString,
            equals(yyyyMMddTHHmmssSSS));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromUnits.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
    });
    group('yyyyMMddTHHmmssSSSZ - 2012-01-31T12:30:59.010Z', () {
      final yyyyMMddTHHmmssSSSZ = '2012-01-31T12:30:59.010Z';
      final yyyyMMddTHHmmssSSSZDateTime = DateTime(2012, 1, 31, 12, 30, 59, 10);
      final dateyyyyMMddTHHmmssSSSZFromString =
          FhirDateTime(yyyyMMddTHHmmssSSSZ);
      final dateyyyyMMddTHHmmssSSSZFromDateTime = FhirDateTime(
          yyyyMMddTHHmmssSSSZDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z);
      final dateyyyyMMddTHHmmssSSSZFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 10,
          isUtc: true);

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
          FhirDateTime(yyyyMMddTHHmmssSSSZZ);
      final dateyyyyMMddTHHmmssSSSZZFromDateTime = FhirDateTime(
          yyyyMMddTHHmmssSSSZZDateTime,
          FhirDateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ);
      final dateyyyyMMddTHHmmssSSSZZFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 100,
          timeZoneOffset: stringToTimeZoneOffset(offset));

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
      final dateInstantFromString = FhirDateTime(instant);
      final dateInstantFromDateTime =
          FhirDateTime(instantDateTime, FhirDateTimePrecision.instant);
      final dateInstantFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 111,
          timeZoneOffset: stringToTimeZoneOffset(offset));

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
      final dateDateTimeFromString = FhirDateTime(dateTime);
      final dateDateTimeFromDateTime =
          FhirDateTime(dateTimeDateTime, FhirDateTimePrecision.dateTime);
      final dateDateTimeFromUnits = FhirDateTime.fromUnits(
          year: 2012,
          month: 1,
          day: 31,
          hour: 12,
          minute: 30,
          second: 59,
          millisecond: 111,
          microsecond: 111,
          timeZoneOffset: stringToTimeZoneOffset(offset));

      test('dateDateTimeFromString', () {
        expect(dateDateTimeFromString.isValid, isTrue);
        expect(dateDateTimeFromString.valueString, equals(dateTime));
        expect(dateDateTimeFromString.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromString.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromDateTime', () {
        expect(dateDateTimeFromDateTime.isValid, isTrue);
        expect(dateDateTimeFromDateTime.valueString, equals(dateTime));
        expect(
            dateDateTimeFromDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromDateTime.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromUnits', () {
        expect(dateDateTimeFromUnits.isValid, isTrue);
        expect(dateDateTimeFromUnits.valueString, equals(dateTime));
        expect(dateDateTimeFromUnits.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromUnits.toJson(), equals(dateTime));
      });
    });
  });
}
