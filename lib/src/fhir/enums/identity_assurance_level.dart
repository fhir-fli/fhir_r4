import 'package:json_annotation/json_annotation.dart';

/// The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.
enum IdentityAssuranceLevel {
  /// Display: Level 1
  /// Definition: Little or no confidence in the asserted identity's accuracy.
  @JsonValue('level1')
  level1,

  /// Display: Level 2
  /// Definition: Some confidence in the asserted identity's accuracy.
  @JsonValue('level2')
  level2,

  /// Display: Level 3
  /// Definition: High confidence in the asserted identity's accuracy.
  @JsonValue('level3')
  level3,

  /// Display: Level 4
  /// Definition: Very high confidence in the asserted identity's accuracy.
  @JsonValue('level4')
  level4,
  ;

  @override
  String toString() {
    switch (this) {
      case level1:
        return 'level1';
      case level2:
        return 'level2';
      case level3:
        return 'level3';
      case level4:
        return 'level4';
    }
  }

  String toJson() => toString();
  static IdentityAssuranceLevel fromString(String str) {
    switch (str) {
      case 'level1':
        return IdentityAssuranceLevel.level1;
      case 'level2':
        return IdentityAssuranceLevel.level2;
      case 'level3':
        return IdentityAssuranceLevel.level3;
      case 'level4':
        return IdentityAssuranceLevel.level4;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static IdentityAssuranceLevel fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
