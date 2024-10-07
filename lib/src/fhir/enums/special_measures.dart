import 'package:json_annotation/json_annotation.dart';

/// Extra measures defined for a Medicinal Product, such as a requirement to conduct post-authorisation studies.
enum SpecialMeasures {
  /// Display: Requirement to conduct post-authorisation studies
  /// Definition: Requirement to conduct post-authorisation studies
  @JsonValue('Post-authorisationStudies')
  Post_authorisationStudies,
  ;

  @override
  String toString() {
    switch (this) {
      case Post_authorisationStudies:
        return 'Post-authorisationStudies';
    }
  }

  String toJson() => toString();
  SpecialMeasures fromString(String str) {
    switch (str) {
      case 'Post-authorisationStudies':
        return SpecialMeasures.Post_authorisationStudies;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SpecialMeasures fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
