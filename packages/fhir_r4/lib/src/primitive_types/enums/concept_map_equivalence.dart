// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConceptMapEquivalence
enum ConceptMapEquivalenceEnum {
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
      case ConceptMapEquivalenceEnum.relatedto:
        return 'relatedto';
      case ConceptMapEquivalenceEnum.equivalent:
        return 'equivalent';
      case ConceptMapEquivalenceEnum.equal:
        return 'equal';
      case ConceptMapEquivalenceEnum.wider:
        return 'wider';
      case ConceptMapEquivalenceEnum.subsumes:
        return 'subsumes';
      case ConceptMapEquivalenceEnum.narrower:
        return 'narrower';
      case ConceptMapEquivalenceEnum.specializes:
        return 'specializes';
      case ConceptMapEquivalenceEnum.inexact:
        return 'inexact';
      case ConceptMapEquivalenceEnum.unmatched:
        return 'unmatched';
      case ConceptMapEquivalenceEnum.disjoint:
        return 'disjoint';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapEquivalenceEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapEquivalenceEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapEquivalenceEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'relatedto':
        return ConceptMapEquivalenceEnum.relatedto;
      case 'equivalent':
        return ConceptMapEquivalenceEnum.equivalent;
      case 'equal':
        return ConceptMapEquivalenceEnum.equal;
      case 'wider':
        return ConceptMapEquivalenceEnum.wider;
      case 'subsumes':
        return ConceptMapEquivalenceEnum.subsumes;
      case 'narrower':
        return ConceptMapEquivalenceEnum.narrower;
      case 'specializes':
        return ConceptMapEquivalenceEnum.specializes;
      case 'inexact':
        return ConceptMapEquivalenceEnum.inexact;
      case 'unmatched':
        return ConceptMapEquivalenceEnum.unmatched;
      case 'disjoint':
        return ConceptMapEquivalenceEnum.disjoint;
    }
    return null;
  }
}

/// The degree of equivalence between concepts.
class ConceptMapEquivalence extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConceptMapEquivalence._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ConceptMapEquivalence(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = ConceptMapEquivalenceEnum.fromString(valueString);
    return ConceptMapEquivalence._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [ConceptMapEquivalence]
  /// from JSON.
  factory ConceptMapEquivalence.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConceptMapEquivalenceEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapEquivalence._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapEquivalence cannot be constructed from JSON.',
      );
    }
    return ConceptMapEquivalence._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConceptMapEquivalence
  final ConceptMapEquivalenceEnum? valueEnum;

  /// relatedto
  static const ConceptMapEquivalence relatedto = ConceptMapEquivalence._(
    valueString: 'relatedto',
    valueEnum: ConceptMapEquivalenceEnum.relatedto,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Related To',
    ),
  );

  /// equivalent
  static const ConceptMapEquivalence equivalent = ConceptMapEquivalence._(
    valueString: 'equivalent',
    valueEnum: ConceptMapEquivalenceEnum.equivalent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Equivalent',
    ),
  );

  /// equal
  static const ConceptMapEquivalence equal = ConceptMapEquivalence._(
    valueString: 'equal',
    valueEnum: ConceptMapEquivalenceEnum.equal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Equal',
    ),
  );

  /// wider
  static const ConceptMapEquivalence wider = ConceptMapEquivalence._(
    valueString: 'wider',
    valueEnum: ConceptMapEquivalenceEnum.wider,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Wider',
    ),
  );

  /// subsumes
  static const ConceptMapEquivalence subsumes = ConceptMapEquivalence._(
    valueString: 'subsumes',
    valueEnum: ConceptMapEquivalenceEnum.subsumes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Subsumes',
    ),
  );

  /// narrower
  static const ConceptMapEquivalence narrower = ConceptMapEquivalence._(
    valueString: 'narrower',
    valueEnum: ConceptMapEquivalenceEnum.narrower,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Narrower',
    ),
  );

  /// specializes
  static const ConceptMapEquivalence specializes = ConceptMapEquivalence._(
    valueString: 'specializes',
    valueEnum: ConceptMapEquivalenceEnum.specializes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Specializes',
    ),
  );

  /// inexact
  static const ConceptMapEquivalence inexact = ConceptMapEquivalence._(
    valueString: 'inexact',
    valueEnum: ConceptMapEquivalenceEnum.inexact,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Inexact',
    ),
  );

  /// unmatched
  static const ConceptMapEquivalence unmatched = ConceptMapEquivalence._(
    valueString: 'unmatched',
    valueEnum: ConceptMapEquivalenceEnum.unmatched,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unmatched',
    ),
  );

  /// disjoint
  static const ConceptMapEquivalence disjoint = ConceptMapEquivalence._(
    valueString: 'disjoint',
    valueEnum: ConceptMapEquivalenceEnum.disjoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-map-equivalence',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Disjoint',
    ),
  );

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

  /// Returns the enum value with an element attached
  ConceptMapEquivalence withElement(Element? newElement) {
    return ConceptMapEquivalence._(
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

  @override
  ConceptMapEquivalence clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConceptMapEquivalenceCopyWithImpl<ConceptMapEquivalence> get copyWith =>
      ConceptMapEquivalenceCopyWithImpl<ConceptMapEquivalence>(
        this,
        (v) => v as ConceptMapEquivalence,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConceptMapEquivalenceCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConceptMapEquivalenceCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      ConceptMapEquivalence(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
