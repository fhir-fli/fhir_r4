import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void exceptTest() {
  group('except', () {
    test(
        'define "Except": Interval[0, 5] except Interval[3, 7] // Interval[0, 2]',
        () {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(5),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(3),
        high: LiteralInteger(7),
      );
      final except = Except(operand: [left, right]);
      final result = except.execute({});
      expect(result,
          equals(CqlInterval(low: FhirInteger(0), high: FhirInteger(2))));
    });
    test('define "ExceptIsNull": null except Interval[-1, 7]', () {
      final left = LiteralNull();
      final right = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(7),
      );
      final except = Except(operand: [left, right]);
      final result = except.execute({});
      expect(result, equals(null));
    });
    test('define "Except": { 1, 3, 5, 7 } except { 1, 3 } // { 5, 7 }', () {
      final left = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(5),
        LiteralInteger(7),
      ]);
      final right = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
      ]);
      final except = Except(operand: [left, right]);
      final result = except.execute({});
      expect(
          result,
          equals([
            FhirInteger(5),
            FhirInteger(7),
          ]));
    });
    test('define "ExceptLeft": { 1, 3, 5, 7 } except null // { 1, 3, 5, 7 }',
        () {
      final left = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(5),
        LiteralInteger(7),
      ]);
      final right = LiteralNull();
      final except = Except(operand: [left, right]);
      final result = except.execute({});
      expect(
          result,
          equals([
            FhirInteger(1),
            FhirInteger(3),
            FhirInteger(5),
            FhirInteger(7),
          ]));
    });
    test(
        'define "ExceptWithNull": { 1, 3, 5, 7, null } except { 1, 3, null } // { 5, 7 }',
        () {
      final left = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(5),
        LiteralInteger(7),
        LiteralNull(),
      ]);
      final right = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralNull(),
      ]);
      final except = Except(operand: [left, right]);
      final result = except.execute({});
      expect(
          result,
          equals([
            FhirInteger(5),
            FhirInteger(7),
          ]));
    });
    test('define "ExceptIsNull": null except { 1, 3, 5 }', () {
      final left = LiteralNull();
      final right = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(5),
      ]);
      final except = Except(operand: [left, right]);
      final result = except.execute({});
      expect(result, equals(null));
    });
  });
}
