import 'package:json_annotation/json_annotation.dart';

/// Procedure Category code: A selection of relevant SNOMED CT codes.
enum ProcedureCategoryCodesSNOMEDCT {
  @JsonValue('24642003')
  value24642003,
  @JsonValue('409063005')
  value409063005,
  @JsonValue('409073007')
  value409073007,
  @JsonValue('387713003')
  value387713003,
  @JsonValue('103693007')
  value103693007,
  @JsonValue('46947000')
  value46947000,
  @JsonValue('410606002')
  value410606002,
;

@override
  String toString() {
      switch(this) {
        case value24642003: return '24642003';
        case value409063005: return '409063005';
        case value409073007: return '409073007';
        case value387713003: return '387713003';
        case value103693007: return '103693007';
        case value46947000: return '46947000';
        case value410606002: return '410606002';
      }
      }
String toJson() => toString();
  ProcedureCategoryCodesSNOMEDCT fromString(String str) {
    switch(str) {
      case '24642003': return ProcedureCategoryCodesSNOMEDCT.value24642003;
      case '409063005': return ProcedureCategoryCodesSNOMEDCT.value409063005;
      case '409073007': return ProcedureCategoryCodesSNOMEDCT.value409073007;
      case '387713003': return ProcedureCategoryCodesSNOMEDCT.value387713003;
      case '103693007': return ProcedureCategoryCodesSNOMEDCT.value103693007;
      case '46947000': return ProcedureCategoryCodesSNOMEDCT.value46947000;
      case '410606002': return ProcedureCategoryCodesSNOMEDCT.value410606002;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ProcedureCategoryCodesSNOMEDCT fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
