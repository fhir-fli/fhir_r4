// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust terminology code system that consists of or contains concepts to support the medication process.
enum ReasonMedicationGivenCodes {
  /// Display: None
  /// Definition: No reason known.
  a('a'),

  /// Display: Given as Ordered
  /// Definition: The administration was following an ordered protocol.
  b('b'),

  /// Display: Emergency
  /// Definition: The administration was needed to treat an emergency.
  c('c'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ReasonMedicationGivenCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ReasonMedicationGivenCodes] instances.
  static ReasonMedicationGivenCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReasonMedicationGivenCodes.elementOnly.withElement(element);
    }
    return ReasonMedicationGivenCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ReasonMedicationGivenCodes withElement(Element? newElement) {
    return ReasonMedicationGivenCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
