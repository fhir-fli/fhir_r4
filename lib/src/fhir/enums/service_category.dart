// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines an example set of codes that can be used to classify groupings of service-types/specialties.
enum ServiceCategory {
  /// Display: Adoption
  /// Definition: Adoption
  value1('1'),

  /// Display: Aged Care
  /// Definition: Aged Care
  value2('2'),

  /// Display: Allied Health
  /// Definition: Allied Health
  value34('34'),

  /// Display: Alternative/Complementary Therapies
  /// Definition: Alternative & Complementary Therapies
  value3('3'),

  /// Display: Child Care /Kindergarten
  /// Definition: Child Care and/or Kindergarten
  value4('4'),

  /// Display: Child Development
  /// Definition: Child Development
  value5('5'),

  /// Display: Child Protection & Family Services
  /// Definition: Child Protection & Family Services
  value6('6'),

  /// Display: Community Health Care
  /// Definition: Community Health Care
  value7('7'),

  /// Display: Counselling
  /// Definition: Counselling
  value8('8'),

  /// Display: Crisis Line (GPAH use only)
  /// Definition: Crisis Line (GPAH use only)
  value36('36'),

  /// Display: Death Services
  /// Definition: Death Services
  value9('9'),

  /// Display: Dental
  /// Definition: Dental
  value10('10'),

  /// Display: Disability Support
  /// Definition: Disability Support
  value11('11'),

  /// Display: Drug/Alcohol
  /// Definition: Drug/Alcohol
  value12('12'),

  /// Display: Education & Learning
  /// Definition: Education & Learning
  value13('13'),

  /// Display: Emergency Department
  /// Definition: Emergency Department
  value14('14'),

  /// Display: Employment
  /// Definition: Employment
  value15('15'),

  /// Display: Financial & Material Aid
  /// Definition: Financial & Material aid
  value16('16'),

  /// Display: General Practice
  /// Definition: General Practice/GP (doctor)
  value17('17'),

  /// Display: Hospital
  /// Definition: Hospital
  value35('35'),

  /// Display: Housing/Homelessness
  /// Definition: Housing/Homelessness
  value18('18'),

  /// Display: Interpreting
  /// Definition: Interpreting
  value19('19'),

  /// Display: Justice
  /// Definition: Justice
  value20('20'),

  /// Display: Legal
  /// Definition: Legal
  value21('21'),

  /// Display: Mental Health
  /// Definition: Mental Health
  value22('22'),

  /// Display: NDIA
  /// Definition: NDIA
  value38('38'),

  /// Display: Physical Activity & Recreation
  /// Definition: Physical Activity & Recreation
  value23('23'),

  /// Display: Regulation
  /// Definition: Regulation
  value24('24'),

  /// Display: Respite/Carer Support
  /// Definition: Respite/Carer Support
  value25('25'),

  /// Display: Specialist Clinical Pathology
  /// Definition: Specialist Clinical Pathology - requires referral
  value26('26'),

  /// Display: Specialist Medical
  /// Definition: Specialist Medical - requires referral
  value27('27'),

  /// Display: Specialist Obstetrics & Gynecology
  /// Definition: Specialist Obstetrics & Gynecology - requires referral
  value28('28'),

  /// Display: Specialist Paediatric
  /// Definition: Specialist Paediatric - requires referral
  value29('29'),

  /// Display: Specialist Radiology/Imaging
  /// Definition: Specialist Radiology/Imaging - requires referral
  value30('30'),

  /// Display: Specialist Surgical
  /// Definition: Specialist Surgical - requires referral
  value31('31'),

  /// Display: Support Group/s
  /// Definition: Support group/s
  value32('32'),

  /// Display: Test Message (HSD admin)
  /// Definition: Test Message (HSD admin use only)
  value37('37'),

  /// Display: Transport
  /// Definition: Transport
  value33('33'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ServiceCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ServiceCategory] instances.
  static ServiceCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceCategory.elementOnly.withElement(element);
    }
    return ServiceCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ServiceCategory withElement(Element? newElement) {
    return ServiceCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
