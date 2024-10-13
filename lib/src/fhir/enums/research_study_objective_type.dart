/// Codes for the kind of study objective.
enum ResearchStudyObjectiveType {
  /// Display: Primary
  /// Definition: The main question to be answered, and the one that drives any statistical planning for the study—e.g., calculation of the sample size to provide the appropriate power for statistical testing.
  primary,

  /// Display: Secondary
  /// Definition: Question to be answered in the study that is of lesser importance than the primary objective.
  secondary,

  /// Display: Exploratory
  /// Definition: Exploratory questions to be answered in the study.
  exploratory,
  ;

  @override
  String toString() {
    switch (this) {
      case primary:
        return 'primary';
      case secondary:
        return 'secondary';
      case exploratory:
        return 'exploratory';
    }
  }

  /// Returns a [String] from a [ResearchStudyObjectiveType] enum.
  String toJson() => toString();

  /// Returns a [ResearchStudyObjectiveType] from a [String] enum.
  static ResearchStudyObjectiveType fromString(String str) {
    switch (str) {
      case 'primary':
        return ResearchStudyObjectiveType.primary;
      case 'secondary':
        return ResearchStudyObjectiveType.secondary;
      case 'exploratory':
        return ResearchStudyObjectiveType.exploratory;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ResearchStudyObjectiveType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ResearchStudyObjectiveType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
