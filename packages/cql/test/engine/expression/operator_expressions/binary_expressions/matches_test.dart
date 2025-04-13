import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void matchesTest() {
  group('Matches', () {
    test(""""define "MatchesTrue": Matches('1,2three', '\\d,\\d\\w+')""", () {
      final argument = LiteralString('1,2three');
      final pattern = LiteralString('\\d,\\d\\w+');
      final matches = Matches(operand: [argument, pattern]);
      expect(matches.execute({}), FhirBoolean(true));
    });
    test(""""define "MatchesFalse": Matches('1,2three', '\\w+')""", () {
      final argument = LiteralString('1,2three');
      final pattern = LiteralString('\\w+');
      final matches = Matches(operand: [argument, pattern]);
      expect(matches.execute({}), FhirBoolean(false));
    });
    test(""""define "MatchesIsNull": Matches('12three', null)""", () {
      final argument = LiteralString('12three');
      final matches = Matches(operand: [argument, LiteralNull()]);
      expect(matches.execute({}), null);
    });
  });
}
