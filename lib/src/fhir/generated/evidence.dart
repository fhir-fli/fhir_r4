import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Evidence {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String title;
  final PrimitiveElement Title;
  final Reference citeAsReference;
  final String citeAsMarkdown;
  final PrimitiveElement CiteAsMarkdown;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final List<UsageContext> useContext;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirMarkdown assertion;
  final PrimitiveElement Assertion;
  final List<Annotation> note;
  final List<EvidenceVariableDefinition> variableDefinition;
  final CodeableConcept synthesisType;
  final CodeableConcept studyType;
  final List<EvidenceStatistic> statistic;
  final List<EvidenceCertainty> certainty;
  const Evidence({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.Url,
    this.identifier,
    this.version,
    this.Version,
    this.title,
    this.Title,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.CiteAsMarkdown,
    this.status,
    this.Status,
    this.date,
    this.Date,
    this.useContext,
    this.approvalDate,
    this.ApprovalDate,
    this.lastReviewDate,
    this.LastReviewDate,
    this.publisher,
    this.Publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.description,
    this.Description,
    this.assertion,
    this.Assertion,
    this.note,
    required this.variableDefinition,
    this.synthesisType,
    this.studyType,
    this.statistic,
    this.certainty,
  });
}
