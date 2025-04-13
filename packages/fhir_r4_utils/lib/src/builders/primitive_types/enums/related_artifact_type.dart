// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RelatedArtifactType
enum RelatedArtifactTypeBuilderEnum {
  /// documentation
  documentation,

  /// justification
  justification,

  /// citation
  citation,

  /// predecessor
  predecessor,

  /// successor
  successor,

  /// derived-from
  derivedFrom,

  /// depends-on
  dependsOn,

  /// composed-of
  composedOf,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RelatedArtifactTypeBuilderEnum.documentation:
        return 'documentation';
      case RelatedArtifactTypeBuilderEnum.justification:
        return 'justification';
      case RelatedArtifactTypeBuilderEnum.citation:
        return 'citation';
      case RelatedArtifactTypeBuilderEnum.predecessor:
        return 'predecessor';
      case RelatedArtifactTypeBuilderEnum.successor:
        return 'successor';
      case RelatedArtifactTypeBuilderEnum.derivedFrom:
        return 'derived-from';
      case RelatedArtifactTypeBuilderEnum.dependsOn:
        return 'depends-on';
      case RelatedArtifactTypeBuilderEnum.composedOf:
        return 'composed-of';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RelatedArtifactTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RelatedArtifactTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RelatedArtifactTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'documentation':
        return RelatedArtifactTypeBuilderEnum.documentation;
      case 'justification':
        return RelatedArtifactTypeBuilderEnum.justification;
      case 'citation':
        return RelatedArtifactTypeBuilderEnum.citation;
      case 'predecessor':
        return RelatedArtifactTypeBuilderEnum.predecessor;
      case 'successor':
        return RelatedArtifactTypeBuilderEnum.successor;
      case 'derived-from':
        return RelatedArtifactTypeBuilderEnum.derivedFrom;
      case 'depends-on':
        return RelatedArtifactTypeBuilderEnum.dependsOn;
      case 'composed-of':
        return RelatedArtifactTypeBuilderEnum.composedOf;
    }
    return null;
  }
}

/// The type of relationship to the related artifact.
class RelatedArtifactTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RelatedArtifactTypeBuilder._({
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
  factory RelatedArtifactTypeBuilder(
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
    final valueEnum = RelatedArtifactTypeBuilderEnum.fromString(
      valueString,
    );
    return RelatedArtifactTypeBuilder._(
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

  /// Create empty [RelatedArtifactTypeBuilder]
  /// with element only
  factory RelatedArtifactTypeBuilder.empty() =>
      RelatedArtifactTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RelatedArtifactTypeBuilder] from JSON.
  factory RelatedArtifactTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RelatedArtifactTypeBuilder cannot be constructed from JSON.',
      );
    }
    return RelatedArtifactTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RelatedArtifactTypeBuilder
  final RelatedArtifactTypeBuilderEnum? valueEnum;

  /// documentation
  static RelatedArtifactTypeBuilder documentation =
      RelatedArtifactTypeBuilder._(
    valueString: 'documentation',
    valueEnum: RelatedArtifactTypeBuilderEnum.documentation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Documentation',
    ),
  );

  /// justification
  static RelatedArtifactTypeBuilder justification =
      RelatedArtifactTypeBuilder._(
    valueString: 'justification',
    valueEnum: RelatedArtifactTypeBuilderEnum.justification,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Justification',
    ),
  );

  /// citation
  static RelatedArtifactTypeBuilder citation = RelatedArtifactTypeBuilder._(
    valueString: 'citation',
    valueEnum: RelatedArtifactTypeBuilderEnum.citation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Citation',
    ),
  );

  /// predecessor
  static RelatedArtifactTypeBuilder predecessor = RelatedArtifactTypeBuilder._(
    valueString: 'predecessor',
    valueEnum: RelatedArtifactTypeBuilderEnum.predecessor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Predecessor',
    ),
  );

  /// successor
  static RelatedArtifactTypeBuilder successor = RelatedArtifactTypeBuilder._(
    valueString: 'successor',
    valueEnum: RelatedArtifactTypeBuilderEnum.successor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Successor',
    ),
  );

  /// derived_from
  static RelatedArtifactTypeBuilder derivedFrom = RelatedArtifactTypeBuilder._(
    valueString: 'derived-from',
    valueEnum: RelatedArtifactTypeBuilderEnum.derivedFrom,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Derived From',
    ),
  );

  /// depends_on
  static RelatedArtifactTypeBuilder dependsOn = RelatedArtifactTypeBuilder._(
    valueString: 'depends-on',
    valueEnum: RelatedArtifactTypeBuilderEnum.dependsOn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Depends On',
    ),
  );

  /// composed_of
  static RelatedArtifactTypeBuilder composedOf = RelatedArtifactTypeBuilder._(
    valueString: 'composed-of',
    valueEnum: RelatedArtifactTypeBuilderEnum.composedOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Composed Of',
    ),
  );

  /// For instances where an Element is present but not value
  static RelatedArtifactTypeBuilder elementOnly = RelatedArtifactTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RelatedArtifactTypeBuilder> values = [
    documentation,
    justification,
    citation,
    predecessor,
    successor,
    derivedFrom,
    dependsOn,
    composedOf,
  ];

  /// Returns the enum value with an element attached
  RelatedArtifactTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RelatedArtifactTypeBuilder._(
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
