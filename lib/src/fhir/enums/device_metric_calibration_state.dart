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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DeviceMetricCalibrationState(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DeviceMetricCalibrationState fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationState.elementOnly.withElement(element);
    }
    return DeviceMetricCalibrationState.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DeviceMetricCalibrationState withElement(Element? newElement) {
    return DeviceMetricCalibrationState.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
