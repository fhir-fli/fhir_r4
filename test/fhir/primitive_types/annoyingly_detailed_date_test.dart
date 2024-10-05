// ignore_for_file: always_specify_types

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  final offset =
      timeZoneOffsetToString(DateTime(2020).timeZoneOffset.inHours.toDouble());
  const yyyyMMdd = '2012-01-31';
  final yyyyMMddDateTime = DateTime(2012, 1, 31);
  group('FhirDate Tests', () {
    const yyyy = '2012';
    final yyyyDateTime = DateTime(2012);
    group('yyyy - 2012', () {
      final dateyyyyFromString = FhirDate(yyyy);
      test('dateyyyyFromString', () {
        expect(dateyyyyFromString.isValid, isTrue);
        expect(dateyyyyFromString.valueString, equals(yyyy));
        expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromString.toJson(), equals(yyyy));
      });
      final dateyyyyFromDateTime =
          FhirDate(yyyyDateTime, FhirDateTimePrecision.yyyy);
      test('dateyyyyFromDateTime', () {
        expect(dateyyyyFromDateTime.isValid, isTrue);
        expect(dateyyyyFromDateTime.valueString, equals(yyyy));
        expect(dateyyyyFromDateTime.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromDateTime.toJson(), equals(yyyy));
      });

      final dateyyyyFromUnits = FhirDate.fromUnits(year: 2012);

      test('dateyyyyFromUnits', () {
        expect(dateyyyyFromUnits.isValid, isTrue);
        expect(dateyyyyFromUnits.valueString, equals(yyyy));
        expect(dateyyyyFromUnits.valueDateTime, equals(yyyyDateTime));
        expect(dateyyyyFromUnits.toJson(), equals(yyyy));
      });
    });
    group('yyyyMM - 2012-01', () {
      const yyyyMM = '2012-01';
      final yyyyMMDateTime = DateTime(2012);
      final dateyyyyMMFromString = FhirDate(yyyyMM);
      test('dateyyyyMMFromString', () {
        expect(dateyyyyMMFromString.isValid, isTrue);
        expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromString.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromDateTime =
          FhirDate(yyyyMMDateTime, FhirDateTimePrecision.yyyy_MM);
      test('dateyyyyMMFromDateTime', () {
        expect(dateyyyyMMFromDateTime.isValid, isTrue);
        expect(dateyyyyMMFromDateTime.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromDateTime.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromDateTime.toJson(), equals(yyyyMM));
      });
      final dateyyyyMMFromUnits = FhirDate.fromUnits(year: 2012, month: 1);
      test('dateyyyyMMFromUnits', () {
        expect(dateyyyyMMFromUnits.isValid, isTrue);
        expect(dateyyyyMMFromUnits.valueString, equals(yyyyMM));
        expect(dateyyyyMMFromUnits.valueDateTime, equals(yyyyMMDateTime));
        expect(dateyyyyMMFromUnits.toJson(), equals(yyyyMM));
      });
    });
    group('yyyyMMdd - 2012-01-31', () {
      final dateyyyyMMddFromString = FhirDate(yyyyMMdd);
      test('dateyyyyMMddFromString', () {
        expect(dateyyyyMMddFromString.isValid, isTrue);
        expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromString.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromDateTime =
          FhirDate(yyyyMMddDateTime, FhirDateTimePrecision.yyyy_MM_dd);
      test('dateyyyyMMddFromDateTime', () {
        expect(dateyyyyMMddFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddFromDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddFromDateTime.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromDateTime.toJson(), equals(yyyyMMdd));
      });
      final dateyyyyMMddFromUnits =
          FhirDate.fromUnits(year: 2012, month: 1, day: 31);
      test('dateyyyyMMddFromUnits', () {
        expect(dateyyyyMMddFromUnits.isValid, isTrue);
        expect(dateyyyyMMddFromUnits.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddFromUnits.valueDateTime, equals(yyyyMMddDateTime));
        expect(dateyyyyMMddFromUnits.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddT - 2012-01-31T', () {
      const yyyyMMddT = '2012-01-31T';
      final yyyyMMddTDateTime = DateTime(2012, 1, 31);
      final dateyyyyMMddTFromString = FhirDate(yyyyMMddT);
      final dateyyyyMMddTFromDateTime =
          FhirDate(yyyyMMddTDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTFromString', () {
        expect(dateyyyyMMddTFromString.isValid, isFalse);
        expect(dateyyyyMMddTFromString.valueString,
            equals(yyyyMMddT.replaceAll('T', '')));
        expect(
            dateyyyyMMddTFromString.valueDateTime, equals(yyyyMMddTDateTime));
        expect(dateyyyyMMddTFromString.toJson(), equals(yyyyMMddT));
      });
      test('dateyyyyMMddTFromDateTime', () {
        expect(dateyyyyMMddTFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTFromDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateyyyyMMddTFromDateTime.valueDateTime, equals(yyyyMMddTDateTime));
        expect(dateyyyyMMddTFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTZZ - 2012-01-31T$offset', () {
      final yyyyMMddTZZ = '2012-01-31T$offset';
      final yyyyMMddTZZDateTime = DateTime(2012, 1, 31);
      final dateyyyyMMddTZZFromString = FhirDate(yyyyMMddTZZ);
      final dateyyyyMMddTZZFromDateTime =
          FhirDate(yyyyMMddTZZDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTZZFromString', () {
        expect(dateyyyyMMddTZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromString.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromString.toJson(), equals(yyyyMMddTZZ));
      });
      test('dateyyyyMMddTZZFromDateTime', () {
        expect(dateyyyyMMddTZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTZZFromDateTime.valueDateTime,
            equals(yyyyMMddTZZDateTime));
        expect(dateyyyyMMddTZZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHH - 2012-01-31T12', () {
      const yyyyMMddTHH = '2012-01-31T12';
      final yyyyMMddTHHDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHFromString = FhirDate(yyyyMMddTHH);
      final dateyyyyMMddTHHFromDateTime =
          FhirDate(yyyyMMddTHHDateTime, FhirDateTimePrecision.yyyy_MM_dd_T_HH);

      test('dateyyyyMMddTHHFromString', () {
        expect(dateyyyyMMddTHHFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromString.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromString.toJson(), equals(yyyyMMddTHH));
      });
      test('dateyyyyMMddTHHFromDateTime', () {
        expect(dateyyyyMMddTHHFromDateTime.isValid, isFalse);
        expect(dateyyyyMMddTHHFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHFromDateTime.valueDateTime,
            equals(yyyyMMddTHHDateTime));
        expect(dateyyyyMMddTHHFromDateTime.toJson(), equals(yyyyMMddTHH));
      });
    });
    group('dateyyyyMMddTHHZ - 2012-01-31T12Z', () {
      const yyyyMMddTHHZ = '2012-01-31T12Z';
      final yyyyMMddTHHZDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHZFromString = FhirDate(yyyyMMddTHHZ);
      final dateyyyyMMddTHHZFromDateTime =
          FhirDate(yyyyMMddTHHZDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTHHZFromString', () {
        expect(dateyyyyMMddTHHZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromString.valueDateTime,
            equals(yyyyMMddTHHZDateTime));
        expect(dateyyyyMMddTHHZFromString.toJson(), equals(yyyyMMddTHHZ));
      });
      test('dateyyyyMMddTHHZFromDateTime', () {
        expect(dateyyyyMMddTHHZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHHZZ - 2012-01-31T12$offset', () {
      final yyyyMMddTHHZZ = '2012-01-31T12$offset';
      final yyyyMMddTHHZZDateTime = DateTime(2012, 1, 31, 12);
      final dateyyyyMMddTHHZZFromString = FhirDate(yyyyMMddTHHZZ);
      final dateyyyyMMddTHHZZFromDateTime =
          FhirDate(yyyyMMddTHHZZDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTHHZZFromString', () {
        expect(dateyyyyMMddTHHZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromString.valueDateTime,
            equals(yyyyMMddTHHZZDateTime));
        expect(dateyyyyMMddTHHZZFromString.toJson(), equals(yyyyMMddTHHZZ));
      });
      test('dateyyyyMMddTHHZZFromDateTime', () {
        expect(dateyyyyMMddTHHZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHZZFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHZZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHHmm - 2012-01-31T12:30', () {
      const yyyyMMddTHHmm = '2012-01-31T12:30';
      final yyyyMMddTHHmmDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmFromString = FhirDate(yyyyMMddTHHmm);
      final dateyyyyMMddTHHmmFromDateTime =
          FhirDate(yyyyMMddTHHmmDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTHHmmFromString', () {
        expect(dateyyyyMMddTHHmmFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromString.valueDateTime,
            equals(yyyyMMddTHHmmDateTime));
        expect(dateyyyyMMddTHHmmFromString.toJson(), equals(yyyyMMddTHHmm));
      });
      test('dateyyyyMMddTHHmmFromDateTime', () {
        expect(dateyyyyMMddTHHmmFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('dateyyyyMMddTHHmmZ - 2012-01-31T12:30Z', () {
      const yyyyMMddTHHmmZ = '2012-01-31T12:30Z';
      final yyyyMMddTHHmmZDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmZFromString = FhirDate(yyyyMMddTHHmmZ);
      final dateyyyyMMddTHHmmZFromDateTime =
          FhirDate(yyyyMMddTHHmmZDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTHHmmZFromString', () {
        expect(dateyyyyMMddTHHmmZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZDateTime));
        expect(dateyyyyMMddTHHmmZFromString.toJson(), equals(yyyyMMddTHHmmZ));
      });
      test('dateyyyyMMddTHHmmZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('dateyyyyMMddTHHmmZZ - 2012-01-31T12:30$offset', () {
      final yyyyMMddTHHmmZZ = '2012-01-31T12:30$offset';
      final yyyyMMddTHHmmZZDateTime = DateTime(2012, 1, 31, 12, 30);
      final dateyyyyMMddTHHmmZZFromString = FhirDate(yyyyMMddTHHmmZZ);
      final dateyyyyMMddTHHmmZZFromDateTime =
          FhirDate(yyyyMMddTHHmmZZDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTHHmmZZFromString', () {
        expect(dateyyyyMMddTHHmmZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmZZDateTime));
        expect(dateyyyyMMddTHHmmZZFromString.toJson(), equals(yyyyMMddTHHmmZZ));
      });
      test('dateyyyyMMddTHHmmZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmZZFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmZZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('dateyyyyMMddTHHmmss - 2012-01-31T12:30:59', () {
      const yyyyMMddTHHmmss = '2012-01-31T12:30:59';
      final yyyyMMddTHHmmssDateTime = DateTime(2012, 1, 31, 12, 30, 59);
      final dateyyyyMMddTHHmmssFromString = FhirDate(yyyyMMddTHHmmss);
      final dateyyyyMMddTHHmmssFromDateTime =
          FhirDate(yyyyMMddTHHmmssDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTHHmmssFromString', () {
        expect(dateyyyyMMddTHHmmssFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromString.valueDateTime,
            equals(yyyyMMddTHHmmssDateTime));
        expect(dateyyyyMMddTHHmmssFromString.toJson(), equals(yyyyMMddTHHmmss));
      });
      test('dateyyyyMMddTHHmmssFromDateTime', () {
        expect(dateyyyyMMddTHHmmssFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('dateyyyyMMddTHHmmssZ - 2012-01-31T12:30:59Z', () {
      const yyyyMMddTHHmmssZ = '2012-01-31T12:30:59Z';
      final yyyyMMddTHHmmssZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
      final dateyyyyMMddTHHmmssZFromString = FhirDate(yyyyMMddTHHmmssZ);
      final dateyyyyMMddTHHmmssZFromDateTime =
          FhirDate(yyyyMMddTHHmmssZDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTHHmmssZFromString', () {
        expect(dateyyyyMMddTHHmmssZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZDateTime));
        expect(
            dateyyyyMMddTHHmmssZFromString.toJson(), equals(yyyyMMddTHHmmssZ));
      });
      test('dateyyyyMMddTHHmmssZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHHmmssZZ - 2012-01-31T12:30:59$offset', () {
      final yyyyMMddTHHmmssZZ = '2012-01-31T12:30:59$offset';
      final yyyyMMddTHHmmssZZDateTime = DateTime(2012, 1, 31, 12, 30, 59);
      final dateyyyyMMddTHHmmssZZFromString = FhirDate(yyyyMMddTHHmmssZZ);
      final dateyyyyMMddTHHmmssZZFromDateTime =
          FhirDate(yyyyMMddTHHmmssZZDateTime, FhirDateTimePrecision.yyyy_MM_dd);

      test('dateyyyyMMddTHHmmssZZFromString', () {
        expect(dateyyyyMMddTHHmmssZZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssZZDateTime));
        expect(dateyyyyMMddTHHmmssZZFromString.toJson(),
            equals(yyyyMMddTHHmmssZZ));
      });
      test('dateyyyyMMddTHHmmssZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssZZFromDateTime.isValid, isTrue);
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssZZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHHmmssSSS - 2012-01-31T12:30:59.001', () {
      const yyyyMMddTHHmmssSSS = '2012-01-31T12:30:59.001';
      final yyyyMMddTHHmmssSSSDateTime = DateTime(2012, 1, 31, 12, 30, 59, 1);
      final dateyyyyMMddTHHmmssSSSFromString = FhirDate(yyyyMMddTHHmmssSSS);
      final dateyyyyMMddTHHmmssSSSFromDateTime = FhirDate(
          yyyyMMddTHHmmssSSSDateTime, FhirDateTimePrecision.yyyy_MM_dd);
      test('dateyyyyMMddTHHmmssSSSFromString', () {
        expect(dateyyyyMMddTHHmmssSSSFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssSSSFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromString.toJson(),
            equals(yyyyMMddTHHmmssSSS));
      });
      test('dateyyyyMMddTHHmmssSSSFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssSSSFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHHmmssSSSZ - 2012-01-31T12:30:59.010Z', () {
      const yyyyMMddTHHmmssSSSZ = '2012-01-31T12:30:59.010Z';
      final yyyyMMddTHHmmssSSSZDateTime = DateTime(2012, 1, 31, 12, 30, 59, 10);
      final dateyyyyMMddTHHmmssSSSZFromString = FhirDate(yyyyMMddTHHmmssSSSZ);
      final dateyyyyMMddTHHmmssSSSZFromDateTime =
          FhirDate(yyyyMMddTHHmmssSSSZDateTime);

      test('dateyyyyMMddTHHmmssSSSZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZFromString.isValid, isFalse);
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZ));
      });
      test('dateyyyyMMddTHHmmssSSSZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssSSSZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('yyyyMMddTHHmmssSSSZZ - 2012-01-31T12:30:59.100$offset', () {
      final yyyyMMddTHHmmssSSSZZ = '2012-01-31T12:30:59.100$offset';
      final yyyyMMddTHHmmssSSSZZDateTime =
          DateTime(2012, 1, 31, 12, 30, 59, 100);
      final dateyyyyMMddTHHmmssSSSZZFromString = FhirDate(yyyyMMddTHHmmssSSSZZ);
      final dateyyyyMMddTHHmmssSSSZZFromDateTime =
          FhirDate(yyyyMMddTHHmmssSSSZZDateTime);

      test('dateyyyyMMddTHHmmssSSSZZFromString', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromString.isValid, isFalse);
        expect(
            dateyyyyMMddTHHmmssSSSZZFromString.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.valueDateTime,
            equals(yyyyMMddTHHmmssSSSZZDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromString.toJson(),
            equals(yyyyMMddTHHmmssSSSZZ));
      });
      test('dateyyyyMMddTHHmmssSSSZZFromDateTime', () {
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.isValid, isTrue);
        expect(
            dateyyyyMMddTHHmmssSSSZZFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.valueDateTime,
            equals(yyyyMMddDateTime));
        expect(dateyyyyMMddTHHmmssSSSZZFromDateTime.toJson(), equals(yyyyMMdd));
      });
    });
    group('dateInstant - 2012-01-31T12:30:59.111$offset', () {
      final instant = '2012-01-31T12:30:59.111$offset';
      final instantDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111);
      final dateInstantFromString = FhirDate(instant);
      final dateInstantFromDateTime =
          FhirDate(instantDateTime, FhirDateTimePrecision.instant);

      test('dateInstantFromString', () {
        expect(dateInstantFromString.isValid, isFalse);
        expect(dateInstantFromString.valueString, equals(yyyyMMdd));
        expect(dateInstantFromString.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromString.toJson(), equals(instant));
      });
      test('dateInstantFromDateTime', () {
        expect(dateInstantFromDateTime.isValid, isFalse);
        expect(dateInstantFromDateTime.valueString, equals(yyyyMMdd));
        expect(dateInstantFromDateTime.valueDateTime, equals(instantDateTime));
        expect(dateInstantFromDateTime.toJson(), equals(instant));
      });
    });
    group('DateTime - 2012-01-31T12:30:59.111111$offset', () {
      final dateTime = '2012-01-31T12:30:59.111111$offset';
      final dateTimeDateTime = DateTime(2012, 1, 31, 12, 30, 59, 111, 111);
      final dateDateTimeFromString = FhirDate(dateTime);
      final dateDateTimeFromDateTime =
          FhirDate(dateTimeDateTime, FhirDateTimePrecision.dateTime);

      test('dateDateTimeFromString', () {
        expect(dateDateTimeFromString.isValid, isFalse);
        expect(dateDateTimeFromString.valueString, equals(yyyyMMdd));
        expect(dateDateTimeFromString.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromString.toJson(), equals(dateTime));
      });
      test('dateDateTimeFromDateTime', () {
        expect(dateDateTimeFromDateTime.isValid, isFalse);
        expect(dateDateTimeFromDateTime.valueString, equals(yyyyMMdd));
        expect(
            dateDateTimeFromDateTime.valueDateTime, equals(dateTimeDateTime));
        expect(dateDateTimeFromDateTime.toJson(), equals(dateTime));
      });
    });
  });
}
