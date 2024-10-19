// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The degree of equivalence between concepts.
class ConceptMapEquivalence {
  // Private constructor for internal use (like enum)
  ConceptMapEquivalence._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConceptMapEquivalence values
  /// relatedto
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence relatedto = ConceptMapEquivalence._(
    'relatedto',
  );

  /// equivalent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence equivalent = ConceptMapEquivalence._(
    'equivalent',
  );

  /// equal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence equal = ConceptMapEquivalence._(
    'equal',
  );

  /// wider
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence wider = ConceptMapEquivalence._(
    'wider',
  );

  /// subsumes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence subsumes = ConceptMapEquivalence._(
    'subsumes',
  );

  /// narrower
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence narrower = ConceptMapEquivalence._(
    'narrower',
  );

  /// specializes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence specializes = ConceptMapEquivalence._(
    'specializes',
  );

  /// inexact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence inexact = ConceptMapEquivalence._(
    'inexact',
  );

  /// unmatched
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence unmatched = ConceptMapEquivalence._(
    'unmatched',
  );

  /// disjoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConceptMapEquivalence disjoint = ConceptMapEquivalence._(
    'disjoint',
  );

  /// For instances where an Element is present but not value

  static final ConceptMapEquivalence elementOnly = ConceptMapEquivalence._('');

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
    return ConceptMapEquivalence._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
