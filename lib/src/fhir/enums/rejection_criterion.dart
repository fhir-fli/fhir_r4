/// Criterion for rejection of the specimen by laboratory.
enum RejectionCriterion {
  /// Display: hemolized specimen
  /// Definition: blood specimen hemolized.
  hemolized,

  /// Display: insufficient specimen volume
  /// Definition: insufficient quantity of specimen.
  insufficient,

  /// Display: broken specimen container
  /// Definition: specimen container broken.
  broken,

  /// Display: specimen clotted
  /// Definition: specimen clotted.
  clotted,

  /// Display: specimen temperature inappropriate
  /// Definition: specimen temperature inappropriate.
  wrong_temperature,
  ;

  @override
  String toString() {
    switch (this) {
      case hemolized:
        return 'hemolized';
      case insufficient:
        return 'insufficient';
      case broken:
        return 'broken';
      case clotted:
        return 'clotted';
      case wrong_temperature:
        return 'wrong-temperature';
    }
  }

  /// Returns a [String] from a [RejectionCriterion] enum.
  String toJson() => toString();

  /// Returns a [RejectionCriterion] from a [String] enum.
  static RejectionCriterion fromString(String str) {
    switch (str) {
      case 'hemolized':
        return RejectionCriterion.hemolized;
      case 'insufficient':
        return RejectionCriterion.insufficient;
      case 'broken':
        return RejectionCriterion.broken;
      case 'clotted':
        return RejectionCriterion.clotted;
      case 'wrong-temperature':
        return RejectionCriterion.wrong_temperature;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [RejectionCriterion] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static RejectionCriterion fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
