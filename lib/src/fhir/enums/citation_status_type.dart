// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Citation status type
@Entity()
class CitationStatusType extends FhirCode {
  /// Factory constructor to create [CitationStatusType] from JSON.
  factory CitationStatusType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationStatusType.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitationStatusType._(value, element);
    }
    throw ArgumentError(
      'CitationStatusType.fromJson: JSON value is not a valid value',
    );
  }

  /// pubmed_pubstatus_received
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_received([this.element])
      : dbValue = 'pubmed-pubstatus-received',
        super('pubmed-pubstatus-received', element);

  /// pubmed_pubstatus_accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_accepted([this.element])
      : dbValue = 'pubmed-pubstatus-accepted',
        super('pubmed-pubstatus-accepted', element);

  /// pubmed_pubstatus_epublish
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_epublish([this.element])
      : dbValue = 'pubmed-pubstatus-epublish',
        super('pubmed-pubstatus-epublish', element);

  /// pubmed_pubstatus_ppublish
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_ppublish([this.element])
      : dbValue = 'pubmed-pubstatus-ppublish',
        super('pubmed-pubstatus-ppublish', element);

  /// pubmed_pubstatus_revised
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_revised([this.element])
      : dbValue = 'pubmed-pubstatus-revised',
        super('pubmed-pubstatus-revised', element);

  /// pubmed_pubstatus_aheadofprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_aheadofprint([this.element])
      : dbValue = 'pubmed-pubstatus-aheadofprint',
        super('pubmed-pubstatus-aheadofprint', element);

  /// pubmed_pubstatus_retracted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_retracted([this.element])
      : dbValue = 'pubmed-pubstatus-retracted',
        super('pubmed-pubstatus-retracted', element);

  /// pubmed_pubstatus_ecollection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_ecollection([this.element])
      : dbValue = 'pubmed-pubstatus-ecollection',
        super('pubmed-pubstatus-ecollection', element);

  /// pubmed_pubstatus_pmc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_pmc([this.element])
      : dbValue = 'pubmed-pubstatus-pmc',
        super('pubmed-pubstatus-pmc', element);

  /// pubmed_pubstatus_pmcr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_pmcr([this.element])
      : dbValue = 'pubmed-pubstatus-pmcr',
        super('pubmed-pubstatus-pmcr', element);

  /// pubmed_pubstatus_pubmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_pubmed([this.element])
      : dbValue = 'pubmed-pubstatus-pubmed',
        super('pubmed-pubstatus-pubmed', element);

  /// pubmed_pubstatus_pubmedr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_pubmedr([this.element])
      : dbValue = 'pubmed-pubstatus-pubmedr',
        super('pubmed-pubstatus-pubmedr', element);

  /// pubmed_pubstatus_premedline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_premedline([this.element])
      : dbValue = 'pubmed-pubstatus-premedline',
        super('pubmed-pubstatus-premedline', element);

  /// pubmed_pubstatus_medline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_medline([this.element])
      : dbValue = 'pubmed-pubstatus-medline',
        super('pubmed-pubstatus-medline', element);

  /// pubmed_pubstatus_medliner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_medliner([this.element])
      : dbValue = 'pubmed-pubstatus-medliner',
        super('pubmed-pubstatus-medliner', element);

  /// pubmed_pubstatus_entrez
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_entrez([this.element])
      : dbValue = 'pubmed-pubstatus-entrez',
        super('pubmed-pubstatus-entrez', element);

  /// pubmed_pubstatus_pmc_release
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_pubstatus_pmc_release([this.element])
      : dbValue = 'pubmed-pubstatus-pmc-release',
        super('pubmed-pubstatus-pmc-release', element);

  /// medline_completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.medline_completed([this.element])
      : dbValue = 'medline-completed',
        super('medline-completed', element);

  /// medline_in_process
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.medline_in_process([this.element])
      : dbValue = 'medline-in-process',
        super('medline-in-process', element);

  /// medline_pubmed_not_medline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.medline_pubmed_not_medline([this.element])
      : dbValue = 'medline-pubmed-not-medline',
        super('medline-pubmed-not-medline', element);

  /// medline_in_data_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.medline_in_data_review([this.element])
      : dbValue = 'medline-in-data-review',
        super('medline-in-data-review', element);

  /// medline_publisher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.medline_publisher([this.element])
      : dbValue = 'medline-publisher',
        super('medline-publisher', element);

  /// medline_medline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.medline_medline([this.element])
      : dbValue = 'medline-medline',
        super('medline-medline', element);

  /// medline_oldmedline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.medline_oldmedline([this.element])
      : dbValue = 'medline-oldmedline',
        super('medline-oldmedline', element);

  /// pubmed_publication_status_ppublish
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_publication_status_ppublish([this.element])
      : dbValue = 'pubmed-publication-status-ppublish',
        super('pubmed-publication-status-ppublish', element);

  /// pubmed_publication_status_epublish
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_publication_status_epublish([this.element])
      : dbValue = 'pubmed-publication-status-epublish',
        super('pubmed-publication-status-epublish', element);

  /// pubmed_publication_status_aheadofprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationStatusType.pubmed_publication_status_aheadofprint([this.element])
      : dbValue = 'pubmed-publication-status-aheadofprint',
        super('pubmed-publication-status-aheadofprint', element);

  /// For instances where an Element is present but not value

  CitationStatusType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitationStatusType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'pubmed-pubstatus-received',
    'pubmed-pubstatus-accepted',
    'pubmed-pubstatus-epublish',
    'pubmed-pubstatus-ppublish',
    'pubmed-pubstatus-revised',
    'pubmed-pubstatus-aheadofprint',
    'pubmed-pubstatus-retracted',
    'pubmed-pubstatus-ecollection',
    'pubmed-pubstatus-pmc',
    'pubmed-pubstatus-pmcr',
    'pubmed-pubstatus-pubmed',
    'pubmed-pubstatus-pubmedr',
    'pubmed-pubstatus-premedline',
    'pubmed-pubstatus-medline',
    'pubmed-pubstatus-medliner',
    'pubmed-pubstatus-entrez',
    'pubmed-pubstatus-pmc-release',
    'medline-completed',
    'medline-in-process',
    'medline-pubmed-not-medline',
    'medline-in-data-review',
    'medline-publisher',
    'medline-medline',
    'medline-oldmedline',
    'pubmed-publication-status-ppublish',
    'pubmed-publication-status-epublish',
    'pubmed-publication-status-aheadofprint',
  ];

  /// Returns the enum value with an element attached
  CitationStatusType withElement(Element? newElement) {
    return CitationStatusType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitationStatusType.$value';
}
