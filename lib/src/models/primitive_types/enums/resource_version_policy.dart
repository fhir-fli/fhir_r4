// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How the system supports versioning for a resource.
class ResourceVersionPolicy extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ResourceVersionPolicy._({
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
  factory ResourceVersionPolicy(
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
    return ResourceVersionPolicy._(
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

  /// Create empty [ResourceVersionPolicy] with element only
  factory ResourceVersionPolicy.empty() =>
      ResourceVersionPolicy._(validatedValue: '');

  /// Factory constructor to create [ResourceVersionPolicy] from JSON.
  factory ResourceVersionPolicy.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicy.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResourceVersionPolicy cannot be constructed from JSON.',
      );
    }
    return ResourceVersionPolicy._(validatedValue: value, element: element);
  }

  /// no_version
  static final ResourceVersionPolicy no_version = ResourceVersionPolicy._(
    validatedValue: 'no-version',
    system: 'http://hl7.org/fhir/ValueSet/versioning-policy'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'No VersionId Support'.toFhirString,
  );

  /// versioned
  static final ResourceVersionPolicy versioned = ResourceVersionPolicy._(
    validatedValue: 'versioned',
    system: 'http://hl7.org/fhir/ValueSet/versioning-policy'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Versioned'.toFhirString,
  );

  /// versioned_update
  static final ResourceVersionPolicy versioned_update = ResourceVersionPolicy._(
    validatedValue: 'versioned-update',
    system: 'http://hl7.org/fhir/ValueSet/versioning-policy'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VersionId tracked fully'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ResourceVersionPolicy elementOnly =
      ResourceVersionPolicy._(validatedValue: '');

  /// List of all enum-like values
  static final List<ResourceVersionPolicy> values = [
    no_version,
    versioned,
    versioned_update,
  ];

  /// Clones the current instance
  @override
  ResourceVersionPolicy clone() => ResourceVersionPolicy._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResourceVersionPolicy withElement(Element? newElement) {
    return ResourceVersionPolicy._(validatedValue: value, element: newElement);
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
  ResourceVersionPolicy copyWith({
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
    return ResourceVersionPolicy._(
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
