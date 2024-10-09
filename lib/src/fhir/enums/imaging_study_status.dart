/// The status of the ImagingStudy.
enum ImagingStudyStatus {
  /// Display: Registered
  /// Definition: The existence of the imaging study is registered, but there is nothing yet available.
  registered,

  /// Display: Available
  /// Definition: At least one instance has been associated with this imaging study.
  available,

  /// Display: Cancelled
  /// Definition: The imaging study is unavailable because the imaging study was not started or not completed (also sometimes called "aborted").
  cancelled,

  /// Display: Entered in Error
  /// Definition: The imaging study has been withdrawn following a previous final release.  This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  entered_in_error,

  /// Display: Unknown
  /// Definition: The system does not know which of the status values currently applies for this request. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case registered:
        return 'registered';
      case available:
        return 'available';
      case cancelled:
        return 'cancelled';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static ImagingStudyStatus fromString(String str) {
    switch (str) {
      case 'registered':
        return ImagingStudyStatus.registered;
      case 'available':
        return ImagingStudyStatus.available;
      case 'cancelled':
        return ImagingStudyStatus.cancelled;
      case 'entered-in-error':
        return ImagingStudyStatus.entered_in_error;
      case 'unknown':
        return ImagingStudyStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ImagingStudyStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
