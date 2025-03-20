import 'dart:convert';

import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';

/// Utility class for building a JSON Patch or FHIR Patch body
class PatchBody {
  /// Constructor for [PatchBody]
  PatchBody() : operations = [];

  /// List of operations in the patch body
  final List<Map<String, dynamic>> operations;

  /// Add a JSON Patch or FHIR Patch operation
  void addOperation(PatchOps op, String path, {dynamic value}) {
    if (!_isValidOperation(op)) {
      throw ArgumentError('Invalid patch operation: ${op.value}');
    }
    final operation = <String, dynamic>{'op': op.value, 'path': path};
    if (value != null) {
      operation['value'] = value;
    }
    operations.add(operation);
  }

  /// Check if the operation is valid
  bool _isValidOperation(PatchOps op) {
    // FHIR Patch supports only add, remove, replace
    const fhirSupportedOps = {PatchOps.add, PatchOps.remove, PatchOps.replace};
    return fhirSupportedOps.contains(op) || PatchOps.values.contains(op);
  }

  /// Convert operations to JSON
  String toJson() => jsonEncode(operations);
}
