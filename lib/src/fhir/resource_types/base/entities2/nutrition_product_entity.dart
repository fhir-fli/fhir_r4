import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class NutritionProductEntity {
  @Id(assignable: true)
  int dbId = 0;
  @ToOne()
  R4ResourceTypeEntity? resourceType;

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
  String? status;
  @ToOne()
  PrimitiveElementEntity? statusElement;
  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToOne()
  CodeableConceptEntity? code;

  @ToMany()
  List<ReferenceEntity>? manufacturer;

  @ToMany()
  List<NutritionProductNutrientEntity>? nutrient;

  @ToMany()
  List<NutritionProductIngredientEntity>? ingredient;

  @ToMany()
  List<CodeableReferenceEntity>? knownAllergen;
  @ToMany()
  List<NutritionProductCharacteristicEntity>? productCharacteristic;

  @ToMany()
  List<NutritionProductInstanceEntity>? instance;

  @ToMany()
  List<AnnotationEntity>? note;
}

class NutritionProductNutrientEntity {
  @Id(assignable: true)
  int dbId = 0;

  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? item;

  @ToMany()
  List<RatioEntity>? amount;
}

class NutritionProductIngredientEntity {
  @Id(assignable: true)
  int dbId = 0;

  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? item;

  @ToMany()
  List<RatioEntity>? amount;
}

class NutritionProductCharacteristicEntity {
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

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  @ToOne()
  QuantityEntity? valueQuantity;

  String? valueBase64Binary;

  @ToOne()
  PrimitiveElementEntity? valueBase64BinaryElement;

  @ToOne()
  AttachmentEntity? valueAttachment;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;
}

class NutritionProductInstanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  QuantityEntity? quantity;
  @ToMany()
  List<IdentifierEntity>? identifier;
  String? name;
  @ToOne()
  PrimitiveElementEntity? nameElement;
  String? lotNumber;
  @ToOne()
  PrimitiveElementEntity? lotNumberElement;
  String? expiry;
  @ToOne()
  PrimitiveElementEntity? expiryElement;
  String? useBy;
  @ToOne()
  PrimitiveElementEntity? useByElement;
  @ToOne()
  IdentifierEntity? biologicalSource;
}
