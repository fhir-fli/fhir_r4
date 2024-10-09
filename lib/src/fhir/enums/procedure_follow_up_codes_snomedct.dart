import 'package:json_annotation/json_annotation.dart';

/// Procedure follow up codes: A selection of SNOMED CT codes relevant to procedure follow up.
enum ProcedureFollowUpCodesSNOMEDCT {
  @JsonValue('18949003')
  value18949003,
  @JsonValue('30549001')
  value30549001,
  @JsonValue('241031001')
  value241031001,
  @JsonValue('35963001')
  value35963001,
  @JsonValue('225164002')
  value225164002,
  @JsonValue('447346005')
  value447346005,
  @JsonValue('229506003')
  value229506003,
  @JsonValue('274441001')
  value274441001,
  @JsonValue('394725008')
  value394725008,
  @JsonValue('359825008')
  value359825008,
  ;

  @override
  String toString() {
    switch (this) {
      case value18949003:
        return '18949003';
      case value30549001:
        return '30549001';
      case value241031001:
        return '241031001';
      case value35963001:
        return '35963001';
      case value225164002:
        return '225164002';
      case value447346005:
        return '447346005';
      case value229506003:
        return '229506003';
      case value274441001:
        return '274441001';
      case value394725008:
        return '394725008';
      case value359825008:
        return '359825008';
    }
  }

  String toJson() => toString();
  static ProcedureFollowUpCodesSNOMEDCT fromString(String str) {
    switch (str) {
      case '18949003':
        return ProcedureFollowUpCodesSNOMEDCT.value18949003;
      case '30549001':
        return ProcedureFollowUpCodesSNOMEDCT.value30549001;
      case '241031001':
        return ProcedureFollowUpCodesSNOMEDCT.value241031001;
      case '35963001':
        return ProcedureFollowUpCodesSNOMEDCT.value35963001;
      case '225164002':
        return ProcedureFollowUpCodesSNOMEDCT.value225164002;
      case '447346005':
        return ProcedureFollowUpCodesSNOMEDCT.value447346005;
      case '229506003':
        return ProcedureFollowUpCodesSNOMEDCT.value229506003;
      case '274441001':
        return ProcedureFollowUpCodesSNOMEDCT.value274441001;
      case '394725008':
        return ProcedureFollowUpCodesSNOMEDCT.value394725008;
      case '359825008':
        return ProcedureFollowUpCodesSNOMEDCT.value359825008;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ProcedureFollowUpCodesSNOMEDCT fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
