import 'package:json_annotation/json_annotation.dart';

/// Supplemental data in a population for measuring purposes.
enum MeasureSupplementalDataExample {
  /// Display: Age
  /// Definition: Age Supplemental Data.
  @JsonValue('age')
  age,
  /// Display: Gender
  /// Definition: Gender Supplemental Data .
  @JsonValue('gender')
  gender,
  /// Display: Ethnicity
  /// Definition: Ethnicity Supplemental Data .
  @JsonValue('ethnicity')
  ethnicity,
  /// Display: Payer
  /// Definition: Payer Supplemental Data.
  @JsonValue('payer')
  payer,
;

@override
  String toString() {
      switch(this) {
        case age: return 'age';
        case gender: return 'gender';
        case ethnicity: return 'ethnicity';
        case payer: return 'payer';
      }
      }
String toJson() => toString();
  MeasureSupplementalDataExample fromString(String str) {
    switch(str) {
      case 'age': return MeasureSupplementalDataExample.age;
      case 'gender': return MeasureSupplementalDataExample.gender;
      case 'ethnicity': return MeasureSupplementalDataExample.ethnicity;
      case 'payer': return MeasureSupplementalDataExample.payer;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MeasureSupplementalDataExample fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

