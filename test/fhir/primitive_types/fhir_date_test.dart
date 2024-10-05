// ignore_for_file: always_specify_types, prefer_const_declarations

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirDate Tests', () {
    test('Valid FhirDate String', () {
      final fhirDate = FhirDate('2023-12-31');
      expect(fhirDate.isValid, isTrue);
      expect(fhirDate.toString(), '2023-12-31');
      expect(fhirDate.year, 2023);
      expect(fhirDate.month, 12);
      expect(fhirDate.day, 31);
    });

    test('Invalid FhirDate String', () {
      final fhirDate = FhirDate('invalid_date');
      expect(fhirDate.isValid, isFalse);
      expect(fhirDate.value, DateTime(1));
      expect(fhirDate.year, 1);
      expect(fhirDate.month, 1);
      expect(fhirDate.day, 1);
    });

    test('FhirDate Comparison', () {
      final fhirDate1 = FhirDate('2023-12-31');
      final fhirDate2 = FhirDate('2022-11-15');
      final fhirDate3 = FhirDate('2023-12-31');

      expect(fhirDate1 == fhirDate2, isFalse);
      expect(fhirDate1 == fhirDate3, isTrue);
      expect(fhirDate1 < fhirDate2, isFalse);
      expect(fhirDate1 <= fhirDate2, isFalse);
      expect(fhirDate1 > fhirDate2, isTrue);
      expect(fhirDate1 >= fhirDate2, isTrue);
    });

    // Add more test cases as needed.
  });
}
