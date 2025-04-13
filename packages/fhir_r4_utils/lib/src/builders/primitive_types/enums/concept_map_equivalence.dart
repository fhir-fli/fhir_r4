// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConceptMapEquivalence
enum ConceptMapEquivalenceBuilderEnum {
  /// relatedto
  relatedto,

  /// equivalent
  equivalent,

  /// equal
  equal,

  /// wider
  wider,

  /// subsumes
  subsumes,

  /// narrower
  narrower,

  /// specializes
  specializes,

  /// inexact
  inexact,

  /// unmatched
  unmatched,

  /// disjoint
  disjoint,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConceptMapEquivalenceBuilderEnum.relatedto:
        return 'relatedto';
      case ConceptMapEquivalenceBuilderEnum.equivalent:
        return 'equivalent';
      case ConceptMapEquivalenceBuilderEnum.equal:
        return 'equal';
      case ConceptMapEquivalenceBuilderEnum.wider:
        return 'wider';
      case ConceptMapEquivalenceBuilderEnum.subsumes:
        return 'subsumes';
      case ConceptMapEquivalenceBuilderEnum.narrower:
        return 'narrower';
      case ConceptMapEquivalenceBuilderEnum.specializes:
        return 'specializes';
      case ConceptMapEquivalenceBuilderEnum.inexact:
        return 'inexact';
      case ConceptMapEquivalenceBuilderEnum.unmatched:
        return 'unmatched';
      case ConceptMapEquivalenceBuilderEnum.disjoint:
        return 'disjoint';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapEquivalenceBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapEquivalenceBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapEquivalenceBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'relatedto':
        return ConceptMapEquivalenceBuilderEnum.relatedto;
      case 'equivalent':
        return ConceptMapEquivalenceBuilderEnum.equivalent;
      case 'equal':
        return ConceptMapEquivalenceBuilderEnum.equal;
      case 'wider':
        return ConceptMapEquivalenceBuilderEnum.wider;
      case 'subsumes':
        return ConceptMapEquivalenceBuilderEnum.subsumes;
      case 'narrower':
        return ConceptMapEquivalenceBuilderEnum.narrower;
      case 'specializes':
        return ConceptMapEquivalenceBuilderEnum.specializes;
      case 'inexact':
        return ConceptMapEquivalenceBuilderEnum.inexact;
      case 'unmatched':
        return ConceptMapEquivalenceBuilderEnum.unmatched;
      case 'disjoint':
        return ConceptMapEquivalenceBuilderEnum.disjoint;
    }
    return null;
  }
}

/// The degree of equivalence between concepts.
class ConceptMapEquivalenceBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConceptMapEquivalenceBuilder._({
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
  factory ConceptMapEquivalenceBuilder(
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
    final valueEnum = ConceptMapEquivalenceBuilderEnum.fromString(
      valueString,
    );
    return ConceptMapEquivalenceBuilder._(
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

  /// Create empty [ConceptMapEquivalenceBuilder]
  /// with element only
  factory ConceptMapEquivalenceBuilder.empty() =>
      ConceptMapEquivalenceBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConceptMapEquivalenceBuilder] from JSON.
  factory ConceptMapEquivalenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapEquivalenceBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapEquivalenceBuilder cannot be constructed from JSON.',
      );
    }
    return ConceptMapEquivalenceBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConceptMapEquivalenceBuilder
  final ConceptMapEquivalenceBuilderEnum? valueEnum;

  /// relatedto
  static ConceptMapEquivalenceBuilder relatedto =
      ConceptMapEquivalenceBuilder._(
    valueString: 'relatedto',
    valueEnum: ConceptMapEquivalenceBuilderEnum.relatedto,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Related To',
    ),
  );

  /// equivalent
  static ConceptMapEquivalenceBuilder equivalent =
      ConceptMapEquivalenceBuilder._(
    valueString: 'equivalent',
    valueEnum: ConceptMapEquivalenceBuilderEnum.equivalent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Equivalent',
    ),
  );

  /// equal
  static ConceptMapEquivalenceBuilder equal = ConceptMapEquivalenceBuilder._(
    valueString: 'equal',
    valueEnum: ConceptMapEquivalenceBuilderEnum.equal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Equal',
    ),
  );

  /// wider
  static ConceptMapEquivalenceBuilder wider = ConceptMapEquivalenceBuilder._(
    valueString: 'wider',
    valueEnum: ConceptMapEquivalenceBuilderEnum.wider,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Wider',
    ),
  );

  /// subsumes
  static ConceptMapEquivalenceBuilder subsumes = ConceptMapEquivalenceBuilder._(
    valueString: 'subsumes',
    valueEnum: ConceptMapEquivalenceBuilderEnum.subsumes,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Subsumes',
    ),
  );

  /// narrower
  static ConceptMapEquivalenceBuilder narrower = ConceptMapEquivalenceBuilder._(
    valueString: 'narrower',
    valueEnum: ConceptMapEquivalenceBuilderEnum.narrower,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Narrower',
    ),
  );

  /// specializes
  static ConceptMapEquivalenceBuilder specializes =
      ConceptMapEquivalenceBuilder._(
    valueString: 'specializes',
    valueEnum: ConceptMapEquivalenceBuilderEnum.specializes,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Specializes',
    ),
  );

  /// inexact
  static ConceptMapEquivalenceBuilder inexact = ConceptMapEquivalenceBuilder._(
    valueString: 'inexact',
    valueEnum: ConceptMapEquivalenceBuilderEnum.inexact,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inexact',
    ),
  );

  /// unmatched
  static ConceptMapEquivalenceBuilder unmatched =
      ConceptMapEquivalenceBuilder._(
    valueString: 'unmatched',
    valueEnum: ConceptMapEquivalenceBuilderEnum.unmatched,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unmatched',
    ),
  );

  /// disjoint
  static ConceptMapEquivalenceBuilder disjoint = ConceptMapEquivalenceBuilder._(
    valueString: 'disjoint',
    valueEnum: ConceptMapEquivalenceBuilderEnum.disjoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Disjoint',
    ),
  );

  /// For instances where an Element is present but not value
  static ConceptMapEquivalenceBuilder elementOnly =
      ConceptMapEquivalenceBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

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

  /// Returns the enum value with an element attached
  ConceptMapEquivalenceBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConceptMapEquivalenceBuilder._(
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
