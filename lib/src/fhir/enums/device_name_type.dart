/// The type of name the device is referred by.
enum DeviceNameType {
  /// Display: UDI Label name
  /// Definition: UDI Label name.
  udi_label_name,

  /// Display: User Friendly name
  /// Definition: User Friendly name.
  user_friendly_name,

  /// Display: Patient Reported name
  /// Definition: Patient Reported name.
  patient_reported_name,

  /// Display: Manufacturer name
  /// Definition: Manufacturer name.
  manufacturer_name,

  /// Display: Model name
  /// Definition: Model name.
  model_name,

  /// Display: other
  /// Definition: other.
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case udi_label_name:
        return 'udi-label-name';
      case user_friendly_name:
        return 'user-friendly-name';
      case patient_reported_name:
        return 'patient-reported-name';
      case manufacturer_name:
        return 'manufacturer-name';
      case model_name:
        return 'model-name';
      case other:
        return 'other';
    }
  }

  String toJson() => toString();
  static DeviceNameType fromString(String str) {
    switch (str) {
      case 'udi-label-name':
        return DeviceNameType.udi_label_name;
      case 'user-friendly-name':
        return DeviceNameType.user_friendly_name;
      case 'patient-reported-name':
        return DeviceNameType.patient_reported_name;
      case 'manufacturer-name':
        return DeviceNameType.manufacturer_name;
      case 'model-name':
        return DeviceNameType.model_name;
      case 'other':
        return DeviceNameType.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DeviceNameType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
