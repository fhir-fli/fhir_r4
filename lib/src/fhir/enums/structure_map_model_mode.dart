/// How the referenced structure is used in this mapping.
enum StructureMapModelMode {
  /// Display: Source Structure Definition
  /// Definition: This structure describes an instance passed to the mapping engine that is used a source of data.
  source,

  /// Display: Queried Structure Definition
  /// Definition: This structure describes an instance that the mapping engine may ask for that is used a source of data.
  queried,

  /// Display: Target Structure Definition
  /// Definition: This structure describes an instance passed to the mapping engine that is used a target of data.
  target,

  /// Display: Produced Structure Definition
  /// Definition: This structure describes an instance that the mapping engine may ask to create that is used a target of data.
  produced,
  ;

  @override
  String toString() {
    switch (this) {
      case source:
        return 'source';
      case queried:
        return 'queried';
      case target:
        return 'target';
      case produced:
        return 'produced';
    }
  }

  /// Returns a [String] from a [StructureMapModelMode] enum.
  String toJson() => toString();

  /// Returns a [StructureMapModelMode] from a [String] enum.
  static StructureMapModelMode fromString(String str) {
    switch (str) {
      case 'source':
        return StructureMapModelMode.source;
      case 'queried':
        return StructureMapModelMode.queried;
      case 'target':
        return StructureMapModelMode.target;
      case 'produced':
        return StructureMapModelMode.produced;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [StructureMapModelMode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static StructureMapModelMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
