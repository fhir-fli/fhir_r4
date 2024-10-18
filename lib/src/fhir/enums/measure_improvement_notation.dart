// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Observation values that indicate what change in a measurement value or score is indicative of an improvement in the measured item or scored issue.
enum MeasureImprovementNotation {
  /// Display: Increased score indicates improvement
  /// Definition: Improvement is indicated as an increase in the score or measurement (e.g. Higher score indicates better quality).
  increase('increase'),

  /// Display: Decreased score indicates improvement
  /// Definition: Improvement is indicated as a decrease in the score or measurement (e.g. Lower score indicates better quality).
  decrease('decrease'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MeasureImprovementNotation(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MeasureImprovementNotation] instances.
  static MeasureImprovementNotation fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureImprovementNotation.elementOnly.withElement(
        element,
      );
    }
    return MeasureImprovementNotation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MeasureImprovementNotation withElement(Element? newElement) {
    return MeasureImprovementNotation.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
