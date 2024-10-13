/// A categorisation for incidence of occurence of an interaction.
enum InteractionIncidence {
  /// Display: Theoretical
  Theoretical,

  /// Display: Observed
  Observed,
  ;

  @override
  String toString() {
    switch (this) {
      case Theoretical:
        return 'Theoretical';
      case Observed:
        return 'Observed';
    }
  }

  /// Returns a [String] from a [InteractionIncidence] enum.
  String toJson() => toString();

  /// Returns a [InteractionIncidence] from a [String] enum.
  static InteractionIncidence fromString(String str) {
    switch (str) {
      case 'Theoretical':
        return InteractionIncidence.Theoretical;
      case 'Observed':
        return InteractionIncidence.Observed;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [InteractionIncidence] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static InteractionIncidence fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
