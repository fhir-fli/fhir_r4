/// Biologically Derived Product Status.
enum BiologicallyDerivedProductStatus {
  /// Display: Available
  /// Definition: Product is currently available for use.
  available,

  /// Display: Unavailable
  /// Definition: Product is not currently available for use.
  unavailable,
  ;

  @override
  String toString() {
    switch (this) {
      case available:
        return 'available';
      case unavailable:
        return 'unavailable';
    }
  }

  /// Returns a [String] from a [BiologicallyDerivedProductStatus] enum.
  String toJson() => toString();

  /// Returns a [BiologicallyDerivedProductStatus] from a [String] enum.
  static BiologicallyDerivedProductStatus fromString(String str) {
    switch (str) {
      case 'available':
        return BiologicallyDerivedProductStatus.available;
      case 'unavailable':
        return BiologicallyDerivedProductStatus.unavailable;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [BiologicallyDerivedProductStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static BiologicallyDerivedProductStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
