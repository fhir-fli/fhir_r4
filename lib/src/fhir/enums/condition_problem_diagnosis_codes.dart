/// Example value set for Condition/Problem/Diagnosis codes.
enum ConditionProblemDiagnosisCodes {
  /// Display: No current problems or disability
  value160245001,
  ;

  @override
  String toString() {
    switch (this) {
      case value160245001:
        return '160245001';
    }
  }

  String toJson() => toString();
  static ConditionProblemDiagnosisCodes fromString(String str) {
    switch (str) {
      case '160245001':
        return ConditionProblemDiagnosisCodes.value160245001;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ConditionProblemDiagnosisCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
