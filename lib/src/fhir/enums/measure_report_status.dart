import 'package:json_annotation/json_annotation.dart';

/// The status of the measure report.
enum MeasureReportStatus {
  /// Display: Complete
  /// Definition: The report is complete and ready for use.
  @JsonValue('complete')
  complete,

  /// Display: Pending
  /// Definition: The report is currently being generated.
  @JsonValue('pending')
  pending,

  /// Display: Error
  /// Definition: An error occurred attempting to generate the report.
  @JsonValue('error')
  error,
  ;

  @override
  String toString() {
    switch (this) {
      case complete:
        return 'complete';
      case pending:
        return 'pending';
      case error:
        return 'error';
    }
  }

  String toJson() => toString();
  MeasureReportStatus fromString(String str) {
    switch (str) {
      case 'complete':
        return MeasureReportStatus.complete;
      case 'pending':
        return MeasureReportStatus.pending;
      case 'error':
        return MeasureReportStatus.error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  MeasureReportStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
