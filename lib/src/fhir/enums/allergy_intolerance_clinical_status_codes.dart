// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for AllergyIntolerance Clinical Status.
enum AllergyIntoleranceClinicalStatusCodes {
  /// Display: Active
  /// Definition: The subject is currently experiencing, or is at risk of, a reaction to the identified substance.
  active('active'),

  /// Display: Inactive
  /// Definition: The subject is no longer at risk of a reaction to the identified substance.
  inactive('inactive'),

  /// Display: Resolved
  /// Definition: A reaction to the identified substance has been clinically reassessed by testing or re-exposure and is considered no longer to be present. Re-exposure could be accidental, unplanned, or outside of any clinical setting.
  resolved('resolved'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AllergyIntoleranceClinicalStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AllergyIntoleranceClinicalStatusCodes] instances.
  static AllergyIntoleranceClinicalStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  AllergyIntoleranceClinicalStatusCodes withElement(Element? newElement) {
    return AllergyIntoleranceClinicalStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
