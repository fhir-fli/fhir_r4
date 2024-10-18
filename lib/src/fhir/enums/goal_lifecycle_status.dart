// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a goal and whether the goal is still being targeted.
enum GoalLifecycleStatus {
  /// Display: Proposed
  /// Definition: A goal is proposed for this patient.
  proposed('proposed'),

  /// Display: Planned
  /// Definition: A goal is planned for this patient.
  planned('planned'),

  /// Display: Accepted
  /// Definition: A proposed goal was accepted or acknowledged.
  accepted('accepted'),

  /// Display: Active
  /// Definition: The goal is being sought actively.
  active('active'),

  /// Display: On Hold
  /// Definition: The goal remains a long term objective but is no longer being actively pursued for a temporary period of time.
  on_hold('on-hold'),

  /// Display: Completed
  /// Definition: The goal is no longer being sought.
  completed('completed'),

  /// Display: Cancelled
  /// Definition: The goal has been abandoned.
  cancelled('cancelled'),

  /// Display: Entered in Error
  /// Definition: The goal was entered in error and voided.
  entered_in_error('entered-in-error'),

  /// Display: Rejected
  /// Definition: A proposed goal was rejected.
  rejected('rejected'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GoalLifecycleStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GoalLifecycleStatus] instances.
  static GoalLifecycleStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalLifecycleStatus.elementOnly.withElement(
        element,
      );
    }
    return GoalLifecycleStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GoalLifecycleStatus withElement(Element? newElement) {
    return GoalLifecycleStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
