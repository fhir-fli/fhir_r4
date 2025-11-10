// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
enum FpEquality {
  null_,
  true_,
  false_,
}

/// if the fhir path expressions are allowed to use constants beyond those
/// defined in the specification
/// the application can implement them by providing a constant resolver
