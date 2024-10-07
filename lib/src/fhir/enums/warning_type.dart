import 'package:json_annotation/json_annotation.dart';

/// Classification of warning type.
enum WarningType {
  /// Display: Get medical advice/attention.
  /// Definition: Get medical advice/attention.
  @JsonValue('P313')
  P313,
  /// Display: Get medical advice/attention if you feel unwell.
  /// Definition: Get medical advice/attention if you feel unwell.
  @JsonValue('P314')
  P314,
  /// Display: Get immediate medical advice/attention.
  /// Definition: Get immediate medical advice/attention.
  @JsonValue('P315')
  P315,
  /// Display: Specific treatment is urgent (see ... on this label).
  /// Definition: Specific treatment is urgent (see ... on this label).
  @JsonValue('P320')
  P320,
  /// Display: Specific treatment (see ... on this label).
  /// Definition: Specific treatment (see ... on this label).
  @JsonValue('P321')
  P321,
  /// Display: Specific measures (see ... on this label).
  /// Definition: Specific measures (see ... on this label).
  @JsonValue('P322')
  P322,
  /// Display: Rinse mouth.
  /// Definition: Rinse mouth.
  @JsonValue('P330')
  P330,
  /// Display: Do NOT induce vomiting.
  /// Definition: Do NOT induce vomiting.
  @JsonValue('P331')
  P331,
  /// Display: Remove/Take off immediately all contaminated clothing.
  /// Definition: Remove/Take off immediately all contaminated clothing.
  @JsonValue('P361')
  P361,
  /// Display: Wash contaminated clothing before reuse..
  /// Definition: Wash contaminated clothing before reuse.
  @JsonValue('P363')
  P363,
;

@override
  String toString() {
      switch(this) {
        case P313: return 'P313';
        case P314: return 'P314';
        case P315: return 'P315';
        case P320: return 'P320';
        case P321: return 'P321';
        case P322: return 'P322';
        case P330: return 'P330';
        case P331: return 'P331';
        case P361: return 'P361';
        case P363: return 'P363';
      }
      }
String toJson() => toString();
  WarningType fromString(String str) {
    switch(str) {
      case 'P313': return WarningType.P313;
      case 'P314': return WarningType.P314;
      case 'P315': return WarningType.P315;
      case 'P320': return WarningType.P320;
      case 'P321': return WarningType.P321;
      case 'P322': return WarningType.P322;
      case 'P330': return WarningType.P330;
      case 'P331': return WarningType.P331;
      case 'P361': return WarningType.P361;
      case 'P363': return WarningType.P363;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 WarningType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

