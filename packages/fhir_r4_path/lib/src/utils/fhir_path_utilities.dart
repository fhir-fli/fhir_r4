// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

// Re-export engine-related classes
export '../engine/function_details.dart';
export '../engine/fp_equality.dart';
export '../engine/i_evaluation_context.dart';
export '../engine/expression_node_with_offset.dart';
export '../engine/execution_context.dart';
export '../engine/execution_type_context.dart';

// Re-export core-related classes
export '../core/element_definition_match.dart';
export '../core/class_type_info.dart';

// Utility function
bool isWhitespace(dynamic value) {
  if (value is String) {
    return value.isWhiteSpace();
  } else if (value is int) {
    return value.isWhitespace();
  } else {
    return false;
  }
}
