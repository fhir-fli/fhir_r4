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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GoalAchievementStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GoalAchievementStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalAchievementStatus.elementOnly.withElement(element);
    }
    return GoalAchievementStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GoalAchievementStatus withElement(Element? newElement) {
    return GoalAchievementStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
