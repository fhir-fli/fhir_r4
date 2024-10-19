// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A supported modifier for a search parameter.
@collection
class SearchModifierCode {
  /// Constructor for internal use (like enum)
  SearchModifierCode({this.fhirCode, this.element})
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

  /// SearchModifierCode values
  /// missing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode missing = SearchModifierCode(
    fhirCode: 'missing',
  );

  /// exact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode exact = SearchModifierCode(
    fhirCode: 'exact',
  );

  /// contains
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode contains = SearchModifierCode(
    fhirCode: 'contains',
  );

  /// not
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode not = SearchModifierCode(
    fhirCode: 'not',
  );

  /// text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode text = SearchModifierCode(
    fhirCode: 'text',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode in_ = SearchModifierCode(
    fhirCode: 'in',
  );

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode not_in = SearchModifierCode(
    fhirCode: 'not-in',
  );

  /// below
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode below = SearchModifierCode(
    fhirCode: 'below',
  );

  /// above
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode above = SearchModifierCode(
    fhirCode: 'above',
  );

  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode type = SearchModifierCode(
    fhirCode: 'type',
  );

  /// identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode identifier = SearchModifierCode(
    fhirCode: 'identifier',
  );

  /// ofType
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchModifierCode ofType = SearchModifierCode(
    fhirCode: 'ofType',
  );

  /// For instances where an Element is present but not value

  static final SearchModifierCode elementOnly = SearchModifierCode();

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
    return SearchModifierCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
