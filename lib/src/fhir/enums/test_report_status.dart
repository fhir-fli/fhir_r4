/// The current status of the test report.
enum TestReportStatus {
  /// Display: Completed
  /// Definition: All test operations have completed.
  completed,

  /// Display: In Progress
  /// Definition: A test operations is currently executing.
  in_progress,

  /// Display: Waiting
  /// Definition: A test operation is waiting for an external client request.
  waiting,

  /// Display: Stopped
  /// Definition: The test script execution was manually stopped.
  stopped,

  /// Display: Entered In Error
  /// Definition: This test report was entered or created in error.
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

  /// Returns a [String] from a [TestReportStatus] enum.
  String toJson() => toString();

  /// Returns a [TestReportStatus] from a [String] enum.
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

  /// Returns a [TestReportStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static TestReportStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
