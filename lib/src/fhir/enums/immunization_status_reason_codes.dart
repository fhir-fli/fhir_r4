// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was not administered. This value set is provided as a suggestive example.
class ImmunizationStatusReasonCodes {
  // Private constructor for internal use (like enum)
  ImmunizationStatusReasonCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationStatusReasonCodes values
  /// IMMUNE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusReasonCodes IMMUNE =
      ImmunizationStatusReasonCodes._(
    'IMMUNE',
  );

  /// MEDPREC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusReasonCodes MEDPREC =
      ImmunizationStatusReasonCodes._(
    'MEDPREC',
  );

  /// OSTOCK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusReasonCodes OSTOCK =
      ImmunizationStatusReasonCodes._(
    'OSTOCK',
  );

  /// PATOBJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusReasonCodes PATOBJ =
      ImmunizationStatusReasonCodes._(
    'PATOBJ',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationStatusReasonCodes elementOnly =
      ImmunizationStatusReasonCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationStatusReasonCodes> values = [
    IMMUNE,
    MEDPREC,
    OSTOCK,
    PATOBJ,
  ];

  /// Returns the enum value with an element attached
  ImmunizationStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationStatusReasonCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationStatusReasonCodes] from JSON.
  static ImmunizationStatusReasonCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusReasonCodes.elementOnly.withElement(element);
    }
    return ImmunizationStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationStatusReasonCodes.$fhirCode';
}
