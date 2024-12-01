// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition Categories.
class ConditionCategoryCodes {
  // Private constructor for internal use (like enum)
  ConditionCategoryCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ConditionCategoryCodes] from JSON.
  factory ConditionCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionCategoryCodes.elementOnly.withElement(element);
    }
    return ConditionCategoryCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionCategoryCodes values
  /// problem_list_item
  static final ConditionCategoryCodes problem_list_item =
      ConditionCategoryCodes._(
    'problem-list-item',
  );

  /// encounter_diagnosis
  static final ConditionCategoryCodes encounter_diagnosis =
      ConditionCategoryCodes._(
    'encounter-diagnosis',
  );

  /// For instances where an Element is present but not value

  static final ConditionCategoryCodes elementOnly =
      ConditionCategoryCodes._('');

  /// List of all enum-like values
  static final List<ConditionCategoryCodes> values = [
    problem_list_item,
    encounter_diagnosis,
  ];

  /// Returns the enum value with an element attached
  ConditionCategoryCodes withElement(Element? newElement) {
    return ConditionCategoryCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
