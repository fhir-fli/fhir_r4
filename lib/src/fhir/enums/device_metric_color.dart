// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the typical color of representation.
class DeviceMetricColor {
  // Private constructor for internal use (like enum)
  DeviceMetricColor._(this.fhirCode, {this.element});

  /// Factory constructor to create [DeviceMetricColor] from JSON.
  factory DeviceMetricColor.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricColor.elementOnly.withElement(element);
    }
    return DeviceMetricColor._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DeviceMetricColor values
  /// black
  static final DeviceMetricColor black = DeviceMetricColor._(
    'black',
  );

  /// red
  static final DeviceMetricColor red = DeviceMetricColor._(
    'red',
  );

  /// green
  static final DeviceMetricColor green = DeviceMetricColor._(
    'green',
  );

  /// yellow
  static final DeviceMetricColor yellow = DeviceMetricColor._(
    'yellow',
  );

  /// blue
  static final DeviceMetricColor blue = DeviceMetricColor._(
    'blue',
  );

  /// magenta
  static final DeviceMetricColor magenta = DeviceMetricColor._(
    'magenta',
  );

  /// cyan
  static final DeviceMetricColor cyan = DeviceMetricColor._(
    'cyan',
  );

  /// white
  static final DeviceMetricColor white = DeviceMetricColor._(
    'white',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricColor elementOnly = DeviceMetricColor._('');

  /// List of all enum-like values
  static final List<DeviceMetricColor> values = [
    black,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricColor withElement(Element? newElement) {
    return DeviceMetricColor._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
