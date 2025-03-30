// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the category of the metric.
class DeviceMetricCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricCategoryBuilder._({
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
  factory DeviceMetricCategoryBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return DeviceMetricCategoryBuilder._(
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

  /// Create empty [DeviceMetricCategoryBuilder] with element only
  factory DeviceMetricCategoryBuilder.empty() =>
      DeviceMetricCategoryBuilder._(validatedValue: '');

  /// Factory constructor to create [DeviceMetricCategoryBuilder]
  /// from JSON.
  factory DeviceMetricCategoryBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategoryBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCategoryBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// measurement
  static DeviceMetricCategoryBuilder measurement =
      DeviceMetricCategoryBuilder._(
    validatedValue: 'measurement',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Measurement'.toFhirStringBuilder,
  );

  /// setting
  static DeviceMetricCategoryBuilder setting = DeviceMetricCategoryBuilder._(
    validatedValue: 'setting',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Setting'.toFhirStringBuilder,
  );

  /// calculation
  static DeviceMetricCategoryBuilder calculation =
      DeviceMetricCategoryBuilder._(
    validatedValue: 'calculation',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Calculation'.toFhirStringBuilder,
  );

  /// unspecified
  static DeviceMetricCategoryBuilder unspecified =
      DeviceMetricCategoryBuilder._(
    validatedValue: 'unspecified',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unspecified'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DeviceMetricCategoryBuilder elementOnly =
      DeviceMetricCategoryBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<DeviceMetricCategoryBuilder> values = [
    measurement,
    setting,
    calculation,
    unspecified,
  ];

  /// Clones the current instance
  @override
  DeviceMetricCategoryBuilder clone() => DeviceMetricCategoryBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricCategoryBuilder withElement(ElementBuilder? newElement) {
    return DeviceMetricCategoryBuilder._(
        validatedValue: value, element: newElement);
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
  DeviceMetricCategoryBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DeviceMetricCategoryBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
