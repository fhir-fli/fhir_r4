import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of Service Place codes.
enum ExampleServicePlaceCodes {
  /// Display: Pharmacy
  /// Definition: A facility or location where drugs and other medically related items and services are sold, dispensed, or otherwise provided directly to patients.
  @JsonValue('01')
  value01,

  /// Display: School
  /// Definition: A facility whose primary purpose is education.
  @JsonValue('03')
  value03,

  /// Display: Homeless Shelter
  /// Definition: A facility or location whose primary purpose is to provide temporary housing to homeless individuals (e.g., emergency shelters, individual or family shelters).
  @JsonValue('04')
  value04,

  /// Display: Indian Health Service Free-standing Facility
  /// Definition: A facility or location, owned and operated by the Indian Health Service, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services to American Indians and Alaska Natives who do not require hospitalization.
  @JsonValue('05')
  value05,

  /// Display: Indian Health Service Provider-based Facility
  /// Definition: A facility or location, owned and operated by the Indian Health Service, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services rendered by, or under the supervision of, physicians to American Indians and Alaska Natives admitted as inpatients or outpatients.
  @JsonValue('06')
  value06,

  /// Display: Tribal 638 Free-Standing Facility
  /// Definition: A facility or location owned and operated by a federally recognized American Indian or Alaska Native tribe or tribal organization under a 638 agreement, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services to tribal members who do not require hospitalization.
  @JsonValue('07')
  value07,

  /// Display: Tribal 638 Provider-Based Facility
  /// Definition: A facility or location owned and operated by a federally recognized American Indian or Alaska Native tribe or tribal organization under a 638 agreement, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services to tribal members admitted as inpatients or outpatients.
  @JsonValue('08')
  value08,

  /// Display: Prison/Correctional Facility
  /// Definition: A prison, jail, reformatory, work farm, detention center, or any other similar facility maintained by either Federal, State or local authorities for the purpose of confinement or rehabilitation of adult or juvenile criminal offenders.
  @JsonValue('09')
  value09,

  /// Display: Office
  /// Definition: Location, other than a hospital, skilled nursing facility (SNF), military treatment facility, community health center, State or local public health clinic, or intermediate care facility (ICF), where the health professional routinely provides health examinations, diagnosis, and treatment of illness or injury on an ambulatory basis.
  @JsonValue('11')
  value11,

  /// Display: Home
  /// Definition: Location, other than a hospital or other facility, where the patient receives care in a private residence.
  @JsonValue('12')
  value12,

  /// Display: Assisted Living Fa
  /// Definition: Congregate residential facility with self-contained living units providing assessment of each resident's needs and on-site support 24 hours a day, 7 days a week, with the capacity to deliver or arrange for services including some health care and other services.
  @JsonValue('13')
  value13,

  /// Display: Group Home
  /// Definition: A residence, with shared living areas, where clients receive supervision and other services such as social and/or behavioral services, custodial service, and minimal services (e.g., medication administration).
  @JsonValue('14')
  value14,

  /// Display: Mobile Unit
  /// Definition: A facility/unit that moves from place-to-place equipped to provide preventive, screening, diagnostic, and/or treatment services.
  @JsonValue('15')
  value15,

  /// Display: Off Campus-Outpatient Hospital
  /// Definition: portion of an off-campus hospital provider-based department which provides diagnostic, therapeutic (both surgical and nonsurgical), and rehabilitation services to sick or injured persons who do not require hospitalization or institutionalization.
  @JsonValue('19')
  value19,

  /// Display: Urgent Care Facility
  /// Definition: Location, distinct from a hospital emergency room, an office, or a clinic, whose purpose is to diagnose and treat illness or injury for unscheduled, ambulatory patients seeking immediate medical attention.
  @JsonValue('20')
  value20,

  /// Display: Inpatient Hospital
  /// Definition: A facility, other than psychiatric, which primarily provides diagnostic, therapeutic (both surgical and nonsurgical), and rehabilitation services by, or under, the supervision of physicians to patients admitted for a variety of medical conditions.
  @JsonValue('21')
  value21,

  /// Display: Ambulance—Land
  /// Definition: A land vehicle specifically designed, equipped and staffed for lifesaving and transporting the sick or injured.
  @JsonValue('41')
  value41,
  ;

  @override
  String toString() {
    switch (this) {
      case value01:
        return '01';
      case value03:
        return '03';
      case value04:
        return '04';
      case value05:
        return '05';
      case value06:
        return '06';
      case value07:
        return '07';
      case value08:
        return '08';
      case value09:
        return '09';
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
      case value19:
        return '19';
      case value20:
        return '20';
      case value21:
        return '21';
      case value41:
        return '41';
    }
  }

  String toJson() => toString();
  ExampleServicePlaceCodes fromString(String str) {
    switch (str) {
      case '01':
        return ExampleServicePlaceCodes.value01;
      case '03':
        return ExampleServicePlaceCodes.value03;
      case '04':
        return ExampleServicePlaceCodes.value04;
      case '05':
        return ExampleServicePlaceCodes.value05;
      case '06':
        return ExampleServicePlaceCodes.value06;
      case '07':
        return ExampleServicePlaceCodes.value07;
      case '08':
        return ExampleServicePlaceCodes.value08;
      case '09':
        return ExampleServicePlaceCodes.value09;
      case '11':
        return ExampleServicePlaceCodes.value11;
      case '12':
        return ExampleServicePlaceCodes.value12;
      case '13':
        return ExampleServicePlaceCodes.value13;
      case '14':
        return ExampleServicePlaceCodes.value14;
      case '15':
        return ExampleServicePlaceCodes.value15;
      case '19':
        return ExampleServicePlaceCodes.value19;
      case '20':
        return ExampleServicePlaceCodes.value20;
      case '21':
        return ExampleServicePlaceCodes.value21;
      case '41':
        return ExampleServicePlaceCodes.value41;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ExampleServicePlaceCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
