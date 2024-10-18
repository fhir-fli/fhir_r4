// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MeasureReportType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MeasureReportType] instances.
  static MeasureReportType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportType.elementOnly.withElement(element);
    }
    return MeasureReportType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MeasureReportType withElement(Element? newElement) {
    return MeasureReportType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
