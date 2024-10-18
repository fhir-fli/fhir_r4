// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is the code representing the type of organizational setting where the clinical encounter, service, interaction, or treatment occurred. The value set used for Healthcare Facility Type has been defined by HITSP to be the value set reproduced from HITSP C80 Table 2-147.
enum FacilityTypeCodeValueSet {
  /// Display: Hospital-children's
  /// Definition:
  value82242000('82242000'),

  /// Display: Hospital-community
  /// Definition:
  value225732001('225732001'),

  /// Display: Hospital-government
  /// Definition:
  value79993009('79993009'),

  /// Display: Hospital-long term care
  /// Definition:
  value32074000('32074000'),

  /// Display: Hospital-military field
  /// Definition:
  value4322002('4322002'),

  /// Display: Hospital-prison
  /// Definition:
  value224687002('224687002'),

  /// Display: Hospital-psychiatric
  /// Definition:
  value62480006('62480006'),

  /// Display: Hospital-rehabilitation
  /// Definition:
  value80522000('80522000'),

  /// Display: Hospital-trauma center
  /// Definition:
  value36125001('36125001'),

  /// Display: Hospital-Veterans' Administration
  /// Definition:
  value48311003('48311003'),

  /// Display: Hospice facility
  /// Definition:
  value284546000('284546000'),

  /// Display: Nursing home
  /// Definition:
  value42665001('42665001'),

  /// Display: Skilled nursing facility
  /// Definition:
  value45618002('45618002'),

  /// Display: Dialysis unit--hospital
  /// Definition:
  value418518002('418518002'),

  /// Display: Emergency department--hospital
  /// Definition:
  value73770003('73770003'),

  /// Display: Hospital ambulatory surgery facility
  /// Definition:
  value69362002('69362002'),

  /// Display: Hospital birthing center
  /// Definition:
  value52668009('52668009'),

  /// Display: Hospital outpatient allergy clinic
  /// Definition:
  value360957003('360957003'),

  /// Display: Hospital outpatient dental clinic
  /// Definition:
  value10206005('10206005'),

  /// Display: Hospital outpatient dermatology clinic
  /// Definition:
  value37550003('37550003'),

  /// Display: Hospital outpatient endocrinology clinic
  /// Definition:
  value73644007('73644007'),

  /// Display: Hospital outpatient family medicine clinic
  /// Definition:
  value31628002('31628002'),

  /// Display: Hospital outpatient gastroenterology clinic
  /// Definition:
  value58482006('58482006'),

  /// Display: Hospital outpatient general surgery clinic
  /// Definition:
  value90484001('90484001'),

  /// Display: Hospital outpatient geriatric health center
  /// Definition:
  value1814000('1814000'),

  /// Display: Hospital outpatient gynecology clinic
  /// Definition:
  value22549003('22549003'),

  /// Display: Hospital outpatient hematology clinic
  /// Definition:
  value56293002('56293002'),

  /// Display: Hospital outpatient immunology clinic
  /// Definition:
  value360966004('360966004'),

  /// Display: Hospital outpatient infectious disease clinic
  /// Definition:
  value2849009('2849009'),

  /// Display: Hospital outpatient mental health center
  /// Definition:
  value14866005('14866005'),

  /// Display: Hospital outpatient neurology clinic
  /// Definition:
  value38238005('38238005'),

  /// Display: Hospital outpatient obstetrical clinic
  /// Definition:
  value56189001('56189001'),

  /// Display: Hospital outpatient oncology clinic
  /// Definition:
  value89972002('89972002'),

  /// Display: Hospital outpatient ophthalmology clinic
  /// Definition:
  value78088001('78088001'),

  /// Display: Hospital outpatient orthopedics clinic
  /// Definition:
  value78001009('78001009'),

  /// Display: Hospital outpatient otorhinolaryngology clinic
  /// Definition:
  value23392004('23392004'),

  /// Display: Hospital outpatient pain clinic
  /// Definition:
  value36293008('36293008'),

  /// Display: Hospital outpatient pediatric clinic
  /// Definition:
  value3729002('3729002'),

  /// Display: Hospital outpatient peripheral vascular clinic
  /// Definition:
  value5584006('5584006'),

  /// Display: Hospital outpatient rehabilitation clinic
  /// Definition:
  value37546005('37546005'),

  /// Display: Hospital outpatient respiratory disease clinic
  /// Definition:
  value57159002('57159002'),

  /// Display: Hospital outpatient rheumatology clinic
  /// Definition:
  value331006('331006'),

  /// Display: Hospital outpatient urology clinic
  /// Definition:
  value50569004('50569004'),

  /// Display: Hospital radiology facility
  /// Definition:
  value79491001('79491001'),

  /// Display: Hospital-based outpatient clinic or department--OTHER-NOT LISTED
  /// Definition:
  value33022008('33022008'),

  /// Display: Fee-for-service private physicians' group office
  /// Definition:
  value19602009('19602009'),

  /// Display: Private physicians' group office
  /// Definition:
  value39350007('39350007'),

  /// Display: Solo practice private office
  /// Definition:
  value83891005('83891005'),

  /// Display: Independent ambulatory care provider site--OTHER--NOT LISTED
  /// Definition:
  value394759007('394759007'),

  /// Display: Ambulatory surgery center
  /// Definition:
  value405607001('405607001'),

  /// Display: Care of the elderly day hospital
  /// Definition:
  value309900005('309900005'),

  /// Display: Elderly assessment clinic
  /// Definition:
  value275576008('275576008'),

  /// Display: Free-standing ambulatory surgery facility
  /// Definition:
  value10531005('10531005'),

  /// Display: Free-standing birthing center
  /// Definition:
  value91154008('91154008'),

  /// Display: Free-standing geriatric health center
  /// Definition:
  value41844007('41844007'),

  /// Display: Free-standing laboratory facility
  /// Definition:
  value45899008('45899008'),

  /// Display: Free-standing mental health center
  /// Definition:
  value51563005('51563005'),

  /// Display: Free-standing radiology facility
  /// Definition:
  value1773006('1773006'),

  /// Display: Health maintenance organization
  /// Definition:
  value72311000('72311000'),

  /// Display: Local community health center
  /// Definition:
  value6827000('6827000'),

  /// Display: Psychogeriatric day hospital
  /// Definition:
  value309898008('309898008'),

  /// Display: Residential school infirmary
  /// Definition:
  value39913001('39913001'),

  /// Display: Rural health center
  /// Definition:
  value77931003('77931003'),

  /// Display: Sexually transmitted disease health center
  /// Definition:
  value25681007('25681007'),

  /// Display: Substance abuse treatment center
  /// Definition:
  value20078004('20078004'),

  /// Display: Vaccination clinic
  /// Definition:
  value46224007('46224007'),

  /// Display: Walk-in clinic
  /// Definition:
  value81234003('81234003'),

  /// Display: Ambulatory care site--OTHER--NOT LISTED
  /// Definition:
  value35971002('35971002'),

  /// Display: Ambulance-based care
  /// Definition:
  value11424001('11424001'),

  /// Display: Contained casualty setting
  /// Definition:
  value409519008('409519008'),

  /// Display: Helicopter-based care
  /// Definition:
  value901005('901005'),

  /// Display: Hospital ship
  /// Definition:
  value2081004('2081004'),

  /// Display: Traveler's aid clinic
  /// Definition:
  value59374000('59374000'),

  /// Display: Adult day care center
  /// Definition:
  value413456002('413456002'),

  /// Display: Child day care center
  /// Definition:
  value413817003('413817003'),

  /// Display: Private residential home
  /// Definition:
  value310205006('310205006'),

  /// Display: Residential institution
  /// Definition:
  value419955002('419955002'),

  /// Display: Sports facility
  /// Definition:
  value272501009('272501009'),

  /// Display: Health encounter site--NOT LISTED
  /// Definition:
  value394777002('394777002'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FacilityTypeCodeValueSet(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FacilityTypeCodeValueSet] instances.
  static FacilityTypeCodeValueSet fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FacilityTypeCodeValueSet.elementOnly.withElement(
        element,
      );
    }
    return FacilityTypeCodeValueSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FacilityTypeCodeValueSet withElement(Element? newElement) {
    return FacilityTypeCodeValueSet.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
