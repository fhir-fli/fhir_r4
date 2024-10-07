import 'package:json_annotation/json_annotation.dart';

/// Example value set for the type of stages of cancer and other conditions
enum ConditionStageType {
  /// Display: Pathological staging (qualifier value)
  @JsonValue('261023001')
  value261023001,

  /// Display: Clinical staging (qualifier value)
  @JsonValue('260998006')
  value260998006,
  ;

  @override
  String toString() {
    switch (this) {
      case value261023001:
        return '261023001';
      case value260998006:
        return '260998006';
    }
  }

  String toJson() => toString();
  ConditionStageType fromString(String str) {
    switch (str) {
      case '261023001':
        return ConditionStageType.value261023001;
      case '260998006':
        return ConditionStageType.value260998006;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ConditionStageType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
