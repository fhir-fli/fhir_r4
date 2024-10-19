// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The degree of equivalence between concepts.
@Entity()
class ConceptMapEquivalence extends FhirCode {
  /// Factory constructor to create [ConceptMapEquivalence] from JSON.
  factory ConceptMapEquivalence.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapEquivalence.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConceptMapEquivalence._(value, element);
    }
    throw ArgumentError(
      'ConceptMapEquivalence.fromJson: JSON value is not a valid value',
    );
  }

  /// relatedto
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.relatedto([this.element])
      : dbValue = 'relatedto',
        super('relatedto', element);

  /// equivalent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.equivalent([this.element])
      : dbValue = 'equivalent',
        super('equivalent', element);

  /// equal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.equal([this.element])
      : dbValue = 'equal',
        super('equal', element);

  /// wider
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.wider([this.element])
      : dbValue = 'wider',
        super('wider', element);

  /// subsumes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.subsumes([this.element])
      : dbValue = 'subsumes',
        super('subsumes', element);

  /// narrower
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.narrower([this.element])
      : dbValue = 'narrower',
        super('narrower', element);

  /// specializes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.specializes([this.element])
      : dbValue = 'specializes',
        super('specializes', element);

  /// inexact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.inexact([this.element])
      : dbValue = 'inexact',
        super('inexact', element);

  /// unmatched
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.unmatched([this.element])
      : dbValue = 'unmatched',
        super('unmatched', element);

  /// disjoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConceptMapEquivalence.disjoint([this.element])
      : dbValue = 'disjoint',
        super('disjoint', element);

  /// For instances where an Element is present but not value

  ConceptMapEquivalence.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConceptMapEquivalence._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'relatedto',
    'equivalent',
    'equal',
    'wider',
    'subsumes',
    'narrower',
    'specializes',
    'inexact',
    'unmatched',
    'disjoint',
  ];

  /// Returns the enum value with an element attached
  ConceptMapEquivalence withElement(Element? newElement) {
    return ConceptMapEquivalence._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConceptMapEquivalence.$value';
}
