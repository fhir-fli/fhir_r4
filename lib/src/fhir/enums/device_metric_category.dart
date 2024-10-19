// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Describes the category of the metric.
@collection
class DeviceMetricCategory {
  /// Constructor for internal use (like enum)
  DeviceMetricCategory({this.fhirCode, this.element})
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

  /// DeviceMetricCategory values
  /// measurement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCategory measurement = DeviceMetricCategory(
    fhirCode: 'measurement',
  );

  /// setting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCategory setting = DeviceMetricCategory(
    fhirCode: 'setting',
  );

  /// calculation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCategory calculation = DeviceMetricCategory(
    fhirCode: 'calculation',
  );

  /// unspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCategory unspecified = DeviceMetricCategory(
    fhirCode: 'unspecified',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricCategory elementOnly = DeviceMetricCategory();

  /// List of all enum-like values
  static final List<DeviceMetricCategory> values = [
    measurement,
    setting,
    calculation,
    unspecified,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCategory withElement(Element? newElement) {
    return DeviceMetricCategory(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
