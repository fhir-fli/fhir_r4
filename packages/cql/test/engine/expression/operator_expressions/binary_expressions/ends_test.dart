import 'package:cql/engine/engine.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void endsTest() {
  group('ends', () {
    test('define "EndsIsTrue": Interval[0, 5] ends Interval[-1, 5]', () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(0), high: LiteralInteger(5));
      final right = LiteralIntegerInterval(
          low: LiteralInteger(-1), high: LiteralInteger(5));
      final ends = Ends(operand: [left, right]);
      final result = ends.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test('define "EndsIsFalse": Interval[-1, 7] ends Interval[0, 7]', () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(-1), high: LiteralInteger(7));
      final right = LiteralIntegerInterval(
          low: LiteralInteger(0), high: LiteralInteger(7));
      final ends = Ends(operand: [left, right]);
      final result = ends.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test('define "EndsIsNull": Interval[1, 5] ends null', () {
      final left = LiteralIntegerInterval(
          low: LiteralInteger(1), high: LiteralInteger(5));
      final ends = Ends(operand: [left, LiteralNull()]);
      final result = ends.execute({});
      expect(result, equals(null));
    });
  });
}
