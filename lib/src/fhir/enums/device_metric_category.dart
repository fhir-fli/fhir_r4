// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the category of the metric.
class DeviceMetricCategory {
  // Private constructor for internal use (like enum)
  DeviceMetricCategory._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DeviceMetricCategory values
  /// measurement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCategory measurement = DeviceMetricCategory._(
    'measurement',
  );

  /// setting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCategory setting = DeviceMetricCategory._(
    'setting',
  );

  /// calculation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCategory calculation = DeviceMetricCategory._(
    'calculation',
  );

  /// unspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCategory unspecified = DeviceMetricCategory._(
    'unspecified',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricCategory elementOnly = DeviceMetricCategory._('');

  /// List of all enum-like values
  static final List<DeviceMetricCategory> values = [
    measurement,
    setting,
    calculation,
    unspecified,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCategory withElement(Element? newElement) {
    return DeviceMetricCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DeviceMetricCategory] from JSON.
  static DeviceMetricCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategory.elementOnly.withElement(element);
    }
    return DeviceMetricCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricCategory.$fhirCode';
}
