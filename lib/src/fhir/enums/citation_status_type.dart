// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Citation status type
@collection
class CitationStatusType {
  /// Constructor for internal use (like enum)
  CitationStatusType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CitationStatusType values
  /// pubmed_pubstatus_received
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_received =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-received',
  );

  /// pubmed_pubstatus_accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_accepted =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-accepted',
  );

  /// pubmed_pubstatus_epublish
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_epublish =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-epublish',
  );

  /// pubmed_pubstatus_ppublish
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_ppublish =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-ppublish',
  );

  /// pubmed_pubstatus_revised
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_revised = CitationStatusType(
    fhirCode: 'pubmed-pubstatus-revised',
  );

  /// pubmed_pubstatus_aheadofprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_aheadofprint =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-aheadofprint',
  );

  /// pubmed_pubstatus_retracted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_retracted =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-retracted',
  );

  /// pubmed_pubstatus_ecollection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_ecollection =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-ecollection',
  );

  /// pubmed_pubstatus_pmc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_pmc = CitationStatusType(
    fhirCode: 'pubmed-pubstatus-pmc',
  );

  /// pubmed_pubstatus_pmcr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_pmcr = CitationStatusType(
    fhirCode: 'pubmed-pubstatus-pmcr',
  );

  /// pubmed_pubstatus_pubmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_pubmed = CitationStatusType(
    fhirCode: 'pubmed-pubstatus-pubmed',
  );

  /// pubmed_pubstatus_pubmedr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_pubmedr = CitationStatusType(
    fhirCode: 'pubmed-pubstatus-pubmedr',
  );

  /// pubmed_pubstatus_premedline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_premedline =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-premedline',
  );

  /// pubmed_pubstatus_medline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_medline = CitationStatusType(
    fhirCode: 'pubmed-pubstatus-medline',
  );

  /// pubmed_pubstatus_medliner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_medliner =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-medliner',
  );

  /// pubmed_pubstatus_entrez
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_entrez = CitationStatusType(
    fhirCode: 'pubmed-pubstatus-entrez',
  );

  /// pubmed_pubstatus_pmc_release
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_pubstatus_pmc_release =
      CitationStatusType(
    fhirCode: 'pubmed-pubstatus-pmc-release',
  );

  /// medline_completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType medline_completed = CitationStatusType(
    fhirCode: 'medline-completed',
  );

  /// medline_in_process
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType medline_in_process = CitationStatusType(
    fhirCode: 'medline-in-process',
  );

  /// medline_pubmed_not_medline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType medline_pubmed_not_medline =
      CitationStatusType(
    fhirCode: 'medline-pubmed-not-medline',
  );

  /// medline_in_data_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType medline_in_data_review = CitationStatusType(
    fhirCode: 'medline-in-data-review',
  );

  /// medline_publisher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType medline_publisher = CitationStatusType(
    fhirCode: 'medline-publisher',
  );

  /// medline_medline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType medline_medline = CitationStatusType(
    fhirCode: 'medline-medline',
  );

  /// medline_oldmedline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType medline_oldmedline = CitationStatusType(
    fhirCode: 'medline-oldmedline',
  );

  /// pubmed_publication_status_ppublish
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_publication_status_ppublish =
      CitationStatusType(
    fhirCode: 'pubmed-publication-status-ppublish',
  );

  /// pubmed_publication_status_epublish
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_publication_status_epublish =
      CitationStatusType(
    fhirCode: 'pubmed-publication-status-epublish',
  );

  /// pubmed_publication_status_aheadofprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationStatusType pubmed_publication_status_aheadofprint =
      CitationStatusType(
    fhirCode: 'pubmed-publication-status-aheadofprint',
  );

  /// For instances where an Element is present but not value

  static final CitationStatusType elementOnly = CitationStatusType();

  /// List of all enum-like values
  static final List<CitationStatusType> values = [
    pubmed_pubstatus_received,
    pubmed_pubstatus_accepted,
    pubmed_pubstatus_epublish,
    pubmed_pubstatus_ppublish,
    pubmed_pubstatus_revised,
    pubmed_pubstatus_aheadofprint,
    pubmed_pubstatus_retracted,
    pubmed_pubstatus_ecollection,
    pubmed_pubstatus_pmc,
    pubmed_pubstatus_pmcr,
    pubmed_pubstatus_pubmed,
    pubmed_pubstatus_pubmedr,
    pubmed_pubstatus_premedline,
    pubmed_pubstatus_medline,
    pubmed_pubstatus_medliner,
    pubmed_pubstatus_entrez,
    pubmed_pubstatus_pmc_release,
    medline_completed,
    medline_in_process,
    medline_pubmed_not_medline,
    medline_in_data_review,
    medline_publisher,
    medline_medline,
    medline_oldmedline,
    pubmed_publication_status_ppublish,
    pubmed_publication_status_epublish,
    pubmed_publication_status_aheadofprint,
  ];

  /// Returns the enum value with an element attached
  CitationStatusType withElement(Element? newElement) {
    return CitationStatusType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CitationStatusType] from JSON.
  static CitationStatusType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationStatusType.elementOnly.withElement(element);
    }
    return CitationStatusType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitationStatusType.$fhirCode';
}
