import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease that the evaluation is against. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
enum ImmunizationEvaluationTargetDiseaseCodes {
  @JsonValue('1857005')
  value1857005,
  @JsonValue('397430003')
  value397430003,
  @JsonValue('14189004')
  value14189004,
  @JsonValue('36989005')
  value36989005,
  @JsonValue('36653000')
  value36653000,
  @JsonValue('76902006')
  value76902006,
  @JsonValue('709410003')
  value709410003,
  @JsonValue('27836007')
  value27836007,
  @JsonValue('398102009')
  value398102009,
;

@override
  String toString() {
      switch(this) {
        case value1857005: return '1857005';
        case value397430003: return '397430003';
        case value14189004: return '14189004';
        case value36989005: return '36989005';
        case value36653000: return '36653000';
        case value76902006: return '76902006';
        case value709410003: return '709410003';
        case value27836007: return '27836007';
        case value398102009: return '398102009';
      }
      }
String toJson() => toString();
  ImmunizationEvaluationTargetDiseaseCodes fromString(String str) {
    switch(str) {
      case '1857005': return ImmunizationEvaluationTargetDiseaseCodes.value1857005;
      case '397430003': return ImmunizationEvaluationTargetDiseaseCodes.value397430003;
      case '14189004': return ImmunizationEvaluationTargetDiseaseCodes.value14189004;
      case '36989005': return ImmunizationEvaluationTargetDiseaseCodes.value36989005;
      case '36653000': return ImmunizationEvaluationTargetDiseaseCodes.value36653000;
      case '76902006': return ImmunizationEvaluationTargetDiseaseCodes.value76902006;
      case '709410003': return ImmunizationEvaluationTargetDiseaseCodes.value709410003;
      case '27836007': return ImmunizationEvaluationTargetDiseaseCodes.value27836007;
      case '398102009': return ImmunizationEvaluationTargetDiseaseCodes.value398102009;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ImmunizationEvaluationTargetDiseaseCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
