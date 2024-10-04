import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ResearchStudy {
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
  final List<Identifier> identifier;
  final String title;
  final PrimitiveElement Title;
  final List<Reference> protocol;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept primaryPurposeType;
  final CodeableConcept phase;
  final List<CodeableConcept> category;
  final List<CodeableConcept> focus;
  final List<CodeableConcept> condition;
  final List<ContactDetail> contact;
  final List<RelatedArtifact> relatedArtifact;
  final List<CodeableConcept> keyword;
  final List<CodeableConcept> location;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<Reference> enrollment;
  final Period period;
  final Reference sponsor;
  final Reference principalInvestigator;
  final List<Reference> site;
  final CodeableConcept reasonStopped;
  final List<Annotation> note;
  final List<ResearchStudyArm> arm;
  final List<ResearchStudyObjective> objective;
  const ResearchStudy({
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
    this.identifier,
    this.title,
    this.Title,
    this.protocol,
    this.partOf,
    this.status,
    this.Status,
    this.primaryPurposeType,
    this.phase,
    this.category,
    this.focus,
    this.condition,
    this.contact,
    this.relatedArtifact,
    this.keyword,
    this.location,
    this.description,
    this.Description,
    this.enrollment,
    this.period,
    this.sponsor,
    this.principalInvestigator,
    this.site,
    this.reasonStopped,
    this.note,
    this.arm,
    this.objective,
  });
}
