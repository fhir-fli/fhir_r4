// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How the system supports versioning for a resource.
class ResourceVersionPolicyBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResourceVersionPolicyBuilder._({
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
  factory ResourceVersionPolicyBuilder(
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
    return ResourceVersionPolicyBuilder._(
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

  /// Create empty [ResourceVersionPolicyBuilder] with element only
  factory ResourceVersionPolicyBuilder.empty() =>
      ResourceVersionPolicyBuilder._(validatedValue: '');

  /// Factory constructor to create [ResourceVersionPolicyBuilder] from JSON.
  factory ResourceVersionPolicyBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicyBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResourceVersionPolicyBuilder cannot be constructed from JSON.',
      );
    }
    return ResourceVersionPolicyBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// no_version
  static ResourceVersionPolicyBuilder no_version =
      ResourceVersionPolicyBuilder._(
    validatedValue: 'no-version',
    system: 'http://hl7.org/fhir/ValueSet/versioning-policy'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'No VersionId Support'.toFhirStringBuilder,
  );

  /// versioned
  static ResourceVersionPolicyBuilder versioned =
      ResourceVersionPolicyBuilder._(
    validatedValue: 'versioned',
    system: 'http://hl7.org/fhir/ValueSet/versioning-policy'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Versioned'.toFhirStringBuilder,
  );

  /// versioned_update
  static ResourceVersionPolicyBuilder versioned_update =
      ResourceVersionPolicyBuilder._(
    validatedValue: 'versioned-update',
    system: 'http://hl7.org/fhir/ValueSet/versioning-policy'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VersionId tracked fully'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ResourceVersionPolicyBuilder elementOnly =
      ResourceVersionPolicyBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ResourceVersionPolicyBuilder> values = [
    no_version,
    versioned,
    versioned_update,
  ];

  /// Clones the current instance
  @override
  ResourceVersionPolicyBuilder clone() => ResourceVersionPolicyBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ResourceVersionPolicyBuilder withElement(ElementBuilder? newElement) {
    return ResourceVersionPolicyBuilder._(
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
  ResourceVersionPolicyBuilder copyWith({
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
    return ResourceVersionPolicyBuilder._(
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
