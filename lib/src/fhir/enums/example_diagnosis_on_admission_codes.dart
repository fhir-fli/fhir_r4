/// This value set includes example Diagnosis on Admission codes.
enum ExampleDiagnosisOnAdmissionCodes {
  /// Display: Yes
  /// Definition: Diagnosis was present at time of inpatient admission.
  y,

  /// Display: No
  /// Definition: Diagnosis was not present at time of inpatient admission.
  n,

  /// Display: Unknown
  /// Definition: Documentation insufficient to determine if condition was present at the time of inpatient admission.
  u,

  /// Display: Undetermined
  /// Definition: Clinically undetermined. Provider unable to clinically determine whether the condition was present at the time of inpatient admission.
  w,
  ;

  @override
  String toString() {
    switch (this) {
      case y:
        return 'y';
      case n:
        return 'n';
      case u:
        return 'u';
      case w:
        return 'w';
    }
  }

  /// Returns a [String] from a [ExampleDiagnosisOnAdmissionCodes] enum.
  String toJson() => toString();

  /// Returns a [ExampleDiagnosisOnAdmissionCodes] from a [String] enum.
  static ExampleDiagnosisOnAdmissionCodes fromString(String str) {
    switch (str) {
      case 'y':
        return ExampleDiagnosisOnAdmissionCodes.y;
      case 'n':
        return ExampleDiagnosisOnAdmissionCodes.n;
      case 'u':
        return ExampleDiagnosisOnAdmissionCodes.u;
      case 'w':
        return ExampleDiagnosisOnAdmissionCodes.w;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleDiagnosisOnAdmissionCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleDiagnosisOnAdmissionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
