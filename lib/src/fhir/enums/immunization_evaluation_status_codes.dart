import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the evaluation for vaccine administration event.
enum ImmunizationEvaluationStatusCodes {
  /// Display: In Progress
  /// Definition: The administration has started but has not yet completed.
  in_progress('in-progress'),

  /// Display: Not Done
  /// Definition: The administration was terminated prior to any impact on the subject (though preparatory actions may have been taken)
  not_done('not-done'),

  /// Display: On Hold
  /// Definition: Actions implied by the administration have been temporarily halted, but are expected to continue later. May also be called 'suspended'.
  on_hold('on-hold'),

  /// Display: Completed
  /// Definition: All actions that are implied by the administration have occurred.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: The administration was entered in error and therefore nullified.
  entered_in_error('entered-in-error'),

  /// Display: Stopped
  /// Definition: Actions implied by the administration have been permanently halted, before all of them occurred.
  stopped('stopped'),

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values currently applies for this request. Note: This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, it's just not known which one.
  unknown('unknown'),

  /// Display:
  /// Definition:
  completed_1('completed'),

  /// Display:
  /// Definition:
  entered_in_error_1('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationEvaluationStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationEvaluationStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationStatusCodes.elementOnly.withElement(element);
    }
    return ImmunizationEvaluationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationEvaluationStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
