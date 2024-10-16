import 'package:fhir_r4/fhir_r4.dart';

/// The possible sort directions, ascending or descending.
enum SortDirection {
  /// Display: Ascending
  /// Definition: Sort by the value ascending, so that lower values appear first.
  ascending('ascending'),

  /// Display: Descending
  /// Definition: Sort by the value descending, so that lower values appear last.
  descending('descending'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SortDirection(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SortDirection fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SortDirection.elementOnly.withElement(element);
    }
    return SortDirection.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SortDirection withElement(Element? newElement) {
    return SortDirection.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
