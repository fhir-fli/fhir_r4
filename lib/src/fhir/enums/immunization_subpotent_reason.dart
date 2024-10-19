// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose is considered to be subpotent. This value set is provided as a suggestive example.
class ImmunizationSubpotentReason {
  // Private constructor for internal use (like enum)
  ImmunizationSubpotentReason._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationSubpotentReason values
  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationSubpotentReason partial =
      ImmunizationSubpotentReason._(
    'partial',
  );

  /// coldchainbreak
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationSubpotentReason coldchainbreak =
      ImmunizationSubpotentReason._(
    'coldchainbreak',
  );

  /// recall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationSubpotentReason recall =
      ImmunizationSubpotentReason._(
    'recall',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationSubpotentReason elementOnly =
      ImmunizationSubpotentReason._('');

  /// List of all enum-like values
  static final List<ImmunizationSubpotentReason> values = [
    partial,
    coldchainbreak,
    recall,
  ];

  /// Returns the enum value with an element attached
  ImmunizationSubpotentReason withElement(Element? newElement) {
    return ImmunizationSubpotentReason._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationSubpotentReason] from JSON.
  static ImmunizationSubpotentReason fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationSubpotentReason.elementOnly.withElement(element);
    }
    return ImmunizationSubpotentReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationSubpotentReason.$fhirCode';
}
