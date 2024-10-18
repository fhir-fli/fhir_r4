// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Measure Groups for the Measure Resource.
enum MeasureGroupExample {
  /// Display: Primary Rate
  /// Definition: Primary Measure Group.
  primary_rate('primary-rate'),

  /// Display: Secondary Rate
  /// Definition: Secondary Measure Group
  secondary_rate('secondary-rate'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MeasureGroupExample(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MeasureGroupExample] instances.
  static MeasureGroupExample fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureGroupExample.elementOnly.withElement(
        element,
      );
    }
    return MeasureGroupExample.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MeasureGroupExample withElement(Element? newElement) {
    return MeasureGroupExample.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
