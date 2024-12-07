// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The degree of equivalence between concepts.
class ConceptMapEquivalence extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConceptMapEquivalence._(super.value, [super.element]);

  /// Factory constructor to create [ConceptMapEquivalence] from JSON.
  factory ConceptMapEquivalence.fromJson(
    Map<String, dynamic> json,
  ) {
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
    return ConceptMapEquivalence._(value, element);
  }

  /// relatedto
  static final ConceptMapEquivalence relatedto = ConceptMapEquivalence._(
    'relatedto',
  );

  /// equivalent
  static final ConceptMapEquivalence equivalent = ConceptMapEquivalence._(
    'equivalent',
  );

  /// equal
  static final ConceptMapEquivalence equal = ConceptMapEquivalence._(
    'equal',
  );

  /// wider
  static final ConceptMapEquivalence wider = ConceptMapEquivalence._(
    'wider',
  );

  /// subsumes
  static final ConceptMapEquivalence subsumes = ConceptMapEquivalence._(
    'subsumes',
  );

  /// narrower
  static final ConceptMapEquivalence narrower = ConceptMapEquivalence._(
    'narrower',
  );

  /// specializes
  static final ConceptMapEquivalence specializes = ConceptMapEquivalence._(
    'specializes',
  );

  /// inexact
  static final ConceptMapEquivalence inexact = ConceptMapEquivalence._(
    'inexact',
  );

  /// unmatched
  static final ConceptMapEquivalence unmatched = ConceptMapEquivalence._(
    'unmatched',
  );

  /// disjoint
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

  /// Clones the current instance
  @override
  ConceptMapEquivalence clone() => ConceptMapEquivalence._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConceptMapEquivalence withElement(Element? newElement) {
    return ConceptMapEquivalence._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ConceptMapEquivalence._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
