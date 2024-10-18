// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Degree of preference of a type of conditioned specimen.
enum SpecimenContainedPreference {
  /// Display: Preferred
  /// Definition: This type of contained specimen is preferred to collect this kind of specimen.
  preferred('preferred'),

  /// Display: Alternate
  /// Definition: This type of conditioned specimen is an alternate.
  alternate('alternate'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SpecimenContainedPreference(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SpecimenContainedPreference] instances.
  static SpecimenContainedPreference fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenContainedPreference.elementOnly.withElement(element);
    }
    return SpecimenContainedPreference.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SpecimenContainedPreference withElement(Element? newElement) {
    return SpecimenContainedPreference.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
