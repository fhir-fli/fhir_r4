// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the endpoint.
class EndpointStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EndpointStatusBuilder._({
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
  factory EndpointStatusBuilder(
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
    return EndpointStatusBuilder._(
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

  /// Create empty [EndpointStatusBuilder] with element only
  factory EndpointStatusBuilder.empty() =>
      EndpointStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [EndpointStatusBuilder] from JSON.
  factory EndpointStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EndpointStatusBuilder cannot be constructed from JSON.',
      );
    }
    return EndpointStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// active
  static EndpointStatusBuilder active = EndpointStatusBuilder._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/endpoint-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// suspended
  static EndpointStatusBuilder suspended = EndpointStatusBuilder._(
    validatedValue: 'suspended',
    system: 'http://hl7.org/fhir/ValueSet/endpoint-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Suspended'.toFhirStringBuilder,
  );

  /// error
  static EndpointStatusBuilder error = EndpointStatusBuilder._(
    validatedValue: 'error',
    system: 'http://hl7.org/fhir/ValueSet/endpoint-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Error'.toFhirStringBuilder,
  );

  /// off
  static EndpointStatusBuilder off = EndpointStatusBuilder._(
    validatedValue: 'off',
    system: 'http://hl7.org/fhir/ValueSet/endpoint-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Off'.toFhirStringBuilder,
  );

  /// entered_in_error
  static EndpointStatusBuilder entered_in_error = EndpointStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/endpoint-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in error'.toFhirStringBuilder,
  );

  /// test
  static EndpointStatusBuilder test = EndpointStatusBuilder._(
    validatedValue: 'test',
    system: 'http://hl7.org/fhir/ValueSet/endpoint-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Test'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EndpointStatusBuilder elementOnly =
      EndpointStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<EndpointStatusBuilder> values = [
    active,
    suspended,
    error,
    off,
    entered_in_error,
    test,
  ];

  /// Clones the current instance
  @override
  EndpointStatusBuilder clone() => EndpointStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  EndpointStatusBuilder withElement(ElementBuilder? newElement) {
    return EndpointStatusBuilder._(validatedValue: value, element: newElement);
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
  EndpointStatusBuilder copyWith({
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
    return EndpointStatusBuilder._(
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
