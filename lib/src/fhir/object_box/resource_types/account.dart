// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAccount {
  ObjectBoxAccount({
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
    List<ObjectBoxIdentifier>? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? type,
    this.name,
    ObjectBoxElement? nameElement,
    List<ObjectBoxReference>? subject,
    ObjectBoxPeriod? servicePeriod,
    List<ObjectBoxAccountCoverage>? coverage,
    ObjectBoxReference? owner,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxAccountGuarantor>? guarantor,
    ObjectBoxReference? partOf,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.type.target = type;
    this.nameElement.target = nameElement;
    this.subject.addAll(subject ?? []);
    this.servicePeriod.target = servicePeriod;
    this.coverage.addAll(coverage ?? []);
    this.owner.target = owner;
    this.descriptionElement.target = descriptionElement;
    this.guarantor.addAll(guarantor ?? []);
    this.partOf.target = partOf;
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> subject = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> servicePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxAccountCoverage> coverage =
      ToMany<ObjectBoxAccountCoverage>();
  ToOne<ObjectBoxReference> owner = ToOne<ObjectBoxReference>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAccountGuarantor> guarantor =
      ToMany<ObjectBoxAccountGuarantor>();
  ToOne<ObjectBoxReference> partOf = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxAccountCoverage {
  ObjectBoxAccountCoverage({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? coverage,
    this.priority,
    ObjectBoxElement? priorityElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.coverage.target = coverage;
    this.priorityElement.target = priorityElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  int? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxAccountGuarantor {
  ObjectBoxAccountGuarantor({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? party,
    this.onHold,
    ObjectBoxElement? onHoldElement,
    ObjectBoxPeriod? period,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.party.target = party;
    this.onHoldElement.target = onHoldElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> party = ToOne<ObjectBoxReference>();
  bool? onHold;
  ToOne<ObjectBoxElement> onHoldElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}
