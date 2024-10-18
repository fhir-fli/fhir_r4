// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of reasons for the cancellation of an appointment.
enum AppointmentCancellationReason {
  /// Display: Patient
  /// Definition:
  pat('pat'),

  /// Display: Patient: Canceled via automated reminder system
  /// Definition:
  pat_crs('pat-crs'),

  /// Display: Patient: Canceled via Patient Portal
  /// Definition:
  pat_cpp('pat-cpp'),

  /// Display: Patient: Deceased
  /// Definition:
  pat_dec('pat-dec'),

  /// Display: Patient: Feeling Better
  /// Definition:
  pat_fb('pat-fb'),

  /// Display: Patient: Lack of Transportation
  /// Definition:
  pat_lt('pat-lt'),

  /// Display: Patient: Member Terminated
  /// Definition:
  pat_mt('pat-mt'),

  /// Display: Patient: Moved
  /// Definition:
  pat_mv('pat-mv'),

  /// Display: Patient: Pregnant
  /// Definition:
  pat_preg('pat-preg'),

  /// Display: Patient: Scheduled from Wait List
  /// Definition:
  pat_swl('pat-swl'),

  /// Display: Patient: Unhappy/Changed Provider
  /// Definition:
  pat_ucp('pat-ucp'),

  /// Display: Provider
  /// Definition:
  prov('prov'),

  /// Display: Provider: Personal
  /// Definition:
  prov_pers('prov-pers'),

  /// Display: Provider: Discharged
  /// Definition:
  prov_dch('prov-dch'),

  /// Display: Provider: Edu/Meeting
  /// Definition:
  prov_edu('prov-edu'),

  /// Display: Provider: Hospitalized
  /// Definition:
  prov_hosp('prov-hosp'),

  /// Display: Provider: Labs Out of Acceptable Range
  /// Definition:
  prov_labs('prov-labs'),

  /// Display: Provider: MRI Screening Form Marked Do Not Proceed
  /// Definition:
  prov_mri('prov-mri'),

  /// Display: Provider: Oncology Treatment Plan Changes
  /// Definition:
  prov_onc('prov-onc'),

  /// Display: Equipment Maintenance/Repair
  /// Definition:
  maint('maint'),

  /// Display: Prep/Med Incomplete
  /// Definition:
  meds_inc('meds-inc'),

  /// Display: Other
  /// Definition:
  other('other'),

  /// Display: Other: CMS Therapy Cap Service Not Authorized
  /// Definition:
  oth_cms('oth-cms'),

  /// Display: Other: Error
  /// Definition:
  oth_err('oth-err'),

  /// Display: Other: Financial
  /// Definition:
  oth_fin('oth-fin'),

  /// Display: Other: Improper IV Access/Infiltrate IV
  /// Definition:
  oth_iv('oth-iv'),

  /// Display: Other: No Interpreter Available
  /// Definition:
  oth_int('oth-int'),

  /// Display: Other: Prep/Med/Results Unavailable
  /// Definition:
  oth_mu('oth-mu'),

  /// Display: Other: Room/Resource Maintenance
  /// Definition:
  oth_room('oth-room'),

  /// Display: Other: Schedule Order Error
  /// Definition:
  oth_oerr('oth-oerr'),

  /// Display: Other: Silent Walk In Error
  /// Definition:
  oth_swie('oth-swie'),

  /// Display: Other: Weather
  /// Definition:
  oth_weath('oth-weath'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AppointmentCancellationReason(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AppointmentCancellationReason] instances.
  static AppointmentCancellationReason fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentCancellationReason.elementOnly.withElement(
        element,
      );
    }
    return AppointmentCancellationReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AppointmentCancellationReason withElement(Element? newElement) {
    return AppointmentCancellationReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
