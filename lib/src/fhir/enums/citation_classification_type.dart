import 'package:fhir_r4/fhir_r4.dart';

/// Citation classification type
enum CitationClassificationType {
  /// Display: Citation Source
  /// Definition: Citation repository where this citation was created or copied from
  citation_source('citation-source'),

  /// Display: MEDLINE Citation Owner
  /// Definition: The party responsible for creating and validating the MEDLINE citation
  medline_owner('medline-owner'),

  /// Display: FEvIR Platform Use
  /// Definition: Used for Citation sharing on the Fast Evidence Interoperability Resources (FEvIR) Platform
  fevir_platform_use('fevir-platform-use'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CitationClassificationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CitationClassificationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationClassificationType.elementOnly.withElement(element);
    }
    return CitationClassificationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CitationClassificationType withElement(Element? newElement) {
    return CitationClassificationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
