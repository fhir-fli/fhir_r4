import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Provider Qualification codes.
enum ExampleProviderQualificationCodes {
  /// Display: Dentist
  /// Definition: Dentist General Practitioner (DDS, DDM).
  @JsonValue('311405')
  value311405,
  /// Display: Ophthalmologist
  /// Definition: Ophthalmologist.
  @JsonValue('604215')
  value604215,
  /// Display: Optometrist
  /// Definition: Optometrist.
  @JsonValue('604210')
  value604210,
;

@override
  String toString() {
      switch(this) {
        case value311405: return '311405';
        case value604215: return '604215';
        case value604210: return '604210';
      }
      }
String toJson() => toString();
  ExampleProviderQualificationCodes fromString(String str) {
    switch(str) {
      case '311405': return ExampleProviderQualificationCodes.value311405;
      case '604215': return ExampleProviderQualificationCodes.value604215;
      case '604210': return ExampleProviderQualificationCodes.value604210;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExampleProviderQualificationCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

