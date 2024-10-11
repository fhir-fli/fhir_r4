import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class ResearchStudy extends Resource {
  ResearchStudy({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.title,
    this.protocol,
    this.partOf,
    required this.status,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? title;
  ToMany<Reference>? protocol = ToMany<Reference>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  ToOne<CodeableConcept>? primaryPurposeType = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? phase = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? focus = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? condition = ToMany<CodeableConcept>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  ToMany<CodeableConcept>? keyword = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? location = ToMany<CodeableConcept>();
  String? description;
  ToMany<Reference>? enrollment = ToMany<Reference>();
  ToOne<Period>? period = ToOne<Period>();
  ToOne<Reference>? sponsor = ToOne<Reference>();
  ToOne<Reference>? principalInvestigator = ToOne<Reference>();
  ToMany<Reference>? site = ToMany<Reference>();
  ToOne<CodeableConcept>? reasonStopped = ToOne<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<ResearchStudyArm>? arm = ToMany<ResearchStudyArm>();
  ToMany<ResearchStudyObjective>? objective = ToMany<ResearchStudyObjective>();
}

@Entity()
class ResearchStudyArm {
  ResearchStudyArm({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.type,
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? description;
}

@Entity()
class ResearchStudyObjective {
  ResearchStudyObjective({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? name;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
}
