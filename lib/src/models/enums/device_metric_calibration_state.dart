// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the state of a metric calibration.
class DeviceMetricCalibrationState extends FhirCode {
  // Private constructor for internal use (like enum)
  DeviceMetricCalibrationState._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  /// Factory constructor to create [DeviceMetricCalibrationState] from JSON.
  factory DeviceMetricCalibrationState.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationState.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCalibrationState cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCalibrationState._(
      value,
      element: element,
    );
  }

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

  /// Clones the current instance
  @override
  DeviceMetricCalibrationState clone() => DeviceMetricCalibrationState._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationState withElement(Element? newElement) {
    return DeviceMetricCalibrationState._(
      value,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  DeviceMetricCalibrationState copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DeviceMetricCalibrationState._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
    );
  }
}
