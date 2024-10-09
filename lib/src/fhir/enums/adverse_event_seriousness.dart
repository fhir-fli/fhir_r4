/// Overall seriousness of this event for the patient.
enum AdverseEventSeriousness {
  /// Display: Non-serious
  /// Definition: Non-serious.
  Non_serious,

  /// Display: Serious
  /// Definition: Serious.
  Serious,

  /// Display: Results in death
  /// Definition: Results in death.
  SeriousResultsInDeath,

  /// Display: Is Life-threatening
  /// Definition: Is Life-threatening.
  SeriousIsLifeThreatening,

  /// Display: Requires or prolongs inpatient hospitalization
  /// Definition: Requires inpatient hospitalization or causes prolongation of existing hospitalization.
  SeriousResultsInHospitalization,

  /// Display: Results in persistent or significant disability/incapacity
  /// Definition: Results in persistent or significant disability/incapacity.
  SeriousResultsInDisability,

  /// Display: Is a congenital anomaly/birth defect
  /// Definition: Is a congenital anomaly/birth defect.
  SeriousIsBirthDefect,

  /// Display: Requires intervention to prevent permanent impairment
  /// Definition: Requires intervention to prevent permanent impairment or damage (i.e., an important medical event that requires medical judgement).
  SeriousRequiresPreventImpairment,
  ;

  @override
  String toString() {
    switch (this) {
      case Non_serious:
        return 'Non-serious';
      case Serious:
        return 'Serious';
      case SeriousResultsInDeath:
        return 'SeriousResultsInDeath';
      case SeriousIsLifeThreatening:
        return 'SeriousIsLifeThreatening';
      case SeriousResultsInHospitalization:
        return 'SeriousResultsInHospitalization';
      case SeriousResultsInDisability:
        return 'SeriousResultsInDisability';
      case SeriousIsBirthDefect:
        return 'SeriousIsBirthDefect';
      case SeriousRequiresPreventImpairment:
        return 'SeriousRequiresPreventImpairment';
    }
  }

  String toJson() => toString();
  static AdverseEventSeriousness fromString(String str) {
    switch (str) {
      case 'Non-serious':
        return AdverseEventSeriousness.Non_serious;
      case 'Serious':
        return AdverseEventSeriousness.Serious;
      case 'SeriousResultsInDeath':
        return AdverseEventSeriousness.SeriousResultsInDeath;
      case 'SeriousIsLifeThreatening':
        return AdverseEventSeriousness.SeriousIsLifeThreatening;
      case 'SeriousResultsInHospitalization':
        return AdverseEventSeriousness.SeriousResultsInHospitalization;
      case 'SeriousResultsInDisability':
        return AdverseEventSeriousness.SeriousResultsInDisability;
      case 'SeriousIsBirthDefect':
        return AdverseEventSeriousness.SeriousIsBirthDefect;
      case 'SeriousRequiresPreventImpairment':
        return AdverseEventSeriousness.SeriousRequiresPreventImpairment;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AdverseEventSeriousness fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
