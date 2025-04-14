import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void endsWithTest() {
  group('EndsWith', () {
    test("""define "EndsWithIsTrue": EndsWith('ABC', 'C') // true""", () async {
      final argument = LiteralString('ABC');
      final suffix = LiteralString('C');
      final endsWith = EndsWith(operand: [argument, suffix]);
      final result = await endsWith.execute({});
      expect(result, equals(FhirBoolean(true)));
    });
    test("""define "EndsWithIsFalse": EndsWith('ABC', 'Z') // false""", () async {
      final argument = LiteralString('ABC');
      final suffix = LiteralString('Z');
      final endsWith = EndsWith(operand: [argument, suffix]);
      final result = await endsWith.execute({});
      expect(result, equals(FhirBoolean(false)));
    });
    test("""define "EndsWithIsNull": EndsWith('ABC', null) // null""", () async {
      final argument = LiteralString('ABC');
      final endsWith = EndsWith(operand: [argument, LiteralNull()]);
      final result = await endsWith.execute({});
      expect(result, equals(null));
    });
  });
}
