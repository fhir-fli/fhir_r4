// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The current status of the task.
enum TaskStatus {
  /// Display: Draft
  /// Definition: The task is not yet ready to be acted upon.
  draft('draft'),

  /// Display: Requested
  /// Definition: The task is ready to be acted upon and action is sought.
  requested('requested'),

  /// Display: Received
  /// Definition: A potential performer has claimed ownership of the task and is evaluating whether to perform it.
  received('received'),

  /// Display: Accepted
  /// Definition: The potential performer has agreed to execute the task but has not yet started work.
  accepted('accepted'),

  /// Display: Rejected
  /// Definition: The potential performer who claimed ownership of the task has decided not to execute it prior to performing any action.
  rejected('rejected'),

  /// Display: Ready
  /// Definition: The task is ready to be performed, but no action has yet been taken. Used in place of requested/received/accepted/rejected when request assignment and acceptance is a given.
  ready('ready'),

  /// Display: Cancelled
  /// Definition: The task was not completed.
  cancelled('cancelled'),

  /// Display: In Progress
  /// Definition: The task has been started but is not yet complete.
  in_progress('in-progress'),

  /// Display: On Hold
  /// Definition: The task has been started but work has been paused.
  on_hold('on-hold'),

  /// Display: Failed
  /// Definition: The task was attempted but could not be completed due to some error.
  failed('failed'),

  /// Display: Completed
  /// Definition: The task has been completed.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: The task should never have existed and is retained only because of the possibility it may have used.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TaskStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TaskStatus] instances.
  static TaskStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatus.elementOnly.withElement(
        element,
      );
    }
    return TaskStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TaskStatus withElement(Element? newElement) {
    return TaskStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
