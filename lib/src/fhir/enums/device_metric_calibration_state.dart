// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Describes the state of a metric calibration.
@collection
class DeviceMetricCalibrationState {
  /// Constructor for internal use (like enum)
  DeviceMetricCalibrationState({this.fhirCode, this.element})
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

  /// DeviceMetricCalibrationState values
  /// not_calibrated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCalibrationState not_calibrated =
      DeviceMetricCalibrationState(
    fhirCode: 'not-calibrated',
  );

  /// calibration_required
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCalibrationState calibration_required =
      DeviceMetricCalibrationState(
    fhirCode: 'calibration-required',
  );

  /// calibrated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCalibrationState calibrated =
      DeviceMetricCalibrationState(
    fhirCode: 'calibrated',
  );

  /// unspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceMetricCalibrationState unspecified =
      DeviceMetricCalibrationState(
    fhirCode: 'unspecified',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricCalibrationState elementOnly =
      DeviceMetricCalibrationState();

  /// List of all enum-like values
  static final List<DeviceMetricCalibrationState> values = [
    not_calibrated,
    calibration_required,
    calibrated,
    unspecified,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationState withElement(Element? newElement) {
    return DeviceMetricCalibrationState(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DeviceMetricCalibrationState] from JSON.
  static DeviceMetricCalibrationState fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationState.elementOnly.withElement(element);
    }
    return DeviceMetricCalibrationState.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceMetricCalibrationState.$fhirCode';
}
