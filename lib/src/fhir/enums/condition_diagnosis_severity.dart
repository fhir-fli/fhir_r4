/// Preferred value set for Condition/Diagnosis severity grading.
enum ConditionDiagnosisSeverity {
  value24484000,
  value6736007,
  value255604002,
  ;

  @override
  String toString() {
    switch (this) {
      case value24484000:
        return '24484000';
      case value6736007:
        return '6736007';
      case value255604002:
        return '255604002';
    }
  }

  String toJson() => toString();
  static ConditionDiagnosisSeverity fromString(String str) {
    switch (str) {
      case '24484000':
        return ConditionDiagnosisSeverity.value24484000;
      case '6736007':
        return ConditionDiagnosisSeverity.value6736007;
      case '255604002':
        return ConditionDiagnosisSeverity.value255604002;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ConditionDiagnosisSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
