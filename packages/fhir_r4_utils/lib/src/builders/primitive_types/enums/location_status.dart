// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates whether the location is still in use.
class LocationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  LocationStatusBuilder._({
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
  factory LocationStatusBuilder(
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
    return LocationStatusBuilder._(
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

  /// Create empty [LocationStatusBuilder] with element only
  factory LocationStatusBuilder.empty() =>
      LocationStatusBuilder._(valueString: '');

  /// Factory constructor to create [LocationStatusBuilder]
  /// from JSON.
  factory LocationStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LocationStatusBuilder cannot be constructed from JSON.',
      );
    }
    return LocationStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// active
  static LocationStatusBuilder active = LocationStatusBuilder._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/location-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// suspended
  static LocationStatusBuilder suspended = LocationStatusBuilder._(
    valueString: 'suspended',
    system: 'http://hl7.org/fhir/ValueSet/location-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Suspended'.toFhirStringBuilder,
  );

  /// inactive
  static LocationStatusBuilder inactive = LocationStatusBuilder._(
    valueString: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/location-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Inactive'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static LocationStatusBuilder elementOnly =
      LocationStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<LocationStatusBuilder> values = [
    active,
    suspended,
    inactive,
  ];

  /// Clones the current instance
  @override
  LocationStatusBuilder clone() => LocationStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  LocationStatusBuilder withElement(ElementBuilder? newElement) {
    return LocationStatusBuilder._(
        valueString: valueString, element: newElement,);
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
  LocationStatusBuilder copyWith({
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
      throw ArgumentError('Invalid input for LocationStatus: $newValue');
    }
    return LocationStatusBuilder._(
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
