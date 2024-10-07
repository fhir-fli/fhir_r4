import 'package:json_annotation/json_annotation.dart';

/// This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.
enum EpisodeOfCareType {
  /// Display: Home and Community Care
  @JsonValue('hacc')
  hacc,

  /// Display: Post Acute Care
  @JsonValue('pac')
  pac,

  /// Display: Post coordinated diabetes program
  @JsonValue('diab')
  diab,

  /// Display: Drug and alcohol rehabilitation
  @JsonValue('da')
  da,

  /// Display: Community-based aged care
  @JsonValue('cacp')
  cacp,
  ;

  @override
  String toString() {
    switch (this) {
      case hacc:
        return 'hacc';
      case pac:
        return 'pac';
      case diab:
        return 'diab';
      case da:
        return 'da';
      case cacp:
        return 'cacp';
    }
  }

  String toJson() => toString();
  EpisodeOfCareType fromString(String str) {
    switch (str) {
      case 'hacc':
        return EpisodeOfCareType.hacc;
      case 'pac':
        return EpisodeOfCareType.pac;
      case 'diab':
        return EpisodeOfCareType.diab;
      case 'da':
        return EpisodeOfCareType.da;
      case 'cacp':
        return EpisodeOfCareType.cacp;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  EpisodeOfCareType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
