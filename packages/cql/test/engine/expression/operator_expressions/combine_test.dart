import 'package:cql/cql.dart';
import 'package:flutter_test/flutter_test.dart';

void combineTest() {
  group('combine', () {
    test("""define "CombineList": Combine({ 'A', 'B', 'C' }) // 'ABC'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralString('A'),
          LiteralString('B'),
          LiteralString('C'),
        ],
      );
      final combine = Combine(source: list);
      final result = await combine.execute({});
      expect(result, 'ABC');
    });
    test(
        """define "CombineWithSeparator": Combine({ 'A', 'B', 'C' }, ' ') // 'A B C'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralString('A'),
          LiteralString('B'),
          LiteralString('C'),
        ],
      );
      final combine = Combine(source: list, separator: LiteralString(' '));
      final result = await combine.execute({});
      expect(result, 'A B C');
    });
    test(
        """define "CombineWithNulls": Combine({ 'A', 'B', 'C', null }) // 'ABC'""",
        () async {
      final list = ListExpression(
        element: [
          LiteralString('A'),
          LiteralString('B'),
          LiteralString('C'),
          LiteralNull(),
        ],
      );
      final combine = Combine(source: list);
      final result = await combine.execute({});
      expect(result, 'ABC');
    });
  });
}
