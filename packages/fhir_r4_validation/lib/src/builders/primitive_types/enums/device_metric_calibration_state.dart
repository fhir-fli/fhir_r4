// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceMetricCalibrationState
enum DeviceMetricCalibrationStateBuilderEnum {
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
      case DeviceMetricCalibrationStateBuilderEnum.notCalibrated:
        return 'not-calibrated';
      case DeviceMetricCalibrationStateBuilderEnum.calibrationRequired:
        return 'calibration-required';
      case DeviceMetricCalibrationStateBuilderEnum.calibrated:
        return 'calibrated';
      case DeviceMetricCalibrationStateBuilderEnum.unspecified:
        return 'unspecified';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricCalibrationStateBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricCalibrationStateBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricCalibrationStateBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-calibrated':
        return DeviceMetricCalibrationStateBuilderEnum.notCalibrated;
      case 'calibration-required':
        return DeviceMetricCalibrationStateBuilderEnum.calibrationRequired;
      case 'calibrated':
        return DeviceMetricCalibrationStateBuilderEnum.calibrated;
      case 'unspecified':
        return DeviceMetricCalibrationStateBuilderEnum.unspecified;
    }
    return null;
  }
}

/// Describes the state of a metric calibration.
class DeviceMetricCalibrationStateBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricCalibrationStateBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory DeviceMetricCalibrationStateBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = DeviceMetricCalibrationStateBuilderEnum.fromString(
      valueString,
    );
    return DeviceMetricCalibrationStateBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [DeviceMetricCalibrationStateBuilder]
  /// with element only
  factory DeviceMetricCalibrationStateBuilder.empty() =>
      DeviceMetricCalibrationStateBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceMetricCalibrationStateBuilder] from JSON.
  factory DeviceMetricCalibrationStateBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationStateBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCalibrationStateBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCalibrationStateBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceMetricCalibrationStateBuilder
  final DeviceMetricCalibrationStateBuilderEnum? valueEnum;

  /// not_calibrated
  static DeviceMetricCalibrationStateBuilder notCalibrated =
      DeviceMetricCalibrationStateBuilder._(
    valueString: 'not-calibrated',
    valueEnum: DeviceMetricCalibrationStateBuilderEnum.notCalibrated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-state',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Calibrated',
    ),
  );

  /// calibration_required
  static DeviceMetricCalibrationStateBuilder calibrationRequired =
      DeviceMetricCalibrationStateBuilder._(
    valueString: 'calibration-required',
    valueEnum: DeviceMetricCalibrationStateBuilderEnum.calibrationRequired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-state',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Calibration Required',
    ),
  );

  /// calibrated
  static DeviceMetricCalibrationStateBuilder calibrated =
      DeviceMetricCalibrationStateBuilder._(
    valueString: 'calibrated',
    valueEnum: DeviceMetricCalibrationStateBuilderEnum.calibrated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-state',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Calibrated',
    ),
  );

  /// unspecified
  static DeviceMetricCalibrationStateBuilder unspecified =
      DeviceMetricCalibrationStateBuilder._(
    valueString: 'unspecified',
    valueEnum: DeviceMetricCalibrationStateBuilderEnum.unspecified,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-state',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unspecified',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceMetricCalibrationStateBuilder elementOnly =
      DeviceMetricCalibrationStateBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceMetricCalibrationStateBuilder> values = [
    notCalibrated,
    calibrationRequired,
    calibrated,
    unspecified,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationStateBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceMetricCalibrationStateBuilder._(
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
}
