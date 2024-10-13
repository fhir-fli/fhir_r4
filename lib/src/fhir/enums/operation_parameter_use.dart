/// Whether an operation parameter is an input or an output parameter.
enum OperationParameterUse {
  /// Display: In
  /// Definition: This is an input parameter.
  in_,

  /// Display: Out
  /// Definition: This is an output parameter.
  out,
  ;

  @override
  String toString() {
    switch (this) {
      case in_:
        return 'in';
      case out:
        return 'out';
    }
  }

  /// Returns a [String] from a [OperationParameterUse] enum.
  String toJson() => toString();

  /// Returns a [OperationParameterUse] from a [String] enum.
  static OperationParameterUse fromString(String str) {
    switch (str) {
      case 'in':
        return OperationParameterUse.in_;
      case 'out':
        return OperationParameterUse.out;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [OperationParameterUse] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static OperationParameterUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
