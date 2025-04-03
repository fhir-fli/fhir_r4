// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the typical color of representation.
class DeviceMetricColorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricColorBuilder._({
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
  factory DeviceMetricColorBuilder(
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
    return DeviceMetricColorBuilder._(
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

  /// Create empty [DeviceMetricColorBuilder] with element only
  factory DeviceMetricColorBuilder.empty() =>
      DeviceMetricColorBuilder._(valueString: '');

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
      valueString: value,
      element: element,
    );
  }

  /// black
  static DeviceMetricColorBuilder black = DeviceMetricColorBuilder._(
    valueString: 'black',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Black'.toFhirStringBuilder,
  );

  /// red
  static DeviceMetricColorBuilder red = DeviceMetricColorBuilder._(
    valueString: 'red',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Red'.toFhirStringBuilder,
  );

  /// green
  static DeviceMetricColorBuilder green = DeviceMetricColorBuilder._(
    valueString: 'green',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Green'.toFhirStringBuilder,
  );

  /// yellow
  static DeviceMetricColorBuilder yellow = DeviceMetricColorBuilder._(
    valueString: 'yellow',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Yellow'.toFhirStringBuilder,
  );

  /// blue
  static DeviceMetricColorBuilder blue = DeviceMetricColorBuilder._(
    valueString: 'blue',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Blue'.toFhirStringBuilder,
  );

  /// magenta
  static DeviceMetricColorBuilder magenta = DeviceMetricColorBuilder._(
    valueString: 'magenta',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Magenta'.toFhirStringBuilder,
  );

  /// cyan
  static DeviceMetricColorBuilder cyan = DeviceMetricColorBuilder._(
    valueString: 'cyan',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color Cyan'.toFhirStringBuilder,
  );

  /// white
  static DeviceMetricColorBuilder white = DeviceMetricColorBuilder._(
    valueString: 'white',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Color White'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DeviceMetricColorBuilder elementOnly =
      DeviceMetricColorBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricColorBuilder withElement(ElementBuilder? newElement) {
    return DeviceMetricColorBuilder._(
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
  DeviceMetricColorBuilder copyWith({
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
      throw ArgumentError('Invalid input for DeviceMetricColor: $newValue');
    }
    return DeviceMetricColorBuilder._(
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
