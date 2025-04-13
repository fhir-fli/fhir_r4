import 'package:cql/engine/engine.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void includesTest() {
  group('includes', () {
    test('define "IncludesIsTrue": Interval[-1, 5] includes Interval[0, 5]',
        () {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(5),
      );
      final right = LiteralIntegerInterval(
        low: LiteralInteger(0),
        high: LiteralInteger(5),
      );
      final includes = Includes(operand: [left, right]);
      final result = includes.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test('define "IncludesIsFalse": Interval[-1, 5] includes 6', () {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(5),
      );
      final right = LiteralInteger(6);
      final includes = Includes(operand: [left, right]);
      final result = includes.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test('define "IncludesIsNull": Interval[-1, 5] includes null', () {
      final left = LiteralIntegerInterval(
        low: LiteralInteger(-1),
        high: LiteralInteger(5),
      );
      final right = LiteralNull();
      final includes = Includes(operand: [left, right]);
      final result = includes.execute({});
      expect(result, isNull);
    });
    test('define "IncludesIsTrue": { 1, 3, 5, 7 } includes 5', () {
      final left = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(5),
        LiteralInteger(7),
      ]);
      final right = LiteralInteger(5);
      final includes = Includes(operand: [left, right]);
      final result = includes.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test('define "IncludesIsNull": { 1, 3, 5, null } includes null', () {
      final left = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(5),
        LiteralNull(),
      ]);
      final right = LiteralNull();
      final includes = Includes(operand: [left, right]);
      final result = includes.execute({});
      expect(result, isNull);
    });
    test('define "IncludesIsFalse": { 1, 3 } includes { 1, 3, 5 }', () {
      final left = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
      ]);
      final right = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(5),
      ]);
      final includes = Includes(operand: [left, right]);
      final result = includes.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test('define "IncludesIsAlsoNull": null includes { 1, 3, 5 }', () {
      final left = LiteralNull();
      final right = ListExpression(element: [
        LiteralInteger(1),
        LiteralInteger(3),
        LiteralInteger(5),
      ]);
      final includes = Includes(operand: [left, right]);
      final result = includes.execute({});
      expect(result, isNull);
    });
  });
}
