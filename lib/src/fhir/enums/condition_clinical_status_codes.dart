import 'package:json_annotation/json_annotation.dart';

/// Preferred value set for Condition Clinical Status.
enum ConditionClinicalStatusCodes {
  /// Display: Active
  /// Definition: The subject is currently experiencing the symptoms of the condition or there is evidence of the condition.
  @JsonValue('active')
  active,

  /// Display: Inactive
  /// Definition: The subject is no longer experiencing the symptoms of the condition or there is no longer evidence of the condition.
  @JsonValue('inactive')
  inactive,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case inactive:
        return 'inactive';
    }
  }

  String toJson() => toString();
  ConditionClinicalStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return ConditionClinicalStatusCodes.active;
      case 'inactive':
        return ConditionClinicalStatusCodes.inactive;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ConditionClinicalStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
