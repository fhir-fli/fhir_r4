// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the operational status of the DeviceMetric.
class DeviceMetricOperationalStatus {
  // Private constructor for internal use (like enum)
  DeviceMetricOperationalStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DeviceMetricOperationalStatus values
  /// on_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricOperationalStatus on_ =
      DeviceMetricOperationalStatus._(
    'on',
  );

  /// off
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricOperationalStatus off =
      DeviceMetricOperationalStatus._(
    'off',
  );

  /// standby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricOperationalStatus standby =
      DeviceMetricOperationalStatus._(
    'standby',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricOperationalStatus entered_in_error =
      DeviceMetricOperationalStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricOperationalStatus elementOnly =
      DeviceMetricOperationalStatus._('');

  /// List of all enum-like values
  static final List<DeviceMetricOperationalStatus> values = [
    on_,
    off,
    standby,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricOperationalStatus withElement(Element? newElement) {
    return DeviceMetricOperationalStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DeviceMetricOperationalStatus] from JSON.
  static DeviceMetricOperationalStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatus.elementOnly.withElement(element);
    }
    return DeviceMetricOperationalStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricOperationalStatus.$fhirCode';
}
