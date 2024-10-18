// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition Categories.
enum ConditionCategoryCodes {
  /// Display: Problem List Item
  /// Definition: An item on a problem list that can be managed over time and can be expressed by a practitioner (e.g. physician, nurse), patient, or related person.
  problem_list_item('problem-list-item'),

  /// Display: Encounter Diagnosis
  /// Definition: A point in time diagnosis (e.g. from a physician or nurse) in context of an encounter.
  encounter_diagnosis('encounter-diagnosis'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConditionCategoryCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConditionCategoryCodes] instances.
  static ConditionCategoryCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionCategoryCodes.elementOnly.withElement(element);
    }
    return ConditionCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConditionCategoryCodes withElement(Element? newElement) {
    return ConditionCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
