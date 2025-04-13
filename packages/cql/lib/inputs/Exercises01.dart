// ignore_for_file: file_names

import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

final exercises01 = {
  "This is a quoted identifier": FhirDate.fromString("2021-04-01"),
  "_1MoreIdentifier": ValidatedQuantity.fromString("0.0 'g'"),
  "Inequality Expression": FhirBoolean(true),
  "Relative Comparison Expression": FhirBoolean(true),
  "Quantity Expression": ValidatedQuantity.fromString("5 'g/dL'"),
  "Reference Expression": ValidatedQuantity.fromString("5 'g/dL'"),
  "String Concatenation": "1John",
  "Warning Message": FhirInteger(1),
  "Nested Warning Message": FhirInteger(3),
};
