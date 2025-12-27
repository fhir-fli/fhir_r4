part of '../primitive_types.dart';

/// Actual enum for DeviceMetricCalibrationState
enum DeviceMetricCalibrationStateEnum {
  /// not-calibrated
  notCalibrated,

  /// calibration-required
  calibrationRequired,

  /// calibrated
  calibrated,

  /// unspecified
  unspecified,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceMetricCalibrationStateEnum.notCalibrated:
        return 'not-calibrated';
      case DeviceMetricCalibrationStateEnum.calibrationRequired:
        return 'calibration-required';
      case DeviceMetricCalibrationStateEnum.calibrated:
        return 'calibrated';
      case DeviceMetricCalibrationStateEnum.unspecified:
        return 'unspecified';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricCalibrationStateEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricCalibrationStateEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricCalibrationStateEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-calibrated':
        return DeviceMetricCalibrationStateEnum.notCalibrated;
      case 'calibration-required':
        return DeviceMetricCalibrationStateEnum.calibrationRequired;
      case 'calibrated':
        return DeviceMetricCalibrationStateEnum.calibrated;
      case 'unspecified':
        return DeviceMetricCalibrationStateEnum.unspecified;
    }
    return null;
  }
}

/// Describes the state of a metric calibration.
class DeviceMetricCalibrationState extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceMetricCalibrationState._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory DeviceMetricCalibrationState(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = DeviceMetricCalibrationStateEnum.fromString(valueString);
    return DeviceMetricCalibrationState._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [DeviceMetricCalibrationState]
  /// from JSON.
  factory DeviceMetricCalibrationState.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceMetricCalibrationStateEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationState._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCalibrationState cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCalibrationState._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceMetricCalibrationState
  final DeviceMetricCalibrationStateEnum? valueEnum;

  /// not_calibrated
  static const DeviceMetricCalibrationState notCalibrated =
      DeviceMetricCalibrationState._(
    valueString: 'not-calibrated',
    valueEnum: DeviceMetricCalibrationStateEnum.notCalibrated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-state',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Calibrated',
    ),
  );

  /// calibration_required
  static const DeviceMetricCalibrationState calibrationRequired =
      DeviceMetricCalibrationState._(
    valueString: 'calibration-required',
    valueEnum: DeviceMetricCalibrationStateEnum.calibrationRequired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-state',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Calibration Required',
    ),
  );

  /// calibrated
  static const DeviceMetricCalibrationState calibrated =
      DeviceMetricCalibrationState._(
    valueString: 'calibrated',
    valueEnum: DeviceMetricCalibrationStateEnum.calibrated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-state',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Calibrated',
    ),
  );

  /// unspecified
  static const DeviceMetricCalibrationState unspecified =
      DeviceMetricCalibrationState._(
    valueString: 'unspecified',
    valueEnum: DeviceMetricCalibrationStateEnum.unspecified,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-state',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unspecified',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceMetricCalibrationState> values = [
    notCalibrated,
    calibrationRequired,
    calibrated,
    unspecified,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationState withElement(Element? newElement) {
    return DeviceMetricCalibrationState._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  DeviceMetricCalibrationState clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceMetricCalibrationStateCopyWithImpl<DeviceMetricCalibrationState>
      get copyWith => DeviceMetricCalibrationStateCopyWithImpl<
              DeviceMetricCalibrationState>(
            this,
            (v) => v as DeviceMetricCalibrationState,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceMetricCalibrationStateCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceMetricCalibrationStateCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      DeviceMetricCalibrationState(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
