// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCatalogEntry {
  ObjectBoxCatalogEntry({
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
    ObjectBoxCodeableConcept? type,
    required this.orderable,
    ObjectBoxElement? orderableElement,
    ObjectBoxReference? referencedItem,
    List<ObjectBoxIdentifier>? additionalIdentifier,
    List<ObjectBoxCodeableConcept>? classification,
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxPeriod? validityPeriod,
    this.validTo,
    ObjectBoxElement? validToElement,
    this.lastUpdated,
    ObjectBoxElement? lastUpdatedElement,
    List<ObjectBoxCodeableConcept>? additionalCharacteristic,
    List<ObjectBoxCodeableConcept>? additionalClassification,
    List<ObjectBoxCatalogEntryRelatedEntry>? relatedEntry,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.type.target = type;
    this.orderableElement.target = orderableElement;
    this.referencedItem.target = referencedItem;
    this.additionalIdentifier.addAll(additionalIdentifier ?? []);
    this.classification.addAll(classification ?? []);
    this.statusElement.target = statusElement;
    this.validityPeriod.target = validityPeriod;
    this.validToElement.target = validToElement;
    this.lastUpdatedElement.target = lastUpdatedElement;
    this.additionalCharacteristic.addAll(additionalCharacteristic ?? []);
    this.additionalClassification.addAll(additionalClassification ?? []);
    this.relatedEntry.addAll(relatedEntry ?? []);
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
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  bool orderable;
  ToOne<ObjectBoxElement> orderableElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> referencedItem = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxIdentifier> additionalIdentifier =
      ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxCodeableConcept> classification =
      ToMany<ObjectBoxCodeableConcept>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> validityPeriod = ToOne<ObjectBoxPeriod>();
  String? validTo;
  ToOne<ObjectBoxElement> validToElement = ToOne<ObjectBoxElement>();
  String? lastUpdated;
  ToOne<ObjectBoxElement> lastUpdatedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> additionalCharacteristic =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> additionalClassification =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCatalogEntryRelatedEntry> relatedEntry =
      ToMany<ObjectBoxCatalogEntryRelatedEntry>();
}

@Entity()
class ObjectBoxCatalogEntryRelatedEntry {
  ObjectBoxCatalogEntryRelatedEntry({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.relationtype,
    ObjectBoxElement? relationtypeElement,
    ObjectBoxReference? item,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.relationtypeElement.target = relationtypeElement;
    this.item.target = item;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String relationtype;
  ToOne<ObjectBoxElement> relationtypeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> item = ToOne<ObjectBoxReference>();
}
