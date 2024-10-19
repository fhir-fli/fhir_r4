// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The degree of equivalence between concepts.
@collection
class ConceptMapEquivalence {
  /// Constructor for internal use (like enum)
  ConceptMapEquivalence({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConceptMapEquivalence values
  /// relatedto
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence relatedto = ConceptMapEquivalence(
    fhirCode: 'relatedto',
  );

  /// equivalent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence equivalent = ConceptMapEquivalence(
    fhirCode: 'equivalent',
  );

  /// equal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence equal = ConceptMapEquivalence(
    fhirCode: 'equal',
  );

  /// wider
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence wider = ConceptMapEquivalence(
    fhirCode: 'wider',
  );

  /// subsumes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence subsumes = ConceptMapEquivalence(
    fhirCode: 'subsumes',
  );

  /// narrower
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence narrower = ConceptMapEquivalence(
    fhirCode: 'narrower',
  );

  /// specializes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence specializes = ConceptMapEquivalence(
    fhirCode: 'specializes',
  );

  /// inexact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence inexact = ConceptMapEquivalence(
    fhirCode: 'inexact',
  );

  /// unmatched
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence unmatched = ConceptMapEquivalence(
    fhirCode: 'unmatched',
  );

  /// disjoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence disjoint = ConceptMapEquivalence(
    fhirCode: 'disjoint',
  );

  /// For instances where an Element is present but not value

  static final ConceptMapEquivalence elementOnly = ConceptMapEquivalence();

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
    return ConceptMapEquivalence(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConceptMapEquivalence] from JSON.
  static ConceptMapEquivalence fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapEquivalence.elementOnly.withElement(element);
    }
    return ConceptMapEquivalence.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConceptMapEquivalence.$fhirCode';
}
