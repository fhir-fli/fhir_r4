import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Status Codes
enum MedicationrequestStatus {
  /// Display: Active
  /// Definition: The prescription is 'actionable', but not all actions that are implied by it have occurred yet.
  active('active'),

  /// Display: On Hold
  /// Definition: Actions implied by the prescription are to be temporarily halted, but are expected to continue later. May also be called 'suspended'.
  on_hold('on-hold'),

  /// Display: Cancelled
  /// Definition: The prescription has been withdrawn before any administrations have occurred
  cancelled('cancelled'),

  /// Display: Completed
  /// Definition: All actions that are implied by the prescription have occurred.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: Some of the actions that are implied by the medication request may have occurred. For example, the medication may have been dispensed and the patient may have taken some of the medication. Clinical decision support systems should take this status into account
  entered_in_error('entered-in-error'),

  /// Display: Stopped
  /// Definition: Actions implied by the prescription are to be permanently halted, before all of the administrations occurred. This should not be used if the original order was entered in error
  stopped('stopped'),

  /// Display: Draft
  /// Definition: The prescription is not yet 'actionable', e.g. it is a work in progress, requires sign-off, verification or needs to be run through decision support process.
  draft('draft'),

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationrequestStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationrequestStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationrequestStatus.elementOnly.withElement(element);
    }
    return MedicationrequestStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationrequestStatus withElement(Element? newElement) {
    return MedicationrequestStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
