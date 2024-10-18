// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the state of a metric calibration.
enum DeviceMetricCalibrationState {
  /// Display: Not Calibrated
  /// Definition: The metric has not been calibrated.
  not_calibrated('not-calibrated'),

  /// Display: Calibration Required
  /// Definition: The metric needs to be calibrated.
  calibration_required('calibration-required'),

  /// Display: Calibrated
  /// Definition: The metric has been calibrated.
  calibrated('calibrated'),

  /// Display: Unspecified
  /// Definition: The state of calibration of this metric is unspecified.
  unspecified('unspecified'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DeviceMetricCalibrationState(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DeviceMetricCalibrationState] instances.
  static DeviceMetricCalibrationState fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  DeviceMetricCalibrationState withElement(Element? newElement) {
    return DeviceMetricCalibrationState.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
