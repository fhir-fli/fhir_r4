import 'package:json_annotation/json_annotation.dart';

/// Identifier subgroups in a population for measuring purposes.
enum MeasureStratifierExample {
  /// Display: Age
  /// Definition: Age Stratification.
  @JsonValue('age')
  age,
  /// Display: Gender
  /// Definition: Gender Stratification.
  @JsonValue('gender')
  gender,
  /// Display: Region
  /// Definition: Region Stratification.
  @JsonValue('region')
  region,
;

@override
  String toString() {
      switch(this) {
        case age: return 'age';
        case gender: return 'gender';
        case region: return 'region';
      }
      }
String toJson() => toString();
  MeasureStratifierExample fromString(String str) {
    switch(str) {
      case 'age': return MeasureStratifierExample.age;
      case 'gender': return MeasureStratifierExample.gender;
      case 'region': return MeasureStratifierExample.region;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MeasureStratifierExample fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

