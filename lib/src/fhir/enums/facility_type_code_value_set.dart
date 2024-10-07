import 'package:json_annotation/json_annotation.dart';

/// This is the code representing the type of organizational setting where the clinical encounter, service, interaction, or treatment occurred. The value set used for Healthcare Facility Type has been defined by HITSP to be the value set reproduced from HITSP C80 Table 2-147.
enum FacilityTypeCodeValueSet {
  /// Display: Hospital-children's
  @JsonValue('82242000')
  value82242000,
  /// Display: Hospital-community
  @JsonValue('225732001')
  value225732001,
  /// Display: Hospital-government
  @JsonValue('79993009')
  value79993009,
  /// Display: Hospital-long term care
  @JsonValue('32074000')
  value32074000,
  /// Display: Hospital-military field
  @JsonValue('4322002')
  value4322002,
  /// Display: Hospital-prison
  @JsonValue('224687002')
  value224687002,
  /// Display: Hospital-psychiatric
  @JsonValue('62480006')
  value62480006,
  /// Display: Hospital-rehabilitation
  @JsonValue('80522000')
  value80522000,
  /// Display: Hospital-trauma center
  @JsonValue('36125001')
  value36125001,
  /// Display: Hospital-Veterans' Administration
  @JsonValue('48311003')
  value48311003,
  /// Display: Hospice facility
  @JsonValue('284546000')
  value284546000,
  /// Display: Nursing home
  @JsonValue('42665001')
  value42665001,
  /// Display: Skilled nursing facility
  @JsonValue('45618002')
  value45618002,
  /// Display: Dialysis unit--hospital
  @JsonValue('418518002')
  value418518002,
  /// Display: Emergency department--hospital
  @JsonValue('73770003')
  value73770003,
  /// Display: Hospital ambulatory surgery facility
  @JsonValue('69362002')
  value69362002,
  /// Display: Hospital birthing center
  @JsonValue('52668009')
  value52668009,
  /// Display: Hospital outpatient allergy clinic
  @JsonValue('360957003')
  value360957003,
  /// Display: Hospital outpatient dental clinic
  @JsonValue('10206005')
  value10206005,
  /// Display: Hospital outpatient dermatology clinic
  @JsonValue('37550003')
  value37550003,
  /// Display: Hospital outpatient endocrinology clinic
  @JsonValue('73644007')
  value73644007,
  /// Display: Hospital outpatient family medicine clinic
  @JsonValue('31628002')
  value31628002,
  /// Display: Hospital outpatient gastroenterology clinic
  @JsonValue('58482006')
  value58482006,
  /// Display: Hospital outpatient general surgery clinic
  @JsonValue('90484001')
  value90484001,
  /// Display: Hospital outpatient geriatric health center
  @JsonValue('1814000')
  value1814000,
  /// Display: Hospital outpatient gynecology clinic
  @JsonValue('22549003')
  value22549003,
  /// Display: Hospital outpatient hematology clinic
  @JsonValue('56293002')
  value56293002,
  /// Display: Hospital outpatient immunology clinic
  @JsonValue('360966004')
  value360966004,
  /// Display: Hospital outpatient infectious disease clinic
  @JsonValue('2849009')
  value2849009,
  /// Display: Hospital outpatient mental health center
  @JsonValue('14866005')
  value14866005,
  /// Display: Hospital outpatient neurology clinic
  @JsonValue('38238005')
  value38238005,
  /// Display: Hospital outpatient obstetrical clinic
  @JsonValue('56189001')
  value56189001,
  /// Display: Hospital outpatient oncology clinic
  @JsonValue('89972002')
  value89972002,
  /// Display: Hospital outpatient ophthalmology clinic
  @JsonValue('78088001')
  value78088001,
  /// Display: Hospital outpatient orthopedics clinic
  @JsonValue('78001009')
  value78001009,
  /// Display: Hospital outpatient otorhinolaryngology clinic
  @JsonValue('23392004')
  value23392004,
  /// Display: Hospital outpatient pain clinic
  @JsonValue('36293008')
  value36293008,
  /// Display: Hospital outpatient pediatric clinic
  @JsonValue('3729002')
  value3729002,
  /// Display: Hospital outpatient peripheral vascular clinic
  @JsonValue('5584006')
  value5584006,
  /// Display: Hospital outpatient rehabilitation clinic
  @JsonValue('37546005')
  value37546005,
  /// Display: Hospital outpatient respiratory disease clinic
  @JsonValue('57159002')
  value57159002,
  /// Display: Hospital outpatient rheumatology clinic
  @JsonValue('331006')
  value331006,
  /// Display: Hospital outpatient urology clinic
  @JsonValue('50569004')
  value50569004,
  /// Display: Hospital radiology facility
  @JsonValue('79491001')
  value79491001,
  /// Display: Hospital-based outpatient clinic or department--OTHER-NOT LISTED
  @JsonValue('33022008')
  value33022008,
  /// Display: Fee-for-service private physicians' group office
  @JsonValue('19602009')
  value19602009,
  /// Display: Private physicians' group office
  @JsonValue('39350007')
  value39350007,
  /// Display: Solo practice private office
  @JsonValue('83891005')
  value83891005,
  /// Display: Independent ambulatory care provider site--OTHER--NOT LISTED
  @JsonValue('394759007')
  value394759007,
  /// Display: Ambulatory surgery center
  @JsonValue('405607001')
  value405607001,
  /// Display: Care of the elderly day hospital
  @JsonValue('309900005')
  value309900005,
  /// Display: Elderly assessment clinic
  @JsonValue('275576008')
  value275576008,
  /// Display: Free-standing ambulatory surgery facility
  @JsonValue('10531005')
  value10531005,
  /// Display: Free-standing birthing center
  @JsonValue('91154008')
  value91154008,
  /// Display: Free-standing geriatric health center
  @JsonValue('41844007')
  value41844007,
  /// Display: Free-standing laboratory facility
  @JsonValue('45899008')
  value45899008,
  /// Display: Free-standing mental health center
  @JsonValue('51563005')
  value51563005,
  /// Display: Free-standing radiology facility
  @JsonValue('1773006')
  value1773006,
  /// Display: Health maintenance organization
  @JsonValue('72311000')
  value72311000,
  /// Display: Local community health center
  @JsonValue('6827000')
  value6827000,
  /// Display: Psychogeriatric day hospital
  @JsonValue('309898008')
  value309898008,
  /// Display: Residential school infirmary
  @JsonValue('39913001')
  value39913001,
  /// Display: Rural health center
  @JsonValue('77931003')
  value77931003,
  /// Display: Sexually transmitted disease health center
  @JsonValue('25681007')
  value25681007,
  /// Display: Substance abuse treatment center
  @JsonValue('20078004')
  value20078004,
  /// Display: Vaccination clinic
  @JsonValue('46224007')
  value46224007,
  /// Display: Walk-in clinic
  @JsonValue('81234003')
  value81234003,
  /// Display: Ambulatory care site--OTHER--NOT LISTED
  @JsonValue('35971002')
  value35971002,
  /// Display: Ambulance-based care
  @JsonValue('11424001')
  value11424001,
  /// Display: Contained casualty setting
  @JsonValue('409519008')
  value409519008,
  /// Display: Helicopter-based care
  @JsonValue('901005')
  value901005,
  /// Display: Hospital ship
  @JsonValue('2081004')
  value2081004,
  /// Display: Traveler's aid clinic
  @JsonValue('59374000')
  value59374000,
  /// Display: Adult day care center
  @JsonValue('413456002')
  value413456002,
  /// Display: Child day care center
  @JsonValue('413817003')
  value413817003,
  /// Display: Private residential home
  @JsonValue('310205006')
  value310205006,
  /// Display: Residential institution
  @JsonValue('419955002')
  value419955002,
  /// Display: Sports facility
  @JsonValue('272501009')
  value272501009,
  /// Display: Health encounter site--NOT LISTED
  @JsonValue('394777002')
  value394777002,
;

@override
  String toString() {
      switch(this) {
        case value82242000: return '82242000';
        case value225732001: return '225732001';
        case value79993009: return '79993009';
        case value32074000: return '32074000';
        case value4322002: return '4322002';
        case value224687002: return '224687002';
        case value62480006: return '62480006';
        case value80522000: return '80522000';
        case value36125001: return '36125001';
        case value48311003: return '48311003';
        case value284546000: return '284546000';
        case value42665001: return '42665001';
        case value45618002: return '45618002';
        case value418518002: return '418518002';
        case value73770003: return '73770003';
        case value69362002: return '69362002';
        case value52668009: return '52668009';
        case value360957003: return '360957003';
        case value10206005: return '10206005';
        case value37550003: return '37550003';
        case value73644007: return '73644007';
        case value31628002: return '31628002';
        case value58482006: return '58482006';
        case value90484001: return '90484001';
        case value1814000: return '1814000';
        case value22549003: return '22549003';
        case value56293002: return '56293002';
        case value360966004: return '360966004';
        case value2849009: return '2849009';
        case value14866005: return '14866005';
        case value38238005: return '38238005';
        case value56189001: return '56189001';
        case value89972002: return '89972002';
        case value78088001: return '78088001';
        case value78001009: return '78001009';
        case value23392004: return '23392004';
        case value36293008: return '36293008';
        case value3729002: return '3729002';
        case value5584006: return '5584006';
        case value37546005: return '37546005';
        case value57159002: return '57159002';
        case value331006: return '331006';
        case value50569004: return '50569004';
        case value79491001: return '79491001';
        case value33022008: return '33022008';
        case value19602009: return '19602009';
        case value39350007: return '39350007';
        case value83891005: return '83891005';
        case value394759007: return '394759007';
        case value405607001: return '405607001';
        case value309900005: return '309900005';
        case value275576008: return '275576008';
        case value10531005: return '10531005';
        case value91154008: return '91154008';
        case value41844007: return '41844007';
        case value45899008: return '45899008';
        case value51563005: return '51563005';
        case value1773006: return '1773006';
        case value72311000: return '72311000';
        case value6827000: return '6827000';
        case value309898008: return '309898008';
        case value39913001: return '39913001';
        case value77931003: return '77931003';
        case value25681007: return '25681007';
        case value20078004: return '20078004';
        case value46224007: return '46224007';
        case value81234003: return '81234003';
        case value35971002: return '35971002';
        case value11424001: return '11424001';
        case value409519008: return '409519008';
        case value901005: return '901005';
        case value2081004: return '2081004';
        case value59374000: return '59374000';
        case value413456002: return '413456002';
        case value413817003: return '413817003';
        case value310205006: return '310205006';
        case value419955002: return '419955002';
        case value272501009: return '272501009';
        case value394777002: return '394777002';
      }
      }
String toJson() => toString();
  FacilityTypeCodeValueSet fromString(String str) {
    switch(str) {
      case '82242000': return FacilityTypeCodeValueSet.value82242000;
      case '225732001': return FacilityTypeCodeValueSet.value225732001;
      case '79993009': return FacilityTypeCodeValueSet.value79993009;
      case '32074000': return FacilityTypeCodeValueSet.value32074000;
      case '4322002': return FacilityTypeCodeValueSet.value4322002;
      case '224687002': return FacilityTypeCodeValueSet.value224687002;
      case '62480006': return FacilityTypeCodeValueSet.value62480006;
      case '80522000': return FacilityTypeCodeValueSet.value80522000;
      case '36125001': return FacilityTypeCodeValueSet.value36125001;
      case '48311003': return FacilityTypeCodeValueSet.value48311003;
      case '284546000': return FacilityTypeCodeValueSet.value284546000;
      case '42665001': return FacilityTypeCodeValueSet.value42665001;
      case '45618002': return FacilityTypeCodeValueSet.value45618002;
      case '418518002': return FacilityTypeCodeValueSet.value418518002;
      case '73770003': return FacilityTypeCodeValueSet.value73770003;
      case '69362002': return FacilityTypeCodeValueSet.value69362002;
      case '52668009': return FacilityTypeCodeValueSet.value52668009;
      case '360957003': return FacilityTypeCodeValueSet.value360957003;
      case '10206005': return FacilityTypeCodeValueSet.value10206005;
      case '37550003': return FacilityTypeCodeValueSet.value37550003;
      case '73644007': return FacilityTypeCodeValueSet.value73644007;
      case '31628002': return FacilityTypeCodeValueSet.value31628002;
      case '58482006': return FacilityTypeCodeValueSet.value58482006;
      case '90484001': return FacilityTypeCodeValueSet.value90484001;
      case '1814000': return FacilityTypeCodeValueSet.value1814000;
      case '22549003': return FacilityTypeCodeValueSet.value22549003;
      case '56293002': return FacilityTypeCodeValueSet.value56293002;
      case '360966004': return FacilityTypeCodeValueSet.value360966004;
      case '2849009': return FacilityTypeCodeValueSet.value2849009;
      case '14866005': return FacilityTypeCodeValueSet.value14866005;
      case '38238005': return FacilityTypeCodeValueSet.value38238005;
      case '56189001': return FacilityTypeCodeValueSet.value56189001;
      case '89972002': return FacilityTypeCodeValueSet.value89972002;
      case '78088001': return FacilityTypeCodeValueSet.value78088001;
      case '78001009': return FacilityTypeCodeValueSet.value78001009;
      case '23392004': return FacilityTypeCodeValueSet.value23392004;
      case '36293008': return FacilityTypeCodeValueSet.value36293008;
      case '3729002': return FacilityTypeCodeValueSet.value3729002;
      case '5584006': return FacilityTypeCodeValueSet.value5584006;
      case '37546005': return FacilityTypeCodeValueSet.value37546005;
      case '57159002': return FacilityTypeCodeValueSet.value57159002;
      case '331006': return FacilityTypeCodeValueSet.value331006;
      case '50569004': return FacilityTypeCodeValueSet.value50569004;
      case '79491001': return FacilityTypeCodeValueSet.value79491001;
      case '33022008': return FacilityTypeCodeValueSet.value33022008;
      case '19602009': return FacilityTypeCodeValueSet.value19602009;
      case '39350007': return FacilityTypeCodeValueSet.value39350007;
      case '83891005': return FacilityTypeCodeValueSet.value83891005;
      case '394759007': return FacilityTypeCodeValueSet.value394759007;
      case '405607001': return FacilityTypeCodeValueSet.value405607001;
      case '309900005': return FacilityTypeCodeValueSet.value309900005;
      case '275576008': return FacilityTypeCodeValueSet.value275576008;
      case '10531005': return FacilityTypeCodeValueSet.value10531005;
      case '91154008': return FacilityTypeCodeValueSet.value91154008;
      case '41844007': return FacilityTypeCodeValueSet.value41844007;
      case '45899008': return FacilityTypeCodeValueSet.value45899008;
      case '51563005': return FacilityTypeCodeValueSet.value51563005;
      case '1773006': return FacilityTypeCodeValueSet.value1773006;
      case '72311000': return FacilityTypeCodeValueSet.value72311000;
      case '6827000': return FacilityTypeCodeValueSet.value6827000;
      case '309898008': return FacilityTypeCodeValueSet.value309898008;
      case '39913001': return FacilityTypeCodeValueSet.value39913001;
      case '77931003': return FacilityTypeCodeValueSet.value77931003;
      case '25681007': return FacilityTypeCodeValueSet.value25681007;
      case '20078004': return FacilityTypeCodeValueSet.value20078004;
      case '46224007': return FacilityTypeCodeValueSet.value46224007;
      case '81234003': return FacilityTypeCodeValueSet.value81234003;
      case '35971002': return FacilityTypeCodeValueSet.value35971002;
      case '11424001': return FacilityTypeCodeValueSet.value11424001;
      case '409519008': return FacilityTypeCodeValueSet.value409519008;
      case '901005': return FacilityTypeCodeValueSet.value901005;
      case '2081004': return FacilityTypeCodeValueSet.value2081004;
      case '59374000': return FacilityTypeCodeValueSet.value59374000;
      case '413456002': return FacilityTypeCodeValueSet.value413456002;
      case '413817003': return FacilityTypeCodeValueSet.value413817003;
      case '310205006': return FacilityTypeCodeValueSet.value310205006;
      case '419955002': return FacilityTypeCodeValueSet.value419955002;
      case '272501009': return FacilityTypeCodeValueSet.value272501009;
      case '394777002': return FacilityTypeCodeValueSet.value394777002;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 FacilityTypeCodeValueSet fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

