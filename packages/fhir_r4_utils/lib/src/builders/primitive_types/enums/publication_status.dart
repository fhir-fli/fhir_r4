// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PublicationStatus
enum PublicationStatusBuilderEnum {
  /// draft
  draft,

  /// active
  active,

  /// retired
  retired,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PublicationStatusBuilderEnum.draft:
        return 'draft';
      case PublicationStatusBuilderEnum.active:
        return 'active';
      case PublicationStatusBuilderEnum.retired:
        return 'retired';
      case PublicationStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PublicationStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return PublicationStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PublicationStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return PublicationStatusBuilderEnum.draft;
      case 'active':
        return PublicationStatusBuilderEnum.active;
      case 'retired':
        return PublicationStatusBuilderEnum.retired;
      case 'unknown':
        return PublicationStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// The lifecycle status of an artifact.
class PublicationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PublicationStatusBuilder._({
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
  factory PublicationStatusBuilder(
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
    final valueEnum = PublicationStatusBuilderEnum.fromString(
      valueString,
    );
    return PublicationStatusBuilder._(
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

  /// Create empty [PublicationStatusBuilder]
  /// with element only
  factory PublicationStatusBuilder.empty() =>
      PublicationStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [PublicationStatusBuilder] from JSON.
  factory PublicationStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublicationStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PublicationStatusBuilder cannot be constructed from JSON.',
      );
    }
    return PublicationStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for PublicationStatusBuilder
  final PublicationStatusBuilderEnum? valueEnum;

  /// draft
  static PublicationStatusBuilder draft = PublicationStatusBuilder._(
    valueString: 'draft',
    valueEnum: PublicationStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/publication-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// active
  static PublicationStatusBuilder active = PublicationStatusBuilder._(
    valueString: 'active',
    valueEnum: PublicationStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/publication-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// retired
  static PublicationStatusBuilder retired = PublicationStatusBuilder._(
    valueString: 'retired',
    valueEnum: PublicationStatusBuilderEnum.retired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/publication-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Retired',
    ),
  );

  /// unknown
  static PublicationStatusBuilder unknown = PublicationStatusBuilder._(
    valueString: 'unknown',
    valueEnum: PublicationStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/publication-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static PublicationStatusBuilder elementOnly = PublicationStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<PublicationStatusBuilder> values = [
    draft,
    active,
    retired,
    unknown,
  ];

  /// Returns the enum value with an element attached
  PublicationStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return PublicationStatusBuilder._(
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
