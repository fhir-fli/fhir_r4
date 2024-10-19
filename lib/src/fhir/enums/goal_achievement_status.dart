// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Describes the progression, or lack thereof, towards the goal against the target.
@collection
class GoalAchievementStatus {
  /// Constructor for internal use (like enum)
  GoalAchievementStatus({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GoalAchievementStatus values
  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus in_progress = GoalAchievementStatus(
    fhirCode: 'in-progress',
  );

  /// improving
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus improving = GoalAchievementStatus(
    fhirCode: 'improving',
  );

  /// worsening
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus worsening = GoalAchievementStatus(
    fhirCode: 'worsening',
  );

  /// no_change
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus no_change = GoalAchievementStatus(
    fhirCode: 'no-change',
  );

  /// achieved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus achieved = GoalAchievementStatus(
    fhirCode: 'achieved',
  );

  /// sustaining
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus sustaining = GoalAchievementStatus(
    fhirCode: 'sustaining',
  );

  /// not_achieved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus not_achieved = GoalAchievementStatus(
    fhirCode: 'not-achieved',
  );

  /// no_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus no_progress = GoalAchievementStatus(
    fhirCode: 'no-progress',
  );

  /// not_attainable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GoalAchievementStatus not_attainable = GoalAchievementStatus(
    fhirCode: 'not-attainable',
  );

  /// For instances where an Element is present but not value

  static final GoalAchievementStatus elementOnly = GoalAchievementStatus();

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
    return GoalAchievementStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
