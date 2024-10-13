/// This example value set defines a set of reasons for the cancellation of an appointment.
enum AppointmentCancellationReason {
  /// Display: Patient
  pat,

  /// Display: Patient: Canceled via automated reminder system
  pat_crs,

  /// Display: Patient: Canceled via Patient Portal
  pat_cpp,

  /// Display: Patient: Deceased
  pat_dec,

  /// Display: Patient: Feeling Better
  pat_fb,

  /// Display: Patient: Lack of Transportation
  pat_lt,

  /// Display: Patient: Member Terminated
  pat_mt,

  /// Display: Patient: Moved
  pat_mv,

  /// Display: Patient: Pregnant
  pat_preg,

  /// Display: Patient: Scheduled from Wait List
  pat_swl,

  /// Display: Patient: Unhappy/Changed Provider
  pat_ucp,

  /// Display: Provider
  prov,

  /// Display: Provider: Personal
  prov_pers,

  /// Display: Provider: Discharged
  prov_dch,

  /// Display: Provider: Edu/Meeting
  prov_edu,

  /// Display: Provider: Hospitalized
  prov_hosp,

  /// Display: Provider: Labs Out of Acceptable Range
  prov_labs,

  /// Display: Provider: MRI Screening Form Marked Do Not Proceed
  prov_mri,

  /// Display: Provider: Oncology Treatment Plan Changes
  prov_onc,

  /// Display: Equipment Maintenance/Repair
  maint,

  /// Display: Prep/Med Incomplete
  meds_inc,

  /// Display: Other
  other,

  /// Display: Other: CMS Therapy Cap Service Not Authorized
  oth_cms,

  /// Display: Other: Error
  oth_err,

  /// Display: Other: Financial
  oth_fin,

  /// Display: Other: Improper IV Access/Infiltrate IV
  oth_iv,

  /// Display: Other: No Interpreter Available
  oth_int,

  /// Display: Other: Prep/Med/Results Unavailable
  oth_mu,

  /// Display: Other: Room/Resource Maintenance
  oth_room,

  /// Display: Other: Schedule Order Error
  oth_oerr,

  /// Display: Other: Silent Walk In Error
  oth_swie,

  /// Display: Other: Weather
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

  /// Returns a [String] from a [AppointmentCancellationReason] enum.
  String toJson() => toString();

  /// Returns a [AppointmentCancellationReason] from a [String] enum.
  static AppointmentCancellationReason fromString(String str) {
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

  /// Returns a [AppointmentCancellationReason] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AppointmentCancellationReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
