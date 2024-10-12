// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPackagedProductDefinition {
  ObjectBoxPackagedProductDefinition({
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
    this.name,
    this.nameElement,
    this.type,
    this.packageFor,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.containedItemQuantity,
    this.description,
    this.descriptionElement,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.characteristic,
    this.copackagedIndicator,
    this.copackagedIndicatorElement,
    this.manufacturer,
    this.package,
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
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? packageFor = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
  String? statusDate;
  ToOne<ObjectBoxElement>? statusDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxQuantity>? containedItemQuantity =
      ToMany<ObjectBoxQuantity>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxPackagedProductDefinitionLegalStatusOfSupply>?
      legalStatusOfSupply =
      ToMany<ObjectBoxPackagedProductDefinitionLegalStatusOfSupply>();
  ToMany<ObjectBoxMarketingStatus>? marketingStatus =
      ToMany<ObjectBoxMarketingStatus>();
  ToMany<ObjectBoxCodeableConcept>? characteristic =
      ToMany<ObjectBoxCodeableConcept>();
  bool? copackagedIndicator;
  ToOne<ObjectBoxElement>? copackagedIndicatorElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? manufacturer = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxPackagedProductDefinitionPackage>? package =
      ToOne<ObjectBoxPackagedProductDefinitionPackage>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionLegalStatusOfSupply {
  ObjectBoxPackagedProductDefinitionLegalStatusOfSupply({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.jurisdiction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? jurisdiction =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionPackage {
  ObjectBoxPackagedProductDefinitionPackage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.quantity,
    this.quantityElement,
    this.material,
    this.alternateMaterial,
    this.shelfLifeStorage,
    this.manufacturer,
    this.property,
    this.containedItem,
    this.package,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  int? quantity;
  ToOne<ObjectBoxElement>? quantityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? material =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? alternateMaterial =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxPackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage =
      ToMany<ObjectBoxPackagedProductDefinitionShelfLifeStorage>();
  ToMany<ObjectBoxReference>? manufacturer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxPackagedProductDefinitionProperty>? property =
      ToMany<ObjectBoxPackagedProductDefinitionProperty>();
  ToMany<ObjectBoxPackagedProductDefinitionContainedItem>? containedItem =
      ToMany<ObjectBoxPackagedProductDefinitionContainedItem>();
  ToMany<ObjectBoxPackagedProductDefinitionPackage>? package =
      ToMany<ObjectBoxPackagedProductDefinitionPackage>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionShelfLifeStorage {
  ObjectBoxPackagedProductDefinitionShelfLifeStorage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.periodDuration,
    this.periodString,
    this.periodStringElement,
    this.specialPrecautionsForStorage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxFhirDuration>? periodDuration = ToOne<ObjectBoxFhirDuration>();
  String? periodString;
  ToOne<ObjectBoxElement>? periodStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? specialPrecautionsForStorage =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionProperty {
  ObjectBoxPackagedProductDefinitionProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueDate;
  ToOne<ObjectBoxElement>? valueDateElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment>? valueAttachment = ToOne<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionContainedItem {
  ObjectBoxPackagedProductDefinitionContainedItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.item,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> item = ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxQuantity>? amount = ToOne<ObjectBoxQuantity>();
}
