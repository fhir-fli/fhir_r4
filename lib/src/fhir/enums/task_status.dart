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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TaskStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TaskStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskStatus.elementOnly.withElement(element);
    }
    return TaskStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TaskStatus withElement(Element? newElement) {
    return TaskStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
