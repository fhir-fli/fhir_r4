import 'package:json_annotation/json_annotation.dart';

/// Indicates whether the account is available to be used.
enum AccountStatus {
  /// Display: Active
  /// Definition: This account is active and may be used.
  @JsonValue('active')
  active,

  /// Display: Inactive
  /// Definition: This account is inactive and should not be used to track financial information.
  @JsonValue('inactive')
  inactive,

  /// Display: Entered in error
  /// Definition: This instance should not have been part of this patient's medical record.
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: On Hold
  /// Definition: This account is on hold.
  @JsonValue('on-hold')
  on_hold,

  /// Display: Unknown
  /// Definition: The account status is unknown.
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case inactive:
        return 'inactive';
      case entered_in_error:
        return 'entered-in-error';
      case on_hold:
        return 'on-hold';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  AccountStatus fromString(String str) {
    switch (str) {
      case 'active':
        return AccountStatus.active;
      case 'inactive':
        return AccountStatus.inactive;
      case 'entered-in-error':
        return AccountStatus.entered_in_error;
      case 'on-hold':
        return AccountStatus.on_hold;
      case 'unknown':
        return AccountStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AccountStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
