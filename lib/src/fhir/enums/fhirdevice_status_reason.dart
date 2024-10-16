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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FHIRDeviceStatusReason(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FHIRDeviceStatusReason fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatusReason.elementOnly.withElement(element);
    }
    return FHIRDeviceStatusReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FHIRDeviceStatusReason withElement(Element? newElement) {
    return FHIRDeviceStatusReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
