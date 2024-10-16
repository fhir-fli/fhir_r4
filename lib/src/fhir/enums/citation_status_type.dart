import 'package:fhir_r4/fhir_r4.dart';

/// Citation status type
enum CitationStatusType {
  /// Display: PubMed Pubstatus of Received
  /// Definition: PubMed Pubstatus of Received
  pubmed_pubstatus_received('pubmed-pubstatus-received'),

  /// Display: PubMed Pubstatus of Accepted
  /// Definition: PubMed Pubstatus of Accepted
  pubmed_pubstatus_accepted('pubmed-pubstatus-accepted'),

  /// Display: PubMed Pubstatus of Epublish
  /// Definition: PubMed Pubstatus of Epublish
  pubmed_pubstatus_epublish('pubmed-pubstatus-epublish'),

  /// Display: PubMed Pubstatus of Ppublish
  /// Definition: PubMed Pubstatus of Ppublish
  pubmed_pubstatus_ppublish('pubmed-pubstatus-ppublish'),

  /// Display: PubMed Pubstatus of Revised
  /// Definition: PubMed Pubstatus of Revised
  pubmed_pubstatus_revised('pubmed-pubstatus-revised'),

  /// Display: PubMed Pubstatus of aheadofprint
  /// Definition: PubMed Pubstatus of aheadofprint
  pubmed_pubstatus_aheadofprint('pubmed-pubstatus-aheadofprint'),

  /// Display: PubMed Pubstatus of Retracted
  /// Definition: PubMed Pubstatus of Retracted
  pubmed_pubstatus_retracted('pubmed-pubstatus-retracted'),

  /// Display: PubMed Pubstatus of Ecollection
  /// Definition: PubMed Pubstatus of Ecollection
  pubmed_pubstatus_ecollection('pubmed-pubstatus-ecollection'),

  /// Display: PubMed Pubstatus of PMC
  /// Definition: PubMed Pubstatus of PMC
  pubmed_pubstatus_pmc('pubmed-pubstatus-pmc'),

  /// Display: PubMed Pubstatus of PMCr
  /// Definition: PubMed Pubstatus of PMCr
  pubmed_pubstatus_pmcr('pubmed-pubstatus-pmcr'),

  /// Display: PubMed Pubstatus of PubMed
  /// Definition: PubMed Pubstatus of PubMed
  pubmed_pubstatus_pubmed('pubmed-pubstatus-pubmed'),

  /// Display: PubMed Pubstatus of PubMedr
  /// Definition: PubMed Pubstatus of PubMedr
  pubmed_pubstatus_pubmedr('pubmed-pubstatus-pubmedr'),

  /// Display: PubMed Pubstatus of Premedline
  /// Definition: PubMed Pubstatus of Premedline
  pubmed_pubstatus_premedline('pubmed-pubstatus-premedline'),

  /// Display: PubMed Pubstatus of Medline
  /// Definition: PubMed Pubstatus of Medline
  pubmed_pubstatus_medline('pubmed-pubstatus-medline'),

  /// Display: PubMed Pubstatus of Medliner
  /// Definition: PubMed Pubstatus of Medliner
  pubmed_pubstatus_medliner('pubmed-pubstatus-medliner'),

  /// Display: PubMed Pubstatus of Entrez
  /// Definition: PubMed Pubstatus of Entrez
  pubmed_pubstatus_entrez('pubmed-pubstatus-entrez'),

  /// Display: PubMed Pubstatus of PMC release
  /// Definition: PubMed Pubstatus of PMC release
  pubmed_pubstatus_pmc_release('pubmed-pubstatus-pmc-release'),

  /// Display: Medline Citation Status of Completed
  /// Definition: Medline Citation Status of Completed
  medline_completed('medline-completed'),

  /// Display: Medline Citation Status of In-Process
  /// Definition: Medline Citation Status of In-Process
  medline_in_process('medline-in-process'),

  /// Display: Medline Citation Status of PubMed-not-MEDLINE
  /// Definition: Medline Citation Status of PubMed-not-MEDLINE
  medline_pubmed_not_medline('medline-pubmed-not-medline'),

  /// Display: Medline Citation Status of In-Data-Review
  /// Definition: Medline Citation Status of In-Data-Review
  medline_in_data_review('medline-in-data-review'),

  /// Display: Medline Citation Status of Publisher
  /// Definition: Medline Citation Status of Publisher
  medline_publisher('medline-publisher'),

  /// Display: Medline Citation Status of MEDLINE
  /// Definition: Medline Citation Status of MEDLINE
  medline_medline('medline-medline'),

  /// Display: Medline Citation Status of OLDMEDLINE
  /// Definition: Medline Citation Status of OLDMEDLINE
  medline_oldmedline('medline-oldmedline'),

  /// Display: PubMed PublicationStatus of ppublish
  /// Definition: published in print
  pubmed_publication_status_ppublish('pubmed-publication-status-ppublish'),

  /// Display: PubMed PublicationStatus of epublish
  /// Definition: electronically published only, never published in print
  pubmed_publication_status_epublish('pubmed-publication-status-epublish'),

  /// Display: PubMed PublicationStatus of aheadofprint
  /// Definition: electronically published, but followed by print
  pubmed_publication_status_aheadofprint(
      'pubmed-publication-status-aheadofprint'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CitationStatusType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CitationStatusType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationStatusType.elementOnly.withElement(element);
    }
    return CitationStatusType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CitationStatusType withElement(Element? newElement) {
    return CitationStatusType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
