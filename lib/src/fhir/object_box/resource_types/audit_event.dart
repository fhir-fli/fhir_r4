// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAuditEvent {
  ObjectBoxAuditEvent({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.subtype,
    this.action,
    this.actionElement,
    this.period,
    required this.recorded,
    this.recordedElement,
    this.outcome,
    this.outcomeElement,
    this.outcomeDesc,
    this.outcomeDescElement,
    this.purposeOfEvent,
    required this.agent,
    required this.source,
    this.entity,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> type = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding>? subtype = ToMany<ObjectBoxCoding>();
  String? action;
  ToOne<ObjectBoxElement>? actionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  String recorded;
  ToOne<ObjectBoxElement>? recordedElement = ToOne<ObjectBoxElement>();
  String? outcome;
  ToOne<ObjectBoxElement>? outcomeElement = ToOne<ObjectBoxElement>();
  String? outcomeDesc;
  ToOne<ObjectBoxElement>? outcomeDescElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? purposeOfEvent =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAuditEventAgent> agent = ToMany<ObjectBoxAuditEventAgent>();
  ToOne<ObjectBoxAuditEventSource> source = ToOne<ObjectBoxAuditEventSource>();
  ToMany<ObjectBoxAuditEventEntity>? entity =
      ToMany<ObjectBoxAuditEventEntity>();
}

@Entity()
class ObjectBoxAuditEventAgent {
  ObjectBoxAuditEventAgent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.altId,
    this.altIdElement,
    this.name,
    this.nameElement,
    required this.requestor,
    this.requestorElement,
    this.location,
    this.policy,
    this.policyElement,
    this.media,
    this.network,
    this.purposeOfUse,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? role = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? who = ToOne<ObjectBoxReference>();
  String? altId;
  ToOne<ObjectBoxElement>? altIdElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  bool requestor;
  ToOne<ObjectBoxElement>? requestorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  List<String>? policy;
  ToMany<ObjectBoxElement>? policyElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCoding>? media = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxAuditEventNetwork>? network =
      ToOne<ObjectBoxAuditEventNetwork>();
  ToMany<ObjectBoxCodeableConcept>? purposeOfUse =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxAuditEventNetwork {
  ObjectBoxAuditEventNetwork({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.address,
    this.addressElement,
    this.type,
    this.typeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? address;
  ToOne<ObjectBoxElement>? addressElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxAuditEventSource {
  ObjectBoxAuditEventSource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.site,
    this.siteElement,
    required this.observer,
    this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? site;
  ToOne<ObjectBoxElement>? siteElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> observer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCoding>? type = ToMany<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxAuditEventEntity {
  ObjectBoxAuditEventEntity({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.what,
    this.type,
    this.role,
    this.lifecycle,
    this.securityLabel,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.query,
    this.queryElement,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? what = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCoding>? type = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxCoding>? role = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxCoding>? lifecycle = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding>? securityLabel = ToMany<ObjectBoxCoding>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? query;
  ToOne<ObjectBoxElement>? queryElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAuditEventDetail>? detail =
      ToMany<ObjectBoxAuditEventDetail>();
}

@Entity()
class ObjectBoxAuditEventDetail {
  ObjectBoxAuditEventDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    this.valueString,
    this.valueStringElement,
    this.valueBase64Binary,
    this.valueBase64BinaryElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement>? valueBase64BinaryElement = ToOne<ObjectBoxElement>();
}
