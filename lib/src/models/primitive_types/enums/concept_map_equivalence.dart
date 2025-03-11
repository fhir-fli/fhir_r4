// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The degree of equivalence between concepts.
class ConceptMapEquivalence extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ConceptMapEquivalence._({
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
  factory ConceptMapEquivalence(
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
    return ConceptMapEquivalence._(
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

  /// Create empty [ConceptMapEquivalence] with element only
  factory ConceptMapEquivalence.empty() =>
      ConceptMapEquivalence._(validatedValue: '');

  /// Factory constructor to create [ConceptMapEquivalence] from JSON.
  factory ConceptMapEquivalence.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapEquivalence.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapEquivalence cannot be constructed from JSON.',
      );
    }
    return ConceptMapEquivalence._(validatedValue: value, element: element);
  }

  /// relatedto
  static final ConceptMapEquivalence relatedto = ConceptMapEquivalence._(
    validatedValue: 'relatedto',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Related To'.toFhirString,
  );

  /// equivalent
  static final ConceptMapEquivalence equivalent = ConceptMapEquivalence._(
    validatedValue: 'equivalent',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Equivalent'.toFhirString,
  );

  /// equal
  static final ConceptMapEquivalence equal = ConceptMapEquivalence._(
    validatedValue: 'equal',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Equal'.toFhirString,
  );

  /// wider
  static final ConceptMapEquivalence wider = ConceptMapEquivalence._(
    validatedValue: 'wider',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Wider'.toFhirString,
  );

  /// subsumes
  static final ConceptMapEquivalence subsumes = ConceptMapEquivalence._(
    validatedValue: 'subsumes',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Subsumes'.toFhirString,
  );

  /// narrower
  static final ConceptMapEquivalence narrower = ConceptMapEquivalence._(
    validatedValue: 'narrower',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Narrower'.toFhirString,
  );

  /// specializes
  static final ConceptMapEquivalence specializes = ConceptMapEquivalence._(
    validatedValue: 'specializes',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Specializes'.toFhirString,
  );

  /// inexact
  static final ConceptMapEquivalence inexact = ConceptMapEquivalence._(
    validatedValue: 'inexact',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inexact'.toFhirString,
  );

  /// unmatched
  static final ConceptMapEquivalence unmatched = ConceptMapEquivalence._(
    validatedValue: 'unmatched',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unmatched'.toFhirString,
  );

  /// disjoint
  static final ConceptMapEquivalence disjoint = ConceptMapEquivalence._(
    validatedValue: 'disjoint',
    system: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Disjoint'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ConceptMapEquivalence elementOnly =
      ConceptMapEquivalence._(validatedValue: '');

  /// List of all enum-like values
  static final List<ConceptMapEquivalence> values = [
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
  ConceptMapEquivalence clone() => ConceptMapEquivalence._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConceptMapEquivalence withElement(Element? newElement) {
    return ConceptMapEquivalence._(validatedValue: value, element: newElement);
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
  ConceptMapEquivalence copyWith({
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
    return ConceptMapEquivalence._(
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
