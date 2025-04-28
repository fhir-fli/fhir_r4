import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:flutter_test/flutter_test.dart';

void maxValue() {
  group('MaxValue', () {
    test("""define "IntegerMaximum": maximum Integer // 2147483647""",
        () async {
      final QName valueType = QName.fromFull('Integer');
      final maxValue = MaxValue(valueType: valueType);
      expect(await maxValue.execute({}), equals(fhir.FhirInteger(2147483647)));
    });
    test("""define "LongMaximum": maximum Long // 9223372036854775807""",
        () async {
      final QName valueType = QName.fromFull('Long');
      final maxValue = MaxValue(valueType: valueType);
      expect(await maxValue.execute({}),
          equals(fhir.FhirInteger64.fromString('9223372036854775807')));
    });
    test(
        """define "DateTimeMaximum": maximum DateTime // @9999-12-31T23:59:59.999""",
        () async {
      final QName valueType = QName.fromFull('DateTime');
      final maxValue = MaxValue(valueType: valueType);
      expect(await maxValue.execute({}),
          equals(fhir.FhirDateTime.fromString('9999-12-31T23:59:59.999')));
    });
    // TODO(Dokotela) does Quantity throw error or not?
    // test("""define "ErrorMaximum": maximum Quantity""", () async {
    //   final QName valueType = QName.fromFull('Quantity');
    //   final maxValue = MaxValue(valueType: valueType);
    //   expect(await maxValue.execute({}), equals(ValidatedQuantity()));
    // });
  });
}
