// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the type of a metric calibration.
class DeviceMetricCalibrationType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceMetricCalibrationType._({
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
  factory DeviceMetricCalibrationType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return DeviceMetricCalibrationType._(
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

  /// Create empty [DeviceMetricCalibrationType] with element only
  factory DeviceMetricCalibrationType.empty() =>
      DeviceMetricCalibrationType._(valueString: '');

  /// Factory constructor to create [DeviceMetricCalibrationType] from JSON.
  factory DeviceMetricCalibrationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCalibrationType cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCalibrationType._(
      valueString: value,
      element: element,
    );
  }

  /// unspecified
  static final DeviceMetricCalibrationType unspecified =
      DeviceMetricCalibrationType._(
    valueString: 'unspecified',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unspecified'.toFhirString,
  );

  /// offset
  static final DeviceMetricCalibrationType offset =
      DeviceMetricCalibrationType._(
    valueString: 'offset',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Offset'.toFhirString,
  );

  /// gain
  static final DeviceMetricCalibrationType gain = DeviceMetricCalibrationType._(
    valueString: 'gain',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Gain'.toFhirString,
  );

  /// two_point
  static final DeviceMetricCalibrationType two_point =
      DeviceMetricCalibrationType._(
    valueString: 'two-point',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Two Point'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceMetricCalibrationType elementOnly =
      DeviceMetricCalibrationType._(valueString: '');

  /// List of all enum-like values
  static final List<DeviceMetricCalibrationType> values = [
    unspecified,
    offset,
    gain,
    two_point,
  ];

  /// Clones the current instance
  @override
  DeviceMetricCalibrationType clone() => DeviceMetricCalibrationType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  DeviceMetricCalibrationType copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for DeviceMetricCalibrationType: $newValue',);
    }
    return DeviceMetricCalibrationType._(
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
