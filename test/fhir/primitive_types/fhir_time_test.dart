// ignore_for_file: always_specify_types, prefer_const_declarations

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FhirTime Tests', () {
    test('Valid FhirTime String', () {
      final fhirTime = FhirTime('08:30:00.123');
      expect(fhirTime.isValid, isTrue);
      expect(fhirTime.value, '08:30:00.123');
      expect(fhirTime.hour, 8);
      expect(fhirTime.minute, 30);
      expect(fhirTime.second, 0);
      expect(fhirTime.millisecond, 123);
    });

    test('Invalid FhirTime String', () {
      final fhirTime = FhirTime('invalid_time');
      expect(fhirTime.isValid, isFalse);
      expect(fhirTime.value, isNull);
      expect(fhirTime.hour, isNull);
      expect(fhirTime.minute, isNull);
      expect(fhirTime.second, isNull);
      expect(fhirTime.millisecond, isNull);
    });

    test('FhirTime Comparison', () {
      final fhirTime1 = FhirTime('12:30:00');
      final fhirTime2 = FhirTime('10:45:00');
      final fhirTime3 = FhirTime('12:30:00');

      expect(fhirTime1 == fhirTime2, isFalse);
      expect(fhirTime1 == fhirTime3, isTrue);
      expect(fhirTime1 < fhirTime2, isFalse);
      expect(fhirTime1 <= fhirTime2, isFalse);
      expect(fhirTime1 > fhirTime2, isTrue);
      expect(fhirTime1 >= fhirTime2, isTrue);
    });

    // Add more test cases as needed.
  });
}
