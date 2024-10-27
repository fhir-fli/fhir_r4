// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different manifestations.
class AllergyIntoleranceSeverity {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceSeverity._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AllergyIntoleranceSeverity values
  /// mild
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceSeverity mild = AllergyIntoleranceSeverity._(
    'mild',
  );

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceSeverity moderate =
      AllergyIntoleranceSeverity._(
    'moderate',
  );

  /// severe
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AllergyIntoleranceSeverity severe = AllergyIntoleranceSeverity._(
    'severe',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceSeverity elementOnly =
      AllergyIntoleranceSeverity._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceSeverity> values = [
    mild,
    moderate,
    severe,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceSeverity withElement(Element? newElement) {
    return AllergyIntoleranceSeverity._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AllergyIntoleranceSeverity] from JSON.
  static AllergyIntoleranceSeverity fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverity.elementOnly.withElement(element);
    }
    return AllergyIntoleranceSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
