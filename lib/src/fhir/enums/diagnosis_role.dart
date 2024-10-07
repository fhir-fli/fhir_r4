import 'package:json_annotation/json_annotation.dart';

/// This value set defines a set of codes that can be used to express the role of a diagnosis on the Encounter or EpisodeOfCare record.
enum DiagnosisRole {
  /// Display: Admission diagnosis
  @JsonValue('AD')
  AD,

  /// Display: Discharge diagnosis
  @JsonValue('DD')
  DD,

  /// Display: Chief complaint
  @JsonValue('CC')
  CC,

  /// Display: Comorbidity diagnosis
  @JsonValue('CM')
  CM,

  /// Display: pre-op diagnosis
  @JsonValue('pre-op')
  pre_op,

  /// Display: post-op diagnosis
  @JsonValue('post-op')
  post_op,

  /// Display: Billing
  @JsonValue('billing')
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
  DiagnosisRole fromString(String str) {
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

  DiagnosisRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
