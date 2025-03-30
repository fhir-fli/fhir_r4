// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The degree of equivalence between concepts.
class ConceptMapEquivalenceBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConceptMapEquivalenceBuilder._({
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
  factory ConceptMapEquivalenceBuilder(
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
    return ConceptMapEquivalenceBuilder._(
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

  /// Create empty [ConceptMapEquivalenceBuilder] with element only
  factory ConceptMapEquivalenceBuilder.empty() =>
      ConceptMapEquivalenceBuilder._(validatedValue: '');

  /// Factory constructor to create [ConceptMapEquivalenceBuilder]
  /// from JSON.
  factory ConceptMapEquivalenceBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapEquivalenceBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapEquivalenceBuilder cannot be constructed from JSON.',
      );
    }
    return ConceptMapEquivalenceBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// relatedto
  static ConceptMapEquivalenceBuilder relatedto =
      ConceptMapEquivalenceBuilder._(
    validatedValue: 'relatedto',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Related To'.toFhirStringBuilder,
  );

  /// equivalent
  static ConceptMapEquivalenceBuilder equivalent =
      ConceptMapEquivalenceBuilder._(
    validatedValue: 'equivalent',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Equivalent'.toFhirStringBuilder,
  );

  /// equal
  static ConceptMapEquivalenceBuilder equal = ConceptMapEquivalenceBuilder._(
    validatedValue: 'equal',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Equal'.toFhirStringBuilder,
  );

  /// wider
  static ConceptMapEquivalenceBuilder wider = ConceptMapEquivalenceBuilder._(
    validatedValue: 'wider',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Wider'.toFhirStringBuilder,
  );

  /// subsumes
  static ConceptMapEquivalenceBuilder subsumes = ConceptMapEquivalenceBuilder._(
    validatedValue: 'subsumes',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Subsumes'.toFhirStringBuilder,
  );

  /// narrower
  static ConceptMapEquivalenceBuilder narrower = ConceptMapEquivalenceBuilder._(
    validatedValue: 'narrower',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Narrower'.toFhirStringBuilder,
  );

  /// specializes
  static ConceptMapEquivalenceBuilder specializes =
      ConceptMapEquivalenceBuilder._(
    validatedValue: 'specializes',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Specializes'.toFhirStringBuilder,
  );

  /// inexact
  static ConceptMapEquivalenceBuilder inexact = ConceptMapEquivalenceBuilder._(
    validatedValue: 'inexact',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Inexact'.toFhirStringBuilder,
  );

  /// unmatched
  static ConceptMapEquivalenceBuilder unmatched =
      ConceptMapEquivalenceBuilder._(
    validatedValue: 'unmatched',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unmatched'.toFhirStringBuilder,
  );

  /// disjoint
  static ConceptMapEquivalenceBuilder disjoint = ConceptMapEquivalenceBuilder._(
    validatedValue: 'disjoint',
    system:
        'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Disjoint'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ConceptMapEquivalenceBuilder elementOnly =
      ConceptMapEquivalenceBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ConceptMapEquivalenceBuilder> values = [
    relatedto,
    equivalent,
    equal,
    wider,
    subsumes,
    narrower,
    specializes,
    inexact,
    unmatched,
    disjoint,
  ];

  /// Clones the current instance
  @override
  ConceptMapEquivalenceBuilder clone() => ConceptMapEquivalenceBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ConceptMapEquivalenceBuilder withElement(ElementBuilder? newElement) {
    return ConceptMapEquivalenceBuilder._(
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
  ConceptMapEquivalenceBuilder copyWith({
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
    return ConceptMapEquivalenceBuilder._(
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
