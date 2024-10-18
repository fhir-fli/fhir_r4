// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The verification status to support or decline the clinical status of the condition or diagnosis.
enum ConditionVerificationStatus {
  /// Display: Unconfirmed
  /// Definition: There is not sufficient diagnostic and/or clinical evidence to treat this as a confirmed condition.
  unconfirmed('unconfirmed'),

  /// Display: Provisional
  /// Definition: This is a tentative diagnosis - still a candidate that is under consideration.
  provisional('provisional'),

  /// Display: Differential
  /// Definition: One of a set of potential (and typically mutually exclusive) diagnoses asserted to further guide the diagnostic process and preliminary treatment.
  differential('differential'),

  /// Display: Confirmed
  /// Definition: There is sufficient diagnostic and/or clinical evidence to treat this as a confirmed condition.
  confirmed('confirmed'),

  /// Display: Refuted
  /// Definition: This condition has been ruled out by diagnostic and clinical evidence.
  refuted('refuted'),

  /// Display: Entered in Error
  /// Definition: The statement was entered in error and is not valid.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConditionVerificationStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConditionVerificationStatus] instances.
  static ConditionVerificationStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionVerificationStatus.elementOnly.withElement(
        element,
      );
    }
    return ConditionVerificationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConditionVerificationStatus withElement(Element? newElement) {
    return ConditionVerificationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
