import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void takeTest() {
  test('define "Take2": Take({ 1, 2, 3, 4 }, 2) // { 1, 2 }', () {
    final list = ListExpression(element: [
      LiteralInteger(1),
      LiteralInteger(2),
      LiteralInteger(3),
      LiteralInteger(4),
    ]);
    final take = Slice(
        source: list,
        startIndex: LiteralInteger(0),
        endIndex: LiteralInteger(2));

    final result = take.execute({});
    expect(result, equals([FhirInteger(1), FhirInteger(2)]));
  });
  test('define "TakeTooMany": Take({ 1, 2 }, 3) // { 1, 2 }', () {
    final list = ListExpression(element: [
      LiteralInteger(1),
      LiteralInteger(2),
    ]);
    final take = Slice(
        source: list,
        startIndex: LiteralInteger(0),
        endIndex: LiteralInteger(3));
    final result = take.execute({});
    expect(result, equals([FhirInteger(1), FhirInteger(2)]));
  });
  test('define "TakeEmpty": Take({ 1, 2, 3, 4 }, null) // { }', () {
    final list = ListExpression(element: [
      LiteralInteger(1),
      LiteralInteger(2),
      LiteralInteger(3),
      LiteralInteger(4),
    ]);

    final take = Slice(
      source: list,
      startIndex: LiteralInteger(0),
      endIndex: LiteralNull(),
    );
    final result = take.execute({});
    expect(result, equals([]));
  });
  test('define "TakeIsNull": Take(null, 2)', () {
    final take = Slice(
        source: LiteralNull(),
        startIndex: LiteralInteger(0),
        endIndex: LiteralInteger(2));
    final result = take.execute({});
    expect(result, equals(null));
  });
}
