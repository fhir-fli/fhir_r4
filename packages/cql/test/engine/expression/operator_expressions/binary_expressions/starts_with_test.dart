import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void startsWithTest() {
  group('StartsWith', () {
    test("""define "StartsWithIsTrue": StartsWith('ABCDE', 'ABC') // true""",
        () {
      final argument = LiteralString('ABCDE');
      final prefix = LiteralString('ABC');
      final startsWith = StartsWith(operand: [argument, prefix]);
      final result = startsWith.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "StartsWithIsFalse": StartsWith('ABCDE', 'XYZ') // false""",
        () {
      final argument = LiteralString('ABCDE');
      final prefix = LiteralString('XYZ');
      final startsWith = StartsWith(operand: [argument, prefix]);
      final result = startsWith.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "StartsWithIsNull": StartsWith('ABCDE', null) // null""",
        () {
      final argument = LiteralString('ABCDE');
      final startsWith = StartsWith(operand: [argument, LiteralNull()]);
      final result = startsWith.execute({});
      expect(result, equals(null));
    });
  });
}
