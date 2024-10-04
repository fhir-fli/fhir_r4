import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationCitedArtifact {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final List<Identifier> relatedIdentifier;
  final FhirDateTime dateAccessed;
  final PrimitiveElement DateAccessed;
  final Citation_Version version;
  final List<CodeableConcept> currentState;
  final List<CitationStatusDate1> statusDate;
  final List<CitationTitle> title;
  final List<CitationAbstract> abstract;
  final Citation_Part part;
  final List<CitationRelatesTo1> relatesTo;
  final List<CitationPublicationForm> publicationForm;
  final List<CitationWebLocation> webLocation;
  final List<CitationClassification1> classification;
  final Citation_Contributorship contributorship;
  final List<Annotation> note;
  const CitationCitedArtifact({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.relatedIdentifier,
    this.dateAccessed,
    this.DateAccessed,
    this.version,
    this.currentState,
    this.statusDate,
    this.title,
    this.abstract,
    this.part,
    this.relatesTo,
    this.publicationForm,
    this.webLocation,
    this.classification,
    this.contributorship,
    this.note,
  });
}
