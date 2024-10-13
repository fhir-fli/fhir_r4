/// This value set defines a set of codes that can be used to indicate the particular target population the reference range applies to.
enum ObservationReferenceRangeAppliesToCodes {
  value248153007,
  value248152002,
  value77386006,
  ;

  @override
  String toString() {
    switch (this) {
      case value248153007:
        return '248153007';
      case value248152002:
        return '248152002';
      case value77386006:
        return '77386006';
    }
  }

  /// Returns a [String] from a [ObservationReferenceRangeAppliesToCodes] enum.
  String toJson() => toString();

  /// Returns a [ObservationReferenceRangeAppliesToCodes] from a [String] enum.
  static ObservationReferenceRangeAppliesToCodes fromString(String str) {
    switch (str) {
      case '248153007':
        return ObservationReferenceRangeAppliesToCodes.value248153007;
      case '248152002':
        return ObservationReferenceRangeAppliesToCodes.value248152002;
      case '77386006':
        return ObservationReferenceRangeAppliesToCodes.value77386006;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ObservationReferenceRangeAppliesToCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ObservationReferenceRangeAppliesToCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
