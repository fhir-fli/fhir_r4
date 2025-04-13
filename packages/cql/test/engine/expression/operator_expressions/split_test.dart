import 'package:cql/cql.dart';
import 'package:flutter_test/flutter_test.dart';

void splitTest() {
  group('split', () {
    test("""define "SplitFound": Split('A B C', ' ') // { 'A', 'B', 'C' }""",
        () {
      final string = LiteralString('A B C');
      final separator = LiteralString(' ');
      final split = Split(stringToSplit: string, separator: separator);
      final result = split.execute({});
      expect(result, ['A', 'B', 'C']);
    });
    test("""define "SplitNotFound": Split('A B C', ',') // { 'A B C' }""", () {
      final string = LiteralString('A B C');
      final separator = LiteralString(',');
      final split = Split(stringToSplit: string, separator: separator);
      final result = split.execute({});
      expect(result, ['A B C']);
    });
    test("""define "SplitIsNull": Split(null, ' ') // null""", () {
      final string = LiteralNull();
      final separator = LiteralString(' ');
      final split = Split(stringToSplit: string, separator: separator);
      final result = split.execute({});
      expect(result, null);
    });
  });
}
