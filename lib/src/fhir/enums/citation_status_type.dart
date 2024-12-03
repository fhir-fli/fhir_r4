// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation status type
class CitationStatusType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitationStatusType._(super.value, [super.element]);

  /// Factory constructor to create [CitationStatusType] from JSON.
  factory CitationStatusType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationStatusType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'CitationStatusType cannot be constructed from JSON.');
    }
    return CitationStatusType._(value, element);
  }

  /// pubmed_pubstatus_received
  static final CitationStatusType pubmed_pubstatus_received =
      CitationStatusType._(
    'pubmed-pubstatus-received',
  );

  /// pubmed_pubstatus_accepted
  static final CitationStatusType pubmed_pubstatus_accepted =
      CitationStatusType._(
    'pubmed-pubstatus-accepted',
  );

  /// pubmed_pubstatus_epublish
  static final CitationStatusType pubmed_pubstatus_epublish =
      CitationStatusType._(
    'pubmed-pubstatus-epublish',
  );

  /// pubmed_pubstatus_ppublish
  static final CitationStatusType pubmed_pubstatus_ppublish =
      CitationStatusType._(
    'pubmed-pubstatus-ppublish',
  );

  /// pubmed_pubstatus_revised
  static final CitationStatusType pubmed_pubstatus_revised =
      CitationStatusType._(
    'pubmed-pubstatus-revised',
  );

  /// pubmed_pubstatus_aheadofprint
  static final CitationStatusType pubmed_pubstatus_aheadofprint =
      CitationStatusType._(
    'pubmed-pubstatus-aheadofprint',
  );

  /// pubmed_pubstatus_retracted
  static final CitationStatusType pubmed_pubstatus_retracted =
      CitationStatusType._(
    'pubmed-pubstatus-retracted',
  );

  /// pubmed_pubstatus_ecollection
  static final CitationStatusType pubmed_pubstatus_ecollection =
      CitationStatusType._(
    'pubmed-pubstatus-ecollection',
  );

  /// pubmed_pubstatus_pmc
  static final CitationStatusType pubmed_pubstatus_pmc = CitationStatusType._(
    'pubmed-pubstatus-pmc',
  );

  /// pubmed_pubstatus_pmcr
  static final CitationStatusType pubmed_pubstatus_pmcr = CitationStatusType._(
    'pubmed-pubstatus-pmcr',
  );

  /// pubmed_pubstatus_pubmed
  static final CitationStatusType pubmed_pubstatus_pubmed =
      CitationStatusType._(
    'pubmed-pubstatus-pubmed',
  );

  /// pubmed_pubstatus_pubmedr
  static final CitationStatusType pubmed_pubstatus_pubmedr =
      CitationStatusType._(
    'pubmed-pubstatus-pubmedr',
  );

  /// pubmed_pubstatus_premedline
  static final CitationStatusType pubmed_pubstatus_premedline =
      CitationStatusType._(
    'pubmed-pubstatus-premedline',
  );

  /// pubmed_pubstatus_medline
  static final CitationStatusType pubmed_pubstatus_medline =
      CitationStatusType._(
    'pubmed-pubstatus-medline',
  );

  /// pubmed_pubstatus_medliner
  static final CitationStatusType pubmed_pubstatus_medliner =
      CitationStatusType._(
    'pubmed-pubstatus-medliner',
  );

  /// pubmed_pubstatus_entrez
  static final CitationStatusType pubmed_pubstatus_entrez =
      CitationStatusType._(
    'pubmed-pubstatus-entrez',
  );

  /// pubmed_pubstatus_pmc_release
  static final CitationStatusType pubmed_pubstatus_pmc_release =
      CitationStatusType._(
    'pubmed-pubstatus-pmc-release',
  );

  /// medline_completed
  static final CitationStatusType medline_completed = CitationStatusType._(
    'medline-completed',
  );

  /// medline_in_process
  static final CitationStatusType medline_in_process = CitationStatusType._(
    'medline-in-process',
  );

  /// medline_pubmed_not_medline
  static final CitationStatusType medline_pubmed_not_medline =
      CitationStatusType._(
    'medline-pubmed-not-medline',
  );

  /// medline_in_data_review
  static final CitationStatusType medline_in_data_review = CitationStatusType._(
    'medline-in-data-review',
  );

  /// medline_publisher
  static final CitationStatusType medline_publisher = CitationStatusType._(
    'medline-publisher',
  );

  /// medline_medline
  static final CitationStatusType medline_medline = CitationStatusType._(
    'medline-medline',
  );

  /// medline_oldmedline
  static final CitationStatusType medline_oldmedline = CitationStatusType._(
    'medline-oldmedline',
  );

  /// pubmed_publication_status_ppublish
  static final CitationStatusType pubmed_publication_status_ppublish =
      CitationStatusType._(
    'pubmed-publication-status-ppublish',
  );

  /// pubmed_publication_status_epublish
  static final CitationStatusType pubmed_publication_status_epublish =
      CitationStatusType._(
    'pubmed-publication-status-epublish',
  );

  /// pubmed_publication_status_aheadofprint
  static final CitationStatusType pubmed_publication_status_aheadofprint =
      CitationStatusType._(
    'pubmed-publication-status-aheadofprint',
  );

  /// For instances where an Element is present but not value

  static final CitationStatusType elementOnly = CitationStatusType._('');

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

  /// Clones the current instance
  @override
  CitationStatusType clone() => CitationStatusType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CitationStatusType setElement(
    String name,
    dynamic elementValue,
  ) {
    return CitationStatusType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CitationStatusType withElement(Element? newElement) {
    return CitationStatusType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  CitationStatusType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CitationStatusType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
