part of '../primitive_types.dart';

/// Actual enum for DeviceMetricCalibrationType
enum DeviceMetricCalibrationTypeEnum {
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
      case DeviceMetricCalibrationTypeEnum.unspecified:
        return 'unspecified';
      case DeviceMetricCalibrationTypeEnum.offset:
        return 'offset';
      case DeviceMetricCalibrationTypeEnum.gain:
        return 'gain';
      case DeviceMetricCalibrationTypeEnum.twoPoint:
        return 'two-point';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricCalibrationTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricCalibrationTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricCalibrationTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'unspecified':
        return DeviceMetricCalibrationTypeEnum.unspecified;
      case 'offset':
        return DeviceMetricCalibrationTypeEnum.offset;
      case 'gain':
        return DeviceMetricCalibrationTypeEnum.gain;
      case 'two-point':
        return DeviceMetricCalibrationTypeEnum.twoPoint;
    }
    return null;
  }
}

/// Describes the type of a metric calibration.
class DeviceMetricCalibrationType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceMetricCalibrationType._({
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
  factory DeviceMetricCalibrationType(
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
    final valueEnum = DeviceMetricCalibrationTypeEnum.fromString(valueString);
    return DeviceMetricCalibrationType._(
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

  /// Factory constructor to create [DeviceMetricCalibrationType]
  /// from JSON.
  factory DeviceMetricCalibrationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceMetricCalibrationTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCalibrationType cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCalibrationType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceMetricCalibrationType
  final DeviceMetricCalibrationTypeEnum? valueEnum;

  /// unspecified
  static const DeviceMetricCalibrationType unspecified =
      DeviceMetricCalibrationType._(
    valueString: 'unspecified',
    valueEnum: DeviceMetricCalibrationTypeEnum.unspecified,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unspecified',
    ),
  );

  /// offset
  static const DeviceMetricCalibrationType offset =
      DeviceMetricCalibrationType._(
    valueString: 'offset',
    valueEnum: DeviceMetricCalibrationTypeEnum.offset,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Offset',
    ),
  );

  /// gain
  static const DeviceMetricCalibrationType gain = DeviceMetricCalibrationType._(
    valueString: 'gain',
    valueEnum: DeviceMetricCalibrationTypeEnum.gain,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Gain',
    ),
  );

  /// two_point
  static const DeviceMetricCalibrationType twoPoint =
      DeviceMetricCalibrationType._(
    valueString: 'two-point',
    valueEnum: DeviceMetricCalibrationTypeEnum.twoPoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-calibration-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Two Point',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceMetricCalibrationType> values = [
    unspecified,
    offset,
    gain,
    twoPoint,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationType withElement(Element? newElement) {
    return DeviceMetricCalibrationType._(
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
  DeviceMetricCalibrationType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceMetricCalibrationTypeCopyWithImpl<DeviceMetricCalibrationType>
      get copyWith =>
          DeviceMetricCalibrationTypeCopyWithImpl<DeviceMetricCalibrationType>(
            this,
            (v) => v as DeviceMetricCalibrationType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceMetricCalibrationTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceMetricCalibrationTypeCopyWithImpl(super._value, super._then);

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
      DeviceMetricCalibrationType(
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
