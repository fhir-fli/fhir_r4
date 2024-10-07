import 'package:json_annotation/json_annotation.dart';

/// This value set includes examples of Benefit Category codes.
enum BenefitCategoryCodes {
  /// Display: Medical Care
  /// Definition: Medical Care.
  @JsonValue('1')
  value1,
  /// Display: Surgical
  /// Definition: Surgical.
  @JsonValue('2')
  value2,
  /// Display: Consultation
  /// Definition: Consultation.
  @JsonValue('3')
  value3,
  /// Display: Diagnostic XRay
  /// Definition: Diagnostic XRay.
  @JsonValue('4')
  value4,
  /// Display: Diagnostic Lab
  /// Definition: Diagnostic Lab.
  @JsonValue('5')
  value5,
  /// Display: Renal Supplies
  /// Definition: Renal Supplies excluding Dialysis.
  @JsonValue('14')
  value14,
  /// Display: Diagnostic Dental
  /// Definition: Diagnostic Dental.
  @JsonValue('23')
  value23,
  /// Display: Periodontics
  /// Definition: Periodontics.
  @JsonValue('24')
  value24,
  /// Display: Restorative
  /// Definition: Restorative.
  @JsonValue('25')
  value25,
  /// Display: Endodontics
  /// Definition: Endodontics.
  @JsonValue('26')
  value26,
  /// Display: Maxillofacial Prosthetics
  /// Definition: Maxillofacial Prosthetics.
  @JsonValue('27')
  value27,
  /// Display: Adjunctive Dental Services
  /// Definition: Adjunctive Dental Services.
  @JsonValue('28')
  value28,
  /// Display: Health Benefit Plan Coverage
  /// Definition: Health Benefit Plan Coverage.
  @JsonValue('30')
  value30,
  /// Display: Dental Care
  /// Definition: Dental Care.
  @JsonValue('35')
  value35,
  /// Display: Dental Crowns
  /// Definition: Dental Crowns.
  @JsonValue('36')
  value36,
  /// Display: Dental Accident
  /// Definition: Dental Accident.
  @JsonValue('37')
  value37,
  /// Display: Hospital Room and Board
  /// Definition: Hospital Room and Board.
  @JsonValue('49')
  value49,
  /// Display: Major Medical
  /// Definition: Major Medical.
  @JsonValue('55')
  value55,
  /// Display: Medically Related Transportation
  /// Definition: Medically Related Transportation.
  @JsonValue('56')
  value56,
  /// Display: In-vitro Fertilization
  /// Definition: In-vitro Fertilization.
  @JsonValue('61')
  value61,
  /// Display: MRI Scan
  /// Definition: MRI Scan.
  @JsonValue('62')
  value62,
  /// Display: Donor Procedures
  /// Definition: Donor Procedures such as organ harvest.
  @JsonValue('63')
  value63,
  /// Display: Maternity
  /// Definition: Maternity.
  @JsonValue('69')
  value69,
  /// Display: Renal Dialysis
  /// Definition: Renal dialysis.
  @JsonValue('76')
  value76,
  /// Display: Medical Coverage
  /// Definition: Medical Coverage.
  @JsonValue('F1')
  F1,
  /// Display: Dental Coverage
  /// Definition: Dental Coverage.
  @JsonValue('F3')
  F3,
  /// Display: Hearing Coverage
  /// Definition: Hearing Coverage.
  @JsonValue('F4')
  F4,
  /// Display: Vision Coverage
  /// Definition: Vision Coverage.
  @JsonValue('F6')
  F6,
;

@override
  String toString() {
      switch(this) {
        case value1: return '1';
        case value2: return '2';
        case value3: return '3';
        case value4: return '4';
        case value5: return '5';
        case value14: return '14';
        case value23: return '23';
        case value24: return '24';
        case value25: return '25';
        case value26: return '26';
        case value27: return '27';
        case value28: return '28';
        case value30: return '30';
        case value35: return '35';
        case value36: return '36';
        case value37: return '37';
        case value49: return '49';
        case value55: return '55';
        case value56: return '56';
        case value61: return '61';
        case value62: return '62';
        case value63: return '63';
        case value69: return '69';
        case value76: return '76';
        case F1: return 'F1';
        case F3: return 'F3';
        case F4: return 'F4';
        case F6: return 'F6';
      }
      }
String toJson() => toString();
  BenefitCategoryCodes fromString(String str) {
    switch(str) {
      case '1': return BenefitCategoryCodes.value1;
      case '2': return BenefitCategoryCodes.value2;
      case '3': return BenefitCategoryCodes.value3;
      case '4': return BenefitCategoryCodes.value4;
      case '5': return BenefitCategoryCodes.value5;
      case '14': return BenefitCategoryCodes.value14;
      case '23': return BenefitCategoryCodes.value23;
      case '24': return BenefitCategoryCodes.value24;
      case '25': return BenefitCategoryCodes.value25;
      case '26': return BenefitCategoryCodes.value26;
      case '27': return BenefitCategoryCodes.value27;
      case '28': return BenefitCategoryCodes.value28;
      case '30': return BenefitCategoryCodes.value30;
      case '35': return BenefitCategoryCodes.value35;
      case '36': return BenefitCategoryCodes.value36;
      case '37': return BenefitCategoryCodes.value37;
      case '49': return BenefitCategoryCodes.value49;
      case '55': return BenefitCategoryCodes.value55;
      case '56': return BenefitCategoryCodes.value56;
      case '61': return BenefitCategoryCodes.value61;
      case '62': return BenefitCategoryCodes.value62;
      case '63': return BenefitCategoryCodes.value63;
      case '69': return BenefitCategoryCodes.value69;
      case '76': return BenefitCategoryCodes.value76;
      case 'F1': return BenefitCategoryCodes.F1;
      case 'F3': return BenefitCategoryCodes.F3;
      case 'F4': return BenefitCategoryCodes.F4;
      case 'F6': return BenefitCategoryCodes.F6;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 BenefitCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

