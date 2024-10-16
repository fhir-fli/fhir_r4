import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a request.
enum RequestStatus {
  /// Display: Draft
  /// Definition: The request has been created but is not yet complete or ready for action.
  draft('draft'),

  /// Display: Active
  /// Definition: The request is in force and ready to be acted upon.
  active('active'),

  /// Display: On Hold
  /// Definition: The request (and any implicit authorization to act) has been temporarily withdrawn but is expected to resume in the future.
  on_hold('on-hold'),

  /// Display: Revoked
  /// Definition: The request (and any implicit authorization to act) has been terminated prior to the known full completion of the intended actions. No further activity should occur.
  revoked('revoked'),

  /// Display: Completed
  /// Definition: The activity described by the request has been fully performed. No further activity will occur.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: This request should never have existed and should be considered 'void'. (It is possible that real-world decisions were based on it. If real-world activity has occurred, the status should be "revoked" rather than "entered-in-error".).
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this request. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RequestStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RequestStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestStatus.elementOnly.withElement(element);
    }
    return RequestStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RequestStatus withElement(Element? newElement) {
    return RequestStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
