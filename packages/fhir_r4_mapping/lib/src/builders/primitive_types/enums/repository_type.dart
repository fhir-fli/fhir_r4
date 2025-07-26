// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for RepositoryType
enum RepositoryTypeBuilderEnum {
  /// directlink
  directlink,

  /// openapi
  openapi,

  /// login
  login,

  /// oauth
  oauth,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RepositoryTypeBuilderEnum.directlink:
        return 'directlink';
      case RepositoryTypeBuilderEnum.openapi:
        return 'openapi';
      case RepositoryTypeBuilderEnum.login:
        return 'login';
      case RepositoryTypeBuilderEnum.oauth:
        return 'oauth';
      case RepositoryTypeBuilderEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RepositoryTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RepositoryTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RepositoryTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'directlink':
        return RepositoryTypeBuilderEnum.directlink;
      case 'openapi':
        return RepositoryTypeBuilderEnum.openapi;
      case 'login':
        return RepositoryTypeBuilderEnum.login;
      case 'oauth':
        return RepositoryTypeBuilderEnum.oauth;
      case 'other':
        return RepositoryTypeBuilderEnum.other;
    }
    return null;
  }
}

/// Type for access of external URI.
class RepositoryTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RepositoryTypeBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = RepositoryTypeBuilderEnum.fromString(
      valueString,
    );
    return RepositoryTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [RepositoryTypeBuilder]
  /// with element only
  factory RepositoryTypeBuilder.empty() =>
      RepositoryTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RepositoryTypeBuilder] from JSON.
  factory RepositoryTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryTypeBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for RepositoryTypeBuilder
  final RepositoryTypeBuilderEnum? valueEnum;

  /// directlink
  static RepositoryTypeBuilder directlink = RepositoryTypeBuilder._(
    valueString: 'directlink',
    valueEnum: RepositoryTypeBuilderEnum.directlink,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Click and see',
    ),
  );

  /// openapi
  static RepositoryTypeBuilder openapi = RepositoryTypeBuilder._(
    valueString: 'openapi',
    valueEnum: RepositoryTypeBuilderEnum.openapi,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString:
          'The URL is the RESTful or other kind of API that can access to the result.',
    ),
  );

  /// login
  static RepositoryTypeBuilder login = RepositoryTypeBuilder._(
    valueString: 'login',
    valueEnum: RepositoryTypeBuilderEnum.login,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Result cannot be access unless an account is logged in',
    ),
  );

  /// oauth
  static RepositoryTypeBuilder oauth = RepositoryTypeBuilder._(
    valueString: 'oauth',
    valueEnum: RepositoryTypeBuilderEnum.oauth,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString:
          'Result need to be fetched with API and need LOGIN( or cookies are required when visiting the link of resource)',
    ),
  );

  /// other
  static RepositoryTypeBuilder other = RepositoryTypeBuilder._(
    valueString: 'other',
    valueEnum: RepositoryTypeBuilderEnum.other,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString:
          'Some other complicated or particular way to get resource from URL.',
    ),
  );

  /// For instances where an Element is present but not value
  static RepositoryTypeBuilder elementOnly = RepositoryTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RepositoryTypeBuilder> values = [
    directlink,
    openapi,
    login,
    oauth,
    other,
  ];

  /// Returns the enum value with an element attached
  RepositoryTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RepositoryTypeBuilder._(
      valueString: valueString,
      element: newElement,
    );
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
}
