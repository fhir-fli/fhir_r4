// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type for access of external URI.
class RepositoryType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  RepositoryType._({
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
  factory RepositoryType(
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
    return RepositoryType._(
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

  /// Create empty [RepositoryType] with element only
  factory RepositoryType.empty() => RepositoryType._(validatedValue: '');

  /// Factory constructor to create [RepositoryType] from JSON.
  factory RepositoryType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RepositoryType cannot be constructed from JSON.',
      );
    }
    return RepositoryType._(
      validatedValue: value,
      element: element,
    );
  }

  /// directlink
  static final RepositoryType directlink = RepositoryType._(
    validatedValue: 'directlink',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Click and see'.toFhirString,
  );

  /// openapi
  static final RepositoryType openapi = RepositoryType._(
    validatedValue: 'openapi',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'The URL is the RESTful or other kind of API that can access to the result.'
            .toFhirString,
  );

  /// login
  static final RepositoryType login = RepositoryType._(
    validatedValue: 'login',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Result cannot be access unless an account is logged in'.toFhirString,
  );

  /// oauth
  static final RepositoryType oauth = RepositoryType._(
    validatedValue: 'oauth',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Result need to be fetched with API and need LOGIN( or cookies are required when visiting the link of resource)'
            .toFhirString,
  );

  /// other
  static final RepositoryType other = RepositoryType._(
    validatedValue: 'other',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Some other complicated or particular way to get resource from URL.'
            .toFhirString,
  );

  /// For instances where an Element is present but not value
  static final RepositoryType elementOnly =
      RepositoryType._(validatedValue: '');

  /// List of all enum-like values
  static final List<RepositoryType> values = [
    directlink,
    openapi,
    login,
    oauth,
    other,
  ];

  /// Clones the current instance
  @override
  RepositoryType clone() => RepositoryType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RepositoryType withElement(Element? newElement) {
    return RepositoryType._(validatedValue: value, element: newElement);
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
  RepositoryType copyWith({
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
    return RepositoryType._(
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
