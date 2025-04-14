// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DocumentRelationshipType
enum DocumentRelationshipTypeBuilderEnum {
  /// replaces
  replaces,

  /// transforms
  transforms,

  /// signs
  signs,

  /// appends
  appends,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DocumentRelationshipTypeBuilderEnum.replaces:
        return 'replaces';
      case DocumentRelationshipTypeBuilderEnum.transforms:
        return 'transforms';
      case DocumentRelationshipTypeBuilderEnum.signs:
        return 'signs';
      case DocumentRelationshipTypeBuilderEnum.appends:
        return 'appends';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DocumentRelationshipTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DocumentRelationshipTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DocumentRelationshipTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'replaces':
        return DocumentRelationshipTypeBuilderEnum.replaces;
      case 'transforms':
        return DocumentRelationshipTypeBuilderEnum.transforms;
      case 'signs':
        return DocumentRelationshipTypeBuilderEnum.signs;
      case 'appends':
        return DocumentRelationshipTypeBuilderEnum.appends;
    }
    return null;
  }
}

/// The type of relationship between documents.
class DocumentRelationshipTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DocumentRelationshipTypeBuilder._({
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
  factory DocumentRelationshipTypeBuilder(
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
    final valueEnum = DocumentRelationshipTypeBuilderEnum.fromString(
      valueString,
    );
    return DocumentRelationshipTypeBuilder._(
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

  /// Create empty [DocumentRelationshipTypeBuilder]
  /// with element only
  factory DocumentRelationshipTypeBuilder.empty() =>
      DocumentRelationshipTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DocumentRelationshipTypeBuilder] from JSON.
  factory DocumentRelationshipTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentRelationshipTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentRelationshipTypeBuilder cannot be constructed from JSON.',
      );
    }
    return DocumentRelationshipTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DocumentRelationshipTypeBuilder
  final DocumentRelationshipTypeBuilderEnum? valueEnum;

  /// replaces
  static DocumentRelationshipTypeBuilder replaces =
      DocumentRelationshipTypeBuilder._(
    valueString: 'replaces',
    valueEnum: DocumentRelationshipTypeBuilderEnum.replaces,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaces',
    ),
  );

  /// transforms
  static DocumentRelationshipTypeBuilder transforms =
      DocumentRelationshipTypeBuilder._(
    valueString: 'transforms',
    valueEnum: DocumentRelationshipTypeBuilderEnum.transforms,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Transforms',
    ),
  );

  /// signs
  static DocumentRelationshipTypeBuilder signs =
      DocumentRelationshipTypeBuilder._(
    valueString: 'signs',
    valueEnum: DocumentRelationshipTypeBuilderEnum.signs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Signs',
    ),
  );

  /// appends
  static DocumentRelationshipTypeBuilder appends =
      DocumentRelationshipTypeBuilder._(
    valueString: 'appends',
    valueEnum: DocumentRelationshipTypeBuilderEnum.appends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appends',
    ),
  );

  /// For instances where an Element is present but not value
  static DocumentRelationshipTypeBuilder elementOnly =
      DocumentRelationshipTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DocumentRelationshipTypeBuilder> values = [
    replaces,
    transforms,
    signs,
    appends,
  ];

  /// Returns the enum value with an element attached
  DocumentRelationshipTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DocumentRelationshipTypeBuilder._(
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
