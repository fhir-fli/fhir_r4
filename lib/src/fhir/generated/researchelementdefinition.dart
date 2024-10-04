import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ResearchElementDefinition {
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
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final String shortTitle;
  final PrimitiveElement ShortTitle;
  final String subtitle;
  final PrimitiveElement Subtitle;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<String> comment;
  final List<PrimitiveElement> Comment;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final String usage;
  final PrimitiveElement Usage;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final Period effectivePeriod;
  final List<CodeableConcept> topic;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final List<FhirCanonical> library;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCode variableType;
  final PrimitiveElement VariableType;
  final List<ResearchElementDefinitionCharacteristic> characteristic;
  const ResearchElementDefinition({
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
    this.name,
    this.Name,
    this.title,
    this.Title,
    this.shortTitle,
    this.ShortTitle,
    this.subtitle,
    this.Subtitle,
    this.status,
    this.Status,
    this.experimental,
    this.Experimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.Date,
    this.publisher,
    this.Publisher,
    this.contact,
    this.description,
    this.Description,
    this.comment,
    this.Comment,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.Purpose,
    this.usage,
    this.Usage,
    this.copyright,
    this.Copyright,
    this.approvalDate,
    this.ApprovalDate,
    this.lastReviewDate,
    this.LastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library,
    this.type,
    this.Type,
    this.variableType,
    this.VariableType,
    required this.characteristic,
  });
}
