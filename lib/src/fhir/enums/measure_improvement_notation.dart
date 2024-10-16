import 'package:fhir_r4/fhir_r4.dart';

/// Observation values that indicate what change in a measurement value or score is indicative of an improvement in the measured item or scored issue.
enum MeasureImprovementNotation {
  /// Display: Increased score indicates improvement
  /// Definition: Improvement is indicated as an increase in the score or measurement (e.g. Higher score indicates better quality).
  increase('increase'),

  /// Display: Decreased score indicates improvement
  /// Definition: Improvement is indicated as a decrease in the score or measurement (e.g. Lower score indicates better quality).
  decrease('decrease'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureImprovementNotation(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureImprovementNotation fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureImprovementNotation.elementOnly.withElement(element);
    }
    return MeasureImprovementNotation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureImprovementNotation withElement(Element? newElement) {
    return MeasureImprovementNotation.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
