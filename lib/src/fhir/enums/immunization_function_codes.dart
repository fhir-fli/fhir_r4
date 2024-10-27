// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the function a practitioner or organization may play in the immunization event. This value set is provided as a suggestive example.
class ImmunizationFunctionCodes {
  // Private constructor for internal use (like enum)
  ImmunizationFunctionCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationFunctionCodes values
  /// OP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationFunctionCodes OP = ImmunizationFunctionCodes._(
    'OP',
  );

  /// AP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationFunctionCodes AP = ImmunizationFunctionCodes._(
    'AP',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationFunctionCodes elementOnly =
      ImmunizationFunctionCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationFunctionCodes> values = [
    OP,
    AP,
  ];

  /// Returns the enum value with an element attached
  ImmunizationFunctionCodes withElement(Element? newElement) {
    return ImmunizationFunctionCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationFunctionCodes] from JSON.
  static ImmunizationFunctionCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationFunctionCodes.elementOnly.withElement(element);
    }
    return ImmunizationFunctionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
