// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Describes the progression, or lack thereof, towards the goal against the target.
@Entity()
class GoalAchievementStatus extends FhirCode {
  /// Factory constructor to create [GoalAchievementStatus] from JSON.
  factory GoalAchievementStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalAchievementStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return GoalAchievementStatus._(value, element);
    }
    throw ArgumentError(
      'GoalAchievementStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// improving
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.improving([this.element])
      : dbValue = 'improving',
        super('improving', element);

  /// worsening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.worsening([this.element])
      : dbValue = 'worsening',
        super('worsening', element);

  /// no_change
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.no_change([this.element])
      : dbValue = 'no-change',
        super('no-change', element);

  /// achieved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.achieved([this.element])
      : dbValue = 'achieved',
        super('achieved', element);

  /// sustaining
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.sustaining([this.element])
      : dbValue = 'sustaining',
        super('sustaining', element);

  /// not_achieved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.not_achieved([this.element])
      : dbValue = 'not-achieved',
        super('not-achieved', element);

  /// no_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.no_progress([this.element])
      : dbValue = 'no-progress',
        super('no-progress', element);

  /// not_attainable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalAchievementStatus.not_attainable([this.element])
      : dbValue = 'not-attainable',
        super('not-attainable', element);

  /// For instances where an Element is present but not value

  GoalAchievementStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GoalAchievementStatus._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'in-progress',
    'improving',
    'worsening',
    'no-change',
    'achieved',
    'sustaining',
    'not-achieved',
    'no-progress',
    'not-attainable',
  ];

  /// Returns the enum value with an element attached
  GoalAchievementStatus withElement(Element? newElement) {
    return GoalAchievementStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalAchievementStatus.$value';
}
