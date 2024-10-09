/// This value set defines an example set of codes that can be used to classify groupings of service-types/specialties.
enum ServiceCategory {
  /// Display: Adoption
  /// Definition: Adoption
  value1,

  /// Display: Aged Care
  /// Definition: Aged Care
  value2,

  /// Display: Allied Health
  /// Definition: Allied Health
  value34,

  /// Display: Alternative/Complementary Therapies
  /// Definition: Alternative & Complementary Therapies
  value3,

  /// Display: Child Care /Kindergarten
  /// Definition: Child Care and/or Kindergarten
  value4,

  /// Display: Child Development
  /// Definition: Child Development
  value5,

  /// Display: Child Protection & Family Services
  /// Definition: Child Protection & Family Services
  value6,

  /// Display: Community Health Care
  /// Definition: Community Health Care
  value7,

  /// Display: Counselling
  /// Definition: Counselling
  value8,

  /// Display: Crisis Line (GPAH use only)
  /// Definition: Crisis Line (GPAH use only)
  value36,

  /// Display: Death Services
  /// Definition: Death Services
  value9,

  /// Display: Dental
  /// Definition: Dental
  value10,

  /// Display: Disability Support
  /// Definition: Disability Support
  value11,

  /// Display: Drug/Alcohol
  /// Definition: Drug/Alcohol
  value12,

  /// Display: Education & Learning
  /// Definition: Education & Learning
  value13,

  /// Display: Emergency Department
  /// Definition: Emergency Department
  value14,

  /// Display: Employment
  /// Definition: Employment
  value15,

  /// Display: Financial & Material Aid
  /// Definition: Financial & Material aid
  value16,

  /// Display: General Practice
  /// Definition: General Practice/GP (doctor)
  value17,

  /// Display: Hospital
  /// Definition: Hospital
  value35,

  /// Display: Housing/Homelessness
  /// Definition: Housing/Homelessness
  value18,

  /// Display: Interpreting
  /// Definition: Interpreting
  value19,

  /// Display: Justice
  /// Definition: Justice
  value20,

  /// Display: Legal
  /// Definition: Legal
  value21,

  /// Display: Mental Health
  /// Definition: Mental Health
  value22,

  /// Display: NDIA
  /// Definition: NDIA
  value38,

  /// Display: Physical Activity & Recreation
  /// Definition: Physical Activity & Recreation
  value23,

  /// Display: Regulation
  /// Definition: Regulation
  value24,

  /// Display: Respite/Carer Support
  /// Definition: Respite/Carer Support
  value25,

  /// Display: Specialist Clinical Pathology
  /// Definition: Specialist Clinical Pathology - requires referral
  value26,

  /// Display: Specialist Medical
  /// Definition: Specialist Medical - requires referral
  value27,

  /// Display: Specialist Obstetrics & Gynecology
  /// Definition: Specialist Obstetrics & Gynecology - requires referral
  value28,

  /// Display: Specialist Paediatric
  /// Definition: Specialist Paediatric - requires referral
  value29,

  /// Display: Specialist Radiology/Imaging
  /// Definition: Specialist Radiology/Imaging - requires referral
  value30,

  /// Display: Specialist Surgical
  /// Definition: Specialist Surgical - requires referral
  value31,

  /// Display: Support Group/s
  /// Definition: Support group/s
  value32,

  /// Display: Test Message (HSD admin)
  /// Definition: Test Message (HSD admin use only)
  value37,

  /// Display: Transport
  /// Definition: Transport
  value33,
  ;

  @override
  String toString() {
    switch (this) {
      case value1:
        return '1';
      case value2:
        return '2';
      case value34:
        return '34';
      case value3:
        return '3';
      case value4:
        return '4';
      case value5:
        return '5';
      case value6:
        return '6';
      case value7:
        return '7';
      case value8:
        return '8';
      case value36:
        return '36';
      case value9:
        return '9';
      case value10:
        return '10';
      case value11:
        return '11';
      case value12:
        return '12';
      case value13:
        return '13';
      case value14:
        return '14';
      case value15:
        return '15';
      case value16:
        return '16';
      case value17:
        return '17';
      case value35:
        return '35';
      case value18:
        return '18';
      case value19:
        return '19';
      case value20:
        return '20';
      case value21:
        return '21';
      case value22:
        return '22';
      case value38:
        return '38';
      case value23:
        return '23';
      case value24:
        return '24';
      case value25:
        return '25';
      case value26:
        return '26';
      case value27:
        return '27';
      case value28:
        return '28';
      case value29:
        return '29';
      case value30:
        return '30';
      case value31:
        return '31';
      case value32:
        return '32';
      case value37:
        return '37';
      case value33:
        return '33';
    }
  }

  String toJson() => toString();
  static ServiceCategory fromString(String str) {
    switch (str) {
      case '1':
        return ServiceCategory.value1;
      case '2':
        return ServiceCategory.value2;
      case '34':
        return ServiceCategory.value34;
      case '3':
        return ServiceCategory.value3;
      case '4':
        return ServiceCategory.value4;
      case '5':
        return ServiceCategory.value5;
      case '6':
        return ServiceCategory.value6;
      case '7':
        return ServiceCategory.value7;
      case '8':
        return ServiceCategory.value8;
      case '36':
        return ServiceCategory.value36;
      case '9':
        return ServiceCategory.value9;
      case '10':
        return ServiceCategory.value10;
      case '11':
        return ServiceCategory.value11;
      case '12':
        return ServiceCategory.value12;
      case '13':
        return ServiceCategory.value13;
      case '14':
        return ServiceCategory.value14;
      case '15':
        return ServiceCategory.value15;
      case '16':
        return ServiceCategory.value16;
      case '17':
        return ServiceCategory.value17;
      case '35':
        return ServiceCategory.value35;
      case '18':
        return ServiceCategory.value18;
      case '19':
        return ServiceCategory.value19;
      case '20':
        return ServiceCategory.value20;
      case '21':
        return ServiceCategory.value21;
      case '22':
        return ServiceCategory.value22;
      case '38':
        return ServiceCategory.value38;
      case '23':
        return ServiceCategory.value23;
      case '24':
        return ServiceCategory.value24;
      case '25':
        return ServiceCategory.value25;
      case '26':
        return ServiceCategory.value26;
      case '27':
        return ServiceCategory.value27;
      case '28':
        return ServiceCategory.value28;
      case '29':
        return ServiceCategory.value29;
      case '30':
        return ServiceCategory.value30;
      case '31':
        return ServiceCategory.value31;
      case '32':
        return ServiceCategory.value32;
      case '37':
        return ServiceCategory.value37;
      case '33':
        return ServiceCategory.value33;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ServiceCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
