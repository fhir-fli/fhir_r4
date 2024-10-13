// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAuditEvent {
  ObjectBoxAuditEvent({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCoding? type,
    List<ObjectBoxCoding>? subtype,
    this.action,
    ObjectBoxElement? actionElement,
    ObjectBoxPeriod? period,
    required this.recorded,
    ObjectBoxElement? recordedElement,
    this.outcome,
    ObjectBoxElement? outcomeElement,
    this.outcomeDesc,
    ObjectBoxElement? outcomeDescElement,
    List<ObjectBoxCodeableConcept>? purposeOfEvent,
    List<ObjectBoxAuditEventAgent>? agent,
    ObjectBoxAuditEventSource? source,
    List<ObjectBoxAuditEventEntity>? entity,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.subtype.addAll(subtype ?? []);
    this.actionElement.target = actionElement;
    this.period.target = period;
    this.recordedElement.target = recordedElement;
    this.outcomeElement.target = outcomeElement;
    this.outcomeDescElement.target = outcomeDescElement;
    this.purposeOfEvent.addAll(purposeOfEvent ?? []);
    this.agent.addAll(agent ?? []);
    this.source.target = source;
    this.entity.addAll(entity ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> type = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding> subtype = ToMany<ObjectBoxCoding>();
  String? action;
  ToOne<ObjectBoxElement> actionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  String recorded;
  ToOne<ObjectBoxElement> recordedElement = ToOne<ObjectBoxElement>();
  String? outcome;
  ToOne<ObjectBoxElement> outcomeElement = ToOne<ObjectBoxElement>();
  String? outcomeDesc;
  ToOne<ObjectBoxElement> outcomeDescElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> purposeOfEvent =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAuditEventAgent> agent = ToMany<ObjectBoxAuditEventAgent>();
  ToOne<ObjectBoxAuditEventSource> source = ToOne<ObjectBoxAuditEventSource>();
  ToMany<ObjectBoxAuditEventEntity> entity =
      ToMany<ObjectBoxAuditEventEntity>();
}

@Entity()
class ObjectBoxAuditEventAgent {
  ObjectBoxAuditEventAgent({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? role,
    ObjectBoxReference? who,
    this.altId,
    ObjectBoxElement? altIdElement,
    this.name,
    ObjectBoxElement? nameElement,
    required this.requestor,
    ObjectBoxElement? requestorElement,
    ObjectBoxReference? location,
    this.policy,
    List<ObjectBoxElement>? policyElement,
    ObjectBoxCoding? media,
    ObjectBoxAuditEventNetwork? network,
    List<ObjectBoxCodeableConcept>? purposeOfUse,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.role.addAll(role ?? []);
    this.who.target = who;
    this.altIdElement.target = altIdElement;
    this.nameElement.target = nameElement;
    this.requestorElement.target = requestorElement;
    this.location.target = location;
    this.policyElement.addAll(policyElement ?? []);
    this.media.target = media;
    this.network.target = network;
    this.purposeOfUse.addAll(purposeOfUse ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> role = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> who = ToOne<ObjectBoxReference>();
  String? altId;
  ToOne<ObjectBoxElement> altIdElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  bool requestor;
  ToOne<ObjectBoxElement> requestorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  List<String>? policy;
  ToMany<ObjectBoxElement> policyElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> media = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxAuditEventNetwork> network =
      ToOne<ObjectBoxAuditEventNetwork>();
  ToMany<ObjectBoxCodeableConcept> purposeOfUse =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxAuditEventNetwork {
  ObjectBoxAuditEventNetwork({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.address,
    ObjectBoxElement? addressElement,
    this.type,
    ObjectBoxElement? typeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.addressElement.target = addressElement;
    this.typeElement.target = typeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? address;
  ToOne<ObjectBoxElement> addressElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxAuditEventSource {
  ObjectBoxAuditEventSource({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.site,
    ObjectBoxElement? siteElement,
    ObjectBoxReference? observer,
    List<ObjectBoxCoding>? type,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.siteElement.target = siteElement;
    this.observer.target = observer;
    this.type.addAll(type ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? site;
  ToOne<ObjectBoxElement> siteElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> observer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCoding> type = ToMany<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxAuditEventEntity {
  ObjectBoxAuditEventEntity({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? what,
    ObjectBoxCoding? type,
    ObjectBoxCoding? role,
    ObjectBoxCoding? lifecycle,
    List<ObjectBoxCoding>? securityLabel,
    this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.query,
    ObjectBoxElement? queryElement,
    List<ObjectBoxAuditEventDetail>? detail,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.what.target = what;
    this.type.target = type;
    this.role.target = role;
    this.lifecycle.target = lifecycle;
    this.securityLabel.addAll(securityLabel ?? []);
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
    this.queryElement.target = queryElement;
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> what = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCoding> type = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxCoding> role = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxCoding> lifecycle = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding> securityLabel = ToMany<ObjectBoxCoding>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? query;
  ToOne<ObjectBoxElement> queryElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAuditEventDetail> detail =
      ToMany<ObjectBoxAuditEventDetail>();
}

@Entity()
class ObjectBoxAuditEventDetail {
  ObjectBoxAuditEventDetail({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueBase64Binary,
    ObjectBoxElement? valueBase64BinaryElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.valueStringElement.target = valueStringElement;
    this.valueBase64BinaryElement.target = valueBase64BinaryElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement> valueBase64BinaryElement = ToOne<ObjectBoxElement>();
}
