import 'package:json_annotation/json_annotation.dart';

/// The type of the measure report.
enum MeasureReportType {
  /// Display: Individual
  /// Definition: An individual report that provides information on the performance for a given measure with respect to a single subject.
  @JsonValue('individual')
  individual,

  /// Display: Subject List
  /// Definition: A subject list report that includes a listing of subjects that satisfied each population criteria in the measure.
  @JsonValue('subject-list')
  subject_list,

  /// Display: Summary
  /// Definition: A summary report that returns the number of members in each population criteria for the measure.
  @JsonValue('summary')
  summary,

  /// Display: Data Collection
  /// Definition: A data collection report that contains data-of-interest for the measure.
  @JsonValue('data-collection')
  data_collection,
  ;

  @override
  String toString() {
    switch (this) {
      case individual:
        return 'individual';
      case subject_list:
        return 'subject-list';
      case summary:
        return 'summary';
      case data_collection:
        return 'data-collection';
    }
  }

  String toJson() => toString();
  MeasureReportType fromString(String str) {
    switch (str) {
      case 'individual':
        return MeasureReportType.individual;
      case 'subject-list':
        return MeasureReportType.subject_list;
      case 'summary':
        return MeasureReportType.summary;
      case 'data-collection':
        return MeasureReportType.data_collection;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  MeasureReportType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
