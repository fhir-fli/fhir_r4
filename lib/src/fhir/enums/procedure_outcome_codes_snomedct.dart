import 'package:json_annotation/json_annotation.dart';

/// Procedure Outcome code: A selection of relevant SNOMED CT codes.
enum ProcedureOutcomeCodesSNOMEDCT {
  @JsonValue('385669000')
  value385669000,
  @JsonValue('385671000')
  value385671000,
  @JsonValue('385670004')
  value385670004,
;

@override
  String toString() {
      switch(this) {
        case value385669000: return '385669000';
        case value385671000: return '385671000';
        case value385670004: return '385670004';
      }
      }
String toJson() => toString();
  ProcedureOutcomeCodesSNOMEDCT fromString(String str) {
    switch(str) {
      case '385669000': return ProcedureOutcomeCodesSNOMEDCT.value385669000;
      case '385671000': return ProcedureOutcomeCodesSNOMEDCT.value385671000;
      case '385670004': return ProcedureOutcomeCodesSNOMEDCT.value385670004;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ProcedureOutcomeCodesSNOMEDCT fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

