import 'package:fhir_r4/fhir_r4.dart';

/// Data types allowed to be used for search parameters.
enum SearchParamType {
  /// Display: Number
  /// Definition: Search parameter SHALL be a number (a whole number, or a decimal).
  number('number'),

  /// Display: Date/DateTime
  /// Definition: Search parameter is on a date/time. The date format is the standard XML format, though other formats may be supported.
  date('date'),

  /// Display: String
  /// Definition: Search parameter is a simple string, like a name part. Search is case-insensitive and accent-insensitive. May match just the start of a string. String parameters may contain spaces.
  string('string'),

  /// Display: Token
  /// Definition: Search parameter on a coded element or identifier. May be used to search through the text, display, code and code/codesystem (for codes) and label, system and key (for identifier). Its value is either a string or a pair of namespace and value, separated by a "|", depending on the modifier used.
  token('token'),

  /// Display: Reference
  /// Definition: A reference to another resource (Reference or canonical).
  reference('reference'),

  /// Display: Composite
  /// Definition: A composite search parameter that combines a search on two values together.
  composite('composite'),

  /// Display: Quantity
  /// Definition: A search parameter that searches on a quantity.
  quantity('quantity'),

  /// Display: URI
  /// Definition: A search parameter that searches on a URI (RFC 3986).
  uri('uri'),

  /// Display: Special
  /// Definition: Special logic applies to this parameter per the description of the search parameter.
  special('special'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SearchParamType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SearchParamType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamType.elementOnly.withElement(element);
    }
    return SearchParamType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SearchParamType withElement(Element? newElement) {
    return SearchParamType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
