// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The scoring type of the measure.
enum MeasureScoring {
  /// Display: Proportion
  /// Definition: The measure score is defined using a proportion.
  proportion('proportion'),

  /// Display: Ratio
  /// Definition: The measure score is defined using a ratio.
  ratio('ratio'),

  /// Display: Continuous Variable
  /// Definition: The score is defined by a calculation of some quantity.
  continuous_variable('continuous-variable'),

  /// Display: Cohort
  /// Definition: The measure is a cohort definition.
  cohort('cohort'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MeasureScoring(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MeasureScoring] instances.
  static MeasureScoring fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureScoring.elementOnly.withElement(element);
    }
    return MeasureScoring.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MeasureScoring withElement(Element? newElement) {
    return MeasureScoring.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
