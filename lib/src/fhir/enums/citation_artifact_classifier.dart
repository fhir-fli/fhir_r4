// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation artifact classifier
enum CitationArtifactClassifier {
  /// Display: Webpage
  /// Definition: Webpage
  webpage('webpage'),

  /// Display: Journal Article
  /// Definition: Journal Article
  D016428('D016428'),

  /// Display: Letter
  /// Definition: Letter
  D016422('D016422'),

  /// Display: Comment
  /// Definition: Comment
  D016420('D016420'),

  /// Display: Published Erratum
  /// Definition: Published Erratum
  D016425('D016425'),

  /// Display: Executable app
  /// Definition: Executable app
  executable_app('executable-app'),

  /// Display: Preprint
  /// Definition: Scientific manuscript made available prior to PEER REVIEW.
  D000076942('D000076942'),

  /// Display: Database
  /// Definition: A structured file of information or a set of logically related data stored and retrieved using computer-based means.
  D019991('D019991'),

  /// Display: Book
  /// Definition: Non-periodical written or printed works consisting of sheets of pages fastened or bound together within covers.
  D001877('D001877'),

  /// Display: Dataset
  /// Definition: Works consisting of organized collections of data, which have been stored permanently in a formalized manner suitable for communication, interpretation, or processing.
  D064886('D064886'),

  /// Display: Video-Audio Media
  /// Definition: Used with articles which include video files or clips, or for articles which are entirely video.
  value68059040('68059040'),

  /// Display: Audio file
  /// Definition: The article cited is an audio file.
  audio('audio'),

  /// Display: Image file
  /// Definition: The article cited is an audio file.
  image('image'),

  /// Display: Machine code
  /// Definition: The article cited is machine code.
  machine_code('machine-code'),

  /// Display: Protocol
  /// Definition: The article cited is the protocol of an activity and not the results or findings.
  protocol('protocol'),

  /// Display: FHIR Resource
  /// Definition: The article cited is a FHIR resource.
  fhir_resource('fhir-resource'),

  /// Display: Print
  /// Definition: the journal is published in print format only
  Print('Print'),

  /// Display: Print Electronic
  /// Definition: the journal is published in both print and electronic format
  Print_Electronic('Print-Electronic'),

  /// Display: Electronic
  /// Definition: the journal is published in electronic format only
  Electronic('Electronic'),

  /// Display: Electronic-Print
  /// Definition: the journal is published first in electronic format followed by print (this value is currently used for just one journal, Nucleic Acids Research)
  Electronic_Print('Electronic-Print'),

  /// Display: Electronic-eCollection
  /// Definition: used for electronic-only journals that publish individual articles first and then later collect them into an "issue" date that is typically called an eCollection.
  Electronic_eCollection('Electronic-eCollection'),

  /// Display: Medline Base
  /// Definition: Citation Resource containing only data from Medline
  medline_base('medline-base'),

  /// Display: Common Share
  /// Definition: Citation Resource containing value added data that is openly shared
  common_share('common-share'),

  /// Display: Project Specific
  /// Definition: Citation Resource containing value added data specific to a project
  project_specific('project-specific'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CitationArtifactClassifier(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CitationArtifactClassifier] instances.
  static CitationArtifactClassifier fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationArtifactClassifier.elementOnly.withElement(
        element,
      );
    }
    return CitationArtifactClassifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CitationArtifactClassifier withElement(Element? newElement) {
    return CitationArtifactClassifier.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
