// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The availability status reason of the device.
enum FHIRDeviceStatusReason {
  /// Display: Online
  /// Definition: The device is off.
  online('online'),

  /// Display: Paused
  /// Definition: The device is paused.
  paused('paused'),

  /// Display: Standby
  /// Definition: The device is ready but not actively operating.
  standby('standby'),

  /// Display: Offline
  /// Definition: The device is offline.
  offline('offline'),

  /// Display: Not Ready
  /// Definition: The device is not ready.
  not_ready('not-ready'),

  /// Display: Transducer Disconnected
  /// Definition: The device transducer is disconnected.
  transduc_discon('transduc-discon'),

  /// Display: Hardware Disconnected
  /// Definition: The device hardware is disconnected.
  hw_discon('hw-discon'),

  /// Display: Off
  /// Definition: The device is off.
  off('off'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FHIRDeviceStatusReason(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FHIRDeviceStatusReason] instances.
  static FHIRDeviceStatusReason fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatusReason.elementOnly.withElement(
        element,
      );
    }
    return FHIRDeviceStatusReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FHIRDeviceStatusReason withElement(Element? newElement) {
    return FHIRDeviceStatusReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
