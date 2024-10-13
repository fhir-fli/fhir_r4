/// A species of origin a substance raw material.
enum SourceMaterialSpecies {
  /// Display: Ginkgo biloba
  GinkgoBiloba,

  /// Display: Olea europaea
  OleaEuropaea,
  ;

  @override
  String toString() {
    switch (this) {
      case GinkgoBiloba:
        return 'GinkgoBiloba';
      case OleaEuropaea:
        return 'OleaEuropaea';
    }
  }

  /// Returns a [String] from a [SourceMaterialSpecies] enum.
  String toJson() => toString();

  /// Returns a [SourceMaterialSpecies] from a [String] enum.
  static SourceMaterialSpecies fromString(String str) {
    switch (str) {
      case 'GinkgoBiloba':
        return SourceMaterialSpecies.GinkgoBiloba;
      case 'OleaEuropaea':
        return SourceMaterialSpecies.OleaEuropaea;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SourceMaterialSpecies] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SourceMaterialSpecies fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
