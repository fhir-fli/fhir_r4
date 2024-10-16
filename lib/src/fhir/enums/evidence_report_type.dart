import 'package:fhir_r4/fhir_r4.dart';

/// The kind of report, such as grouping of classifiers, search results, or human-compiled expression.
enum EvidenceReportType {
  /// Display: Classification
  /// Definition: The report is primarily a listing of classifiers about the report subject.
  classification('classification'),

  /// Display: Search Results
  /// Definition: The report is a composition of results generated in response to a search query.
  search_results('search-results'),

  /// Display: Resource Compilation
  /// Definition: The report is a composition containing one or more FHIR resources in the content.
  resources_compiled('resources-compiled'),

  /// Display: Structured Text
  /// Definition: The report is a structured representation of text.
  text_structured('text-structured'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EvidenceReportType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EvidenceReportType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceReportType.elementOnly.withElement(element);
    }
    return EvidenceReportType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EvidenceReportType withElement(Element? newElement) {
    return EvidenceReportType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
