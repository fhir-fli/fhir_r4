import 'package:json_annotation/json_annotation.dart';

/// Preferred value set for Condition Categories.
enum ConditionCategoryCodes {
  /// Display: Problem List Item
  /// Definition: An item on a problem list that can be managed over time and can be expressed by a practitioner (e.g. physician, nurse), patient, or related person.
  @JsonValue('problem-list-item')
  problem_list_item,
  /// Display: Encounter Diagnosis
  /// Definition: A point in time diagnosis (e.g. from a physician or nurse) in context of an encounter.
  @JsonValue('encounter-diagnosis')
  encounter_diagnosis,
;

@override
  String toString() {
      switch(this) {
        case problem_list_item: return 'problem-list-item';
        case encounter_diagnosis: return 'encounter-diagnosis';
      }
      }
String toJson() => toString();
  ConditionCategoryCodes fromString(String str) {
    switch(str) {
      case 'problem-list-item': return ConditionCategoryCodes.problem_list_item;
      case 'encounter-diagnosis': return ConditionCategoryCodes.encounter_diagnosis;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ConditionCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

