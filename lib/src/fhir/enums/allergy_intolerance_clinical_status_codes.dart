import 'package:json_annotation/json_annotation.dart';

/// Preferred value set for AllergyIntolerance Clinical Status.
enum AllergyIntoleranceClinicalStatusCodes {
  /// Display: Active
  /// Definition: The subject is currently experiencing, or is at risk of, a reaction to the identified substance.
  @JsonValue('active')
  active,

  /// Display: Inactive
  /// Definition: The subject is no longer at risk of a reaction to the identified substance.
  @JsonValue('inactive')
  inactive,

  /// Display: Resolved
  /// Definition: A reaction to the identified substance has been clinically reassessed by testing or re-exposure and is considered no longer to be present. Re-exposure could be accidental, unplanned, or outside of any clinical setting.
  @JsonValue('resolved')
  resolved,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case inactive:
        return 'inactive';
      case resolved:
        return 'resolved';
    }
  }

  String toJson() => toString();
  AllergyIntoleranceClinicalStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return AllergyIntoleranceClinicalStatusCodes.active;
      case 'inactive':
        return AllergyIntoleranceClinicalStatusCodes.inactive;
      case 'resolved':
        return AllergyIntoleranceClinicalStatusCodes.resolved;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AllergyIntoleranceClinicalStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
