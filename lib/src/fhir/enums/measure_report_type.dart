import 'package:fhir_r4/fhir_r4.dart';

/// The type of the measure report.
enum MeasureReportType {
  /// Display: Individual
  /// Definition: An individual report that provides information on the performance for a given measure with respect to a single subject.
  individual('individual'),

  /// Display: Subject List
  /// Definition: A subject list report that includes a listing of subjects that satisfied each population criteria in the measure.
  subject_list('subject-list'),

  /// Display: Summary
  /// Definition: A summary report that returns the number of members in each population criteria for the measure.
  summary('summary'),

  /// Display: Data Collection
  /// Definition: A data collection report that contains data-of-interest for the measure.
  data_collection('data-collection'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureReportType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureReportType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportType.elementOnly.withElement(element);
    }
    return MeasureReportType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureReportType withElement(Element? newElement) {
    return MeasureReportType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
