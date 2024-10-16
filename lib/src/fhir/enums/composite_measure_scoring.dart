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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CompositeMeasureScoring(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CompositeMeasureScoring fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositeMeasureScoring.elementOnly.withElement(element);
    }
    return CompositeMeasureScoring.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CompositeMeasureScoring withElement(Element? newElement) {
    return CompositeMeasureScoring.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
