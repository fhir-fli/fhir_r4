// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the category of the metric.
class DeviceMetricCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceMetricCategory._({
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
  factory DeviceMetricCategory(
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
    return DeviceMetricCategory._(
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

  /// Create empty [DeviceMetricCategory] with element only
  factory DeviceMetricCategory.empty() =>
      DeviceMetricCategory._(valueString: '');

  /// Factory constructor to create [DeviceMetricCategory] from JSON.
  factory DeviceMetricCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCategory cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCategory._(
      valueString: value,
      element: element,
    );
  }

  /// measurement
  static final DeviceMetricCategory measurement = DeviceMetricCategory._(
    valueString: 'measurement',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Measurement'.toFhirString,
  );

  /// setting
  static final DeviceMetricCategory setting = DeviceMetricCategory._(
    valueString: 'setting',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Setting'.toFhirString,
  );

  /// calculation
  static final DeviceMetricCategory calculation = DeviceMetricCategory._(
    valueString: 'calculation',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Calculation'.toFhirString,
  );

  /// unspecified
  static final DeviceMetricCategory unspecified = DeviceMetricCategory._(
    valueString: 'unspecified',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unspecified'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceMetricCategory elementOnly =
      DeviceMetricCategory._(valueString: '');

  /// List of all enum-like values
  static final List<DeviceMetricCategory> values = [
    measurement,
    setting,
    calculation,
    unspecified,
  ];

  /// Clones the current instance
  @override
  DeviceMetricCategory clone() => DeviceMetricCategory._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricCategory withElement(Element? newElement) {
    return DeviceMetricCategory._(
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
  DeviceMetricCategory copyWith({
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
      throw ArgumentError('Invalid input for DeviceMetricCategory: $newValue');
    }
    return DeviceMetricCategory._(
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
