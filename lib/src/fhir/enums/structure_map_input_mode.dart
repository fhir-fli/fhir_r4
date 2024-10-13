/// Mode for this instance of data.
enum StructureMapInputMode {
  /// Display: Source Instance
  /// Definition: Names an input instance used a source for mapping.
  source,

  /// Display: Target Instance
  /// Definition: Names an instance that is being populated.
  target,
  ;

  @override
  String toString() {
    switch (this) {
      case source:
        return 'source';
      case target:
        return 'target';
    }
  }

  /// Returns a [String] from a [StructureMapInputMode] enum.
  String toJson() => toString();

  /// Returns a [StructureMapInputMode] from a [String] enum.
  static StructureMapInputMode fromString(String str) {
    switch (str) {
      case 'source':
        return StructureMapInputMode.source;
      case 'target':
        return StructureMapInputMode.target;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [StructureMapInputMode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static StructureMapInputMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
