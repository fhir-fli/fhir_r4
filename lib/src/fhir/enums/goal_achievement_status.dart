// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the progression, or lack thereof, towards the goal against the target.
class GoalAchievementStatus {
  // Private constructor for internal use (like enum)
  GoalAchievementStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GoalAchievementStatus values
  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus in_progress = GoalAchievementStatus._(
    'in-progress',
  );

  /// improving
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus improving = GoalAchievementStatus._(
    'improving',
  );

  /// worsening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus worsening = GoalAchievementStatus._(
    'worsening',
  );

  /// no_change
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus no_change = GoalAchievementStatus._(
    'no-change',
  );

  /// achieved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus achieved = GoalAchievementStatus._(
    'achieved',
  );

  /// sustaining
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus sustaining = GoalAchievementStatus._(
    'sustaining',
  );

  /// not_achieved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus not_achieved = GoalAchievementStatus._(
    'not-achieved',
  );

  /// no_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus no_progress = GoalAchievementStatus._(
    'no-progress',
  );

  /// not_attainable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus not_attainable = GoalAchievementStatus._(
    'not-attainable',
  );

  /// For instances where an Element is present but not value

  static final GoalAchievementStatus elementOnly = GoalAchievementStatus._('');

  /// List of all enum-like values
  static final List<GoalAchievementStatus> values = [
    in_progress,
    improving,
    worsening,
    no_change,
    achieved,
    sustaining,
    not_achieved,
    no_progress,
    not_attainable,
  ];

  /// Returns the enum value with an element attached
  GoalAchievementStatus withElement(Element? newElement) {
    return GoalAchievementStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GoalAchievementStatus] from JSON.
  static GoalAchievementStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalAchievementStatus.elementOnly.withElement(element);
    }
    return GoalAchievementStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalAchievementStatus.$fhirCode';
}
