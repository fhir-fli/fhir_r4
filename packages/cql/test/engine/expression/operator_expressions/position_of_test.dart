import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void positionOfTest() {
  group('PositionOf', () {
    test("""define "PositionOfFound": PositionOf('B', 'ABCDEDCBA') // 1""", () {
      final pattern = LiteralString('B');
      final argument = LiteralString('ABCDEDCBA');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(positionOf.execute({}), equals(FhirInteger(1)));
    });
    test("""define "PositionOfNotFound": PositionOf('Z', 'ABCDE') // -1""", () {
      final pattern = LiteralString('Z');
      final argument = LiteralString('ABCDE');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(positionOf.execute({}), equals(FhirInteger(-1)));
    });
    test("""define "PositionOfIsNull": PositionOf(null, 'ABCDE') // null""",
        () {
      final pattern = LiteralNull();
      final argument = LiteralString('ABCDE');
      final positionOf = PositionOf(pattern: pattern, string: argument);
      expect(positionOf.execute({}), equals(null));
    });
  });
}
