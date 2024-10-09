/// The type of process where the audit event originated from.
enum AuditEventSourceType {
  /// Display: User Device
  /// Definition: End-user display device, diagnostic device.
  value1,

  /// Display: Data Interface
  /// Definition: Data acquisition device or instrument.
  value2,

  /// Display: Web Server
  /// Definition: Web Server process or thread.
  value3,

  /// Display: Application Server
  /// Definition: Application Server process or thread.
  value4,

  /// Display: Database Server
  /// Definition: Database Server process or thread.
  value5,

  /// Display: Security Server
  /// Definition: Security server, e.g. a domain controller.
  value6,

  /// Display: Network Device
  /// Definition: ISO level 1-3 network component.
  value7,

  /// Display: Network Router
  /// Definition: ISO level 4-6 operating software.
  value8,

  /// Display: Other
  /// Definition: Other kind of device (defined by DICOM, but some other code/system can be used).
  value9,
  ;

  @override
  String toString() {
    switch (this) {
      case value1:
        return '1';
      case value2:
        return '2';
      case value3:
        return '3';
      case value4:
        return '4';
      case value5:
        return '5';
      case value6:
        return '6';
      case value7:
        return '7';
      case value8:
        return '8';
      case value9:
        return '9';
    }
  }

  String toJson() => toString();
  static AuditEventSourceType fromString(String str) {
    switch (str) {
      case '1':
        return AuditEventSourceType.value1;
      case '2':
        return AuditEventSourceType.value2;
      case '3':
        return AuditEventSourceType.value3;
      case '4':
        return AuditEventSourceType.value4;
      case '5':
        return AuditEventSourceType.value5;
      case '6':
        return AuditEventSourceType.value6;
      case '7':
        return AuditEventSourceType.value7;
      case '8':
        return AuditEventSourceType.value8;
      case '9':
        return AuditEventSourceType.value9;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AuditEventSourceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
