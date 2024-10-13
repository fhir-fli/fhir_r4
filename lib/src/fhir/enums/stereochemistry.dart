/// The optical rotation type of a substance.
enum Stereochemistry {
  /// Display: constitutional isomer
  ConstitutionalIsomer,

  /// Display: stereoisomer
  Stereoisomer,

  /// Display: enantiomer
  Enantiomer,
  ;

  @override
  String toString() {
    switch (this) {
      case ConstitutionalIsomer:
        return 'ConstitutionalIsomer';
      case Stereoisomer:
        return 'Stereoisomer';
      case Enantiomer:
        return 'Enantiomer';
    }
  }

  /// Returns a [String] from a [Stereochemistry] enum.
  String toJson() => toString();

  /// Returns a [Stereochemistry] from a [String] enum.
  static Stereochemistry fromString(String str) {
    switch (str) {
      case 'ConstitutionalIsomer':
        return Stereochemistry.ConstitutionalIsomer;
      case 'Stereoisomer':
        return Stereochemistry.Stereoisomer;
      case 'Enantiomer':
        return Stereochemistry.Enantiomer;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [Stereochemistry] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static Stereochemistry fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
