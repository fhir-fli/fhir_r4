import 'package:fhir_r4/fhir_r4.dart';

/// Status of the supply request.
enum SupplyRequestStatus {
  /// Display: Draft
  /// Definition: The request has been created but is not yet complete or ready for action.
  draft('draft'),

  /// Display: Active
  /// Definition: The request is ready to be acted upon.
  active('active'),

  /// Display: Suspended
  /// Definition: The authorization/request to act has been temporarily withdrawn but is expected to resume in the future.
  suspended('suspended'),

  /// Display: Cancelled
  /// Definition: The authorization/request to act has been terminated prior to the full completion of the intended actions. No further activity should occur.
  cancelled('cancelled'),

  /// Display: Completed
  /// Definition: Activity against the request has been sufficiently completed to the satisfaction of the requester.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SupplyRequestStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SupplyRequestStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatus.elementOnly.withElement(element);
    }
    return SupplyRequestStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SupplyRequestStatus withElement(Element? newElement) {
    return SupplyRequestStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
