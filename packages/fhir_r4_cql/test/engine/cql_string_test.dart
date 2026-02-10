import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

void main() {
  group('combine', () {
    test("""define "CombineList": Combine({ 'A', 'B', 'C' }) // 'ABC'""",
        () async {
      final list = ListExpression(element: [
        LiteralString('A'),
        LiteralString('B'),
        LiteralString('C')
      ]);
      final combine = Combine(source: list);
      final result = await combine.execute({});
      expect(result, 'ABC');
    });
    test(
        """define "CombineWithSeparator": Combine({ 'A', 'B', 'C' }, ' ') // 'A B C'""",
        () async {
      final list = ListExpression(element: [
        LiteralString('A'),
        LiteralString('B'),
        LiteralString('C')
      ]);
      final combine = Combine(source: list, separator: LiteralString(' '));
      final result = await combine.execute({});
      expect(result, 'A B C');
    });
    test(
        """define "CombineWithNulls": Combine({ 'A', 'B', 'C', null }) // 'ABC'""",
        () async {
      final list = ListExpression(element: [
        LiteralString('A'),
        LiteralString('B'),
        LiteralString('C'),
        LiteralNull()
      ]);
      final combine = Combine(source: list);
      final result = await combine.execute({});
      expect(result, 'ABC');
    });
  });

  group('split', () {
    test("""define "SplitFound": Split('A B C', ' ') // { 'A', 'B', 'C' }""",
        () async {
      final string = LiteralString('A B C');
      final separator = LiteralString(' ');
      final split = Split(stringToSplit: string, separator: separator);
      final result = await split.execute({});
      expect(result, ['A', 'B', 'C']);
    });
    test("""define "SplitNotFound": Split('A B C', ',') // { 'A B C' }""",
        () async {
      final string = LiteralString('A B C');
      final separator = LiteralString(',');
      final split = Split(stringToSplit: string, separator: separator);
      final result = await split.execute({});
      expect(result, ['A B C']);
    });
    test("""define "SplitIsNull": Split(null, ' ') // null""", () async {
      final string = LiteralNull();
      final separator = LiteralString(' ');
      final split = Split(stringToSplit: string, separator: separator);
      final result = await split.execute({});
      expect(result, null);
    });
  });

  group('indexof', () {
    test('define "IndexOfFound": IndexOf({ 1, 3, 5, 7 }, 5) // 2', () async {
      final indexof = IndexOf(
        source: ListExpression(element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7)
        ]),
        element: LiteralInteger(5),
      );
      final result = await indexof.execute({});
      expect(result, FhirInteger(2));
    });
    test('define "IndexOfNotFound": IndexOf({ 1, 3, 5, 7 }, 4) // -1',
        () async {
      final indexof = IndexOf(
        source: ListExpression(element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7)
        ]),
        element: LiteralInteger(4),
      );
      final result = await indexof.execute({});
      expect(result, FhirInteger(-1));
    });
    test('define "IndexOfIsNull": IndexOf(null, 4)', () async {
      final indexof =
          IndexOf(source: LiteralNull(), element: LiteralInteger(4));
      final result = await indexof.execute({});
      expect(result, isNull);
    });
  });

  group('PositionOf', () {
    test("""define "PositionOfFound": PositionOf('B', 'ABCDEDCBA') // 1""",
        () async {
      final pattern = LiteralString('B');
      final argument = LiteralString('ABCDEDCBA');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(await positionOf.execute({}), equals(FhirInteger(1)));
    });
    test("""define "PositionOfNotFound": PositionOf('Z', 'ABCDE') // -1""",
        () async {
      final pattern = LiteralString('Z');
      final argument = LiteralString('ABCDE');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(await positionOf.execute({}), equals(FhirInteger(-1)));
    });
    test("""define "PositionOfIsNull": PositionOf(null, 'ABCDE') // null""",
        () async {
      final pattern = LiteralNull();
      final argument = LiteralString('ABCDE');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(await positionOf.execute({}), equals(null));
    });
  });

  group('LastPositionOf', () {
    test(
        """define "LastPositionOfFound": LastPositionOf('B', 'ABCDEDCBA') // 7""",
        () async {
      final pattern = LiteralString('B');
      final argument = LiteralString('ABCDEDCBA');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(await lastPositionOf.execute({}), equals(FhirInteger(7)));
    });
    test(
        """define "LastPositionOfNotFound": LastPositionOf('XYZ', 'ABCDE') // -1""",
        () async {
      final pattern = LiteralString('XYZ');
      final argument = LiteralString('ABCDE');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(await lastPositionOf.execute({}), equals(FhirInteger(-1)));
    });
    test(
        """define "LastPositionOfIsNull": LastPositionOf(null, 'ABCDE') // null""",
        () async {
      final pattern = LiteralNull();
      final argument = LiteralString('ABCDE');
      final lastPositionOf = LastPositionOf(pattern: pattern, string: argument);
      expect(await lastPositionOf.execute({}), equals(null));
    });
  });

  group('ReplaceMatches', () {
    test(
        """define "ReplaceMatchesFound": ReplaceMatches('ABCDE', 'C', 'XYZ') // 'ABXYZDE'""",
        () async {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('C');
      final substitution = LiteralString('XYZ');
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesFound');
      expect(await result.execute({}), 'ABXYZDE');
    });
    test(
        """define "ReplaceMatchesNotFound": ReplaceMatches('ABCDE', 'XYZ', '123') // 'ABCDE'""",
        () async {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('XYZ');
      final substitution = LiteralString('123');
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesNotFound');
      expect(await result.execute({}), 'ABCDE');
    });
    test(
        """define "ReplaceMatchesIsNull": ReplaceMatches('ABCDE', 'C', null) // null""",
        () async {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('C');
      final substitution = LiteralNull();
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesIsNull');
      expect(await result.execute({}), null);
    });
  });

  group('StartsWith', () {
    test("""define "StartsWithIsTrue": StartsWith('ABCDE', 'ABC') // true""",
        () async {
      final argument = LiteralString('ABCDE');
      final prefix = LiteralString('ABC');
      final startsWith = StartsWith(operand: [argument, prefix]);
      final result = await startsWith.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "StartsWithIsFalse": StartsWith('ABCDE', 'XYZ') // false""",
        () async {
      final argument = LiteralString('ABCDE');
      final prefix = LiteralString('XYZ');
      final startsWith = StartsWith(operand: [argument, prefix]);
      final result = await startsWith.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "StartsWithIsNull": StartsWith('ABCDE', null) // null""",
        () async {
      final argument = LiteralString('ABCDE');
      final startsWith = StartsWith(operand: [argument, LiteralNull()]);
      final result = await startsWith.execute({});
      expect(result, equals(null));
    });
  });

  group('EndsWith', () {
    test("""define "EndsWithIsTrue": EndsWith('ABC', 'C') // true""", () async {
      final argument = LiteralString('ABC');
      final suffix = LiteralString('C');
      final endsWith = EndsWith(operand: [argument, suffix]);
      final result = await endsWith.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "EndsWithIsFalse": EndsWith('ABC', 'Z') // false""",
        () async {
      final argument = LiteralString('ABC');
      final suffix = LiteralString('Z');
      final endsWith = EndsWith(operand: [argument, suffix]);
      final result = await endsWith.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "EndsWithIsNull": EndsWith('ABC', null) // null""",
        () async {
      final argument = LiteralString('ABC');
      final endsWith = EndsWith(operand: [argument, LiteralNull()]);
      final result = await endsWith.execute({});
      expect(result, equals(null));
    });
  });

  group('Matches', () {
    test(""""define "MatchesTrue": Matches('1,2three', '\\d,\\d\\w+')""",
        () async {
      final argument = LiteralString('1,2three');
      final pattern = LiteralString('\\d,\\d\\w+');
      final matches = Matches(operand: [argument, pattern]);
      expect(await matches.execute({}), FhirBoolean(true));
    });
    test(""""define "MatchesFalse": Matches('1,2three', '\\w+')""", () async {
      final argument = LiteralString('1,2three');
      final pattern = LiteralString('\\w+');
      final matches = Matches(operand: [argument, pattern]);
      expect(await matches.execute({}), FhirBoolean(false));
    });
    test(""""define "MatchesIsNull": Matches('12three', null)""", () async {
      final argument = LiteralString('12three');
      final matches = Matches(operand: [argument, LiteralNull()]);
      expect(await matches.execute({}), null);
    });
  });

  group('Length', () {
    test("""define "Length14": Length('ABCDE') // 5""", () async {
      final input = LiteralString('ABCDE');
      final output = Length(operand: input);
      expect(await output.execute({}), equals(FhirInteger(5)));
    });
    test("""define "LengthIsNull": Length(null as String) // null""", () async {
      final input = As(resultTypeName: 'String', operand: LiteralNull());
      final output = Length(operand: input);
      expect(await output.execute({}), equals(null));
    });
  });
}
