// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Why an entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey information or warning information about the search process.
class SearchEntryMode {
  // Private constructor for internal use (like enum)
  SearchEntryMode._(this.fhirCode, {this.element});

  /// Factory constructor to create [SearchEntryMode] from JSON.
  factory SearchEntryMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchEntryMode.elementOnly.withElement(element);
    }
    return SearchEntryMode._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SearchEntryMode values
  /// match
  static final SearchEntryMode match = SearchEntryMode._(
    'match',
  );

  /// include
  static final SearchEntryMode include = SearchEntryMode._(
    'include',
  );

  /// outcome
  static final SearchEntryMode outcome = SearchEntryMode._(
    'outcome',
  );

  /// For instances where an Element is present but not value

  static final SearchEntryMode elementOnly = SearchEntryMode._('');

  /// List of all enum-like values
  static final List<SearchEntryMode> values = [
    match,
    include,
    outcome,
  ];

  /// Returns the enum value with an element attached
  SearchEntryMode withElement(Element? newElement) {
    return SearchEntryMode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
