// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A supported modifier for a search parameter.
class SearchModifierCode {
  // Private constructor for internal use (like enum)
  SearchModifierCode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SearchModifierCode values
  /// missing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode missing = SearchModifierCode._(
    'missing',
  );

  /// exact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode exact = SearchModifierCode._(
    'exact',
  );

  /// contains
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode contains = SearchModifierCode._(
    'contains',
  );

  /// not
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode not = SearchModifierCode._(
    'not',
  );

  /// text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode text = SearchModifierCode._(
    'text',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode in_ = SearchModifierCode._(
    'in',
  );

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode not_in = SearchModifierCode._(
    'not-in',
  );

  /// below
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode below = SearchModifierCode._(
    'below',
  );

  /// above
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode above = SearchModifierCode._(
    'above',
  );

  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode type = SearchModifierCode._(
    'type',
  );

  /// identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode identifier = SearchModifierCode._(
    'identifier',
  );

  /// ofType
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode ofType = SearchModifierCode._(
    'ofType',
  );

  /// For instances where an Element is present but not value

  static final SearchModifierCode elementOnly = SearchModifierCode._('');

  /// List of all enum-like values
  static final List<SearchModifierCode> values = [
    missing,
    exact,
    contains,
    not,
    text,
    in_,
    not_in,
    below,
    above,
    type,
    identifier,
    ofType,
  ];

  /// Returns the enum value with an element attached
  SearchModifierCode withElement(Element? newElement) {
    return SearchModifierCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SearchModifierCode] from JSON.
  static SearchModifierCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchModifierCode.elementOnly.withElement(element);
    }
    return SearchModifierCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SearchModifierCode.$fhirCode';
}
