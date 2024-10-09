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

  String toJson() => toString();
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

  static CompartmentType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
