// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxProvenance {
  ObjectBoxProvenance({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxReference>? target,
    ObjectBoxPeriod? occurredPeriod,
    this.occurredDateTime,
    ObjectBoxElement? occurredDateTimeElement,
    required this.recorded,
    ObjectBoxElement? recordedElement,
    this.policy,
    List<ObjectBoxElement>? policyElement,
    ObjectBoxReference? location,
    List<ObjectBoxCodeableConcept>? reason,
    ObjectBoxCodeableConcept? activity,
    List<ObjectBoxProvenanceAgent>? agent,
    List<ObjectBoxProvenanceEntity>? entity,
    List<ObjectBoxSignature>? signature,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.target.addAll(target ?? []);
    this.occurredPeriod.target = occurredPeriod;
    this.occurredDateTimeElement.target = occurredDateTimeElement;
    this.recordedElement.target = recordedElement;
    this.policyElement.addAll(policyElement ?? []);
    this.location.target = location;
    this.reason.addAll(reason ?? []);
    this.activity.target = activity;
    this.agent.addAll(agent ?? []);
    this.entity.addAll(entity ?? []);
    this.signature.addAll(signature ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
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
  ToMany<ObjectBoxReference> target = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> occurredPeriod = ToOne<ObjectBoxPeriod>();
  String? occurredDateTime;
  ToOne<ObjectBoxElement> occurredDateTimeElement = ToOne<ObjectBoxElement>();
  String recorded;
  ToOne<ObjectBoxElement> recordedElement = ToOne<ObjectBoxElement>();
  List<String>? policy;
  ToMany<ObjectBoxElement> policyElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reason = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> activity = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxProvenanceAgent> agent = ToMany<ObjectBoxProvenanceAgent>();
  ToMany<ObjectBoxProvenanceEntity> entity =
      ToMany<ObjectBoxProvenanceEntity>();
  ToMany<ObjectBoxSignature> signature = ToMany<ObjectBoxSignature>();
}

@Entity()
class ObjectBoxProvenanceAgent {
  ObjectBoxProvenanceAgent({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? role,
    ObjectBoxReference? who,
    ObjectBoxReference? onBehalfOf,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.role.addAll(role ?? []);
    this.who.target = who;
    this.onBehalfOf.target = onBehalfOf;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> role = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> who = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> onBehalfOf = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxProvenanceEntity {
  ObjectBoxProvenanceEntity({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.role,
    ObjectBoxElement? roleElement,
    ObjectBoxReference? what,
    List<ObjectBoxProvenanceAgent>? agent,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.roleElement.target = roleElement;
    this.what.target = what;
    this.agent.addAll(agent ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String role;
  ToOne<ObjectBoxElement> roleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> what = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxProvenanceAgent> agent = ToMany<ObjectBoxProvenanceAgent>();
}
