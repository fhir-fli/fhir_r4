/// Example value set for the type of stages of cancer and other conditions
enum ConditionStageType {
  /// Display: Pathological staging (qualifier value)
  value261023001,

  /// Display: Clinical staging (qualifier value)
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

  /// Returns a [String] from a [ConditionStageType] enum.
  String toJson() => toString();

  /// Returns a [ConditionStageType] from a [String] enum.
  static ConditionStageType fromString(String str) {
    switch (str) {
      case '261023001':
        return ConditionStageType.value261023001;
      case '260998006':
        return ConditionStageType.value260998006;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConditionStageType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConditionStageType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
