// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Laterality: SNOMED-CT concepts for 'left', 'right', and 'bilateral'
enum Laterality {
  /// Display: Unilateral left
  /// Definition:
  value419161000('419161000'),

  /// Display: Unilateral right
  /// Definition:
  value419465000('419465000'),

  /// Display: Bilateral
  /// Definition:
  value51440002('51440002'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const Laterality(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [Laterality] instances.
  static Laterality fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Laterality.elementOnly.withElement(element);
    }
    return Laterality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  Laterality withElement(Element? newElement) {
    return Laterality.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
