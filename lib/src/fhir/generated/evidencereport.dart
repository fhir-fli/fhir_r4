import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceReport {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final List<UsageContext> useContext;
  final List<Identifier> identifier;
  final List<Identifier> relatedIdentifier;
  final Reference citeAsReference;
  final String citeAsMarkdown;
  final PrimitiveElement CiteAsMarkdown;
  final CodeableConcept type;
  final List<Annotation> note;
  final List<RelatedArtifact> relatedArtifact;
  final EvidenceReport_Subject subject;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<EvidenceReportRelatesTo> relatesTo;
  final List<EvidenceReportSection> section;
  const EvidenceReport({
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
    this.status,
    this.Status,
    this.useContext,
    this.identifier,
    this.relatedIdentifier,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.CiteAsMarkdown,
    this.type,
    this.note,
    this.relatedArtifact,
    required this.subject,
    this.publisher,
    this.Publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatesTo,
    this.section,
  });
}
