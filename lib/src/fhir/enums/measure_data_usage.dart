import 'package:fhir_r4/fhir_r4.dart';

/// The intended usage for supplemental data elements in the measure.
enum MeasureDataUsage {
  /// Display: Supplemental Data
  /// Definition: The data is intended to be provided as additional information alongside the measure results.
  supplemental_data('supplemental-data'),

  /// Display: Risk Adjustment Factor
  /// Definition: The data is intended to be used to calculate and apply a risk adjustment model for the measure.
  risk_adjustment_factor('risk-adjustment-factor'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureDataUsage(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureDataUsage fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureDataUsage.elementOnly.withElement(element);
    }
    return MeasureDataUsage.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureDataUsage withElement(Element? newElement) {
    return MeasureDataUsage.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
