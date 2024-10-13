/// The availability status of the device.
enum FHIRDeviceStatus {
  /// Display: Active
  /// Definition: The device is available for use.  Note: For *implanted devices*  this means that the device is implanted in the patient.
  active,

  /// Display: Inactive
  /// Definition: The device is no longer available for use (e.g. lost, expired, damaged).  Note: For *implanted devices*  this means that the device has been removed from the patient.
  inactive,

  /// Display: Entered in Error
  /// Definition: The device was entered in error and voided.
  entered_in_error,

  /// Display: Unknown
  /// Definition: The status of the device has not been determined.
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case inactive:
        return 'inactive';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  /// Returns a [String] from a [FHIRDeviceStatus] enum.
  String toJson() => toString();

  /// Returns a [FHIRDeviceStatus] from a [String] enum.
  static FHIRDeviceStatus fromString(String str) {
    switch (str) {
      case 'active':
        return FHIRDeviceStatus.active;
      case 'inactive':
        return FHIRDeviceStatus.inactive;
      case 'entered-in-error':
        return FHIRDeviceStatus.entered_in_error;
      case 'unknown':
        return FHIRDeviceStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [FHIRDeviceStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static FHIRDeviceStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
