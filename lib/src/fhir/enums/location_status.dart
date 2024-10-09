import 'package:json_annotation/json_annotation.dart';

/// Indicates whether the location is still in use.
enum LocationStatus {
  /// Display: Active
  /// Definition: The location is operational.
  @JsonValue('active')
  active,

  /// Display: Suspended
  /// Definition: The location is temporarily closed.
  @JsonValue('suspended')
  suspended,

  /// Display: Inactive
  /// Definition: The location is no longer used.
  @JsonValue('inactive')
  inactive,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case suspended:
        return 'suspended';
      case inactive:
        return 'inactive';
    }
  }

  String toJson() => toString();
  static LocationStatus fromString(String str) {
    switch (str) {
      case 'active':
        return LocationStatus.active;
      case 'suspended':
        return LocationStatus.suspended;
      case 'inactive':
        return LocationStatus.inactive;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static LocationStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
