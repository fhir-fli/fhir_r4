import 'package:json_annotation/json_annotation.dart';

/// This value set defines a set of codes that can be used to where the patient left the hospital.
enum DischargeDisposition {
  /// Display: Home
  /// Definition: The patient was dicharged and has indicated that they are going to return home afterwards.
  @JsonValue('home')
  home,
  /// Display: Alternative home
  /// Definition: The patient was discharged and has indicated that they are going to return home afterwards, but not the patient's home - e.g. a family member's home.
  @JsonValue('alt-home')
  alt_home,
  /// Display: Other healthcare facility
  /// Definition: The patient was transferred to another healthcare facility.
  @JsonValue('other-hcf')
  other_hcf,
  /// Display: Hospice
  /// Definition: The patient has been discharged into palliative care.
  @JsonValue('hosp')
  hosp,
  /// Display: Long-term care
  /// Definition: The patient has been discharged into long-term care where is likely to be monitored through an ongoing episode-of-care.
  @JsonValue('long')
  long,
  /// Display: Left against advice
  /// Definition: The patient self discharged against medical advice.
  @JsonValue('aadvice')
  aadvice,
  /// Display: Expired
  /// Definition: The patient has deceased during this encounter.
  @JsonValue('exp')
  exp,
  /// Display: Psychiatric hospital
  /// Definition: The patient has been transferred to a psychiatric facility.
  @JsonValue('psy')
  psy,
  /// Display: Rehabilitation
  /// Definition: The patient was discharged and is to receive post acute care rehabilitation services.
  @JsonValue('rehab')
  rehab,
  /// Display: Skilled nursing facility
  /// Definition: The patient has been discharged to a skilled nursing facility for the patient to receive additional care.
  @JsonValue('snf')
  snf,
  /// Display: Other
  /// Definition: The discharge disposition has not otherwise defined.
  @JsonValue('oth')
  oth,
;

@override
  String toString() {
      switch(this) {
        case home: return 'home';
        case alt_home: return 'alt-home';
        case other_hcf: return 'other-hcf';
        case hosp: return 'hosp';
        case long: return 'long';
        case aadvice: return 'aadvice';
        case exp: return 'exp';
        case psy: return 'psy';
        case rehab: return 'rehab';
        case snf: return 'snf';
        case oth: return 'oth';
      }
      }
String toJson() => toString();
  DischargeDisposition fromString(String str) {
    switch(str) {
      case 'home': return DischargeDisposition.home;
      case 'alt-home': return DischargeDisposition.alt_home;
      case 'other-hcf': return DischargeDisposition.other_hcf;
      case 'hosp': return DischargeDisposition.hosp;
      case 'long': return DischargeDisposition.long;
      case 'aadvice': return DischargeDisposition.aadvice;
      case 'exp': return DischargeDisposition.exp;
      case 'psy': return DischargeDisposition.psy;
      case 'rehab': return DischargeDisposition.rehab;
      case 'snf': return DischargeDisposition.snf;
      case 'oth': return DischargeDisposition.oth;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DischargeDisposition fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

