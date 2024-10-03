import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class PackagedProductDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'PackagedProductDefinition';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<ReferenceEntity>? packageFor;

  @ToOne()
  CodeableConceptEntity? status;

  String? statusDate;

  @ToOne()
  PrimitiveElementEntity? statusDateElement;

  @ToMany()
  List<QuantityEntity>? containedItemQuantity;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<PackagedProductDefinitionLegalStatusOfSupplyEntity>? legalStatusOfSupply;

  @ToMany()
  List<MarketingStatusEntity>? marketingStatus;

  @ToMany()
  List<CodeableConceptEntity>? characteristic;

  bool? copackagedIndicator;

  @ToOne()
  PrimitiveElementEntity? copackagedIndicatorElement;

  @ToMany()
  List<ReferenceEntity>? manufacturer;

  @ToOne()
  PackagedProductDefinitionPackageEntity? package;
}

class PackagedProductDefinitionLegalStatusOfSupplyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  CodeableConceptEntity? jurisdiction;
}

class PackagedProductDefinitionPackageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  @ToOne()
  CodeableConceptEntity? type;

  int? quantity;

  @ToOne()
  PrimitiveElementEntity? quantityElement;

  @ToMany()
  List<CodeableConceptEntity>? material;

  @ToMany()
  List<CodeableConceptEntity>? alternateMaterial;

  @ToMany()
  List<PackagedProductDefinitionShelfLifeStorageEntity>? shelfLifeStorage;

  @ToMany()
  List<ReferenceEntity>? manufacturer;

  @ToMany()
  List<PackagedProductDefinitionPropertyEntity>? property;

  @ToMany()
  List<PackagedProductDefinitionContainedItemEntity>? containedItem;

  @ToMany()
  List<PackagedProductDefinitionPackageEntity>? package;
}

class PackagedProductDefinitionShelfLifeStorageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  IdentifierEntity? identifier;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  FhirDurationEntity? periodDuration;

  String? periodString;

  @ToOne()
  PrimitiveElementEntity? periodStringElement;

  @ToMany()
  List<CodeableConceptEntity>? specialPrecautionsForStorage;
}

class PackagedProductDefinitionPropertyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;

  @ToOne()
  QuantityEntity? valueQuantity;

  String? valueDate;

  @ToOne()
  PrimitiveElementEntity? valueDateElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  @ToOne()
  AttachmentEntity? valueAttachment;
}

class PackagedProductDefinitionContainedItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? item;

  @ToOne()
  QuantityEntity? amount;
}
