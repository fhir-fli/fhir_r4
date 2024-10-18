// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The composite scoring method of the measure.
enum CompositeMeasureScoring {
  /// Display: Opportunity
  /// Definition: Opportunity scoring combines the scores from component measures by combining the numerators and denominators for each component.
  opportunity('opportunity'),

  /// Display: All-or-nothing
  /// Definition: All-or-nothing scoring includes an individual in the numerator of the composite measure if they are in the numerators of all of the component measures in which they are in the denominator.
  all_or_nothing('all-or-nothing'),

  /// Display: Linear
  /// Definition: Linear scoring gives an individual a score based on the number of numerators in which they appear.
  linear('linear'),

  /// Display: Weighted
  /// Definition: Weighted scoring gives an individual a score based on a weighted factor for each component numerator in which they appear.
  weighted('weighted'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CompositeMeasureScoring(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CompositeMeasureScoring] instances.
  static CompositeMeasureScoring fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositeMeasureScoring.elementOnly.withElement(
        element,
      );
    }
    return CompositeMeasureScoring.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CompositeMeasureScoring withElement(Element? newElement) {
    return CompositeMeasureScoring.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
