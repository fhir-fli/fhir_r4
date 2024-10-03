import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class IngredientEntity {
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

  @ToOne()
  IdentifierEntity? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<ReferenceEntity>? for_;

  @ToOne()
  CodeableConceptEntity? role;

  @ToMany()
  List<CodeableConceptEntity>? function;

  @ToOne()
  CodeableConceptEntity? group;

  bool? allergenicIndicator;

  @ToOne()
  PrimitiveElementEntity? allergenicIndicatorElement;

  @ToMany()
  List<IngredientManufacturerEntity>? manufacturer;

  @ToOne()
  IngredientSubstanceEntity? substance;
}

class IngredientManufacturerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? role;

  @ToOne()
  PrimitiveElementEntity? roleElement;

  @ToOne()
  ReferenceEntity? manufacturer;
}

class IngredientSubstanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? code;

  @ToMany()
  List<IngredientStrengthEntity>? strength;
}

class IngredientStrengthEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  RatioEntity? presentationRatio;

  @ToOne()
  RatioRangeEntity? presentationRatioRange;

  String? textPresentation;

  @ToOne()
  PrimitiveElementEntity? textPresentationElement;

  @ToOne()
  RatioEntity? concentrationRatio;

  @ToOne()
  RatioRangeEntity? concentrationRatioRange;

  String? textConcentration;

  @ToOne()
  PrimitiveElementEntity? textConcentrationElement;

  String? measurementPoint;

  @ToOne()
  PrimitiveElementEntity? measurementPointElement;

  @ToMany()
  List<CodeableConceptEntity>? country;

  @ToMany()
  List<IngredientReferenceStrengthEntity>? referenceStrength;
}

class IngredientReferenceStrengthEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? substance;

  @ToOne()
  RatioEntity? strengthRatio;

  @ToOne()
  RatioRangeEntity? strengthRatioRange;

  @ToOne()
  QuantityEntity? strengthQuantity;

  String? measurementPoint;

  @ToOne()
  PrimitiveElementEntity? measurementPointElement;

  @ToMany()
  List<CodeableConceptEntity>? country;
}
