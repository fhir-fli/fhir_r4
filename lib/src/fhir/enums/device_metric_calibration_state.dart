// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the state of a metric calibration.
class DeviceMetricCalibrationState {
  // Private constructor for internal use (like enum)
  DeviceMetricCalibrationState._(this.fhirCode, {this.element});

  /// Factory constructor to create [DeviceMetricCalibrationState] from JSON.
  factory DeviceMetricCalibrationState.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationState.elementOnly.withElement(element);
    }
    return DeviceMetricCalibrationState._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DeviceMetricCalibrationState values
  /// not_calibrated
  static final DeviceMetricCalibrationState not_calibrated =
      DeviceMetricCalibrationState._(
    'not-calibrated',
  );

  /// calibration_required
  static final DeviceMetricCalibrationState calibration_required =
      DeviceMetricCalibrationState._(
    'calibration-required',
  );

  /// calibrated
  static final DeviceMetricCalibrationState calibrated =
      DeviceMetricCalibrationState._(
    'calibrated',
  );

  /// unspecified
  static final DeviceMetricCalibrationState unspecified =
      DeviceMetricCalibrationState._(
    'unspecified',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricCalibrationState elementOnly =
      DeviceMetricCalibrationState._('');

  /// List of all enum-like values
  static final List<DeviceMetricCalibrationState> values = [
    not_calibrated,
    calibration_required,
    calibrated,
    unspecified,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationState withElement(Element? newElement) {
    return DeviceMetricCalibrationState._(fhirCode, element: newElement);
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
