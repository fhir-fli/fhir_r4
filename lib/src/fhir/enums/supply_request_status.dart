// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SupplyRequestStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SupplyRequestStatus] instances.
  static SupplyRequestStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatus.elementOnly.withElement(element);
    }
    return SupplyRequestStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SupplyRequestStatus withElement(Element? newElement) {
    return SupplyRequestStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
