import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the body site where the vaccination occurred. This value set is provided as a suggestive example.
enum CodesForImmunizationSiteOfAdministration {
  /// Display: Left arm
  @JsonValue('LA')
  LA,

  /// Display: Right arm
  @JsonValue('RA')
  RA,
  ;

  @override
  String toString() {
    switch (this) {
      case LA:
        return 'LA';
      case RA:
        return 'RA';
    }
  }

  String toJson() => toString();
  static CodesForImmunizationSiteOfAdministration fromString(String str) {
    switch (str) {
      case 'LA':
        return CodesForImmunizationSiteOfAdministration.LA;
      case 'RA':
        return CodesForImmunizationSiteOfAdministration.RA;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CodesForImmunizationSiteOfAdministration fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
