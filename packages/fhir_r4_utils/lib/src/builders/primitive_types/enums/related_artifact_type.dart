// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of relationship to the related artifact.
class RelatedArtifactTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RelatedArtifactTypeBuilder._({
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
    return RelatedArtifactTypeBuilder._(
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

  /// Create empty [RelatedArtifactTypeBuilder] with element only
  factory RelatedArtifactTypeBuilder.empty() =>
      RelatedArtifactTypeBuilder._(valueString: '');

  /// Factory constructor to create [RelatedArtifactTypeBuilder]
  /// from JSON.
  factory RelatedArtifactTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactTypeBuilder.elementOnly.withElement(element);
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

  /// documentation
  static RelatedArtifactTypeBuilder documentation =
      RelatedArtifactTypeBuilder._(
    valueString: 'documentation',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Documentation'.toFhirStringBuilder,
  );

  /// justification
  static RelatedArtifactTypeBuilder justification =
      RelatedArtifactTypeBuilder._(
    valueString: 'justification',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Justification'.toFhirStringBuilder,
  );

  /// citation
  static RelatedArtifactTypeBuilder citation = RelatedArtifactTypeBuilder._(
    valueString: 'citation',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Citation'.toFhirStringBuilder,
  );

  /// predecessor
  static RelatedArtifactTypeBuilder predecessor = RelatedArtifactTypeBuilder._(
    valueString: 'predecessor',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Predecessor'.toFhirStringBuilder,
  );

  /// successor
  static RelatedArtifactTypeBuilder successor = RelatedArtifactTypeBuilder._(
    valueString: 'successor',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Successor'.toFhirStringBuilder,
  );

  /// derived_from
  static RelatedArtifactTypeBuilder derived_from = RelatedArtifactTypeBuilder._(
    valueString: 'derived-from',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Derived From'.toFhirStringBuilder,
  );

  /// depends_on
  static RelatedArtifactTypeBuilder depends_on = RelatedArtifactTypeBuilder._(
    valueString: 'depends-on',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Depends On'.toFhirStringBuilder,
  );

  /// composed_of
  static RelatedArtifactTypeBuilder composed_of = RelatedArtifactTypeBuilder._(
    valueString: 'composed-of',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Composed Of'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RelatedArtifactTypeBuilder elementOnly =
      RelatedArtifactTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<RelatedArtifactTypeBuilder> values = [
    documentation,
    justification,
    citation,
    predecessor,
    successor,
    derived_from,
    depends_on,
    composed_of,
  ];

  /// Clones the current instance
  @override
  RelatedArtifactTypeBuilder clone() => RelatedArtifactTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RelatedArtifactTypeBuilder withElement(ElementBuilder? newElement) {
    return RelatedArtifactTypeBuilder._(
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
  RelatedArtifactTypeBuilder copyWith({
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
      throw ArgumentError('Invalid input for RelatedArtifactType: $newValue');
    }
    return RelatedArtifactTypeBuilder._(
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
