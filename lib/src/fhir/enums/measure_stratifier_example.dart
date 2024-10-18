// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifier subgroups in a population for measuring purposes.
enum MeasureStratifierExample {
  /// Display: Age
  /// Definition: Age Stratification.
  age('age'),

  /// Display: Gender
  /// Definition: Gender Stratification.
  gender('gender'),

  /// Display: Region
  /// Definition: Region Stratification.
  region('region'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MeasureStratifierExample(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MeasureStratifierExample] instances.
  static MeasureStratifierExample fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureStratifierExample.elementOnly.withElement(
        element,
      );
    }
    return MeasureStratifierExample.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MeasureStratifierExample withElement(Element? newElement) {
    return MeasureStratifierExample.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
