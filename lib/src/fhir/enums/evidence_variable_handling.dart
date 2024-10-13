/// The handling of the variable in statistical analysis for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
enum EvidenceVariableHandling {
  /// Display: continuous variable
  /// Definition: A continuous variable is one for which, within the limits the variable ranges, any value is possible (from STATO http://purl.obolibrary.org/obo/STATO_0000251).
  continuous,

  /// Display: dichotomous variable
  /// Definition: A dichotomous variable is a categorical variable which is defined to have only 2 categories or possible values (from STATO http://purl.obolibrary.org/obo/STATO_0000090).
  dichotomous,

  /// Display: ordinal variable
  /// Definition: An ordinal variable is a categorical variable where the discrete possible values are ordered or correspond to an implicit ranking (from STATO http://purl.obolibrary.org/obo/STATO_0000228).
  ordinal,

  /// Display: polychotomous variable
  /// Definition: A polychotomous variable is a categorical variable which is defined to have minimally 2 categories or possible values. (from STATO  http://purl.obolibrary.org/obo/STATO_0000087).  Suggestion to limit code use to situations when neither dichotomous nor ordinal variables apply.
  polychotomous,
  ;

  @override
  String toString() {
    switch (this) {
      case continuous:
        return 'continuous';
      case dichotomous:
        return 'dichotomous';
      case ordinal:
        return 'ordinal';
      case polychotomous:
        return 'polychotomous';
    }
  }

  /// Returns a [String] from a [EvidenceVariableHandling] enum.
  String toJson() => toString();

  /// Returns a [EvidenceVariableHandling] from a [String] enum.
  static EvidenceVariableHandling fromString(String str) {
    switch (str) {
      case 'continuous':
        return EvidenceVariableHandling.continuous;
      case 'dichotomous':
        return EvidenceVariableHandling.dichotomous;
      case 'ordinal':
        return EvidenceVariableHandling.ordinal;
      case 'polychotomous':
        return EvidenceVariableHandling.polychotomous;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EvidenceVariableHandling] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EvidenceVariableHandling fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
