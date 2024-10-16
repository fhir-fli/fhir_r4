import 'package:fhir_r4/fhir_r4.dart';

/// Why an entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey information or warning information about the search process.
enum SearchEntryMode {
  /// Display: Match
  /// Definition: This resource matched the search specification.
  match('match'),

  /// Display: Include
  /// Definition: This resource is returned because it is referred to from another resource in the search set.
  include('include'),

  /// Display: Outcome
  /// Definition: An OperationOutcome that provides additional information about the processing of a search.
  outcome('outcome'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SearchEntryMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SearchEntryMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchEntryMode.elementOnly.withElement(element);
    }
    return SearchEntryMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SearchEntryMode withElement(Element? newElement) {
    return SearchEntryMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
