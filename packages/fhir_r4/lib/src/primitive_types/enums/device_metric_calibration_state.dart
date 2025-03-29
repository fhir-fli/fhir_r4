// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the state of a metric calibration.
class DeviceMetricCalibrationState extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceMetricCalibrationState._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory DeviceMetricCalibrationState(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return DeviceMetricCalibrationState._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [DeviceMetricCalibrationState] with element only
  factory DeviceMetricCalibrationState.empty() =>
      DeviceMetricCalibrationState._(validatedValue: '');

  /// Factory constructor to create [DeviceMetricCalibrationState] from JSON.
  factory DeviceMetricCalibrationState.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// not_calibrated
  static final DeviceMetricCalibrationState not_calibrated =
      DeviceMetricCalibrationState._(
    validatedValue: 'not-calibrated',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-state'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Calibrated'.toFhirString,
  );

  /// calibration_required
  static final DeviceMetricCalibrationState calibration_required =
      DeviceMetricCalibrationState._(
    validatedValue: 'calibration-required',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-state'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Calibration Required'.toFhirString,
  );

  /// calibrated
  static final DeviceMetricCalibrationState calibrated =
      DeviceMetricCalibrationState._(
    validatedValue: 'calibrated',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-state'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Calibrated'.toFhirString,
  );

  /// unspecified
  static final DeviceMetricCalibrationState unspecified =
      DeviceMetricCalibrationState._(
    validatedValue: 'unspecified',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-state'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unspecified'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceMetricCalibrationState elementOnly =
      DeviceMetricCalibrationState._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationState withElement(Element? newElement) {
    return DeviceMetricCalibrationState._(
      validatedValue: value,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DeviceMetricCalibrationState._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
