import 'package:fhir_r4/fhir_r4.dart';

/// Example Measure Stratification Value for MeasureReports Resource.
enum MeasureReportStratifierValueExample {
  /// Display: Northwest
  /// Definition: Northwest region stratification.
  northwest('northwest'),

  /// Display: Northeast
  /// Definition: Northeast region stratification.
  northeast('northeast'),

  /// Display: Soutwest
  /// Definition: Soutwest region stratification.
  southwest('southwest'),

  /// Display: Southeast
  /// Definition: Southeast region stratification.
  southeast('southeast'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureReportStratifierValueExample(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureReportStratifierValueExample fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStratifierValueExample.elementOnly
          .withElement(element);
    }
    return MeasureReportStratifierValueExample.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureReportStratifierValueExample withElement(Element? newElement) {
    return MeasureReportStratifierValueExample.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
