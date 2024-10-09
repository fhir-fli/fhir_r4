import 'package:json_annotation/json_annotation.dart';

/// Codes providing the status of an observation.
enum ObservationStatus {
  /// Display: Registered
  /// Definition: The existence of the observation is registered, but there is no result yet available.
  @JsonValue('registered')
  registered,

  /// Display: Preliminary
  /// Definition: This is an initial or interim observation: data may be incomplete or unverified.
  @JsonValue('preliminary')
  preliminary,

  /// Display: Final
  /// Definition: The observation is complete and there are no further actions needed. Additional information such "released", "signed", etc would be represented using [Provenance](provenance.html) which provides not only the act but also the actors and dates and other related data. These act states would be associated with an observation status of `preliminary` until they are all completed and then a status of `final` would be applied.
  @JsonValue('final')
  final_,

  /// Display: Amended
  /// Definition: Subsequent to being Final, the observation has been modified subsequent.  This includes updates/new information and corrections.
  @JsonValue('amended')
  amended,

  /// Display: Corrected
  /// Definition: Subsequent to being Final, the observation has been modified to correct an error in the test result.
  @JsonValue('corrected')
  corrected,

  /// Display: Cancelled
  /// Definition: The observation is unavailable because the measurement was not started or not completed (also sometimes called "aborted").
  @JsonValue('cancelled')
  cancelled,

  /// Display: Entered in Error
  /// Definition: The observation has been withdrawn following previous final release.  This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case registered:
        return 'registered';
      case preliminary:
        return 'preliminary';
      case final_:
        return 'final';
      case amended:
        return 'amended';
      case corrected:
        return 'corrected';
      case cancelled:
        return 'cancelled';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static ObservationStatus fromString(String str) {
    switch (str) {
      case 'registered':
        return ObservationStatus.registered;
      case 'preliminary':
        return ObservationStatus.preliminary;
      case 'final':
        return ObservationStatus.final_;
      case 'amended':
        return ObservationStatus.amended;
      case 'corrected':
        return ObservationStatus.corrected;
      case 'cancelled':
        return ObservationStatus.cancelled;
      case 'entered-in-error':
        return ObservationStatus.entered_in_error;
      case 'unknown':
        return ObservationStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ObservationStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
