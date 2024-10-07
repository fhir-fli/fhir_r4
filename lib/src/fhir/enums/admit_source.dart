import 'package:json_annotation/json_annotation.dart';

/// This value set defines a set of codes that can be used to indicate from where the patient came in.
enum AdmitSource {
  /// Display: Transferred from other hospital
  /// Definition: The Patient has been transferred from another hospital for this encounter.
  @JsonValue('hosp-trans')
  hosp_trans,
  /// Display: From accident/emergency department
  /// Definition: The patient has been transferred from the emergency department within the hospital. This is typically used in the transition to an inpatient encounter
  @JsonValue('emd')
  emd,
  /// Display: From outpatient department
  /// Definition: The patient has been transferred from an outpatient department within the hospital.
  @JsonValue('outp')
  outp,
  /// Display: Born in hospital
  /// Definition: The patient is a newborn and the encounter will track the baby related activities (as opposed to the Mothers encounter - that may be associated using the newborn encounters partof property)
  @JsonValue('born')
  born,
  /// Display: General Practitioner referral
  /// Definition: The patient has been admitted due to a referred from a General Practitioner.
  @JsonValue('gp')
  gp,
  /// Display: Medical Practitioner/physician referral
  /// Definition: The patient has been admitted due to a referred from a Specialist (as opposed to a General Practitioner).
  @JsonValue('mp')
  mp,
  /// Display: From nursing home
  /// Definition: The patient has been transferred from a nursing home.
  @JsonValue('nursing')
  nursing,
  /// Display: From psychiatric hospital
  /// Definition: The patient has been transferred from a psychiatric facility.
  @JsonValue('psych')
  psych,
  /// Display: From rehabilitation facility
  /// Definition: The patient has been transferred from a rehabilitation facility or clinic.
  @JsonValue('rehab')
  rehab,
  /// Display: Other
  /// Definition: The patient has been admitted from a source otherwise not specified here.
  @JsonValue('other')
  other,
;

@override
  String toString() {
      switch(this) {
        case hosp_trans: return 'hosp-trans';
        case emd: return 'emd';
        case outp: return 'outp';
        case born: return 'born';
        case gp: return 'gp';
        case mp: return 'mp';
        case nursing: return 'nursing';
        case psych: return 'psych';
        case rehab: return 'rehab';
        case other: return 'other';
      }
      }
String toJson() => toString();
  AdmitSource fromString(String str) {
    switch(str) {
      case 'hosp-trans': return AdmitSource.hosp_trans;
      case 'emd': return AdmitSource.emd;
      case 'outp': return AdmitSource.outp;
      case 'born': return AdmitSource.born;
      case 'gp': return AdmitSource.gp;
      case 'mp': return AdmitSource.mp;
      case 'nursing': return AdmitSource.nursing;
      case 'psych': return AdmitSource.psych;
      case 'rehab': return AdmitSource.rehab;
      case 'other': return AdmitSource.other;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AdmitSource fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

