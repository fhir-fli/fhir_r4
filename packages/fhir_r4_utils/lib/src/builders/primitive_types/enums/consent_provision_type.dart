// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a rule statement is applied, such as adding additional consent or
/// removing consent.
class ConsentProvisionTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConsentProvisionTypeBuilder._({
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
  factory ConsentProvisionTypeBuilder(
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
    return ConsentProvisionTypeBuilder._(
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

  /// Create empty [ConsentProvisionTypeBuilder] with element only
  factory ConsentProvisionTypeBuilder.empty() =>
      ConsentProvisionTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [ConsentProvisionTypeBuilder] from JSON.
  factory ConsentProvisionTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentProvisionTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentProvisionTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ConsentProvisionTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// deny
  static ConsentProvisionTypeBuilder deny = ConsentProvisionTypeBuilder._(
    validatedValue: 'deny',
    system:
        'http://hl7.org/fhir/ValueSet/consent-provision-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Opt Out'.toFhirStringBuilder,
  );

  /// permit
  static ConsentProvisionTypeBuilder permit = ConsentProvisionTypeBuilder._(
    validatedValue: 'permit',
    system:
        'http://hl7.org/fhir/ValueSet/consent-provision-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Opt In'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ConsentProvisionTypeBuilder elementOnly =
      ConsentProvisionTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ConsentProvisionTypeBuilder> values = [
    deny,
    permit,
  ];

  /// Clones the current instance
  @override
  ConsentProvisionTypeBuilder clone() => ConsentProvisionTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ConsentProvisionTypeBuilder withElement(ElementBuilder? newElement) {
    return ConsentProvisionTypeBuilder._(
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
  ConsentProvisionTypeBuilder copyWith({
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
    return ConsentProvisionTypeBuilder._(
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
