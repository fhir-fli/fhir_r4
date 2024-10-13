/// Used to distinguish different roles a resource can play within a set of linked resources.
enum LinkageType {
  /// Display: Source of Truth
  /// Definition: The resource represents the "source of truth" (from the perspective of this Linkage resource) for the underlying event/condition/etc.
  source,

  /// Display: Alternate Record
  /// Definition: The resource represents an alternative view of the underlying event/condition/etc.  The resource may still be actively maintained, even though it is not considered to be the source of truth.
  alternate,

  /// Display: Historical/Obsolete Record
  /// Definition: The resource represents an obsolete record of the underlying event/condition/etc.  It is not expected to be actively maintained.
  historical,
  ;

  @override
  String toString() {
    switch (this) {
      case source:
        return 'source';
      case alternate:
        return 'alternate';
      case historical:
        return 'historical';
    }
  }

  /// Returns a [String] from a [LinkageType] enum.
  String toJson() => toString();

  /// Returns a [LinkageType] from a [String] enum.
  static LinkageType fromString(String str) {
    switch (str) {
      case 'source':
        return LinkageType.source;
      case 'alternate':
        return LinkageType.alternate;
      case 'historical':
        return LinkageType.historical;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [LinkageType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static LinkageType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
