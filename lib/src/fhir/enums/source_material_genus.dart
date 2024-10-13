/// The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.
enum SourceMaterialGenus {
  /// Display: Mycobacterium
  Mycobacterium,

  /// Display: Influenza A virus
  InfluenzavirusA,

  /// Display: Ginkgo
  Ginkgo,
  ;

  @override
  String toString() {
    switch (this) {
      case Mycobacterium:
        return 'Mycobacterium';
      case InfluenzavirusA:
        return 'InfluenzavirusA';
      case Ginkgo:
        return 'Ginkgo';
    }
  }

  /// Returns a [String] from a [SourceMaterialGenus] enum.
  String toJson() => toString();

  /// Returns a [SourceMaterialGenus] from a [String] enum.
  static SourceMaterialGenus fromString(String str) {
    switch (str) {
      case 'Mycobacterium':
        return SourceMaterialGenus.Mycobacterium;
      case 'InfluenzavirusA':
        return SourceMaterialGenus.InfluenzavirusA;
      case 'Ginkgo':
        return SourceMaterialGenus.Ginkgo;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SourceMaterialGenus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SourceMaterialGenus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
