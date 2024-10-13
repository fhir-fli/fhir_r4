/// Type for strand.
enum StrandType {
  /// Display: Watson strand of referenceSeq
  /// Definition: Watson strand of reference sequence.
  watson,

  /// Display: Crick strand of referenceSeq
  /// Definition: Crick strand of reference sequence.
  crick,
  ;

  @override
  String toString() {
    switch (this) {
      case watson:
        return 'watson';
      case crick:
        return 'crick';
    }
  }

  /// Returns a [String] from a [StrandType] enum.
  String toJson() => toString();

  /// Returns a [StrandType] from a [String] enum.
  static StrandType fromString(String str) {
    switch (str) {
      case 'watson':
        return StrandType.watson;
      case 'crick':
        return StrandType.crick;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [StrandType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static StrandType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
