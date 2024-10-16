import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition Categories.
enum ConditionCategoryCodes {
  /// Display: Problem List Item
  /// Definition: An item on a problem list that can be managed over time and can be expressed by a practitioner (e.g. physician, nurse), patient, or related person.
  problem_list_item('problem-list-item'),

  /// Display: Encounter Diagnosis
  /// Definition: A point in time diagnosis (e.g. from a physician or nurse) in context of an encounter.
  encounter_diagnosis('encounter-diagnosis'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConditionCategoryCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConditionCategoryCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionCategoryCodes.elementOnly.withElement(element);
    }
    return ConditionCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConditionCategoryCodes withElement(Element? newElement) {
    return ConditionCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
