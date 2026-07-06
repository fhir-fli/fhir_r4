import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:ucum/ucum.dart';

final Map<String, Object> exercises01 = {
  'This is a quoted identifier': CqlDate.fromString('2021-04-01'),
  '_1MoreIdentifier': ValidatedQuantity.fromString("0.0 'g'"),
  'Inequality Expression': CqlBoolean(true),
  'Relative Comparison Expression': CqlBoolean(true),
  'Quantity Expression': ValidatedQuantity.fromString("5 'g/dL'"),
  'Reference Expression': ValidatedQuantity.fromString("5 'g/dL'"),
  'String Concatenation': '1John',
  'Warning Message': CqlInteger(1),
  'Nested Warning Message': CqlInteger(3),
};
