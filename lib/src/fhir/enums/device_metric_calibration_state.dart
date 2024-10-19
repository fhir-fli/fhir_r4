// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Describes the state of a metric calibration.
@Entity()
class DeviceMetricCalibrationState extends FhirCode {
  /// Factory constructor to create [DeviceMetricCalibrationState] from JSON.
  factory DeviceMetricCalibrationState.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationState.elementOnly(element);
    }
    if (values.contains(value)) {
      return DeviceMetricCalibrationState._(value, element);
    }
    throw ArgumentError(
      'DeviceMetricCalibrationState.fromJson: JSON value is not a valid value',
    );
  }

  /// not_calibrated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCalibrationState.not_calibrated([this.element])
      : dbValue = 'not-calibrated',
        super('not-calibrated', element);

  /// calibration_required
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCalibrationState.calibration_required([this.element])
      : dbValue = 'calibration-required',
        super('calibration-required', element);

  /// calibrated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCalibrationState.calibrated([this.element])
      : dbValue = 'calibrated',
        super('calibrated', element);

  /// unspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DeviceMetricCalibrationState.unspecified([this.element])
      : dbValue = 'unspecified',
        super('unspecified', element);

  /// For instances where an Element is present but not value

  DeviceMetricCalibrationState.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DeviceMetricCalibrationState._(super.input, [super.element])
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
    'not-calibrated',
    'calibration-required',
    'calibrated',
    'unspecified',
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationState withElement(Element? newElement) {
    return DeviceMetricCalibrationState._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricCalibrationState.$value';
}
