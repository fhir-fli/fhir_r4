// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines an example set of codes that could be can be used to classify groupings of service-types/specialties.
enum Program {
  /// Display: Acquired Brain Injury (ABI) Program
  /// Definition:
  value1('1'),

  /// Display: ABI Slow To Recover (ABI STR) Program
  /// Definition:
  value2('2'),

  /// Display: Access Programs
  /// Definition:
  value3('3'),

  /// Display: Adult and Further Education (ACFE) Program
  /// Definition:
  value4('4'),

  /// Display: Adult Day Activity and Support Services (ADASS) Program
  /// Definition:
  value5('5'),

  /// Display: Adult Day Care Program
  /// Definition:
  value6('6'),

  /// Display: ATSS (Adult Training Support Service)
  /// Definition:
  value7('7'),

  /// Display: Community Aged Care Packages (CACP)
  /// Definition:
  value8('8'),

  /// Display: Care Coordination & Supplementary Services (CCSS)
  /// Definition:
  value9('9'),

  /// Display: Cognitive Dementia Memory Service (CDAMS)
  /// Definition:
  value10('10'),

  /// Display: ChildFIRST
  /// Definition:
  value11('11'),

  /// Display: Children's Contact Services
  /// Definition:
  value12('12'),

  /// Display: Community Visitors Scheme
  /// Definition:
  value13('13'),

  /// Display: CPP (Community Partners Program)
  /// Definition:
  value14('14'),

  /// Display: Closing the Gap (CTG)
  /// Definition:
  value15('15'),

  /// Display: Coordinated Veterans' Care (CVC) Program
  /// Definition:
  value16('16'),

  /// Display: Day Program
  /// Definition:
  value17('17'),

  /// Display: Drop In Program
  /// Definition:
  value18('18'),

  /// Display: Early Years Program
  /// Definition:
  value19('19'),

  /// Display: Employee Assistance Program
  /// Definition:
  value20('20'),

  /// Display: Home And Community Care (HACC)
  /// Definition:
  value21('21'),

  /// Display: Hospital Admission Risk Program (HARP)
  /// Definition:
  value22('22'),

  /// Display: Hospital in the Home (HITH) Program
  /// Definition:
  value23('23'),

  /// Display: ICTP (Intensive Community Treatment Program)
  /// Definition:
  value24('24'),

  /// Display: IFSS (Intensive Family Support Program)
  /// Definition:
  value25('25'),

  /// Display: JPET (Job Placement, Education and Training)
  /// Definition:
  value26('26'),

  /// Display: Koori Juvenile Justice Program
  /// Definition:
  value27('27'),

  /// Display: Language Literacy and Numeracy Program
  /// Definition:
  value28('28'),

  /// Display: Life Skills Program
  /// Definition:
  value29('29'),

  /// Display: LMP (Lifestyle Modification Program)
  /// Definition:
  value30('30'),

  /// Display: MedsCheck Program
  /// Definition:
  value31('31'),

  /// Display: Methadone/Buprenorphine Program
  /// Definition:
  value32('32'),

  /// Display: National Disabilities Insurance Scheme (NDIS)
  /// Definition:
  value33('33'),

  /// Display: National Diabetes Services Scheme (NDSS)
  /// Definition:
  value34('34'),

  /// Display: Needle/Syringe Program
  /// Definition:
  value35('35'),

  /// Display: nPEP Program
  /// Definition:
  value36('36'),

  /// Display: Personal Support Program
  /// Definition:
  value37('37'),

  /// Display: Partners in Recovery (PIR) Program
  /// Definition:
  value38('38'),

  /// Display: Pre-employment Program
  /// Definition:
  value39('39'),

  /// Display: Reconnect Program
  /// Definition:
  value40('40'),

  /// Display: Sexual Abuse Counselling and Prevention Program (SACPP)
  /// Definition:
  value41('41'),

  /// Display: Social Support Programs
  /// Definition:
  value42('42'),

  /// Display: Supported Residential Service (SRS)
  /// Definition:
  value43('43'),

  /// Display: Tasmanian Aboriginal Centre (TAC)
  /// Definition:
  value44('44'),

  /// Display: Victim's Assistance Program
  /// Definition:
  value45('45'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const Program(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [Program] instances.
  static Program fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Program.elementOnly.withElement(element);
    }
    return Program.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  Program withElement(Element? newElement) {
    return Program.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
