import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Provenance extends Resource {
  Provenance({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.target,
    this.occurredPeriod,
    this.occurredDateTime,
    required this.recorded,
    this.policy,
    this.location,
    this.reason,
    this.activity,
    required this.agent,
    this.entity,
    this.signature,
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
  ToMany<Reference> target = ToMany<Reference>();
  ToOne<Period>? occurredPeriod = ToOne<Period>();
  String? occurredDateTime;
  String recorded;
  List<String>? policy;
  ToOne<Reference>? location = ToOne<Reference>();
  ToMany<CodeableConcept>? reason = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? activity = ToOne<CodeableConcept>();
  ToMany<ProvenanceAgent> agent = ToMany<ProvenanceAgent>();
  ToMany<ProvenanceEntity>? entity = ToMany<ProvenanceEntity>();
  ToMany<Signature>? signature = ToMany<Signature>();
}

@Entity()
class ProvenanceAgent {
  ProvenanceAgent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.role,
    required this.who,
    this.onBehalfOf,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? role = ToMany<CodeableConcept>();
  ToOne<Reference> who = ToOne<Reference>();
  ToOne<Reference>? onBehalfOf = ToOne<Reference>();
}

@Entity()
class ProvenanceEntity {
  ProvenanceEntity({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.role,
    required this.what,
    this.agent,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String role;
  ToOne<Reference> what = ToOne<Reference>();
  ToMany<ProvenanceAgent>? agent = ToMany<ProvenanceAgent>();
}
