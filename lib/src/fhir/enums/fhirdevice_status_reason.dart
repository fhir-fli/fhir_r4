// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The availability status reason of the device.
class FHIRDeviceStatusReason {
  // Private constructor for internal use (like enum)
  FHIRDeviceStatusReason._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FHIRDeviceStatusReason values
  /// online
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason online = FHIRDeviceStatusReason._(
    'online',
  );

  /// paused
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason paused = FHIRDeviceStatusReason._(
    'paused',
  );

  /// standby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason standby = FHIRDeviceStatusReason._(
    'standby',
  );

  /// offline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason offline = FHIRDeviceStatusReason._(
    'offline',
  );

  /// not_ready
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason not_ready = FHIRDeviceStatusReason._(
    'not-ready',
  );

  /// transduc_discon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason transduc_discon =
      FHIRDeviceStatusReason._(
    'transduc-discon',
  );

  /// hw_discon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason hw_discon = FHIRDeviceStatusReason._(
    'hw-discon',
  );

  /// off
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason off = FHIRDeviceStatusReason._(
    'off',
  );

  /// For instances where an Element is present but not value

  static final FHIRDeviceStatusReason elementOnly =
      FHIRDeviceStatusReason._('');

  /// List of all enum-like values
  static final List<FHIRDeviceStatusReason> values = [
    online,
    paused,
    standby,
    offline,
    not_ready,
    transduc_discon,
    hw_discon,
    off,
  ];

  /// Returns the enum value with an element attached
  FHIRDeviceStatusReason withElement(Element? newElement) {
    return FHIRDeviceStatusReason._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FHIRDeviceStatusReason] from JSON.
  static FHIRDeviceStatusReason fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatusReason.elementOnly.withElement(element);
    }
    return FHIRDeviceStatusReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRDeviceStatusReason.$fhirCode';
}
