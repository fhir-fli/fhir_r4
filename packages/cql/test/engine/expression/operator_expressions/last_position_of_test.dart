import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void lastPositionOfTest() {
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
}
