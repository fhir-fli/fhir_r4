// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the typical color of representation.
class DeviceMetricColorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricColorBuilder._({
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
  factory DeviceMetricColorBuilder(
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
    return DeviceMetricColorBuilder._(
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

  /// Create empty [DeviceMetricColorBuilder] with element only
  factory DeviceMetricColorBuilder.empty() =>
      DeviceMetricColorBuilder._(validatedValue: '');

  /// Factory constructor to create [DeviceMetricColorBuilder]
  /// from JSON.
  factory DeviceMetricColorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricColorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricColorBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceMetricColorBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// black
  static DeviceMetricColorBuilder black = DeviceMetricColorBuilder._(
    validatedValue: 'black',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Black'.toFhirStringBuilder,
  );

  /// red
  static DeviceMetricColorBuilder red = DeviceMetricColorBuilder._(
    validatedValue: 'red',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Red'.toFhirStringBuilder,
  );

  /// green
  static DeviceMetricColorBuilder green = DeviceMetricColorBuilder._(
    validatedValue: 'green',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Green'.toFhirStringBuilder,
  );

  /// yellow
  static DeviceMetricColorBuilder yellow = DeviceMetricColorBuilder._(
    validatedValue: 'yellow',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Yellow'.toFhirStringBuilder,
  );

  /// blue
  static DeviceMetricColorBuilder blue = DeviceMetricColorBuilder._(
    validatedValue: 'blue',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Blue'.toFhirStringBuilder,
  );

  /// magenta
  static DeviceMetricColorBuilder magenta = DeviceMetricColorBuilder._(
    validatedValue: 'magenta',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Magenta'.toFhirStringBuilder,
  );

  /// cyan
  static DeviceMetricColorBuilder cyan = DeviceMetricColorBuilder._(
    validatedValue: 'cyan',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Cyan'.toFhirStringBuilder,
  );

  /// white
  static DeviceMetricColorBuilder white = DeviceMetricColorBuilder._(
    validatedValue: 'white',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color White'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DeviceMetricColorBuilder elementOnly =
      DeviceMetricColorBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<DeviceMetricColorBuilder> values = [
    black,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
  ];

  /// Clones the current instance
  @override
  DeviceMetricColorBuilder clone() => DeviceMetricColorBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricColorBuilder withElement(ElementBuilder? newElement) {
    return DeviceMetricColorBuilder._(
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
  DeviceMetricColorBuilder copyWith({
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
    return DeviceMetricColorBuilder._(
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
