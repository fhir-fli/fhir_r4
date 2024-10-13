/// This value set includes a smattering of Prescription Product codes.
enum ExampleVisionPrescriptionProductCodes {
  /// Display: Lens
  /// Definition: A lens to be fitted to a frame to comprise a pair of glasses.
  lens,

  /// Display: Contact Lens
  /// Definition: A lens to be fitted for wearing directly on an eye.
  contact,
  ;

  @override
  String toString() {
    switch (this) {
      case lens:
        return 'lens';
      case contact:
        return 'contact';
    }
  }

  /// Returns a [String] from a [ExampleVisionPrescriptionProductCodes] enum.
  String toJson() => toString();

  /// Returns a [ExampleVisionPrescriptionProductCodes] from a [String] enum.
  static ExampleVisionPrescriptionProductCodes fromString(String str) {
    switch (str) {
      case 'lens':
        return ExampleVisionPrescriptionProductCodes.lens;
      case 'contact':
        return ExampleVisionPrescriptionProductCodes.contact;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleVisionPrescriptionProductCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleVisionPrescriptionProductCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
