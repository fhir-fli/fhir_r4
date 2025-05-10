import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';

void minValue() {
  group('MinValue', () {
    test("""define "IntegerMinimum": minimum Integer // -2147483648""",
        () async {
      final QName valueType = QName.parse('Integer');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(await minValue.execute({}), equals(fhir.FhirInteger(-2147483648)));
    });
    test("""define "LongMinimum": minimum Long // -9223372036854775808""",
        () async {
      final QName valueType = QName.parse('Long');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(await minValue.execute({}),
          equals(fhir.FhirInteger64.fromString('-9223372036854775808')));
    });
    test(
        """define "DateTimeMinimum": minimum DateTime // @0001-01-01T00:00:00.000""",
        () async {
      final QName valueType = QName.parse('DateTime');
      final MinValue minValue = MinValue(valueType: valueType);
      final minValueExecute = await minValue.execute({});
      print('minValueExecute: $minValueExecute (${minValueExecute.runtimeType})');
      final fromString =
          fhir.FhirDateTime.fromString('0001-01-01T00:00:00.000');
      print('fromString: $fromString (${fromString.runtimeType})');
      expect(minValueExecute, equals(fromString));
      // expect(await minValue.execute({}),
      //     equals(fhir.FhirDateTime.fromString('0001-01-01T00:00:00.000')));
    });
    // TODO(Dokotela): is quantity an error?
    // test("""define "ErrorMinimum": minimum Quantity""", () async {
    //   final QName valueType = QName.parse('Quantity');
    //   final MinValue minValue = MinValue(valueType: valueType);
    //   expect(await () => minValue.execute({}), throwsA(isA<UnimplementedError>()));
    // });
  });
}
