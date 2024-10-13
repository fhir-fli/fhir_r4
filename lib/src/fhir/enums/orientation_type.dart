/// Type for orientation.
enum OrientationType {
  /// Display: Sense orientation of referenceSeq
  /// Definition: Sense orientation of reference sequence.
  sense,

  /// Display: Antisense orientation of referenceSeq
  /// Definition: Antisense orientation of reference sequence.
  antisense,
  ;

  @override
  String toString() {
    switch (this) {
      case sense:
        return 'sense';
      case antisense:
        return 'antisense';
    }
  }

  /// Returns a [String] from a [OrientationType] enum.
  String toJson() => toString();

  /// Returns a [OrientationType] from a [String] enum.
  static OrientationType fromString(String str) {
    switch (str) {
      case 'sense':
        return OrientationType.sense;
      case 'antisense':
        return OrientationType.antisense;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [OrientationType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static OrientationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
