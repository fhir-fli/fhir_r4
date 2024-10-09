import 'package:json_annotation/json_annotation.dart';

/// This example value set defines a set of reasons for the cancellation of an appointment.
enum AppointmentCancellationReason {
  /// Display: Patient
  @JsonValue('pat')
  pat,

  /// Display: Patient: Canceled via automated reminder system
  @JsonValue('pat-crs')
  pat_crs,

  /// Display: Patient: Canceled via Patient Portal
  @JsonValue('pat-cpp')
  pat_cpp,

  /// Display: Patient: Deceased
  @JsonValue('pat-dec')
  pat_dec,

  /// Display: Patient: Feeling Better
  @JsonValue('pat-fb')
  pat_fb,

  /// Display: Patient: Lack of Transportation
  @JsonValue('pat-lt')
  pat_lt,

  /// Display: Patient: Member Terminated
  @JsonValue('pat-mt')
  pat_mt,

  /// Display: Patient: Moved
  @JsonValue('pat-mv')
  pat_mv,

  /// Display: Patient: Pregnant
  @JsonValue('pat-preg')
  pat_preg,

  /// Display: Patient: Scheduled from Wait List
  @JsonValue('pat-swl')
  pat_swl,

  /// Display: Patient: Unhappy/Changed Provider
  @JsonValue('pat-ucp')
  pat_ucp,

  /// Display: Provider
  @JsonValue('prov')
  prov,

  /// Display: Provider: Personal
  @JsonValue('prov-pers')
  prov_pers,

  /// Display: Provider: Discharged
  @JsonValue('prov-dch')
  prov_dch,

  /// Display: Provider: Edu/Meeting
  @JsonValue('prov-edu')
  prov_edu,

  /// Display: Provider: Hospitalized
  @JsonValue('prov-hosp')
  prov_hosp,

  /// Display: Provider: Labs Out of Acceptable Range
  @JsonValue('prov-labs')
  prov_labs,

  /// Display: Provider: MRI Screening Form Marked Do Not Proceed
  @JsonValue('prov-mri')
  prov_mri,

  /// Display: Provider: Oncology Treatment Plan Changes
  @JsonValue('prov-onc')
  prov_onc,

  /// Display: Equipment Maintenance/Repair
  @JsonValue('maint')
  maint,

  /// Display: Prep/Med Incomplete
  @JsonValue('meds-inc')
  meds_inc,

  /// Display: Other
  @JsonValue('other')
  other,

  /// Display: Other: CMS Therapy Cap Service Not Authorized
  @JsonValue('oth-cms')
  oth_cms,

  /// Display: Other: Error
  @JsonValue('oth-err')
  oth_err,

  /// Display: Other: Financial
  @JsonValue('oth-fin')
  oth_fin,

  /// Display: Other: Improper IV Access/Infiltrate IV
  @JsonValue('oth-iv')
  oth_iv,

  /// Display: Other: No Interpreter Available
  @JsonValue('oth-int')
  oth_int,

  /// Display: Other: Prep/Med/Results Unavailable
  @JsonValue('oth-mu')
  oth_mu,

  /// Display: Other: Room/Resource Maintenance
  @JsonValue('oth-room')
  oth_room,

  /// Display: Other: Schedule Order Error
  @JsonValue('oth-oerr')
  oth_oerr,

  /// Display: Other: Silent Walk In Error
  @JsonValue('oth-swie')
  oth_swie,

  /// Display: Other: Weather
  @JsonValue('oth-weath')
  oth_weath,
  ;

  @override
  String toString() {
    switch (this) {
      case pat:
        return 'pat';
      case pat_crs:
        return 'pat-crs';
      case pat_cpp:
        return 'pat-cpp';
      case pat_dec:
        return 'pat-dec';
      case pat_fb:
        return 'pat-fb';
      case pat_lt:
        return 'pat-lt';
      case pat_mt:
        return 'pat-mt';
      case pat_mv:
        return 'pat-mv';
      case pat_preg:
        return 'pat-preg';
      case pat_swl:
        return 'pat-swl';
      case pat_ucp:
        return 'pat-ucp';
      case prov:
        return 'prov';
      case prov_pers:
        return 'prov-pers';
      case prov_dch:
        return 'prov-dch';
      case prov_edu:
        return 'prov-edu';
      case prov_hosp:
        return 'prov-hosp';
      case prov_labs:
        return 'prov-labs';
      case prov_mri:
        return 'prov-mri';
      case prov_onc:
        return 'prov-onc';
      case maint:
        return 'maint';
      case meds_inc:
        return 'meds-inc';
      case other:
        return 'other';
      case oth_cms:
        return 'oth-cms';
      case oth_err:
        return 'oth-err';
      case oth_fin:
        return 'oth-fin';
      case oth_iv:
        return 'oth-iv';
      case oth_int:
        return 'oth-int';
      case oth_mu:
        return 'oth-mu';
      case oth_room:
        return 'oth-room';
      case oth_oerr:
        return 'oth-oerr';
      case oth_swie:
        return 'oth-swie';
      case oth_weath:
        return 'oth-weath';
    }
  }

  String toJson() => toString();
  AppointmentCancellationReason fromString(String str) {
    switch (str) {
      case 'pat':
        return AppointmentCancellationReason.pat;
      case 'pat-crs':
        return AppointmentCancellationReason.pat_crs;
      case 'pat-cpp':
        return AppointmentCancellationReason.pat_cpp;
      case 'pat-dec':
        return AppointmentCancellationReason.pat_dec;
      case 'pat-fb':
        return AppointmentCancellationReason.pat_fb;
      case 'pat-lt':
        return AppointmentCancellationReason.pat_lt;
      case 'pat-mt':
        return AppointmentCancellationReason.pat_mt;
      case 'pat-mv':
        return AppointmentCancellationReason.pat_mv;
      case 'pat-preg':
        return AppointmentCancellationReason.pat_preg;
      case 'pat-swl':
        return AppointmentCancellationReason.pat_swl;
      case 'pat-ucp':
        return AppointmentCancellationReason.pat_ucp;
      case 'prov':
        return AppointmentCancellationReason.prov;
      case 'prov-pers':
        return AppointmentCancellationReason.prov_pers;
      case 'prov-dch':
        return AppointmentCancellationReason.prov_dch;
      case 'prov-edu':
        return AppointmentCancellationReason.prov_edu;
      case 'prov-hosp':
        return AppointmentCancellationReason.prov_hosp;
      case 'prov-labs':
        return AppointmentCancellationReason.prov_labs;
      case 'prov-mri':
        return AppointmentCancellationReason.prov_mri;
      case 'prov-onc':
        return AppointmentCancellationReason.prov_onc;
      case 'maint':
        return AppointmentCancellationReason.maint;
      case 'meds-inc':
        return AppointmentCancellationReason.meds_inc;
      case 'other':
        return AppointmentCancellationReason.other;
      case 'oth-cms':
        return AppointmentCancellationReason.oth_cms;
      case 'oth-err':
        return AppointmentCancellationReason.oth_err;
      case 'oth-fin':
        return AppointmentCancellationReason.oth_fin;
      case 'oth-iv':
        return AppointmentCancellationReason.oth_iv;
      case 'oth-int':
        return AppointmentCancellationReason.oth_int;
      case 'oth-mu':
        return AppointmentCancellationReason.oth_mu;
      case 'oth-room':
        return AppointmentCancellationReason.oth_room;
      case 'oth-oerr':
        return AppointmentCancellationReason.oth_oerr;
      case 'oth-swie':
        return AppointmentCancellationReason.oth_swie;
      case 'oth-weath':
        return AppointmentCancellationReason.oth_weath;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AppointmentCancellationReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
