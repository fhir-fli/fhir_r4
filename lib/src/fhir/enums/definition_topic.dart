/// High-level categorization of the definition, used for searching, sorting, and filtering.
enum DefinitionTopic {
  /// Display: Treatment
  /// Definition: The definition is related to treatment of the patient.
  treatment,

  /// Display: Education
  /// Definition: The definition is related to education of the patient.
  education,

  /// Display: Assessment
  /// Definition: The definition is related to assessment of the patient.
  assessment,
  ;

  @override
  String toString() {
    switch (this) {
      case treatment:
        return 'treatment';
      case education:
        return 'education';
      case assessment:
        return 'assessment';
    }
  }

  /// Returns a [String] from a [DefinitionTopic] enum.
  String toJson() => toString();

  /// Returns a [DefinitionTopic] from a [String] enum.
  static DefinitionTopic fromString(String str) {
    switch (str) {
      case 'treatment':
        return DefinitionTopic.treatment;
      case 'education':
        return DefinitionTopic.education;
      case 'assessment':
        return DefinitionTopic.assessment;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DefinitionTopic] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DefinitionTopic fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
