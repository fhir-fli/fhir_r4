// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for AllergyIntolerance Clinical Status.
class AllergyIntoleranceClinicalStatusCodes {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceClinicalStatusCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AllergyIntoleranceClinicalStatusCodes values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceClinicalStatusCodes active =
      AllergyIntoleranceClinicalStatusCodes._(
    'active',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceClinicalStatusCodes inactive =
      AllergyIntoleranceClinicalStatusCodes._(
    'inactive',
  );

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceClinicalStatusCodes resolved =
      AllergyIntoleranceClinicalStatusCodes._(
    'resolved',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceClinicalStatusCodes elementOnly =
      AllergyIntoleranceClinicalStatusCodes._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceClinicalStatusCodes> values = [
    active,
    inactive,
    resolved,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceClinicalStatusCodes withElement(Element? newElement) {
    return AllergyIntoleranceClinicalStatusCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AllergyIntoleranceClinicalStatusCodes] from JSON.
  static AllergyIntoleranceClinicalStatusCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceClinicalStatusCodes.elementOnly
          .withElement(element);
    }
    return AllergyIntoleranceClinicalStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
