/// This value set defines a set of codes that can be used to express the role of a diagnosis on the Encounter or EpisodeOfCare record.
enum DiagnosisRole {
  /// Display: Admission diagnosis
  AD,

  /// Display: Discharge diagnosis
  DD,

  /// Display: Chief complaint
  CC,

  /// Display: Comorbidity diagnosis
  CM,

  /// Display: pre-op diagnosis
  pre_op,

  /// Display: post-op diagnosis
  post_op,

  /// Display: Billing
  billing,
  ;

  @override
  String toString() {
    switch (this) {
      case AD:
        return 'AD';
      case DD:
        return 'DD';
      case CC:
        return 'CC';
      case CM:
        return 'CM';
      case pre_op:
        return 'pre-op';
      case post_op:
        return 'post-op';
      case billing:
        return 'billing';
    }
  }

  String toJson() => toString();
  static DiagnosisRole fromString(String str) {
    switch (str) {
      case 'AD':
        return DiagnosisRole.AD;
      case 'DD':
        return DiagnosisRole.DD;
      case 'CC':
        return DiagnosisRole.CC;
      case 'CM':
        return DiagnosisRole.CM;
      case 'pre-op':
        return DiagnosisRole.pre_op;
      case 'post-op':
        return DiagnosisRole.post_op;
      case 'billing':
        return DiagnosisRole.billing;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DiagnosisRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
