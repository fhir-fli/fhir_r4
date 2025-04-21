import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';

void minValue() {
  group('MinValue', () {
    test("""define "IntegerMinimum": minimum Integer // -2147483648""",
        () async {
      final QName valueType = QName.fromFull('Integer');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(await minValue.execute({}), equals(fhir.FhirInteger(-2147483648)));
    });
    test("""define "LongMinimum": minimum Long // -9223372036854775808""",
        () async {
      final QName valueType = QName.fromFull('Long');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(await minValue.execute({}),
          equals(fhir.FhirInteger64.fromString('-9223372036854775808')));
    });
    test(
        """define "DateTimeMinimum": minimum DateTime // @0001-01-01T00:00:00.000""",
        () async {
      final QName valueType = QName.fromFull('DateTime');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(await minValue.execute({}),
          equals(fhir.FhirDateTime.fromString('0001-01-01T00:00:00.000')));
    });
    // TODO(Dokotela): is quantity an error?
    // test("""define "ErrorMinimum": minimum Quantity""", () async {
    //   final QName valueType = QName.fromFull('Quantity');
    //   final MinValue minValue = MinValue(valueType: valueType);
    //   expect(await () => minValue.execute({}), throwsA(isA<UnimplementedError>()));
    // });
  });
}
