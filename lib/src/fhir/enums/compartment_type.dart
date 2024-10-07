import 'package:json_annotation/json_annotation.dart';

/// Which type a compartment definition describes.
enum CompartmentType {
  /// Display: Patient
  /// Definition: The compartment definition is for the patient compartment.
  @JsonValue('Patient')
  Patient,

  /// Display: Encounter
  /// Definition: The compartment definition is for the encounter compartment.
  @JsonValue('Encounter')
  Encounter,

  /// Display: RelatedPerson
  /// Definition: The compartment definition is for the related-person compartment.
  @JsonValue('RelatedPerson')
  RelatedPerson,

  /// Display: Practitioner
  /// Definition: The compartment definition is for the practitioner compartment.
  @JsonValue('Practitioner')
  Practitioner,

  /// Display: Device
  /// Definition: The compartment definition is for the device compartment.
  @JsonValue('Device')
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
  CompartmentType fromString(String str) {
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

  CompartmentType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
