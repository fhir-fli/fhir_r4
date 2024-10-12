// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxProvenance {
  ObjectBoxProvenance({
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
    required this.target,
    this.occurredPeriod,
    this.occurredDateTime,
    this.occurredDateTimeElement,
    required this.recorded,
    this.recordedElement,
    this.policy,
    this.policyElement,
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
  ToMany<ObjectBoxReference> target = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod>? occurredPeriod = ToOne<ObjectBoxPeriod>();
  String? occurredDateTime;
  ToOne<ObjectBoxElement>? occurredDateTimeElement = ToOne<ObjectBoxElement>();
  String recorded;
  ToOne<ObjectBoxElement>? recordedElement = ToOne<ObjectBoxElement>();
  List<String>? policy;
  ToMany<ObjectBoxElement>? policyElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reason = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? activity = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxProvenanceAgent> agent = ToMany<ObjectBoxProvenanceAgent>();
  ToMany<ObjectBoxProvenanceEntity>? entity =
      ToMany<ObjectBoxProvenanceEntity>();
  ToMany<ObjectBoxSignature>? signature = ToMany<ObjectBoxSignature>();
}

@Entity()
class ObjectBoxProvenanceAgent {
  ObjectBoxProvenanceAgent({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? role = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> who = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? onBehalfOf = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxProvenanceEntity {
  ObjectBoxProvenanceEntity({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.role,
    this.roleElement,
    required this.what,
    this.agent,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String role;
  ToOne<ObjectBoxElement>? roleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> what = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxProvenanceAgent>? agent = ToMany<ObjectBoxProvenanceAgent>();
}
