import 'package:json_annotation/json_annotation.dart';

/// Citation status type
enum CitationStatusType {
  /// Display: PubMed Pubstatus of Received
  /// Definition: PubMed Pubstatus of Received
  @JsonValue('pubmed-pubstatus-received')
  pubmed_pubstatus_received,
  /// Display: PubMed Pubstatus of Accepted
  /// Definition: PubMed Pubstatus of Accepted
  @JsonValue('pubmed-pubstatus-accepted')
  pubmed_pubstatus_accepted,
  /// Display: PubMed Pubstatus of Epublish
  /// Definition: PubMed Pubstatus of Epublish
  @JsonValue('pubmed-pubstatus-epublish')
  pubmed_pubstatus_epublish,
  /// Display: PubMed Pubstatus of Ppublish
  /// Definition: PubMed Pubstatus of Ppublish
  @JsonValue('pubmed-pubstatus-ppublish')
  pubmed_pubstatus_ppublish,
  /// Display: PubMed Pubstatus of Revised
  /// Definition: PubMed Pubstatus of Revised
  @JsonValue('pubmed-pubstatus-revised')
  pubmed_pubstatus_revised,
  /// Display: PubMed Pubstatus of aheadofprint
  /// Definition: PubMed Pubstatus of aheadofprint
  @JsonValue('pubmed-pubstatus-aheadofprint')
  pubmed_pubstatus_aheadofprint,
  /// Display: PubMed Pubstatus of Retracted
  /// Definition: PubMed Pubstatus of Retracted
  @JsonValue('pubmed-pubstatus-retracted')
  pubmed_pubstatus_retracted,
  /// Display: PubMed Pubstatus of Ecollection
  /// Definition: PubMed Pubstatus of Ecollection
  @JsonValue('pubmed-pubstatus-ecollection')
  pubmed_pubstatus_ecollection,
  /// Display: PubMed Pubstatus of PMC
  /// Definition: PubMed Pubstatus of PMC
  @JsonValue('pubmed-pubstatus-pmc')
  pubmed_pubstatus_pmc,
  /// Display: PubMed Pubstatus of PMCr
  /// Definition: PubMed Pubstatus of PMCr
  @JsonValue('pubmed-pubstatus-pmcr')
  pubmed_pubstatus_pmcr,
  /// Display: PubMed Pubstatus of PubMed
  /// Definition: PubMed Pubstatus of PubMed
  @JsonValue('pubmed-pubstatus-pubmed')
  pubmed_pubstatus_pubmed,
  /// Display: PubMed Pubstatus of PubMedr
  /// Definition: PubMed Pubstatus of PubMedr
  @JsonValue('pubmed-pubstatus-pubmedr')
  pubmed_pubstatus_pubmedr,
  /// Display: PubMed Pubstatus of Premedline
  /// Definition: PubMed Pubstatus of Premedline
  @JsonValue('pubmed-pubstatus-premedline')
  pubmed_pubstatus_premedline,
  /// Display: PubMed Pubstatus of Medline
  /// Definition: PubMed Pubstatus of Medline
  @JsonValue('pubmed-pubstatus-medline')
  pubmed_pubstatus_medline,
  /// Display: PubMed Pubstatus of Medliner
  /// Definition: PubMed Pubstatus of Medliner
  @JsonValue('pubmed-pubstatus-medliner')
  pubmed_pubstatus_medliner,
  /// Display: PubMed Pubstatus of Entrez
  /// Definition: PubMed Pubstatus of Entrez
  @JsonValue('pubmed-pubstatus-entrez')
  pubmed_pubstatus_entrez,
  /// Display: PubMed Pubstatus of PMC release
  /// Definition: PubMed Pubstatus of PMC release
  @JsonValue('pubmed-pubstatus-pmc-release')
  pubmed_pubstatus_pmc_release,
  /// Display: Medline Citation Status of Completed
  /// Definition: Medline Citation Status of Completed
  @JsonValue('medline-completed')
  medline_completed,
  /// Display: Medline Citation Status of In-Process
  /// Definition: Medline Citation Status of In-Process
  @JsonValue('medline-in-process')
  medline_in_process,
  /// Display: Medline Citation Status of PubMed-not-MEDLINE
  /// Definition: Medline Citation Status of PubMed-not-MEDLINE
  @JsonValue('medline-pubmed-not-medline')
  medline_pubmed_not_medline,
  /// Display: Medline Citation Status of In-Data-Review
  /// Definition: Medline Citation Status of In-Data-Review
  @JsonValue('medline-in-data-review')
  medline_in_data_review,
  /// Display: Medline Citation Status of Publisher
  /// Definition: Medline Citation Status of Publisher
  @JsonValue('medline-publisher')
  medline_publisher,
  /// Display: Medline Citation Status of MEDLINE
  /// Definition: Medline Citation Status of MEDLINE
  @JsonValue('medline-medline')
  medline_medline,
  /// Display: Medline Citation Status of OLDMEDLINE
  /// Definition: Medline Citation Status of OLDMEDLINE
  @JsonValue('medline-oldmedline')
  medline_oldmedline,
  /// Display: PubMed PublicationStatus of ppublish
  /// Definition: published in print
  @JsonValue('pubmed-publication-status-ppublish')
  pubmed_publication_status_ppublish,
  /// Display: PubMed PublicationStatus of epublish
  /// Definition: electronically published only, never published in print
  @JsonValue('pubmed-publication-status-epublish')
  pubmed_publication_status_epublish,
  /// Display: PubMed PublicationStatus of aheadofprint
  /// Definition: electronically published, but followed by print
  @JsonValue('pubmed-publication-status-aheadofprint')
  pubmed_publication_status_aheadofprint,
;

@override
  String toString() {
      switch(this) {
        case pubmed_pubstatus_received: return 'pubmed-pubstatus-received';
        case pubmed_pubstatus_accepted: return 'pubmed-pubstatus-accepted';
        case pubmed_pubstatus_epublish: return 'pubmed-pubstatus-epublish';
        case pubmed_pubstatus_ppublish: return 'pubmed-pubstatus-ppublish';
        case pubmed_pubstatus_revised: return 'pubmed-pubstatus-revised';
        case pubmed_pubstatus_aheadofprint: return 'pubmed-pubstatus-aheadofprint';
        case pubmed_pubstatus_retracted: return 'pubmed-pubstatus-retracted';
        case pubmed_pubstatus_ecollection: return 'pubmed-pubstatus-ecollection';
        case pubmed_pubstatus_pmc: return 'pubmed-pubstatus-pmc';
        case pubmed_pubstatus_pmcr: return 'pubmed-pubstatus-pmcr';
        case pubmed_pubstatus_pubmed: return 'pubmed-pubstatus-pubmed';
        case pubmed_pubstatus_pubmedr: return 'pubmed-pubstatus-pubmedr';
        case pubmed_pubstatus_premedline: return 'pubmed-pubstatus-premedline';
        case pubmed_pubstatus_medline: return 'pubmed-pubstatus-medline';
        case pubmed_pubstatus_medliner: return 'pubmed-pubstatus-medliner';
        case pubmed_pubstatus_entrez: return 'pubmed-pubstatus-entrez';
        case pubmed_pubstatus_pmc_release: return 'pubmed-pubstatus-pmc-release';
        case medline_completed: return 'medline-completed';
        case medline_in_process: return 'medline-in-process';
        case medline_pubmed_not_medline: return 'medline-pubmed-not-medline';
        case medline_in_data_review: return 'medline-in-data-review';
        case medline_publisher: return 'medline-publisher';
        case medline_medline: return 'medline-medline';
        case medline_oldmedline: return 'medline-oldmedline';
        case pubmed_publication_status_ppublish: return 'pubmed-publication-status-ppublish';
        case pubmed_publication_status_epublish: return 'pubmed-publication-status-epublish';
        case pubmed_publication_status_aheadofprint: return 'pubmed-publication-status-aheadofprint';
      }
      }
String toJson() => toString();
  CitationStatusType fromString(String str) {
    switch(str) {
      case 'pubmed-pubstatus-received': return CitationStatusType.pubmed_pubstatus_received;
      case 'pubmed-pubstatus-accepted': return CitationStatusType.pubmed_pubstatus_accepted;
      case 'pubmed-pubstatus-epublish': return CitationStatusType.pubmed_pubstatus_epublish;
      case 'pubmed-pubstatus-ppublish': return CitationStatusType.pubmed_pubstatus_ppublish;
      case 'pubmed-pubstatus-revised': return CitationStatusType.pubmed_pubstatus_revised;
      case 'pubmed-pubstatus-aheadofprint': return CitationStatusType.pubmed_pubstatus_aheadofprint;
      case 'pubmed-pubstatus-retracted': return CitationStatusType.pubmed_pubstatus_retracted;
      case 'pubmed-pubstatus-ecollection': return CitationStatusType.pubmed_pubstatus_ecollection;
      case 'pubmed-pubstatus-pmc': return CitationStatusType.pubmed_pubstatus_pmc;
      case 'pubmed-pubstatus-pmcr': return CitationStatusType.pubmed_pubstatus_pmcr;
      case 'pubmed-pubstatus-pubmed': return CitationStatusType.pubmed_pubstatus_pubmed;
      case 'pubmed-pubstatus-pubmedr': return CitationStatusType.pubmed_pubstatus_pubmedr;
      case 'pubmed-pubstatus-premedline': return CitationStatusType.pubmed_pubstatus_premedline;
      case 'pubmed-pubstatus-medline': return CitationStatusType.pubmed_pubstatus_medline;
      case 'pubmed-pubstatus-medliner': return CitationStatusType.pubmed_pubstatus_medliner;
      case 'pubmed-pubstatus-entrez': return CitationStatusType.pubmed_pubstatus_entrez;
      case 'pubmed-pubstatus-pmc-release': return CitationStatusType.pubmed_pubstatus_pmc_release;
      case 'medline-completed': return CitationStatusType.medline_completed;
      case 'medline-in-process': return CitationStatusType.medline_in_process;
      case 'medline-pubmed-not-medline': return CitationStatusType.medline_pubmed_not_medline;
      case 'medline-in-data-review': return CitationStatusType.medline_in_data_review;
      case 'medline-publisher': return CitationStatusType.medline_publisher;
      case 'medline-medline': return CitationStatusType.medline_medline;
      case 'medline-oldmedline': return CitationStatusType.medline_oldmedline;
      case 'pubmed-publication-status-ppublish': return CitationStatusType.pubmed_publication_status_ppublish;
      case 'pubmed-publication-status-epublish': return CitationStatusType.pubmed_publication_status_epublish;
      case 'pubmed-publication-status-aheadofprint': return CitationStatusType.pubmed_publication_status_aheadofprint;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CitationStatusType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

