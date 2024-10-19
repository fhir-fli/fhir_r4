// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Describes the category of the metric.
@Entity()
class DeviceMetricCategory extends FhirCode {
  /// Factory constructor to create [DeviceMetricCategory] from JSON.
  factory DeviceMetricCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return DeviceMetricCategory._(value, element);
    }
    throw ArgumentError(
      'DeviceMetricCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// measurement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCategory.measurement([this.element])
      : dbValue = 'measurement',
        super('measurement', element);

  /// setting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCategory.setting([this.element])
      : dbValue = 'setting',
        super('setting', element);

  /// calculation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCategory.calculation([this.element])
      : dbValue = 'calculation',
        super('calculation', element);

  /// unspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCategory.unspecified([this.element])
      : dbValue = 'unspecified',
        super('unspecified', element);

  /// For instances where an Element is present but not value

  DeviceMetricCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DeviceMetricCategory._(super.input, [super.element])
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
    'measurement',
    'setting',
    'calculation',
    'unspecified',
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCategory withElement(Element? newElement) {
    return DeviceMetricCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricCategory.$value';
}
