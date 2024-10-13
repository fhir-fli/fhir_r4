/// Which type a compartment definition describes.
enum CompartmentType {
  /// Display: Patient
  /// Definition: The compartment definition is for the patient compartment.
  Patient,

  /// Display: Encounter
  /// Definition: The compartment definition is for the encounter compartment.
  Encounter,

  /// Display: RelatedPerson
  /// Definition: The compartment definition is for the related-person compartment.
  RelatedPerson,

  /// Display: Practitioner
  /// Definition: The compartment definition is for the practitioner compartment.
  Practitioner,

  /// Display: Device
  /// Definition: The compartment definition is for the device compartment.
  Device,
  ;

  @override
  String toString() {
    switch (this) {
      case Patient:
        return 'Patient';
      case Encounter:
        return 'Encounter';
      case RelatedPerson:
        return 'RelatedPerson';
      case Practitioner:
        return 'Practitioner';
      case Device:
        return 'Device';
    }
  }

  /// Returns a [String] from a [CompartmentType] enum.
  String toJson() => toString();

  /// Returns a [CompartmentType] from a [String] enum.
  static CompartmentType fromString(String str) {
    switch (str) {
      case 'Patient':
        return CompartmentType.Patient;
      case 'Encounter':
        return CompartmentType.Encounter;
      case 'RelatedPerson':
        return CompartmentType.RelatedPerson;
      case 'Practitioner':
        return CompartmentType.Practitioner;
      case 'Device':
        return CompartmentType.Device;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CompartmentType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CompartmentType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
