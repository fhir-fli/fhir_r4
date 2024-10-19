// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The availability status reason of the device.
@collection
class FHIRDeviceStatusReason {
  /// Constructor for internal use (like enum)
  FHIRDeviceStatusReason({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FHIRDeviceStatusReason values
  /// online
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason online = FHIRDeviceStatusReason(
    fhirCode: 'online',
  );

  /// paused
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason paused = FHIRDeviceStatusReason(
    fhirCode: 'paused',
  );

  /// standby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason standby = FHIRDeviceStatusReason(
    fhirCode: 'standby',
  );

  /// offline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason offline = FHIRDeviceStatusReason(
    fhirCode: 'offline',
  );

  /// not_ready
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason not_ready = FHIRDeviceStatusReason(
    fhirCode: 'not-ready',
  );

  /// transduc_discon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason transduc_discon = FHIRDeviceStatusReason(
    fhirCode: 'transduc-discon',
  );

  /// hw_discon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason hw_discon = FHIRDeviceStatusReason(
    fhirCode: 'hw-discon',
  );

  /// off
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDeviceStatusReason off = FHIRDeviceStatusReason(
    fhirCode: 'off',
  );

  /// For instances where an Element is present but not value

  static final FHIRDeviceStatusReason elementOnly = FHIRDeviceStatusReason();

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
    return FHIRDeviceStatusReason(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
