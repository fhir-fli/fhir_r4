// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of relationship to the related artifact.
class RelatedArtifactTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RelatedArtifactTypeBuilder._({
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
  factory RelatedArtifactTypeBuilder(
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
    return RelatedArtifactTypeBuilder._(
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

  /// Create empty [RelatedArtifactTypeBuilder] with element only
  factory RelatedArtifactTypeBuilder.empty() =>
      RelatedArtifactTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [RelatedArtifactTypeBuilder] from JSON.
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
      validatedValue: value,
      element: element,
    );
  }

  /// documentation
  static RelatedArtifactTypeBuilder documentation =
      RelatedArtifactTypeBuilder._(
    validatedValue: 'documentation',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Documentation'.toFhirStringBuilder,
  );

  /// justification
  static RelatedArtifactTypeBuilder justification =
      RelatedArtifactTypeBuilder._(
    validatedValue: 'justification',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Justification'.toFhirStringBuilder,
  );

  /// citation
  static RelatedArtifactTypeBuilder citation = RelatedArtifactTypeBuilder._(
    validatedValue: 'citation',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Citation'.toFhirStringBuilder,
  );

  /// predecessor
  static RelatedArtifactTypeBuilder predecessor = RelatedArtifactTypeBuilder._(
    validatedValue: 'predecessor',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Predecessor'.toFhirStringBuilder,
  );

  /// successor
  static RelatedArtifactTypeBuilder successor = RelatedArtifactTypeBuilder._(
    validatedValue: 'successor',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Successor'.toFhirStringBuilder,
  );

  /// derived_from
  static RelatedArtifactTypeBuilder derived_from = RelatedArtifactTypeBuilder._(
    validatedValue: 'derived-from',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Derived From'.toFhirStringBuilder,
  );

  /// depends_on
  static RelatedArtifactTypeBuilder depends_on = RelatedArtifactTypeBuilder._(
    validatedValue: 'depends-on',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Depends On'.toFhirStringBuilder,
  );

  /// composed_of
  static RelatedArtifactTypeBuilder composed_of = RelatedArtifactTypeBuilder._(
    validatedValue: 'composed-of',
    system:
        'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Composed Of'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RelatedArtifactTypeBuilder elementOnly =
      RelatedArtifactTypeBuilder._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RelatedArtifactTypeBuilder withElement(ElementBuilder? newElement) {
    return RelatedArtifactTypeBuilder._(
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
  RelatedArtifactTypeBuilder copyWith({
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
    return RelatedArtifactTypeBuilder._(
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
