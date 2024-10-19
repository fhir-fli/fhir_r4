// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// What Search Comparator Codes are supported in search.
class SearchComparator {
  // Private constructor for internal use (like enum)
  SearchComparator._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SearchComparator values
  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator eq = SearchComparator._(
    'eq',
  );

  /// ne
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator ne = SearchComparator._(
    'ne',
  );

  /// gt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator gt = SearchComparator._(
    'gt',
  );

  /// lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator lt = SearchComparator._(
    'lt',
  );

  /// ge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator ge = SearchComparator._(
    'ge',
  );

  /// le
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator le = SearchComparator._(
    'le',
  );

  /// sa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator sa = SearchComparator._(
    'sa',
  );

  /// eb
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator eb = SearchComparator._(
    'eb',
  );

  /// ap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchComparator ap = SearchComparator._(
    'ap',
  );

  /// For instances where an Element is present but not value

  static final SearchComparator elementOnly = SearchComparator._('');

  /// List of all enum-like values
  static final List<SearchComparator> values = [
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
    sa,
    eb,
    ap,
  ];

  /// Returns the enum value with an element attached
  SearchComparator withElement(Element? newElement) {
    return SearchComparator._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SearchComparator] from JSON.
  static SearchComparator fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparator.elementOnly.withElement(element);
    }
    return SearchComparator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SearchComparator.$fhirCode';
}
