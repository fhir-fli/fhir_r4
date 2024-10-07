import 'package:json_annotation/json_annotation.dart';

/// How an element value is interpreted when discrimination is evaluated.
enum DiscriminatorType {
  /// Display: Value
  /// Definition: The slices have different values in the nominated element.
  @JsonValue('value')
  value,

  /// Display: Exists
  /// Definition: The slices are differentiated by the presence or absence of the nominated element.
  @JsonValue('exists')
  exists,

  /// Display: Pattern
  /// Definition: The slices have different values in the nominated element, as determined by testing them against the applicable ElementDefinition.pattern[x].
  @JsonValue('pattern')
  pattern,

  /// Display: Type
  /// Definition: The slices are differentiated by type of the nominated element.
  @JsonValue('type')
  type,

  /// Display: Profile
  /// Definition: The slices are differentiated by conformance of the nominated element to a specified profile. Note that if the path specifies .resolve() then the profile is the target profile on the reference. In this case, validation by the possible profiles is required to differentiate the slices.
  @JsonValue('profile')
  profile,
  ;

  @override
  String toString() {
    switch (this) {
      case value:
        return 'value';
      case exists:
        return 'exists';
      case pattern:
        return 'pattern';
      case type:
        return 'type';
      case profile:
        return 'profile';
    }
  }

  String toJson() => toString();
  DiscriminatorType fromString(String str) {
    switch (str) {
      case 'value':
        return DiscriminatorType.value;
      case 'exists':
        return DiscriminatorType.exists;
      case 'pattern':
        return DiscriminatorType.pattern;
      case 'type':
        return DiscriminatorType.type;
      case 'profile':
        return DiscriminatorType.profile;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  DiscriminatorType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
