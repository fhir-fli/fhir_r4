// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The availability status reason of the device.
@Entity()
class FHIRDeviceStatusReason extends FhirCode {
  /// Factory constructor to create [FHIRDeviceStatusReason] from JSON.
  factory FHIRDeviceStatusReason.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatusReason.elementOnly(element);
    }
    if (values.contains(value)) {
      return FHIRDeviceStatusReason._(value, element);
    }
    throw ArgumentError(
      'FHIRDeviceStatusReason.fromJson: JSON value is not a valid value',
    );
  }

  /// online
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDeviceStatusReason.online([this.element])
      : dbValue = 'online',
        super('online', element);

  /// paused
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDeviceStatusReason.paused([this.element])
      : dbValue = 'paused',
        super('paused', element);

  /// standby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDeviceStatusReason.standby([this.element])
      : dbValue = 'standby',
        super('standby', element);

  /// offline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDeviceStatusReason.offline([this.element])
      : dbValue = 'offline',
        super('offline', element);

  /// not_ready
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDeviceStatusReason.not_ready([this.element])
      : dbValue = 'not-ready',
        super('not-ready', element);

  /// transduc_discon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDeviceStatusReason.transduc_discon([this.element])
      : dbValue = 'transduc-discon',
        super('transduc-discon', element);

  /// hw_discon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDeviceStatusReason.hw_discon([this.element])
      : dbValue = 'hw-discon',
        super('hw-discon', element);

  /// off
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRDeviceStatusReason.off([this.element])
      : dbValue = 'off',
        super('off', element);

  /// For instances where an Element is present but not value

  FHIRDeviceStatusReason.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FHIRDeviceStatusReason._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'online',
    'paused',
    'standby',
    'offline',
    'not-ready',
    'transduc-discon',
    'hw-discon',
    'off',
  ];

  /// Returns the enum value with an element attached
  FHIRDeviceStatusReason withElement(Element? newElement) {
    return FHIRDeviceStatusReason._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRDeviceStatusReason.$value';
}
