import 'package:json_annotation/json_annotation.dart';

/// The current status of the test report.
enum TestReportStatus {
  /// Display: Completed
  /// Definition: All test operations have completed.
  @JsonValue('completed')
  completed,

  /// Display: In Progress
  /// Definition: A test operations is currently executing.
  @JsonValue('in-progress')
  in_progress,

  /// Display: Waiting
  /// Definition: A test operation is waiting for an external client request.
  @JsonValue('waiting')
  waiting,

  /// Display: Stopped
  /// Definition: The test script execution was manually stopped.
  @JsonValue('stopped')
  stopped,

  /// Display: Entered In Error
  /// Definition: This test report was entered or created in error.
  @JsonValue('entered-in-error')
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case completed:
        return 'completed';
      case in_progress:
        return 'in-progress';
      case waiting:
        return 'waiting';
      case stopped:
        return 'stopped';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  static TestReportStatus fromString(String str) {
    switch (str) {
      case 'completed':
        return TestReportStatus.completed;
      case 'in-progress':
        return TestReportStatus.in_progress;
      case 'waiting':
        return TestReportStatus.waiting;
      case 'stopped':
        return TestReportStatus.stopped;
      case 'entered-in-error':
        return TestReportStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static TestReportStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
