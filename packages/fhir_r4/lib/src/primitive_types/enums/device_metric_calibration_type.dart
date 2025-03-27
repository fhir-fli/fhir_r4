// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the type of a metric calibration.
class DeviceMetricCalibrationType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceMetricCalibrationType._({
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
  factory DeviceMetricCalibrationType(
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
    return DeviceMetricCalibrationType._(
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

  /// Create empty [DeviceMetricCalibrationType] with element only
  factory DeviceMetricCalibrationType.empty() =>
      DeviceMetricCalibrationType._(validatedValue: '');

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
      validatedValue: value,
      element: element,
    );
  }

  /// unspecified
  static final DeviceMetricCalibrationType unspecified =
      DeviceMetricCalibrationType._(
    validatedValue: 'unspecified',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unspecified'.toFhirString,
  );

  /// offset
  static final DeviceMetricCalibrationType offset =
      DeviceMetricCalibrationType._(
    validatedValue: 'offset',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Offset'.toFhirString,
  );

  /// gain
  static final DeviceMetricCalibrationType gain = DeviceMetricCalibrationType._(
    validatedValue: 'gain',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Gain'.toFhirString,
  );

  /// two_point
  static final DeviceMetricCalibrationType two_point =
      DeviceMetricCalibrationType._(
    validatedValue: 'two-point',
    system: 'http://hl7.org/fhir/ValueSet/metric-calibration-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Two Point'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceMetricCalibrationType elementOnly =
      DeviceMetricCalibrationType._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricCalibrationType withElement(Element? newElement) {
    return DeviceMetricCalibrationType._(
        validatedValue: value, element: newElement,);
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
  DeviceMetricCalibrationType copyWith({
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
    return DeviceMetricCalibrationType._(
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
