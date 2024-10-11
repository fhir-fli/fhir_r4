import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class PackagedProductDefinition extends Resource {
  PackagedProductDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.type,
    this.packageFor,
    this.status,
    this.statusDate,
    this.containedItemQuantity,
    this.description,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.characteristic,
    this.copackagedIndicator,
    this.manufacturer,
    this.package,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? name;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<Reference>? packageFor = ToMany<Reference>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  String? statusDate;
  ToMany<Quantity>? containedItemQuantity = ToMany<Quantity>();
  String? description;
  ToMany<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply =
      ToMany<PackagedProductDefinitionLegalStatusOfSupply>();
  ToMany<MarketingStatus>? marketingStatus = ToMany<MarketingStatus>();
  ToMany<CodeableConcept>? characteristic = ToMany<CodeableConcept>();
  bool? copackagedIndicator;
  ToMany<Reference>? manufacturer = ToMany<Reference>();
  ToOne<PackagedProductDefinitionPackage>? package =
      ToOne<PackagedProductDefinitionPackage>();
}

@Entity()
class PackagedProductDefinitionLegalStatusOfSupply {
  PackagedProductDefinitionLegalStatusOfSupply({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.jurisdiction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? jurisdiction = ToOne<CodeableConcept>();
}

@Entity()
class PackagedProductDefinitionPackage {
  PackagedProductDefinitionPackage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.quantity,
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  int? quantity;
  ToMany<CodeableConcept>? material = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? alternateMaterial = ToMany<CodeableConcept>();
  ToMany<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage =
      ToMany<PackagedProductDefinitionShelfLifeStorage>();
  ToMany<Reference>? manufacturer = ToMany<Reference>();
  ToMany<PackagedProductDefinitionProperty>? property =
      ToMany<PackagedProductDefinitionProperty>();
  ToMany<PackagedProductDefinitionContainedItem>? containedItem =
      ToMany<PackagedProductDefinitionContainedItem>();
  ToMany<PackagedProductDefinitionPackage>? package =
      ToMany<PackagedProductDefinitionPackage>();
}

@Entity()
class PackagedProductDefinitionShelfLifeStorage {
  PackagedProductDefinitionShelfLifeStorage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.periodDuration,
    this.periodString,
    this.specialPrecautionsForStorage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<FhirDuration>? periodDuration = ToOne<FhirDuration>();
  String? periodString;
  ToMany<CodeableConcept>? specialPrecautionsForStorage =
      ToMany<CodeableConcept>();
}

@Entity()
class PackagedProductDefinitionProperty {
  PackagedProductDefinitionProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueBoolean,
    this.valueAttachment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  String? valueDate;
  bool? valueBoolean;
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
}

@Entity()
class PackagedProductDefinitionContainedItem {
  PackagedProductDefinitionContainedItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.item,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference> item = ToOne<CodeableReference>();
  ToOne<Quantity>? amount = ToOne<Quantity>();
}
