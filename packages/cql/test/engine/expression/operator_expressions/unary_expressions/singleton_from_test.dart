import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void singletonFromTest() {
  group('SingletonFrom', () {
    test('define "SingletonFrom": singleton from { 1 } // 1', () {
      final list = ListExpression(element: [LiteralInteger(1)]);
      final singletonFrom = SingletonFrom(operand: list);
      final result = singletonFrom.execute({});
      expect(result, equals(FhirInteger(1)));
    });
    test('define "SingletonFromError": singleton from { 1, 3, 5 }', () {
      final list = ListExpression(
          element: [LiteralInteger(1), LiteralInteger(3), LiteralInteger(5)]);
      final singletonFrom = SingletonFrom(operand: list);
      expect(() => singletonFrom.execute({}), throwsA(isA<ArgumentError>()));
    });
    test('define "SingletonFromIsNull": singleton from (null as List<Integer>)',
        () {
      final singletonFrom = SingletonFrom(operand: LiteralNull());
      final result = singletonFrom.execute({});
      expect(result, isNull);
    });
  });
}
