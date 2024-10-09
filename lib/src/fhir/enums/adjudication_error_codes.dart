/// This value set includes a smattering of adjudication codes.
enum AdjudicationErrorCodes {
  /// Display: Missing Identifier
  /// Definition: Missing Identifier
  a001,

  /// Display: Missing Creation Date
  /// Definition: Missing Creation Date
  a002,
  ;

  @override
  String toString() {
    switch (this) {
      case a001:
        return 'a001';
      case a002:
        return 'a002';
    }
  }

  String toJson() => toString();
  static AdjudicationErrorCodes fromString(String str) {
    switch (str) {
      case 'a001':
        return AdjudicationErrorCodes.a001;
      case 'a002':
        return AdjudicationErrorCodes.a002;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AdjudicationErrorCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
