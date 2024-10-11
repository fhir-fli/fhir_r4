import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class CareTeam extends Resource {
  CareTeam({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.category,
    this.name,
    this.subject,
    this.encounter,
    this.period,
    this.participant,
    this.reasonCode,
    this.reasonReference,
    this.managingOrganization,
    this.telecom,
    this.note,
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
  String? status;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  String? name;
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  ToOne<Period>? period = ToOne<Period>();
  ToMany<CareTeamParticipant>? participant = ToMany<CareTeamParticipant>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Reference>? managingOrganization = ToMany<Reference>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class CareTeamParticipant {
  CareTeamParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.role,
    this.member,
    this.onBehalfOf,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? role = ToMany<CodeableConcept>();
  ToOne<Reference>? member = ToOne<Reference>();
  ToOne<Reference>? onBehalfOf = ToOne<Reference>();
  ToOne<Period>? period = ToOne<Period>();
}
