// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Describes the typical color of representation.
@Entity()
class DeviceMetricColor extends FhirCode {
  /// Factory constructor to create [DeviceMetricColor] from JSON.
  factory DeviceMetricColor.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricColor.elementOnly(element);
    }
    if (values.contains(value)) {
      return DeviceMetricColor._(value, element);
    }
    throw ArgumentError(
      'DeviceMetricColor.fromJson: JSON value is not a valid value',
    );
  }

  /// black
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricColor.black([this.element])
      : dbValue = 'black',
        super('black', element);

  /// red
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricColor.red([this.element])
      : dbValue = 'red',
        super('red', element);

  /// green
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricColor.green([this.element])
      : dbValue = 'green',
        super('green', element);

  /// yellow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricColor.yellow([this.element])
      : dbValue = 'yellow',
        super('yellow', element);

  /// blue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricColor.blue([this.element])
      : dbValue = 'blue',
        super('blue', element);

  /// magenta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricColor.magenta([this.element])
      : dbValue = 'magenta',
        super('magenta', element);

  /// cyan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricColor.cyan([this.element])
      : dbValue = 'cyan',
        super('cyan', element);

  /// white
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricColor.white([this.element])
      : dbValue = 'white',
        super('white', element);

  /// For instances where an Element is present but not value

  DeviceMetricColor.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DeviceMetricColor._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'black',
    'red',
    'green',
    'yellow',
    'blue',
    'magenta',
    'cyan',
    'white',
  ];

  /// Returns the enum value with an element attached
  DeviceMetricColor withElement(Element? newElement) {
    return DeviceMetricColor._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricColor.$value';
}
