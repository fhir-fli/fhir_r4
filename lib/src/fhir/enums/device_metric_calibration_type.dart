// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the type of a metric calibration.
class DeviceMetricCalibrationType {
  // Private constructor for internal use (like enum)
  DeviceMetricCalibrationType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DeviceMetricCalibrationType values
  /// unspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCalibrationType unspecified =
      DeviceMetricCalibrationType._(
    'unspecified',
  );

  /// offset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCalibrationType offset =
      DeviceMetricCalibrationType._(
    'offset',
  );

  /// gain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCalibrationType gain = DeviceMetricCalibrationType._(
    'gain',
  );

  /// two_point
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCalibrationType two_point =
      DeviceMetricCalibrationType._(
    'two-point',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricCalibrationType elementOnly =
      DeviceMetricCalibrationType._('');

  /// List of all enum-like values
  static final List<DeviceMetricCalibrationType> values = [
    unspecified,
    offset,
    gain,
    two_point,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationType withElement(Element? newElement) {
    return DeviceMetricCalibrationType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DeviceMetricCalibrationType] from JSON.
  static DeviceMetricCalibrationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationType.elementOnly.withElement(element);
    }
    return DeviceMetricCalibrationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricCalibrationType.$fhirCode';
}
