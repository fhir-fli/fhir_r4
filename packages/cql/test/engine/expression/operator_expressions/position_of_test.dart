import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void positionOfTest() {
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
}
