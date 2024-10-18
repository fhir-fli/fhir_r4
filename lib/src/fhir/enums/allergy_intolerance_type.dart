// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identification of the underlying physiological mechanism for a Reaction Risk.
enum AllergyIntoleranceType {
  /// Display: Allergy
  /// Definition: A propensity for hypersensitive reaction(s) to a substance. These reactions are most typically type I hypersensitivity, plus other "allergy-like" reactions, including pseudoallergy.
  allergy('allergy'),

  /// Display: Intolerance
  /// Definition: A propensity for adverse reactions to a substance that is not judged to be allergic or "allergy-like". These reactions are typically (but not necessarily) non-immune. They are to some degree idiosyncratic and/or patient-specific (i.e. are not a reaction that is expected to occur with most or all patients given similar circumstances).
  intolerance('intolerance'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AllergyIntoleranceType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AllergyIntoleranceType] instances.
  static AllergyIntoleranceType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceType.elementOnly.withElement(
        element,
      );
    }
    return AllergyIntoleranceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AllergyIntoleranceType withElement(Element? newElement) {
    return AllergyIntoleranceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
