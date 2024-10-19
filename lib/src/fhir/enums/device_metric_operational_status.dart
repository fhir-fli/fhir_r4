// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Describes the operational status of the DeviceMetric.
@Entity()
class DeviceMetricOperationalStatus extends FhirCode {
  /// Factory constructor to create [DeviceMetricOperationalStatus] from JSON.
  factory DeviceMetricOperationalStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return DeviceMetricOperationalStatus._(value, element);
    }
    throw ArgumentError(
      'DeviceMetricOperationalStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// on_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricOperationalStatus.on_([this.element])
      : dbValue = 'on',
        super('on', element);

  /// off
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricOperationalStatus.off([this.element])
      : dbValue = 'off',
        super('off', element);

  /// standby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricOperationalStatus.standby([this.element])
      : dbValue = 'standby',
        super('standby', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricOperationalStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  DeviceMetricOperationalStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DeviceMetricOperationalStatus._(super.input, [super.element])
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
    'on',
    'off',
    'standby',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  DeviceMetricOperationalStatus withElement(Element? newElement) {
    return DeviceMetricOperationalStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricOperationalStatus.$value';
}
