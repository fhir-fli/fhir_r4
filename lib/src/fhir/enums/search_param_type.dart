// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Data types allowed to be used for search parameters.
class SearchParamType {
  // Private constructor for internal use (like enum)
  SearchParamType._(this.fhirCode, {this.element});

  /// Factory constructor to create [SearchParamType] from JSON.
  factory SearchParamType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamType.elementOnly.withElement(element);
    }
    return SearchParamType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SearchParamType values
  /// number
  static final SearchParamType number = SearchParamType._(
    'number',
  );

  /// date
  static final SearchParamType date = SearchParamType._(
    'date',
  );

  /// string
  static final SearchParamType string = SearchParamType._(
    'string',
  );

  /// token
  static final SearchParamType token = SearchParamType._(
    'token',
  );

  /// reference
  static final SearchParamType reference = SearchParamType._(
    'reference',
  );

  /// composite
  static final SearchParamType composite = SearchParamType._(
    'composite',
  );

  /// quantity
  static final SearchParamType quantity = SearchParamType._(
    'quantity',
  );

  /// uri
  static final SearchParamType uri = SearchParamType._(
    'uri',
  );

  /// special
  static final SearchParamType special = SearchParamType._(
    'special',
  );

  /// For instances where an Element is present but not value

  static final SearchParamType elementOnly = SearchParamType._('');

  /// List of all enum-like values
  static final List<SearchParamType> values = [
    number,
    date,
    string,
    token,
    reference,
    composite,
    quantity,
    uri,
    special,
  ];

  /// Returns the enum value with an element attached
  SearchParamType withElement(Element? newElement) {
    return SearchParamType._(fhirCode, element: newElement);
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
