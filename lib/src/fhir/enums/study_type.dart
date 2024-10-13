/// The type of study the evidence was derived from.
enum StudyType {
  /// Display: randomized trial
  /// Definition: randomized controlled trial.
  RCT,

  /// Display: controlled trial (non-randomized)
  /// Definition: controlled (but not randomized) trial.
  CCT,

  /// Display: comparative cohort study
  /// Definition: observational study comparing cohorts.
  cohort,

  /// Display: case-control study
  /// Definition: case-control study.
  case_control,

  /// Display: uncontrolled cohort or case series
  /// Definition: uncontrolled cohort or case series.
  series,

  /// Display: case report
  /// Definition: a single case report.
  case_report,

  /// Display: mixed methods
  /// Definition: a combination of 1 or more types of studies.
  mixed,
  ;

  @override
  String toString() {
    switch (this) {
      case RCT:
        return 'RCT';
      case CCT:
        return 'CCT';
      case cohort:
        return 'cohort';
      case case_control:
        return 'case-control';
      case series:
        return 'series';
      case case_report:
        return 'case-report';
      case mixed:
        return 'mixed';
    }
  }

  /// Returns a [String] from a [StudyType] enum.
  String toJson() => toString();

  /// Returns a [StudyType] from a [String] enum.
  static StudyType fromString(String str) {
    switch (str) {
      case 'RCT':
        return StudyType.RCT;
      case 'CCT':
        return StudyType.CCT;
      case 'cohort':
        return StudyType.cohort;
      case 'case-control':
        return StudyType.case_control;
      case 'series':
        return StudyType.series;
      case 'case-report':
        return StudyType.case_report;
      case 'mixed':
        return StudyType.mixed;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [StudyType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static StudyType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
