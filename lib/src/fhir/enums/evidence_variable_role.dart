/// The role that the assertion variable plays.
enum EvidenceVariableRole {
  /// Display: population
  /// Definition: variable represents a population.
  population,

  /// Display: subpopulation
  /// Definition: variable represents a subpopulation.
  subpopulation,

  /// Display: exposure
  /// Definition: variable represents an exposure.
  exposure,

  /// Display: reference exposure
  /// Definition: variable represents a reference exposure.
  referenceExposure,

  /// Display: measured variable
  /// Definition: variable represents a measured variable.
  measuredVariable,

  /// Display: confounder
  /// Definition: variable represents a confounder.
  confounder,
  ;

  @override
  String toString() {
    switch (this) {
      case population:
        return 'population';
      case subpopulation:
        return 'subpopulation';
      case exposure:
        return 'exposure';
      case referenceExposure:
        return 'referenceExposure';
      case measuredVariable:
        return 'measuredVariable';
      case confounder:
        return 'confounder';
    }
  }

  /// Returns a [String] from a [EvidenceVariableRole] enum.
  String toJson() => toString();

  /// Returns a [EvidenceVariableRole] from a [String] enum.
  static EvidenceVariableRole fromString(String str) {
    switch (str) {
      case 'population':
        return EvidenceVariableRole.population;
      case 'subpopulation':
        return EvidenceVariableRole.subpopulation;
      case 'exposure':
        return EvidenceVariableRole.exposure;
      case 'referenceExposure':
        return EvidenceVariableRole.referenceExposure;
      case 'measuredVariable':
        return EvidenceVariableRole.measuredVariable;
      case 'confounder':
        return EvidenceVariableRole.confounder;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EvidenceVariableRole] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EvidenceVariableRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
