// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCatalogEntry {
  ObjectBoxCatalogEntry({
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
    this.identifier,
    this.type,
    required this.orderable,
    this.orderableElement,
    required this.referencedItem,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.statusElement,
    this.validityPeriod,
    this.validTo,
    this.validToElement,
    this.lastUpdated,
    this.lastUpdatedElement,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry,
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
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  bool orderable;
  ToOne<ObjectBoxElement>? orderableElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> referencedItem = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxIdentifier>? additionalIdentifier =
      ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxCodeableConcept>? classification =
      ToMany<ObjectBoxCodeableConcept>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? validityPeriod = ToOne<ObjectBoxPeriod>();
  String? validTo;
  ToOne<ObjectBoxElement>? validToElement = ToOne<ObjectBoxElement>();
  String? lastUpdated;
  ToOne<ObjectBoxElement>? lastUpdatedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? additionalCharacteristic =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? additionalClassification =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCatalogEntryRelatedEntry>? relatedEntry =
      ToMany<ObjectBoxCatalogEntryRelatedEntry>();
}

@Entity()
class ObjectBoxCatalogEntryRelatedEntry {
  ObjectBoxCatalogEntryRelatedEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationtype,
    this.relationtypeElement,
    required this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String relationtype;
  ToOne<ObjectBoxElement>? relationtypeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> item = ToOne<ObjectBoxReference>();
}
