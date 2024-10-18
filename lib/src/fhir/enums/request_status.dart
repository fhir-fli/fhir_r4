// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const RequestStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [RequestStatus] instances.
  static RequestStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestStatus.elementOnly.withElement(
        element,
      );
    }
    return RequestStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  RequestStatus withElement(Element? newElement) {
    return RequestStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
