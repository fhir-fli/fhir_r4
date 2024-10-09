/// This value set includes sample Missing Tooth Reason codes.
enum MissingToothReasonCodes {
  /// Display: E
  /// Definition: Extraction
  e,

  /// Display: C
  /// Definition: Congenital
  c,

  /// Display: U
  /// Definition: Unknown
  u,

  /// Display: O
  /// Definition: Other
  o,
  ;

  @override
  String toString() {
    switch (this) {
      case e:
        return 'e';
      case c:
        return 'c';
      case u:
        return 'u';
      case o:
        return 'o';
    }
  }

  String toJson() => toString();
  static MissingToothReasonCodes fromString(String str) {
    switch (str) {
      case 'e':
        return MissingToothReasonCodes.e;
      case 'c':
        return MissingToothReasonCodes.c;
      case 'u':
        return MissingToothReasonCodes.u;
      case 'o':
        return MissingToothReasonCodes.o;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MissingToothReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
