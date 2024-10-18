// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for Condition/Problem/Diagnosis codes.
enum ConditionProblemDiagnosisCodes {
  /// Display: No current problems or disability
  /// Definition:
  value160245001('160245001'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConditionProblemDiagnosisCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConditionProblemDiagnosisCodes] instances.
  static ConditionProblemDiagnosisCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionProblemDiagnosisCodes.elementOnly.withElement(element);
    }
    return ConditionProblemDiagnosisCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConditionProblemDiagnosisCodes withElement(Element? newElement) {
    return ConditionProblemDiagnosisCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
