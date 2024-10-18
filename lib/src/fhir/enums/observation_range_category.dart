// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the category of observation range.
enum ObservationRangeCategory {
  /// Display: reference range
  /// Definition: Reference (Normal) Range for Ordinal and Continuous Observations.
  reference('reference'),

  /// Display: critical range
  /// Definition: Critical Range for Ordinal and Continuous Observations.
  critical('critical'),

  /// Display: absolute range
  /// Definition: Absolute Range for Ordinal and Continuous Observations. Results outside this range are not possible.
  absolute('absolute'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ObservationRangeCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ObservationRangeCategory] instances.
  static ObservationRangeCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationRangeCategory.elementOnly.withElement(element);
    }
    return ObservationRangeCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ObservationRangeCategory withElement(Element? newElement) {
    return ObservationRangeCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
