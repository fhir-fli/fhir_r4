import 'package:json_annotation/json_annotation.dart';

/// This value set defines an example set of codes that could be can be used to classify groupings of service-types/specialties.
enum Program {
  /// Display: Acquired Brain Injury (ABI) Program 
  @JsonValue('1')
  value1,
  /// Display: ABI Slow To Recover (ABI STR) Program
  @JsonValue('2')
  value2,
  /// Display: Access Programs
  @JsonValue('3')
  value3,
  /// Display: Adult and Further Education (ACFE) Program
  @JsonValue('4')
  value4,
  /// Display: Adult Day Activity and Support Services (ADASS) Program
  @JsonValue('5')
  value5,
  /// Display: Adult Day Care Program
  @JsonValue('6')
  value6,
  /// Display: ATSS (Adult Training Support Service)
  @JsonValue('7')
  value7,
  /// Display: Community Aged Care Packages (CACP)
  @JsonValue('8')
  value8,
  /// Display: Care Coordination & Supplementary Services (CCSS)
  @JsonValue('9')
  value9,
  /// Display: Cognitive Dementia Memory Service (CDAMS)
  @JsonValue('10')
  value10,
  /// Display: ChildFIRST
  @JsonValue('11')
  value11,
  /// Display: Children's Contact Services
  @JsonValue('12')
  value12,
  /// Display: Community Visitors Scheme
  @JsonValue('13')
  value13,
  /// Display: CPP (Community Partners Program)
  @JsonValue('14')
  value14,
  /// Display: Closing the Gap (CTG)
  @JsonValue('15')
  value15,
  /// Display: Coordinated Veterans' Care (CVC) Program
  @JsonValue('16')
  value16,
  /// Display: Day Program
  @JsonValue('17')
  value17,
  /// Display: Drop In Program
  @JsonValue('18')
  value18,
  /// Display: Early Years Program
  @JsonValue('19')
  value19,
  /// Display: Employee Assistance Program
  @JsonValue('20')
  value20,
  /// Display: Home And Community Care (HACC)
  @JsonValue('21')
  value21,
  /// Display: Hospital Admission Risk Program (HARP)
  @JsonValue('22')
  value22,
  /// Display: Hospital in the Home (HITH) Program
  @JsonValue('23')
  value23,
  /// Display: ICTP (Intensive Community Treatment Program)
  @JsonValue('24')
  value24,
  /// Display: IFSS (Intensive Family Support Program)
  @JsonValue('25')
  value25,
  /// Display: JPET (Job Placement, Education and Training)
  @JsonValue('26')
  value26,
  /// Display: Koori Juvenile Justice Program
  @JsonValue('27')
  value27,
  /// Display: Language Literacy and Numeracy Program
  @JsonValue('28')
  value28,
  /// Display: Life Skills Program
  @JsonValue('29')
  value29,
  /// Display: LMP (Lifestyle Modification Program)
  @JsonValue('30')
  value30,
  /// Display: MedsCheck Program
  @JsonValue('31')
  value31,
  /// Display: Methadone/Buprenorphine Program
  @JsonValue('32')
  value32,
  /// Display: National Disabilities Insurance Scheme (NDIS)
  @JsonValue('33')
  value33,
  /// Display: National Diabetes Services Scheme (NDSS)
  @JsonValue('34')
  value34,
  /// Display: Needle/Syringe Program
  @JsonValue('35')
  value35,
  /// Display: nPEP Program
  @JsonValue('36')
  value36,
  /// Display: Personal Support Program
  @JsonValue('37')
  value37,
  /// Display: Partners in Recovery (PIR) Program
  @JsonValue('38')
  value38,
  /// Display: Pre-employment Program
  @JsonValue('39')
  value39,
  /// Display: Reconnect Program
  @JsonValue('40')
  value40,
  /// Display: Sexual Abuse Counselling and Prevention Program (SACPP)
  @JsonValue('41')
  value41,
  /// Display: Social Support Programs
  @JsonValue('42')
  value42,
  /// Display: Supported Residential Service (SRS)
  @JsonValue('43')
  value43,
  /// Display: Tasmanian Aboriginal Centre (TAC)
  @JsonValue('44')
  value44,
  /// Display: Victim's Assistance Program
  @JsonValue('45')
  value45,
;

@override
  String toString() {
      switch(this) {
        case value1: return '1';
        case value2: return '2';
        case value3: return '3';
        case value4: return '4';
        case value5: return '5';
        case value6: return '6';
        case value7: return '7';
        case value8: return '8';
        case value9: return '9';
        case value10: return '10';
        case value11: return '11';
        case value12: return '12';
        case value13: return '13';
        case value14: return '14';
        case value15: return '15';
        case value16: return '16';
        case value17: return '17';
        case value18: return '18';
        case value19: return '19';
        case value20: return '20';
        case value21: return '21';
        case value22: return '22';
        case value23: return '23';
        case value24: return '24';
        case value25: return '25';
        case value26: return '26';
        case value27: return '27';
        case value28: return '28';
        case value29: return '29';
        case value30: return '30';
        case value31: return '31';
        case value32: return '32';
        case value33: return '33';
        case value34: return '34';
        case value35: return '35';
        case value36: return '36';
        case value37: return '37';
        case value38: return '38';
        case value39: return '39';
        case value40: return '40';
        case value41: return '41';
        case value42: return '42';
        case value43: return '43';
        case value44: return '44';
        case value45: return '45';
      }
      }
String toJson() => toString();
  Program fromString(String str) {
    switch(str) {
      case '1': return Program.value1;
      case '2': return Program.value2;
      case '3': return Program.value3;
      case '4': return Program.value4;
      case '5': return Program.value5;
      case '6': return Program.value6;
      case '7': return Program.value7;
      case '8': return Program.value8;
      case '9': return Program.value9;
      case '10': return Program.value10;
      case '11': return Program.value11;
      case '12': return Program.value12;
      case '13': return Program.value13;
      case '14': return Program.value14;
      case '15': return Program.value15;
      case '16': return Program.value16;
      case '17': return Program.value17;
      case '18': return Program.value18;
      case '19': return Program.value19;
      case '20': return Program.value20;
      case '21': return Program.value21;
      case '22': return Program.value22;
      case '23': return Program.value23;
      case '24': return Program.value24;
      case '25': return Program.value25;
      case '26': return Program.value26;
      case '27': return Program.value27;
      case '28': return Program.value28;
      case '29': return Program.value29;
      case '30': return Program.value30;
      case '31': return Program.value31;
      case '32': return Program.value32;
      case '33': return Program.value33;
      case '34': return Program.value34;
      case '35': return Program.value35;
      case '36': return Program.value36;
      case '37': return Program.value37;
      case '38': return Program.value38;
      case '39': return Program.value39;
      case '40': return Program.value40;
      case '41': return Program.value41;
      case '42': return Program.value42;
      case '43': return Program.value43;
      case '44': return Program.value44;
      case '45': return Program.value45;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 Program fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

