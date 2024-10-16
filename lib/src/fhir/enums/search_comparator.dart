import 'package:fhir_r4/fhir_r4.dart';

/// What Search Comparator Codes are supported in search.
enum SearchComparator {
  /// Display: Equals
  /// Definition: the value for the parameter in the resource is equal to the provided value.
  eq('eq'),

  /// Display: Not Equals
  /// Definition: the value for the parameter in the resource is not equal to the provided value.
  ne('ne'),

  /// Display: Greater Than
  /// Definition: the value for the parameter in the resource is greater than the provided value.
  gt('gt'),

  /// Display: Less Than
  /// Definition: the value for the parameter in the resource is less than the provided value.
  lt('lt'),

  /// Display: Greater or Equals
  /// Definition: the value for the parameter in the resource is greater or equal to the provided value.
  ge('ge'),

  /// Display: Less of Equal
  /// Definition: the value for the parameter in the resource is less or equal to the provided value.
  le('le'),

  /// Display: Starts After
  /// Definition: the value for the parameter in the resource starts after the provided value.
  sa('sa'),

  /// Display: Ends Before
  /// Definition: the value for the parameter in the resource ends before the provided value.
  eb('eb'),

  /// Display: Approximately
  /// Definition: the value for the parameter in the resource is approximately the same to the provided value.
  ap('ap'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SearchComparator(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SearchComparator fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparator.elementOnly.withElement(element);
    }
    return SearchComparator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SearchComparator withElement(Element? newElement) {
    return SearchComparator.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
