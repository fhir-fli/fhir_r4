import 'package:json_annotation/json_annotation.dart';

/// The availability status of the device.
enum FHIRDeviceStatus {
  /// Display: Active
  /// Definition: The device is available for use.  Note: For *implanted devices*  this means that the device is implanted in the patient.
  @JsonValue('active')
  active,

  /// Display: Inactive
  /// Definition: The device is no longer available for use (e.g. lost, expired, damaged).  Note: For *implanted devices*  this means that the device has been removed from the patient.
  @JsonValue('inactive')
  inactive,

  /// Display: Entered in Error
  /// Definition: The device was entered in error and voided.
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Unknown
  /// Definition: The status of the device has not been determined.
  @JsonValue('unknown')
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

  String toJson() => toString();
  FHIRDeviceStatus fromString(String str) {
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

  FHIRDeviceStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
