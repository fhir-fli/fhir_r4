// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the typical color of representation.
enum DeviceMetricColor {
  /// Display: Color Black
  /// Definition: Color for representation - black.
  black('black'),

  /// Display: Color Red
  /// Definition: Color for representation - red.
  red('red'),

  /// Display: Color Green
  /// Definition: Color for representation - green.
  green('green'),

  /// Display: Color Yellow
  /// Definition: Color for representation - yellow.
  yellow('yellow'),

  /// Display: Color Blue
  /// Definition: Color for representation - blue.
  blue('blue'),

  /// Display: Color Magenta
  /// Definition: Color for representation - magenta.
  magenta('magenta'),

  /// Display: Color Cyan
  /// Definition: Color for representation - cyan.
  cyan('cyan'),

  /// Display: Color White
  /// Definition: Color for representation - white.
  white('white'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DeviceMetricColor(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DeviceMetricColor] instances.
  static DeviceMetricColor fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricColor.elementOnly.withElement(element);
    }
    return DeviceMetricColor.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DeviceMetricColor withElement(Element? newElement) {
    return DeviceMetricColor.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
