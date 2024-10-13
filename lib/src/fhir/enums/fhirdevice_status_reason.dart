/// The availability status reason of the device.
enum FHIRDeviceStatusReason {
  /// Display: Online
  /// Definition: The device is off.
  online,

  /// Display: Paused
  /// Definition: The device is paused.
  paused,

  /// Display: Standby
  /// Definition: The device is ready but not actively operating.
  standby,

  /// Display: Offline
  /// Definition: The device is offline.
  offline,

  /// Display: Not Ready
  /// Definition: The device is not ready.
  not_ready,

  /// Display: Transducer Disconnected
  /// Definition: The device transducer is disconnected.
  transduc_discon,

  /// Display: Hardware Disconnected
  /// Definition: The device hardware is disconnected.
  hw_discon,

  /// Display: Off
  /// Definition: The device is off.
  off,
  ;

  @override
  String toString() {
    switch (this) {
      case online:
        return 'online';
      case paused:
        return 'paused';
      case standby:
        return 'standby';
      case offline:
        return 'offline';
      case not_ready:
        return 'not-ready';
      case transduc_discon:
        return 'transduc-discon';
      case hw_discon:
        return 'hw-discon';
      case off:
        return 'off';
    }
  }

  /// Returns a [String] from a [FHIRDeviceStatusReason] enum.
  String toJson() => toString();

  /// Returns a [FHIRDeviceStatusReason] from a [String] enum.
  static FHIRDeviceStatusReason fromString(String str) {
    switch (str) {
      case 'online':
        return FHIRDeviceStatusReason.online;
      case 'paused':
        return FHIRDeviceStatusReason.paused;
      case 'standby':
        return FHIRDeviceStatusReason.standby;
      case 'offline':
        return FHIRDeviceStatusReason.offline;
      case 'not-ready':
        return FHIRDeviceStatusReason.not_ready;
      case 'transduc-discon':
        return FHIRDeviceStatusReason.transduc_discon;
      case 'hw-discon':
        return FHIRDeviceStatusReason.hw_discon;
      case 'off':
        return FHIRDeviceStatusReason.off;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [FHIRDeviceStatusReason] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static FHIRDeviceStatusReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
