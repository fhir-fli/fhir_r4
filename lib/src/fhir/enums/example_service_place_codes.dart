// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Service Place codes.
enum ExampleServicePlaceCodes {
  /// Display: Pharmacy
  /// Definition: A facility or location where drugs and other medically related items and services are sold, dispensed, or otherwise provided directly to patients.
  value01('01'),

  /// Display: School
  /// Definition: A facility whose primary purpose is education.
  value03('03'),

  /// Display: Homeless Shelter
  /// Definition: A facility or location whose primary purpose is to provide temporary housing to homeless individuals (e.g., emergency shelters, individual or family shelters).
  value04('04'),

  /// Display: Indian Health Service Free-standing Facility
  /// Definition: A facility or location, owned and operated by the Indian Health Service, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services to American Indians and Alaska Natives who do not require hospitalization.
  value05('05'),

  /// Display: Indian Health Service Provider-based Facility
  /// Definition: A facility or location, owned and operated by the Indian Health Service, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services rendered by, or under the supervision of, physicians to American Indians and Alaska Natives admitted as inpatients or outpatients.
  value06('06'),

  /// Display: Tribal 638 Free-Standing Facility
  /// Definition: A facility or location owned and operated by a federally recognized American Indian or Alaska Native tribe or tribal organization under a 638 agreement, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services to tribal members who do not require hospitalization.
  value07('07'),

  /// Display: Tribal 638 Provider-Based Facility
  /// Definition: A facility or location owned and operated by a federally recognized American Indian or Alaska Native tribe or tribal organization under a 638 agreement, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services to tribal members admitted as inpatients or outpatients.
  value08('08'),

  /// Display: Prison/Correctional Facility
  /// Definition: A prison, jail, reformatory, work farm, detention center, or any other similar facility maintained by either Federal, State or local authorities for the purpose of confinement or rehabilitation of adult or juvenile criminal offenders.
  value09('09'),

  /// Display: Office
  /// Definition: Location, other than a hospital, skilled nursing facility (SNF), military treatment facility, community health center, State or local public health clinic, or intermediate care facility (ICF), where the health professional routinely provides health examinations, diagnosis, and treatment of illness or injury on an ambulatory basis.
  value11('11'),

  /// Display: Home
  /// Definition: Location, other than a hospital or other facility, where the patient receives care in a private residence.
  value12('12'),

  /// Display: Assisted Living Fa
  /// Definition: Congregate residential facility with self-contained living units providing assessment of each resident's needs and on-site support 24 hours a day, 7 days a week, with the capacity to deliver or arrange for services including some health care and other services.
  value13('13'),

  /// Display: Group Home
  /// Definition: A residence, with shared living areas, where clients receive supervision and other services such as social and/or behavioral services, custodial service, and minimal services (e.g., medication administration).
  value14('14'),

  /// Display: Mobile Unit
  /// Definition: A facility/unit that moves from place-to-place equipped to provide preventive, screening, diagnostic, and/or treatment services.
  value15('15'),

  /// Display: Off Campus-Outpatient Hospital
  /// Definition: portion of an off-campus hospital provider-based department which provides diagnostic, therapeutic (both surgical and nonsurgical), and rehabilitation services to sick or injured persons who do not require hospitalization or institutionalization.
  value19('19'),

  /// Display: Urgent Care Facility
  /// Definition: Location, distinct from a hospital emergency room, an office, or a clinic, whose purpose is to diagnose and treat illness or injury for unscheduled, ambulatory patients seeking immediate medical attention.
  value20('20'),

  /// Display: Inpatient Hospital
  /// Definition: A facility, other than psychiatric, which primarily provides diagnostic, therapeutic (both surgical and nonsurgical), and rehabilitation services by, or under, the supervision of physicians to patients admitted for a variety of medical conditions.
  value21('21'),

  /// Display: Ambulance—Land
  /// Definition: A land vehicle specifically designed, equipped and staffed for lifesaving and transporting the sick or injured.
  value41('41'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleServicePlaceCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleServicePlaceCodes] instances.
  static ExampleServicePlaceCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleServicePlaceCodes.elementOnly.withElement(
        element,
      );
    }
    return ExampleServicePlaceCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExampleServicePlaceCodes withElement(Element? newElement) {
    return ExampleServicePlaceCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
