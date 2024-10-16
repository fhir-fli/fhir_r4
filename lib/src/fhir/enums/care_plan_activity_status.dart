import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a care plan activity within its overall life cycle.
enum CarePlanActivityStatus {
  /// Display: Not Started
  /// Definition: Care plan activity is planned but no action has yet been taken.
  not_started('not-started'),

  /// Display: Scheduled
  /// Definition: Appointment or other booking has occurred but activity has not yet begun.
  scheduled('scheduled'),

  /// Display: In Progress
  /// Definition: Care plan activity has been started but is not yet complete.
  in_progress('in-progress'),

  /// Display: On Hold
  /// Definition: Care plan activity was started but has temporarily ceased with an expectation of resumption at a future time.
  on_hold('on-hold'),

  /// Display: Completed
  /// Definition: Care plan activity has been completed (more or less) as planned.
  completed('completed'),

  /// Display: Cancelled
  /// Definition: The planned care plan activity has been withdrawn.
  cancelled('cancelled'),

  /// Display: Stopped
  /// Definition: The planned care plan activity has been ended prior to completion after the activity was started.
  stopped('stopped'),

  /// Display: Unknown
  /// Definition: The current state of the care plan activity is not known. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which one.
  unknown('unknown'),

  /// Display: Entered in Error
  /// Definition: Care plan activity was entered in error and voided.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CarePlanActivityStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CarePlanActivityStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatus.elementOnly.withElement(element);
    }
    return CarePlanActivityStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CarePlanActivityStatus withElement(Element? newElement) {
    return CarePlanActivityStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
