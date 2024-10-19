// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Describes the typical color of representation.
@collection
class DeviceMetricColor {
  /// Constructor for internal use (like enum)
  DeviceMetricColor({this.fhirCode, this.element})
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

  /// DeviceMetricColor values
  /// black
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricColor black = DeviceMetricColor(
    fhirCode: 'black',
  );

  /// red
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricColor red = DeviceMetricColor(
    fhirCode: 'red',
  );

  /// green
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricColor green = DeviceMetricColor(
    fhirCode: 'green',
  );

  /// yellow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricColor yellow = DeviceMetricColor(
    fhirCode: 'yellow',
  );

  /// blue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricColor blue = DeviceMetricColor(
    fhirCode: 'blue',
  );

  /// magenta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricColor magenta = DeviceMetricColor(
    fhirCode: 'magenta',
  );

  /// cyan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricColor cyan = DeviceMetricColor(
    fhirCode: 'cyan',
  );

  /// white
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricColor white = DeviceMetricColor(
    fhirCode: 'white',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricColor elementOnly = DeviceMetricColor();

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
    return DeviceMetricColor(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DeviceMetricColor] from JSON.
  static DeviceMetricColor fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricColor.$fhirCode';
}
