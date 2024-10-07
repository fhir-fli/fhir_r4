import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Claim Care Team Role codes.
enum ClaimCareTeamRoleCodes {
  /// Display: Primary provider
  /// Definition: The primary care provider.
  @JsonValue('primary')
  primary,

  /// Display: Assisting Provider
  /// Definition: Assisting care provider.
  @JsonValue('assist')
  assist,

  /// Display: Supervising Provider
  /// Definition: Supervising care provider.
  @JsonValue('supervisor')
  supervisor,

  /// Display: Other
  /// Definition: Other role on the care team.
  @JsonValue('other')
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case primary:
        return 'primary';
      case assist:
        return 'assist';
      case supervisor:
        return 'supervisor';
      case other:
        return 'other';
    }
  }

  String toJson() => toString();
  ClaimCareTeamRoleCodes fromString(String str) {
    switch (str) {
      case 'primary':
        return ClaimCareTeamRoleCodes.primary;
      case 'assist':
        return ClaimCareTeamRoleCodes.assist;
      case 'supervisor':
        return ClaimCareTeamRoleCodes.supervisor;
      case 'other':
        return ClaimCareTeamRoleCodes.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ClaimCareTeamRoleCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
