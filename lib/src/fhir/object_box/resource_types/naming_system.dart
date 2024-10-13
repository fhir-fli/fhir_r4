// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxNamingSystem {
  ObjectBoxNamingSystem({
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
    required this.name,
    ObjectBoxElement? nameElement,
    required this.status,
    ObjectBoxElement? statusElement,
    required this.kind,
    ObjectBoxElement? kindElement,
    required this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.responsible,
    ObjectBoxElement? responsibleElement,
    ObjectBoxCodeableConcept? type,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.usage,
    ObjectBoxElement? usageElement,
    List<ObjectBoxNamingSystemUniqueId>? uniqueId,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.statusElement.target = statusElement;
    this.kindElement.target = kindElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.responsibleElement.target = responsibleElement;
    this.type.target = type;
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.usageElement.target = usageElement;
    this.uniqueId.addAll(uniqueId ?? []);
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
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String kind;
  ToOne<ObjectBoxElement> kindElement = ToOne<ObjectBoxElement>();
  String date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? responsible;
  ToOne<ObjectBoxElement> responsibleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? usage;
  ToOne<ObjectBoxElement> usageElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxNamingSystemUniqueId> uniqueId =
      ToMany<ObjectBoxNamingSystemUniqueId>();
}

@Entity()
class ObjectBoxNamingSystemUniqueId {
  ObjectBoxNamingSystemUniqueId({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.value,
    ObjectBoxElement? valueElement,
    this.preferred,
    ObjectBoxElement? preferredElement,
    this.comment,
    ObjectBoxElement? commentElement,
    ObjectBoxPeriod? period,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.valueElement.target = valueElement;
    this.preferredElement.target = preferredElement;
    this.commentElement.target = commentElement;
    this.period.target = period;
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
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  bool? preferred;
  ToOne<ObjectBoxElement> preferredElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}
