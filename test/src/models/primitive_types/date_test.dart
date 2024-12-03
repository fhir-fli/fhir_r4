import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

// ignore_for_file: always_specify_types

void main() {
  group('FhirDate', () {
    final offset =
        DateTime(2020).timeZoneOffset.inHours.toDouble().timeZoneOffsetToString;
    const yyyy = '2012';
    final yyyyDateTime = DateTime(2012);
    const yyyyMM = '2012-01';
    final yyyyMMDateTime = DateTime(2012);
    const yyyyMMdd = '2012-01-31';
    final yyyyMMddDateTime = DateTime(2012, 1, 31);
    final yyyyMMddOffset = '${yyyyMMdd}T$offset';

    test('yyyyFromString', () {
      final dateyyyyFromString = FhirDate.fromString(yyyy);
      expect(dateyyyyFromString.valueString, equals(yyyy));
      expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
      expect(dateyyyyFromString.toJson()['value'], equals(yyyy));
    });

    test('yyyyFromUnits', () {
      final dateyyyyFromString = FhirDate.fromUnits(year: 2012);
      expect(dateyyyyFromString.valueString, equals(yyyy));
      expect(dateyyyyFromString.valueDateTime, equals(yyyyDateTime));
      expect(dateyyyyFromString.toJson()['value'], equals(yyyy));
    });

    test('yyyyMMFromstring', () {
      final dateyyyyMMFromString = FhirDate.fromString(yyyyMM);
      expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
      expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
      expect(dateyyyyMMFromString.toJson()['value'], equals(yyyyMM));
    });

    test('yyyyMMFromUnits', () {
      final dateyyyyMMFromString = FhirDate.fromUnits(year: 2012, month: 1);
      expect(dateyyyyMMFromString.valueString, equals(yyyyMM));
      expect(dateyyyyMMFromString.valueDateTime, equals(yyyyMMDateTime));
      expect(dateyyyyMMFromString.toJson()['value'], equals(yyyyMM));
    });

    test('yyyyMMddFromString', () {
      final dateyyyyMMddFromString = FhirDate.fromString(yyyyMMdd);
      expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
      expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
      expect(dateyyyyMMddFromString.toJson()['value'], equals(yyyyMMdd));
    });

    test('yyyyMMddFromUnits', () {
      final dateyyyyMMddFromString =
          FhirDate.fromUnits(year: 2012, month: 1, day: 31);
      expect(dateyyyyMMddFromString.valueString, equals(yyyyMMdd));
      expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
      expect(dateyyyyMMddFromString.toJson()['value'], equals(yyyyMMdd));
    });

    test('yyyyMMddFromString with Offset', () {
      final dateyyyyMMddFromString = FhirDate.fromString(yyyyMMddOffset);
      expect(dateyyyyMMddFromString.valueString, equals(yyyyMMddOffset));
      expect(dateyyyyMMddFromString.valueDateTime, equals(yyyyMMddDateTime));
      expect(dateyyyyMMddFromString.toJson()['value'], equals(yyyyMMddOffset));
    });

    final invalidDateString = 'invalid-date$offset';

    test('Invalid FhirDate from string with Offset', () {
      expect(
        () => FhirDate.fromString(invalidDateString),
        throwsA(isA<ArgumentError>()),
      );
    });

    const leapYearDate = '2020-02-29';
    final leapYearDateWithOffset = '${leapYearDate}T$offset';
    final leapYearDateTime = DateTime.parse('2020-02-29T00:00:00$offset');

    test('Leap Year Date from String with Offset', () {
      final leapYearFromString = FhirDate.fromString(leapYearDateWithOffset);
      expect(leapYearFromString.valueString, equals(leapYearDateWithOffset));
      expect(
        leapYearFromString.valueDateTime,
        equals(leapYearDateTime.toLocal()),
      );
      expect(
        leapYearFromString.toJson()['value'],
        equals(leapYearDateWithOffset),
      );
    });

    test('Valid FhirDate String', () {
      final fhirDate = FhirDate.fromString('2023-12-31');

      expect(fhirDate.toString(), '2023-12-31');
      expect(fhirDate.year, 2023);
      expect(fhirDate.month, 12);
      expect(fhirDate.day, 31);
    });

    test('Invalid FhirDate String', () {
      expect(
        () => FhirDate.fromString('invalid_date'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('FhirDate Comparison', () {
      final fhirDate1 = FhirDate.fromString('2023-12-31');
      final fhirDate2 = FhirDate.fromString('2022-11-15');
      final fhirDate3 = FhirDate.fromString('2023-12-31');

      expect(fhirDate1 == fhirDate2, isFalse);
      expect(fhirDate1 == fhirDate3, isTrue);
      expect(fhirDate1 < fhirDate2, isFalse);
      expect(fhirDate1 <= fhirDate2, isFalse);
      expect(fhirDate1 > fhirDate2, isTrue);
      expect(fhirDate1 >= fhirDate2, isTrue);
    });
  });
}
