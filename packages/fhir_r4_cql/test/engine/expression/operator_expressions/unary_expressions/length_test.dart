import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter_test/flutter_test.dart';

void lengthTest() {
  group('Length', () {
    test("""define "Length14": Length('ABCDE') // 5""", () async {
      final input = LiteralString('ABCDE');
      final output = Length(operand: input);
      expect(await output.execute({}), equals(FhirInteger(5)));
    });
    test("""define "LengthIsNull": Length(null as String) // null""", () async {
      final input = As(resultTypeName: 'String', operand: LiteralNull());
      final output = Length(operand: input);
      expect(await output.execute({}), equals(null));
    });
  });
}
