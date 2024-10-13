// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPackagedProductDefinition {
  ObjectBoxPackagedProductDefinition({
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
    List<ObjectBoxIdentifier>? identifier,
    this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxReference>? packageFor,
    ObjectBoxCodeableConcept? status,
    this.statusDate,
    ObjectBoxElement? statusDateElement,
    List<ObjectBoxQuantity>? containedItemQuantity,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxPackagedProductDefinitionLegalStatusOfSupply>?
        legalStatusOfSupply,
    List<ObjectBoxMarketingStatus>? marketingStatus,
    List<ObjectBoxCodeableConcept>? characteristic,
    this.copackagedIndicator,
    ObjectBoxElement? copackagedIndicatorElement,
    List<ObjectBoxReference>? manufacturer,
    ObjectBoxPackagedProductDefinitionPackage? package,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.nameElement.target = nameElement;
    this.type.target = type;
    this.packageFor.addAll(packageFor ?? []);
    this.status.target = status;
    this.statusDateElement.target = statusDateElement;
    this.containedItemQuantity.addAll(containedItemQuantity ?? []);
    this.descriptionElement.target = descriptionElement;
    this.legalStatusOfSupply.addAll(legalStatusOfSupply ?? []);
    this.marketingStatus.addAll(marketingStatus ?? []);
    this.characteristic.addAll(characteristic ?? []);
    this.copackagedIndicatorElement.target = copackagedIndicatorElement;
    this.manufacturer.addAll(manufacturer ?? []);
    this.package.target = package;
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> packageFor = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  String? statusDate;
  ToOne<ObjectBoxElement> statusDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxQuantity> containedItemQuantity = ToMany<ObjectBoxQuantity>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxPackagedProductDefinitionLegalStatusOfSupply>
      legalStatusOfSupply =
      ToMany<ObjectBoxPackagedProductDefinitionLegalStatusOfSupply>();
  ToMany<ObjectBoxMarketingStatus> marketingStatus =
      ToMany<ObjectBoxMarketingStatus>();
  ToMany<ObjectBoxCodeableConcept> characteristic =
      ToMany<ObjectBoxCodeableConcept>();
  bool? copackagedIndicator;
  ToOne<ObjectBoxElement> copackagedIndicatorElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> manufacturer = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxPackagedProductDefinitionPackage> package =
      ToOne<ObjectBoxPackagedProductDefinitionPackage>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionLegalStatusOfSupply {
  ObjectBoxPackagedProductDefinitionLegalStatusOfSupply({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxCodeableConcept? jurisdiction,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.jurisdiction.target = jurisdiction;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> jurisdiction =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionPackage {
  ObjectBoxPackagedProductDefinitionPackage({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    ObjectBoxCodeableConcept? type,
    this.quantity,
    ObjectBoxElement? quantityElement,
    List<ObjectBoxCodeableConcept>? material,
    List<ObjectBoxCodeableConcept>? alternateMaterial,
    List<ObjectBoxPackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage,
    List<ObjectBoxReference>? manufacturer,
    List<ObjectBoxPackagedProductDefinitionProperty>? property,
    List<ObjectBoxPackagedProductDefinitionContainedItem>? containedItem,
    List<ObjectBoxPackagedProductDefinitionPackage>? package,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.type.target = type;
    this.quantityElement.target = quantityElement;
    this.material.addAll(material ?? []);
    this.alternateMaterial.addAll(alternateMaterial ?? []);
    this.shelfLifeStorage.addAll(shelfLifeStorage ?? []);
    this.manufacturer.addAll(manufacturer ?? []);
    this.property.addAll(property ?? []);
    this.containedItem.addAll(containedItem ?? []);
    this.package.addAll(package ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  int? quantity;
  ToOne<ObjectBoxElement> quantityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> material =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> alternateMaterial =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxPackagedProductDefinitionShelfLifeStorage> shelfLifeStorage =
      ToMany<ObjectBoxPackagedProductDefinitionShelfLifeStorage>();
  ToMany<ObjectBoxReference> manufacturer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxPackagedProductDefinitionProperty> property =
      ToMany<ObjectBoxPackagedProductDefinitionProperty>();
  ToMany<ObjectBoxPackagedProductDefinitionContainedItem> containedItem =
      ToMany<ObjectBoxPackagedProductDefinitionContainedItem>();
  ToMany<ObjectBoxPackagedProductDefinitionPackage> package =
      ToMany<ObjectBoxPackagedProductDefinitionPackage>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionShelfLifeStorage {
  ObjectBoxPackagedProductDefinitionShelfLifeStorage({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxFhirDuration? periodDuration,
    this.periodString,
    ObjectBoxElement? periodStringElement,
    List<ObjectBoxCodeableConcept>? specialPrecautionsForStorage,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.periodDuration.target = periodDuration;
    this.periodStringElement.target = periodStringElement;
    this
        .specialPrecautionsForStorage
        .addAll(specialPrecautionsForStorage ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxFhirDuration> periodDuration = ToOne<ObjectBoxFhirDuration>();
  String? periodString;
  ToOne<ObjectBoxElement> periodStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> specialPrecautionsForStorage =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionProperty {
  ObjectBoxPackagedProductDefinitionProperty({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxQuantity? valueQuantity,
    this.valueDate,
    ObjectBoxElement? valueDateElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    ObjectBoxAttachment? valueAttachment,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueQuantity.target = valueQuantity;
    this.valueDateElement.target = valueDateElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueAttachment.target = valueAttachment;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueDate;
  ToOne<ObjectBoxElement> valueDateElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxPackagedProductDefinitionContainedItem {
  ObjectBoxPackagedProductDefinitionContainedItem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? item,
    ObjectBoxQuantity? amount,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.item.target = item;
    this.amount.target = amount;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> item = ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxQuantity> amount = ToOne<ObjectBoxQuantity>();
}
