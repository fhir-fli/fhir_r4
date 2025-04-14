// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceMetricCalibrationType
enum DeviceMetricCalibrationTypeBuilderEnum {
  /// unspecified
  unspecified,

  /// offset
  offset,

  /// gain
  gain,

  /// two-point
  twoPoint,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceMetricCalibrationTypeBuilderEnum.unspecified:
        return 'unspecified';
      case DeviceMetricCalibrationTypeBuilderEnum.offset:
        return 'offset';
      case DeviceMetricCalibrationTypeBuilderEnum.gain:
        return 'gain';
      case DeviceMetricCalibrationTypeBuilderEnum.twoPoint:
        return 'two-point';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricCalibrationTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricCalibrationTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricCalibrationTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'unspecified':
        return DeviceMetricCalibrationTypeBuilderEnum.unspecified;
      case 'offset':
        return DeviceMetricCalibrationTypeBuilderEnum.offset;
      case 'gain':
        return DeviceMetricCalibrationTypeBuilderEnum.gain;
      case 'two-point':
        return DeviceMetricCalibrationTypeBuilderEnum.twoPoint;
    }
    return null;
  }
}

/// Describes the type of a metric calibration.
class DeviceMetricCalibrationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricCalibrationTypeBuilder._({
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
  factory DeviceMetricCalibrationTypeBuilder(
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
    final valueEnum = DeviceMetricCalibrationTypeBuilderEnum.fromString(
      valueString,
    );
    return DeviceMetricCalibrationTypeBuilder._(
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

  /// Create empty [DeviceMetricCalibrationTypeBuilder]
  /// with element only
  factory DeviceMetricCalibrationTypeBuilder.empty() =>
      DeviceMetricCalibrationTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceMetricCalibrationTypeBuilder] from JSON.
  factory DeviceMetricCalibrationTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCalibrationTypeBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCalibrationTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceMetricCalibrationTypeBuilder
  final DeviceMetricCalibrationTypeBuilderEnum? valueEnum;

  /// unspecified
  static DeviceMetricCalibrationTypeBuilder unspecified =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: 'unspecified',
    valueEnum: DeviceMetricCalibrationTypeBuilderEnum.unspecified,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unspecified',
    ),
  );

  /// offset
  static DeviceMetricCalibrationTypeBuilder offset =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: 'offset',
    valueEnum: DeviceMetricCalibrationTypeBuilderEnum.offset,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Offset',
    ),
  );

  /// gain
  static DeviceMetricCalibrationTypeBuilder gain =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: 'gain',
    valueEnum: DeviceMetricCalibrationTypeBuilderEnum.gain,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Gain',
    ),
  );

  /// two_point
  static DeviceMetricCalibrationTypeBuilder twoPoint =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: 'two-point',
    valueEnum: DeviceMetricCalibrationTypeBuilderEnum.twoPoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Two Point',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceMetricCalibrationTypeBuilder elementOnly =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceMetricCalibrationTypeBuilder> values = [
    unspecified,
    offset,
    gain,
    twoPoint,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceMetricCalibrationTypeBuilder._(
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
