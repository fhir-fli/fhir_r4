/// An anatomical origin of the source material within an organism.
enum SourceMaterialPart {
  /// Display: animal
  Animal,

  /// Display: plant
  Plant,

  /// Display: mineral
  Mineral,
  ;

  @override
  String toString() {
    switch (this) {
      case Animal:
        return 'Animal';
      case Plant:
        return 'Plant';
      case Mineral:
        return 'Mineral';
    }
  }

  /// Returns a [String] from a [SourceMaterialPart] enum.
  String toJson() => toString();

  /// Returns a [SourceMaterialPart] from a [String] enum.
  static SourceMaterialPart fromString(String str) {
    switch (str) {
      case 'Animal':
        return SourceMaterialPart.Animal;
      case 'Plant':
        return SourceMaterialPart.Plant;
      case 'Mineral':
        return SourceMaterialPart.Mineral;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SourceMaterialPart] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SourceMaterialPart fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
