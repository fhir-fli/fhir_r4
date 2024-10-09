/// This value set includes examples of Benefit Category codes.
enum BenefitCategoryCodes {
  /// Display: Medical Care
  /// Definition: Medical Care.
  value1,

  /// Display: Surgical
  /// Definition: Surgical.
  value2,

  /// Display: Consultation
  /// Definition: Consultation.
  value3,

  /// Display: Diagnostic XRay
  /// Definition: Diagnostic XRay.
  value4,

  /// Display: Diagnostic Lab
  /// Definition: Diagnostic Lab.
  value5,

  /// Display: Renal Supplies
  /// Definition: Renal Supplies excluding Dialysis.
  value14,

  /// Display: Diagnostic Dental
  /// Definition: Diagnostic Dental.
  value23,

  /// Display: Periodontics
  /// Definition: Periodontics.
  value24,

  /// Display: Restorative
  /// Definition: Restorative.
  value25,

  /// Display: Endodontics
  /// Definition: Endodontics.
  value26,

  /// Display: Maxillofacial Prosthetics
  /// Definition: Maxillofacial Prosthetics.
  value27,

  /// Display: Adjunctive Dental Services
  /// Definition: Adjunctive Dental Services.
  value28,

  /// Display: Health Benefit Plan Coverage
  /// Definition: Health Benefit Plan Coverage.
  value30,

  /// Display: Dental Care
  /// Definition: Dental Care.
  value35,

  /// Display: Dental Crowns
  /// Definition: Dental Crowns.
  value36,

  /// Display: Dental Accident
  /// Definition: Dental Accident.
  value37,

  /// Display: Hospital Room and Board
  /// Definition: Hospital Room and Board.
  value49,

  /// Display: Major Medical
  /// Definition: Major Medical.
  value55,

  /// Display: Medically Related Transportation
  /// Definition: Medically Related Transportation.
  value56,

  /// Display: In-vitro Fertilization
  /// Definition: In-vitro Fertilization.
  value61,

  /// Display: MRI Scan
  /// Definition: MRI Scan.
  value62,

  /// Display: Donor Procedures
  /// Definition: Donor Procedures such as organ harvest.
  value63,

  /// Display: Maternity
  /// Definition: Maternity.
  value69,

  /// Display: Renal Dialysis
  /// Definition: Renal dialysis.
  value76,

  /// Display: Medical Coverage
  /// Definition: Medical Coverage.
  F1,

  /// Display: Dental Coverage
  /// Definition: Dental Coverage.
  F3,

  /// Display: Hearing Coverage
  /// Definition: Hearing Coverage.
  F4,

  /// Display: Vision Coverage
  /// Definition: Vision Coverage.
  F6,
  ;

  @override
  String toString() {
    switch (this) {
      case value1:
        return '1';
      case value2:
        return '2';
      case value3:
        return '3';
      case value4:
        return '4';
      case value5:
        return '5';
      case value14:
        return '14';
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
      case value30:
        return '30';
      case value35:
        return '35';
      case value36:
        return '36';
      case value37:
        return '37';
      case value49:
        return '49';
      case value55:
        return '55';
      case value56:
        return '56';
      case value61:
        return '61';
      case value62:
        return '62';
      case value63:
        return '63';
      case value69:
        return '69';
      case value76:
        return '76';
      case F1:
        return 'F1';
      case F3:
        return 'F3';
      case F4:
        return 'F4';
      case F6:
        return 'F6';
    }
  }

  String toJson() => toString();
  static BenefitCategoryCodes fromString(String str) {
    switch (str) {
      case '1':
        return BenefitCategoryCodes.value1;
      case '2':
        return BenefitCategoryCodes.value2;
      case '3':
        return BenefitCategoryCodes.value3;
      case '4':
        return BenefitCategoryCodes.value4;
      case '5':
        return BenefitCategoryCodes.value5;
      case '14':
        return BenefitCategoryCodes.value14;
      case '23':
        return BenefitCategoryCodes.value23;
      case '24':
        return BenefitCategoryCodes.value24;
      case '25':
        return BenefitCategoryCodes.value25;
      case '26':
        return BenefitCategoryCodes.value26;
      case '27':
        return BenefitCategoryCodes.value27;
      case '28':
        return BenefitCategoryCodes.value28;
      case '30':
        return BenefitCategoryCodes.value30;
      case '35':
        return BenefitCategoryCodes.value35;
      case '36':
        return BenefitCategoryCodes.value36;
      case '37':
        return BenefitCategoryCodes.value37;
      case '49':
        return BenefitCategoryCodes.value49;
      case '55':
        return BenefitCategoryCodes.value55;
      case '56':
        return BenefitCategoryCodes.value56;
      case '61':
        return BenefitCategoryCodes.value61;
      case '62':
        return BenefitCategoryCodes.value62;
      case '63':
        return BenefitCategoryCodes.value63;
      case '69':
        return BenefitCategoryCodes.value69;
      case '76':
        return BenefitCategoryCodes.value76;
      case 'F1':
        return BenefitCategoryCodes.F1;
      case 'F3':
        return BenefitCategoryCodes.F3;
      case 'F4':
        return BenefitCategoryCodes.F4;
      case 'F6':
        return BenefitCategoryCodes.F6;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static BenefitCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
