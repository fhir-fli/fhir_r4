// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the type of a metric calibration.
class DeviceMetricCalibrationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricCalibrationTypeBuilder._({
    required super.valueString,
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
    return DeviceMetricCalibrationTypeBuilder._(
      valueString: valueString,
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

  /// Create empty [DeviceMetricCalibrationTypeBuilder] with element only
  factory DeviceMetricCalibrationTypeBuilder.empty() =>
      DeviceMetricCalibrationTypeBuilder._(valueString: '');

  /// Factory constructor to create [DeviceMetricCalibrationTypeBuilder]
  /// from JSON.
  factory DeviceMetricCalibrationTypeBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationTypeBuilder.elementOnly
          .withElement(element);
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

  /// unspecified
  static DeviceMetricCalibrationTypeBuilder unspecified =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: 'unspecified',
    system:
        'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unspecified'.toFhirStringBuilder,
  );

  /// offset
  static DeviceMetricCalibrationTypeBuilder offset =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: 'offset',
    system:
        'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Offset'.toFhirStringBuilder,
  );

  /// gain
  static DeviceMetricCalibrationTypeBuilder gain =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: 'gain',
    system:
        'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Gain'.toFhirStringBuilder,
  );

  /// two_point
  static DeviceMetricCalibrationTypeBuilder two_point =
      DeviceMetricCalibrationTypeBuilder._(
    valueString: 'two-point',
    system:
        'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Two Point'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DeviceMetricCalibrationTypeBuilder elementOnly =
      DeviceMetricCalibrationTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<DeviceMetricCalibrationTypeBuilder> values = [
    unspecified,
    offset,
    gain,
    two_point,
  ];

  /// Clones the current instance
  @override
  DeviceMetricCalibrationTypeBuilder clone() =>
      DeviceMetricCalibrationTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationTypeBuilder withElement(ElementBuilder? newElement) {
    return DeviceMetricCalibrationTypeBuilder._(
        valueString: valueString, element: newElement);
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

  /// Creates a modified copy with updated properties.
  @override
  DeviceMetricCalibrationTypeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for DeviceMetricCalibrationType: $newValue');
    }
    return DeviceMetricCalibrationTypeBuilder._(
      valueString: newValue ?? valueString,
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
