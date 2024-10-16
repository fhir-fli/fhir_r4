import 'package:fhir_r4/fhir_r4.dart';

/// MedicationStatement Status Codes
enum MedicationStatementStatusCodes {
  /// Display: Active
  /// Definition: The medication is still being taken.
  active('active'),

  /// Display: Completed
  /// Definition: The medication is no longer being taken.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: Some of the actions that are implied by the medication statement may have occurred. For example, the patient may have taken some of the medication. Clinical decision support systems should take this status into account.
  entered_in_error('entered-in-error'),

  /// Display: Intended
  /// Definition: The medication may be taken at some time in the future.
  intended('intended'),

  /// Display: Stopped
  /// Definition: Actions implied by the statement have been permanently halted, before all of them occurred. This should not be used if the statement was entered in error.
  stopped('stopped'),

  /// Display: On Hold
  /// Definition: Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be called 'suspended'.
  on_hold('on-hold'),

  /// Display: Unknown
  /// Definition: The state of the medication use is not currently known.
  unknown('unknown'),

  /// Display: Not Taken
  /// Definition: The medication was not consumed by the patient
  not_taken('not-taken'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationStatementStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationStatementStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatementStatusCodes.elementOnly.withElement(element);
    }
    return MedicationStatementStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationStatementStatusCodes withElement(Element? newElement) {
    return MedicationStatementStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
