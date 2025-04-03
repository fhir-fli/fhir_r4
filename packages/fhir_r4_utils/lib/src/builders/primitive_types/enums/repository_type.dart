// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type for access of external URI.
class RepositoryTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RepositoryTypeBuilder._({
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
  factory RepositoryTypeBuilder(
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
    return RepositoryTypeBuilder._(
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

  /// Create empty [RepositoryTypeBuilder] with element only
  factory RepositoryTypeBuilder.empty() =>
      RepositoryTypeBuilder._(valueString: '');

  /// Factory constructor to create [RepositoryTypeBuilder]
  /// from JSON.
  factory RepositoryTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RepositoryTypeBuilder cannot be constructed from JSON.',
      );
    }
    return RepositoryTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// directlink
  static RepositoryTypeBuilder directlink = RepositoryTypeBuilder._(
    valueString: 'directlink',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Click and see'.toFhirStringBuilder,
  );

  /// openapi
  static RepositoryTypeBuilder openapi = RepositoryTypeBuilder._(
    valueString: 'openapi',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'The URL is the RESTful or other kind of API that can access to the result.'
            .toFhirStringBuilder,
  );

  /// login
  static RepositoryTypeBuilder login = RepositoryTypeBuilder._(
    valueString: 'login',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Result cannot be access unless an account is logged in'
        .toFhirStringBuilder,
  );

  /// oauth
  static RepositoryTypeBuilder oauth = RepositoryTypeBuilder._(
    valueString: 'oauth',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Result need to be fetched with API and need LOGIN( or cookies are required when visiting the link of resource)'
            .toFhirStringBuilder,
  );

  /// other
  static RepositoryTypeBuilder other = RepositoryTypeBuilder._(
    valueString: 'other',
    system: 'http://hl7.org/fhir/ValueSet/repository-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Some other complicated or particular way to get resource from URL.'
            .toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RepositoryTypeBuilder elementOnly =
      RepositoryTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<RepositoryTypeBuilder> values = [
    directlink,
    openapi,
    login,
    oauth,
    other,
  ];

  /// Clones the current instance
  @override
  RepositoryTypeBuilder clone() => RepositoryTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RepositoryTypeBuilder withElement(ElementBuilder? newElement) {
    return RepositoryTypeBuilder._(
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
  RepositoryTypeBuilder copyWith({
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
      throw ArgumentError('Invalid input for RepositoryType: $newValue');
    }
    return RepositoryTypeBuilder._(
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
