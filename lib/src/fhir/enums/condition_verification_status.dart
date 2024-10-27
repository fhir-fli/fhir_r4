// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The verification status to support or decline the clinical status of the condition or diagnosis.
class ConditionVerificationStatus {
  // Private constructor for internal use (like enum)
  ConditionVerificationStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionVerificationStatus values
  /// unconfirmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionVerificationStatus unconfirmed =
      ConditionVerificationStatus._(
    'unconfirmed',
  );

  /// provisional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionVerificationStatus provisional =
      ConditionVerificationStatus._(
    'provisional',
  );

  /// differential
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionVerificationStatus differential =
      ConditionVerificationStatus._(
    'differential',
  );

  /// confirmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionVerificationStatus confirmed =
      ConditionVerificationStatus._(
    'confirmed',
  );

  /// refuted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionVerificationStatus refuted =
      ConditionVerificationStatus._(
    'refuted',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Factory constructor to create [ConditionVerificationStatus] from JSON.
  static ConditionVerificationStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionVerificationStatus.elementOnly.withElement(element);
    }
    return ConditionVerificationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
