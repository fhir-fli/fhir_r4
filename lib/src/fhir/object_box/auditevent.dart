import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class AuditEvent extends Resource {
  AuditEvent({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.subtype,
    this.action,
    this.period,
    required this.recorded,
    this.outcome,
    this.outcomeDesc,
    this.purposeOfEvent,
    required this.agent,
    required this.source,
    this.entity,
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
  ToOne<Coding> type = ToOne<Coding>();
  ToMany<Coding>? subtype = ToMany<Coding>();
  String? action;
  ToOne<Period>? period = ToOne<Period>();
  String recorded;
  String? outcome;
  String? outcomeDesc;
  ToMany<CodeableConcept>? purposeOfEvent = ToMany<CodeableConcept>();
  ToMany<AuditEventAgent> agent = ToMany<AuditEventAgent>();
  ToOne<AuditEventSource> source = ToOne<AuditEventSource>();
  ToMany<AuditEventEntity>? entity = ToMany<AuditEventEntity>();
}

@Entity()
class AuditEventAgent {
  AuditEventAgent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.altId,
    this.name,
    required this.requestor,
    this.location,
    this.policy,
    this.media,
    this.network,
    this.purposeOfUse,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? role = ToMany<CodeableConcept>();
  ToOne<Reference>? who = ToOne<Reference>();
  String? altId;
  String? name;
  bool requestor;
  ToOne<Reference>? location = ToOne<Reference>();
  List<String>? policy;
  ToOne<Coding>? media = ToOne<Coding>();
  ToOne<AuditEventNetwork>? network = ToOne<AuditEventNetwork>();
  ToMany<CodeableConcept>? purposeOfUse = ToMany<CodeableConcept>();
}

@Entity()
class AuditEventNetwork {
  AuditEventNetwork({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.address,
    this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? address;
  String? type;
}

@Entity()
class AuditEventSource {
  AuditEventSource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.site,
    required this.observer,
    this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? site;
  ToOne<Reference> observer = ToOne<Reference>();
  ToMany<Coding>? type = ToMany<Coding>();
}

@Entity()
class AuditEventEntity {
  AuditEventEntity({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.what,
    this.type,
    this.role,
    this.lifecycle,
    this.securityLabel,
    this.name,
    this.description,
    this.query,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? what = ToOne<Reference>();
  ToOne<Coding>? type = ToOne<Coding>();
  ToOne<Coding>? role = ToOne<Coding>();
  ToOne<Coding>? lifecycle = ToOne<Coding>();
  ToMany<Coding>? securityLabel = ToMany<Coding>();
  String? name;
  String? description;
  String? query;
  ToMany<AuditEventDetail>? detail = ToMany<AuditEventDetail>();
}

@Entity()
class AuditEventDetail {
  AuditEventDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueString,
    this.valueBase64Binary,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String? valueString;
  String? valueBase64Binary;
}
