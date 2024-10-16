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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureScoring(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureScoring fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureScoring.elementOnly.withElement(element);
    }
    return MeasureScoring.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureScoring withElement(Element? newElement) {
    return MeasureScoring.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
