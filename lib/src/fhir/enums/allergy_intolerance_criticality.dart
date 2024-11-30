// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.
class AllergyIntoleranceCriticality {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceCriticality._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AllergyIntoleranceCriticality values
  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceCriticality low =
      AllergyIntoleranceCriticality._(
    'low',
  );

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceCriticality high =
      AllergyIntoleranceCriticality._(
    'high',
  );

  /// unable_to_assess
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceCriticality unable_to_assess =
      AllergyIntoleranceCriticality._(
    'unable-to-assess',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceCriticality elementOnly =
      AllergyIntoleranceCriticality._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceCriticality> values = [
    low,
    high,
    unable_to_assess,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceCriticality withElement(Element? newElement) {
    return AllergyIntoleranceCriticality._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AllergyIntoleranceCriticality] from JSON.
  static AllergyIntoleranceCriticality fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticality.elementOnly.withElement(element);
    }
    return AllergyIntoleranceCriticality._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
