// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the progression, or lack thereof, towards the goal against the target.
enum GoalAchievementStatus {
  /// Display: In Progress
  /// Definition: The goal is being sought but has not yet been reached. (Also applies if the goal was reached in the past but there has been regression and the goal is again being sought).
  in_progress('in-progress'),

  /// Display: Improving
  /// Definition: The goal is being sought, and is progressing.
  improving('improving'),

  /// Display: Worsening
  /// Definition: The goal is being sought, but is regressing.
  worsening('worsening'),

  /// Display: No Change
  /// Definition: The goal is being sought, but the trend is flat.
  no_change('no-change'),

  /// Display: Achieved
  /// Definition: The goal has been met.
  achieved('achieved'),

  /// Display: Sustaining
  /// Definition: The goal has been met, but ongoing activity is needed to sustain the goal objective.
  sustaining('sustaining'),

  /// Display: Not Achieved
  /// Definition: The goal has not been met and there might or might not have been progress towards target.
  not_achieved('not-achieved'),

  /// Display: No Progress
  /// Definition: The goal has not been met and little to no progress towards target.
  no_progress('no-progress'),

  /// Display: Not Attainable
  /// Definition: The goal is not possible to be met.
  not_attainable('not-attainable'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GoalAchievementStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GoalAchievementStatus] instances.
  static GoalAchievementStatus fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  GoalAchievementStatus withElement(Element? newElement) {
    return GoalAchievementStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
