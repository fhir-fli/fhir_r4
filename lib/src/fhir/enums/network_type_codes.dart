/// This value set includes a smattering of Network type codes.
enum NetworkTypeCodes {
  /// Display: In Network
  /// Definition: Services rendered by a Network provider
  in_,

  /// Display: Out of Network
  /// Definition: Services rendered by a provider who is not in the Network
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

  /// Returns a [String] from a [NetworkTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [NetworkTypeCodes] from a [String] enum.
  static NetworkTypeCodes fromString(String str) {
    switch (str) {
      case 'in':
        return NetworkTypeCodes.in_;
      case 'out':
        return NetworkTypeCodes.out;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [NetworkTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static NetworkTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
