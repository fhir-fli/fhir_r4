// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for Condition/Problem/Diagnosis codes.
class ConditionProblemDiagnosisCodes {
  // Private constructor for internal use (like enum)
  ConditionProblemDiagnosisCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionProblemDiagnosisCodes values
  /// value160245001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionProblemDiagnosisCodes value160245001 =
      ConditionProblemDiagnosisCodes._(
    '160245001',
  );

  /// For instances where an Element is present but not value

  static final ConditionProblemDiagnosisCodes elementOnly =
      ConditionProblemDiagnosisCodes._('');

  /// List of all enum-like values
  static final List<ConditionProblemDiagnosisCodes> values = [
    value160245001,
  ];

  /// Returns the enum value with an element attached
  ConditionProblemDiagnosisCodes withElement(Element? newElement) {
    return ConditionProblemDiagnosisCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConditionProblemDiagnosisCodes] from JSON.
  static ConditionProblemDiagnosisCodes fromJson(Map<String, dynamic> json) {
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

  /// String representation
  @override
  String toString() => fhirCode;
}
