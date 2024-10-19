// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Preferred value set for Condition Categories.
@Entity()
class ConditionCategoryCodes extends FhirCode {
  /// Factory constructor to create [ConditionCategoryCodes] from JSON.
  factory ConditionCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConditionCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'ConditionCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// problem_list_item
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionCategoryCodes.problem_list_item([this.element])
      : dbValue = 'problem-list-item',
        super('problem-list-item', element);

  /// encounter_diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionCategoryCodes.encounter_diagnosis([this.element])
      : dbValue = 'encounter-diagnosis',
        super('encounter-diagnosis', element);

  /// For instances where an Element is present but not value

  ConditionCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConditionCategoryCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'problem-list-item',
    'encounter-diagnosis',
  ];

  /// Returns the enum value with an element attached
  ConditionCategoryCodes withElement(Element? newElement) {
    return ConditionCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionCategoryCodes.$value';
}
