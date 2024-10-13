/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
enum CodeSearchSupport {
  /// Display: Explicit Codes
  /// Definition: The search for code on ValueSet only includes codes explicitly detailed on includes or expansions.
  explicit,

  /// Display: Implicit Codes
  /// Definition: The search for code on ValueSet only includes all codes based on the expansion of the value set.
  all,
  ;

  @override
  String toString() {
    switch (this) {
      case explicit:
        return 'explicit';
      case all:
        return 'all';
    }
  }

  /// Returns a [String] from a [CodeSearchSupport] enum.
  String toJson() => toString();

  /// Returns a [CodeSearchSupport] from a [String] enum.
  static CodeSearchSupport fromString(String str) {
    switch (str) {
      case 'explicit':
        return CodeSearchSupport.explicit;
      case 'all':
        return CodeSearchSupport.all;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CodeSearchSupport] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CodeSearchSupport fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
