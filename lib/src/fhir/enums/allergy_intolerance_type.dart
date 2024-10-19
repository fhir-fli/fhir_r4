// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identification of the underlying physiological mechanism for a Reaction Risk.
class AllergyIntoleranceType {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AllergyIntoleranceType values
  /// allergy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceType allergy = AllergyIntoleranceType._(
    'allergy',
  );

  /// intolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceType intolerance = AllergyIntoleranceType._(
    'intolerance',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceType elementOnly =
      AllergyIntoleranceType._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceType> values = [
    allergy,
    intolerance,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceType withElement(Element? newElement) {
    return AllergyIntoleranceType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AllergyIntoleranceType] from JSON.
  static AllergyIntoleranceType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceType.elementOnly.withElement(element);
    }
    return AllergyIntoleranceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AllergyIntoleranceType.$fhirCode';
}
