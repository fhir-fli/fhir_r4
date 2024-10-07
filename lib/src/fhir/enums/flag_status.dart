import 'package:json_annotation/json_annotation.dart';

/// Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.
enum FlagStatus {
  /// Display: Active
  /// Definition: A current flag that should be displayed to a user. A system may use the category to determine which user roles should view the flag.
  @JsonValue('active')
  active,

  /// Display: Inactive
  /// Definition: The flag no longer needs to be displayed.
  @JsonValue('inactive')
  inactive,

  /// Display: Entered in Error
  /// Definition: The flag was added in error and should no longer be displayed.
  @JsonValue('entered-in-error')
  entered_in_error,
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
    }
  }

  String toJson() => toString();
  FlagStatus fromString(String str) {
    switch (str) {
      case 'active':
        return FlagStatus.active;
      case 'inactive':
        return FlagStatus.inactive;
      case 'entered-in-error':
        return FlagStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  FlagStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
