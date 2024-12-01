// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The verification status to support or decline the clinical status of the condition or diagnosis.
class ConditionVerificationStatus {
  // Private constructor for internal use (like enum)
  ConditionVerificationStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [ConditionVerificationStatus] from JSON.
  factory ConditionVerificationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionVerificationStatus.elementOnly.withElement(element);
    }
    return ConditionVerificationStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionVerificationStatus values
  /// unconfirmed
  static final ConditionVerificationStatus unconfirmed =
      ConditionVerificationStatus._(
    'unconfirmed',
  );

  /// provisional
  static final ConditionVerificationStatus provisional =
      ConditionVerificationStatus._(
    'provisional',
  );

  /// differential
  static final ConditionVerificationStatus differential =
      ConditionVerificationStatus._(
    'differential',
  );

  /// confirmed
  static final ConditionVerificationStatus confirmed =
      ConditionVerificationStatus._(
    'confirmed',
  );

  /// refuted
  static final ConditionVerificationStatus refuted =
      ConditionVerificationStatus._(
    'refuted',
  );

  /// entered_in_error
  static final ConditionVerificationStatus entered_in_error =
      ConditionVerificationStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ConditionVerificationStatus elementOnly =
      ConditionVerificationStatus._('');

  /// List of all enum-like values
  static final List<ConditionVerificationStatus> values = [
    unconfirmed,
    provisional,
    differential,
    confirmed,
    refuted,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  ConditionVerificationStatus withElement(Element? newElement) {
    return ConditionVerificationStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
