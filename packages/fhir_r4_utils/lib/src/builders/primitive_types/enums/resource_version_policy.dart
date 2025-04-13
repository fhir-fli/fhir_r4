// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ResourceVersionPolicy
enum ResourceVersionPolicyBuilderEnum {
  /// no-version
  noVersion,

  /// versioned
  versioned,

  /// versioned-update
  versionedUpdate,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ResourceVersionPolicyBuilderEnum.noVersion:
        return 'no-version';
      case ResourceVersionPolicyBuilderEnum.versioned:
        return 'versioned';
      case ResourceVersionPolicyBuilderEnum.versionedUpdate:
        return 'versioned-update';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResourceVersionPolicyBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ResourceVersionPolicyBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResourceVersionPolicyBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'no-version':
        return ResourceVersionPolicyBuilderEnum.noVersion;
      case 'versioned':
        return ResourceVersionPolicyBuilderEnum.versioned;
      case 'versioned-update':
        return ResourceVersionPolicyBuilderEnum.versionedUpdate;
    }
    return null;
  }
}

/// How the system supports versioning for a resource.
class ResourceVersionPolicyBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResourceVersionPolicyBuilder._({
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
  factory ResourceVersionPolicyBuilder(
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
    final valueEnum = ResourceVersionPolicyBuilderEnum.fromString(
      valueString,
    );
    return ResourceVersionPolicyBuilder._(
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

  /// Create empty [ResourceVersionPolicyBuilder]
  /// with element only
  factory ResourceVersionPolicyBuilder.empty() =>
      ResourceVersionPolicyBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ResourceVersionPolicyBuilder] from JSON.
  factory ResourceVersionPolicyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicyBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResourceVersionPolicyBuilder cannot be constructed from JSON.',
      );
    }
    return ResourceVersionPolicyBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ResourceVersionPolicyBuilder
  final ResourceVersionPolicyBuilderEnum? valueEnum;

  /// no_version
  static ResourceVersionPolicyBuilder noVersion =
      ResourceVersionPolicyBuilder._(
    valueString: 'no-version',
    valueEnum: ResourceVersionPolicyBuilderEnum.noVersion,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/versioning-policy',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'No VersionId Support',
    ),
  );

  /// versioned
  static ResourceVersionPolicyBuilder versioned =
      ResourceVersionPolicyBuilder._(
    valueString: 'versioned',
    valueEnum: ResourceVersionPolicyBuilderEnum.versioned,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/versioning-policy',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Versioned',
    ),
  );

  /// versioned_update
  static ResourceVersionPolicyBuilder versionedUpdate =
      ResourceVersionPolicyBuilder._(
    valueString: 'versioned-update',
    valueEnum: ResourceVersionPolicyBuilderEnum.versionedUpdate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/versioning-policy',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'VersionId tracked fully',
    ),
  );

  /// For instances where an Element is present but not value
  static ResourceVersionPolicyBuilder elementOnly =
      ResourceVersionPolicyBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ResourceVersionPolicyBuilder> values = [
    noVersion,
    versioned,
    versionedUpdate,
  ];

  /// Returns the enum value with an element attached
  ResourceVersionPolicyBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ResourceVersionPolicyBuilder._(
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
