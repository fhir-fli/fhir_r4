import 'package:cql/cql.dart';
import 'package:flutter_test/flutter_test.dart';

void replaceMatchesTest() {
  group('ReplaceMatches', () {
    test(
        """define "ReplaceMatchesFound": ReplaceMatches('ABCDE', 'C', 'XYZ') // 'ABXYZDE'""",
        () {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('C');
      final substitution = LiteralString('XYZ');
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesFound');
      expect(result.execute({}), 'ABXYZDE');
    });
    test(
        """define "ReplaceMatchesNotFound": ReplaceMatches('ABCDE', 'XYZ', '123') // 'ABCDE'""",
        () {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('XYZ');
      final substitution = LiteralString('123');
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesNotFound');
      expect(result.execute({}), 'ABCDE');
    });
    test(
        """define "ReplaceMatchesIsNull": ReplaceMatches('ABCDE', 'C', null) // null""",
        () {
      final argument = LiteralString('ABCDE');
      final pattern = LiteralString('C');
      final substitution = LiteralNull();
      final result = ReplaceMatches(
          operand: [argument, pattern, substitution],
          localId: 'ReplaceMatchesIsNull');
      expect(result.execute({}), null);
    });
  });
}
