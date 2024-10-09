import 'package:json_annotation/json_annotation.dart';

/// Citation artifact classifier
enum CitationArtifactClassifier {
  /// Display: Webpage
  /// Definition: Webpage
  @JsonValue('webpage')
  webpage,

  /// Display: Journal Article
  /// Definition: Journal Article
  @JsonValue('D016428')
  D016428,

  /// Display: Letter
  /// Definition: Letter
  @JsonValue('D016422')
  D016422,

  /// Display: Comment
  /// Definition: Comment
  @JsonValue('D016420')
  D016420,

  /// Display: Published Erratum
  /// Definition: Published Erratum
  @JsonValue('D016425')
  D016425,

  /// Display: Executable app
  /// Definition: Executable app
  @JsonValue('executable-app')
  executable_app,

  /// Display: Preprint
  /// Definition: Scientific manuscript made available prior to PEER REVIEW.
  @JsonValue('D000076942')
  D000076942,

  /// Display: Database
  /// Definition: A structured file of information or a set of logically related data stored and retrieved using computer-based means.
  @JsonValue('D019991')
  D019991,

  /// Display: Book
  /// Definition: Non-periodical written or printed works consisting of sheets of pages fastened or bound together within covers.
  @JsonValue('D001877')
  D001877,

  /// Display: Dataset
  /// Definition: Works consisting of organized collections of data, which have been stored permanently in a formalized manner suitable for communication, interpretation, or processing.
  @JsonValue('D064886')
  D064886,

  /// Display: Video-Audio Media
  /// Definition: Used with articles which include video files or clips, or for articles which are entirely video.
  @JsonValue('68059040')
  value68059040,

  /// Display: Audio file
  /// Definition: The article cited is an audio file.
  @JsonValue('audio')
  audio,

  /// Display: Image file
  /// Definition: The article cited is an audio file.
  @JsonValue('image')
  image,

  /// Display: Machine code
  /// Definition: The article cited is machine code.
  @JsonValue('machine-code')
  machine_code,

  /// Display: Protocol
  /// Definition: The article cited is the protocol of an activity and not the results or findings.
  @JsonValue('protocol')
  protocol,

  /// Display: FHIR Resource
  /// Definition: The article cited is a FHIR resource.
  @JsonValue('fhir-resource')
  fhir_resource,

  /// Display: Print
  /// Definition: the journal is published in print format only
  @JsonValue('Print')
  Print,

  /// Display: Print Electronic
  /// Definition: the journal is published in both print and electronic format
  @JsonValue('Print-Electronic')
  Print_Electronic,

  /// Display: Electronic
  /// Definition: the journal is published in electronic format only
  @JsonValue('Electronic')
  Electronic,

  /// Display: Electronic-Print
  /// Definition: the journal is published first in electronic format followed by print (this value is currently used for just one journal, Nucleic Acids Research)
  @JsonValue('Electronic-Print')
  Electronic_Print,

  /// Display: Electronic-eCollection
  /// Definition: used for electronic-only journals that publish individual articles first and then later collect them into an "issue" date that is typically called an eCollection.
  @JsonValue('Electronic-eCollection')
  Electronic_eCollection,

  /// Display: Medline Base
  /// Definition: Citation Resource containing only data from Medline
  @JsonValue('medline-base')
  medline_base,

  /// Display: Common Share
  /// Definition: Citation Resource containing value added data that is openly shared
  @JsonValue('common-share')
  common_share,

  /// Display: Project Specific
  /// Definition: Citation Resource containing value added data specific to a project
  @JsonValue('project-specific')
  project_specific,
  ;

  @override
  String toString() {
    switch (this) {
      case webpage:
        return 'webpage';
      case D016428:
        return 'D016428';
      case D016422:
        return 'D016422';
      case D016420:
        return 'D016420';
      case D016425:
        return 'D016425';
      case executable_app:
        return 'executable-app';
      case D000076942:
        return 'D000076942';
      case D019991:
        return 'D019991';
      case D001877:
        return 'D001877';
      case D064886:
        return 'D064886';
      case value68059040:
        return '68059040';
      case audio:
        return 'audio';
      case image:
        return 'image';
      case machine_code:
        return 'machine-code';
      case protocol:
        return 'protocol';
      case fhir_resource:
        return 'fhir-resource';
      case Print:
        return 'Print';
      case Print_Electronic:
        return 'Print-Electronic';
      case Electronic:
        return 'Electronic';
      case Electronic_Print:
        return 'Electronic-Print';
      case Electronic_eCollection:
        return 'Electronic-eCollection';
      case medline_base:
        return 'medline-base';
      case common_share:
        return 'common-share';
      case project_specific:
        return 'project-specific';
    }
  }

  String toJson() => toString();
  static CitationArtifactClassifier fromString(String str) {
    switch (str) {
      case 'webpage':
        return CitationArtifactClassifier.webpage;
      case 'D016428':
        return CitationArtifactClassifier.D016428;
      case 'D016422':
        return CitationArtifactClassifier.D016422;
      case 'D016420':
        return CitationArtifactClassifier.D016420;
      case 'D016425':
        return CitationArtifactClassifier.D016425;
      case 'executable-app':
        return CitationArtifactClassifier.executable_app;
      case 'D000076942':
        return CitationArtifactClassifier.D000076942;
      case 'D019991':
        return CitationArtifactClassifier.D019991;
      case 'D001877':
        return CitationArtifactClassifier.D001877;
      case 'D064886':
        return CitationArtifactClassifier.D064886;
      case '68059040':
        return CitationArtifactClassifier.value68059040;
      case 'audio':
        return CitationArtifactClassifier.audio;
      case 'image':
        return CitationArtifactClassifier.image;
      case 'machine-code':
        return CitationArtifactClassifier.machine_code;
      case 'protocol':
        return CitationArtifactClassifier.protocol;
      case 'fhir-resource':
        return CitationArtifactClassifier.fhir_resource;
      case 'Print':
        return CitationArtifactClassifier.Print;
      case 'Print-Electronic':
        return CitationArtifactClassifier.Print_Electronic;
      case 'Electronic':
        return CitationArtifactClassifier.Electronic;
      case 'Electronic-Print':
        return CitationArtifactClassifier.Electronic_Print;
      case 'Electronic-eCollection':
        return CitationArtifactClassifier.Electronic_eCollection;
      case 'medline-base':
        return CitationArtifactClassifier.medline_base;
      case 'common-share':
        return CitationArtifactClassifier.common_share;
      case 'project-specific':
        return CitationArtifactClassifier.project_specific;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CitationArtifactClassifier fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
