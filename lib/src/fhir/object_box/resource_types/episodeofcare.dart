import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class EpisodeOfCare extends Resource {
  EpisodeOfCare({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.statusHistory,
    this.type,
    this.diagnosis,
    required this.patient,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account,
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
  String status;
  ToMany<EpisodeOfCareStatusHistory>? statusHistory =
      ToMany<EpisodeOfCareStatusHistory>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToMany<EpisodeOfCareDiagnosis>? diagnosis = ToMany<EpisodeOfCareDiagnosis>();
  ToOne<Reference> patient = ToOne<Reference>();
  ToOne<Reference>? managingOrganization = ToOne<Reference>();
  ToOne<Period>? period = ToOne<Period>();
  ToMany<Reference>? referralRequest = ToMany<Reference>();
  ToOne<Reference>? careManager = ToOne<Reference>();
  ToMany<Reference>? team = ToMany<Reference>();
  ToMany<Reference>? account = ToMany<Reference>();
}

@Entity()
class EpisodeOfCareStatusHistory {
  EpisodeOfCareStatusHistory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.status,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String status;
  ToOne<Period> period = ToOne<Period>();
}

@Entity()
class EpisodeOfCareDiagnosis {
  EpisodeOfCareDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.condition,
    this.role,
    this.rank,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> condition = ToOne<Reference>();
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
  int? rank;
}
