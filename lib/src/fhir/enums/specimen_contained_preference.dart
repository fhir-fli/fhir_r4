import 'package:json_annotation/json_annotation.dart';

/// Degree of preference of a type of conditioned specimen.
enum SpecimenContainedPreference {
  /// Display: Preferred
  /// Definition: This type of contained specimen is preferred to collect this kind of specimen.
  @JsonValue('preferred')
  preferred,
  /// Display: Alternate
  /// Definition: This type of conditioned specimen is an alternate.
  @JsonValue('alternate')
  alternate,
;

@override
  String toString() {
      switch(this) {
        case preferred: return 'preferred';
        case alternate: return 'alternate';
      }
      }
String toJson() => toString();
  SpecimenContainedPreference fromString(String str) {
    switch(str) {
      case 'preferred': return SpecimenContainedPreference.preferred;
      case 'alternate': return SpecimenContainedPreference.alternate;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SpecimenContainedPreference fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

