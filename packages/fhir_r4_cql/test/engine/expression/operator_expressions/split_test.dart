import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:flutter_test/flutter_test.dart';

void splitTest() {
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
}
