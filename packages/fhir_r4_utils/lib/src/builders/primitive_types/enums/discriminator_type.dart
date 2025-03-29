// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How an element value is interpreted when discrimination is evaluated.
class DiscriminatorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DiscriminatorTypeBuilder._({
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
  factory DiscriminatorTypeBuilder(
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
    return DiscriminatorTypeBuilder._(
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

  /// Create empty [DiscriminatorTypeBuilder] with element only
  factory DiscriminatorTypeBuilder.empty() =>
      DiscriminatorTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [DiscriminatorTypeBuilder] from JSON.
  factory DiscriminatorTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiscriminatorTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DiscriminatorTypeBuilder cannot be constructed from JSON.',
      );
    }
    return DiscriminatorTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// value
  static DiscriminatorTypeBuilder value_ = DiscriminatorTypeBuilder._(
    validatedValue: 'value',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Value'.toFhirStringBuilder,
  );

  /// exists
  static DiscriminatorTypeBuilder exists = DiscriminatorTypeBuilder._(
    validatedValue: 'exists',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Exists'.toFhirStringBuilder,
  );

  /// pattern
  static DiscriminatorTypeBuilder pattern = DiscriminatorTypeBuilder._(
    validatedValue: 'pattern',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pattern'.toFhirStringBuilder,
  );

  /// type
  static DiscriminatorTypeBuilder type = DiscriminatorTypeBuilder._(
    validatedValue: 'type',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Type'.toFhirStringBuilder,
  );

  /// profile
  static DiscriminatorTypeBuilder profile = DiscriminatorTypeBuilder._(
    validatedValue: 'profile',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Profile'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DiscriminatorTypeBuilder elementOnly =
      DiscriminatorTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<DiscriminatorTypeBuilder> values = [
    value_,
    exists,
    pattern,
    type,
    profile,
  ];

  /// Clones the current instance
  @override
  DiscriminatorTypeBuilder clone() => DiscriminatorTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DiscriminatorTypeBuilder withElement(ElementBuilder? newElement) {
    return DiscriminatorTypeBuilder._(
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
  DiscriminatorTypeBuilder copyWith({
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
    return DiscriminatorTypeBuilder._(
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
