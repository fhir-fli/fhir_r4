/// The type of a case involved in an application.
enum RegulatedAuthorizationCaseType {
  /// Display: Initial Marketing Authorisation Application
  InitialMAA,

  /// Display: Variation
  Variation,

  /// Display: Line Extension
  LineExtension,

  /// Display: Periodic Safety Update Report
  PSUR,

  /// Display: Renewal
  Renewal,

  /// Display: Follow-up Measure
  Follow_up,

  /// Display: Specific Obligation
  value100000155699,

  /// Display: Annual Reassessment
  AnnualReassessment,

  /// Display: Urgent Safety Restriction
  UrgentSafetyRestriction,

  /// Display: Paediatric Submission
  PaediatricSubmission,

  /// Display: Transfer of a marketing authorisation
  TransferMA,

  /// Display: Lifting of a Suspension
  LiftingSuspension,

  /// Display: Withdrawal
  Withdrawal,

  /// Display: Reformatting
  Reformatting,

  /// Display: Risk Management Plan
  RMP,

  /// Display: Review of a Suspension of MA
  ReviewSuspension,

  /// Display: Supplemental Information
  SupplementalInformation,

  /// Display: Repeat Use Procedure
  RepeatUse,

  /// Display: Signal detection
  SignalDetection,

  /// Display: FLU STRAIN UPDATE
  FLU,

  /// Display: PANDEMIC UPDATE
  PANDEMIC,

  /// Display: Orphan Designation Application
  Orphan,
  ;

  @override
  String toString() {
    switch (this) {
      case InitialMAA:
        return 'InitialMAA';
      case Variation:
        return 'Variation';
      case LineExtension:
        return 'LineExtension';
      case PSUR:
        return 'PSUR';
      case Renewal:
        return 'Renewal';
      case Follow_up:
        return 'Follow-up';
      case value100000155699:
        return '100000155699';
      case AnnualReassessment:
        return 'AnnualReassessment';
      case UrgentSafetyRestriction:
        return 'UrgentSafetyRestriction';
      case PaediatricSubmission:
        return 'PaediatricSubmission';
      case TransferMA:
        return 'TransferMA';
      case LiftingSuspension:
        return 'LiftingSuspension';
      case Withdrawal:
        return 'Withdrawal';
      case Reformatting:
        return 'Reformatting';
      case RMP:
        return 'RMP';
      case ReviewSuspension:
        return 'ReviewSuspension';
      case SupplementalInformation:
        return 'SupplementalInformation';
      case RepeatUse:
        return 'RepeatUse';
      case SignalDetection:
        return 'SignalDetection';
      case FLU:
        return 'FLU';
      case PANDEMIC:
        return 'PANDEMIC';
      case Orphan:
        return 'Orphan';
    }
  }

  String toJson() => toString();
  static RegulatedAuthorizationCaseType fromString(String str) {
    switch (str) {
      case 'InitialMAA':
        return RegulatedAuthorizationCaseType.InitialMAA;
      case 'Variation':
        return RegulatedAuthorizationCaseType.Variation;
      case 'LineExtension':
        return RegulatedAuthorizationCaseType.LineExtension;
      case 'PSUR':
        return RegulatedAuthorizationCaseType.PSUR;
      case 'Renewal':
        return RegulatedAuthorizationCaseType.Renewal;
      case 'Follow-up':
        return RegulatedAuthorizationCaseType.Follow_up;
      case '100000155699':
        return RegulatedAuthorizationCaseType.value100000155699;
      case 'AnnualReassessment':
        return RegulatedAuthorizationCaseType.AnnualReassessment;
      case 'UrgentSafetyRestriction':
        return RegulatedAuthorizationCaseType.UrgentSafetyRestriction;
      case 'PaediatricSubmission':
        return RegulatedAuthorizationCaseType.PaediatricSubmission;
      case 'TransferMA':
        return RegulatedAuthorizationCaseType.TransferMA;
      case 'LiftingSuspension':
        return RegulatedAuthorizationCaseType.LiftingSuspension;
      case 'Withdrawal':
        return RegulatedAuthorizationCaseType.Withdrawal;
      case 'Reformatting':
        return RegulatedAuthorizationCaseType.Reformatting;
      case 'RMP':
        return RegulatedAuthorizationCaseType.RMP;
      case 'ReviewSuspension':
        return RegulatedAuthorizationCaseType.ReviewSuspension;
      case 'SupplementalInformation':
        return RegulatedAuthorizationCaseType.SupplementalInformation;
      case 'RepeatUse':
        return RegulatedAuthorizationCaseType.RepeatUse;
      case 'SignalDetection':
        return RegulatedAuthorizationCaseType.SignalDetection;
      case 'FLU':
        return RegulatedAuthorizationCaseType.FLU;
      case 'PANDEMIC':
        return RegulatedAuthorizationCaseType.PANDEMIC;
      case 'Orphan':
        return RegulatedAuthorizationCaseType.Orphan;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static RegulatedAuthorizationCaseType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
