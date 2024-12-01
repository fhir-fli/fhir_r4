// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the progression, or lack thereof, towards the goal against the target.
class GoalAchievementStatus {
  // Private constructor for internal use (like enum)
  GoalAchievementStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [GoalAchievementStatus] from JSON.
  factory GoalAchievementStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalAchievementStatus.elementOnly.withElement(element);
    }
    return GoalAchievementStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GoalAchievementStatus values
  /// in_progress
  static final GoalAchievementStatus in_progress = GoalAchievementStatus._(
    'in-progress',
  );

  /// improving
  static final GoalAchievementStatus improving = GoalAchievementStatus._(
    'improving',
  );

  /// worsening
  static final GoalAchievementStatus worsening = GoalAchievementStatus._(
    'worsening',
  );

  /// no_change
  static final GoalAchievementStatus no_change = GoalAchievementStatus._(
    'no-change',
  );

  /// achieved
  static final GoalAchievementStatus achieved = GoalAchievementStatus._(
    'achieved',
  );

  /// sustaining
  static final GoalAchievementStatus sustaining = GoalAchievementStatus._(
    'sustaining',
  );

  /// not_achieved
  static final GoalAchievementStatus not_achieved = GoalAchievementStatus._(
    'not-achieved',
  );

  /// no_progress
  static final GoalAchievementStatus no_progress = GoalAchievementStatus._(
    'no-progress',
  );

  /// not_attainable
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

  /// String representation
  @override
  String toString() => fhirCode;
}
