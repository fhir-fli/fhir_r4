// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Describes the type of a metric calibration.
@Entity()
class DeviceMetricCalibrationType extends FhirCode {
  /// Factory constructor to create [DeviceMetricCalibrationType] from JSON.
  factory DeviceMetricCalibrationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return DeviceMetricCalibrationType._(value, element);
    }
    throw ArgumentError(
      'DeviceMetricCalibrationType.fromJson: JSON value is not a valid value',
    );
  }

  /// unspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCalibrationType.unspecified([this.element])
      : dbValue = 'unspecified',
        super('unspecified', element);

  /// offset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCalibrationType.offset([this.element])
      : dbValue = 'offset',
        super('offset', element);

  /// gain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCalibrationType.gain([this.element])
      : dbValue = 'gain',
        super('gain', element);

  /// two_point
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCalibrationType.two_point([this.element])
      : dbValue = 'two-point',
        super('two-point', element);

  /// For instances where an Element is present but not value

  DeviceMetricCalibrationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DeviceMetricCalibrationType._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'unspecified',
    'offset',
    'gain',
    'two-point',
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationType withElement(Element? newElement) {
    return DeviceMetricCalibrationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricCalibrationType.$value';
}
