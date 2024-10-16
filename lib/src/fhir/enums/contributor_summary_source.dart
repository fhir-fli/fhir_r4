import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the producer or rule for creating the display string.
enum ContributorSummarySource {
  /// Display: Publisher provided
  /// Definition: Data copied by machine from publisher data.
  publisher_data('publisher-data'),

  /// Display: Copied from article
  /// Definition: Data copied by human from article text.
  article_copy('article-copy'),

  /// Display: Reported by citation manager
  /// Definition: Data copied by machine from citation manager data.
  citation_manager('citation-manager'),

  /// Display: custom format
  /// Definition: Custom format (may be described in text note).
  custom('custom'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContributorSummarySource(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContributorSummarySource fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummarySource.elementOnly.withElement(element);
    }
    return ContributorSummarySource.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContributorSummarySource withElement(Element? newElement) {
    return ContributorSummarySource.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
