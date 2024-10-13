/// Applicable domain for this product (e.g. human, veterinary)
enum MedicinalProductDomain {
  /// Display: Human use
  /// Definition: Product intended for use with humans
  Human,

  /// Display: Veterinary use
  /// Definition: Product intended for use with animals
  Veterinary,

  /// Display: Human and Veterinary use
  /// Definition: Product intended for use with both humans and animals
  HumanAndVeterinary,
  ;

  @override
  String toString() {
    switch (this) {
      case Human:
        return 'Human';
      case Veterinary:
        return 'Veterinary';
      case HumanAndVeterinary:
        return 'HumanAndVeterinary';
    }
  }

  /// Returns a [String] from a [MedicinalProductDomain] enum.
  String toJson() => toString();

  /// Returns a [MedicinalProductDomain] from a [String] enum.
  static MedicinalProductDomain fromString(String str) {
    switch (str) {
      case 'Human':
        return MedicinalProductDomain.Human;
      case 'Veterinary':
        return MedicinalProductDomain.Veterinary;
      case 'HumanAndVeterinary':
        return MedicinalProductDomain.HumanAndVeterinary;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MedicinalProductDomain] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MedicinalProductDomain fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
