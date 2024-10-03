import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class NutritionOrderEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'NutritionOrder';

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

  List<String>? instantiatesCanonical;

  List<FhirUri>? instantiatesUri;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesUriElement;

  List<FhirUri>? instantiates;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? intent;

  @ToOne()
  PrimitiveElementEntity? intentElement;

  @ToOne()
  ReferenceEntity? patient;

  @ToOne()
  ReferenceEntity? encounter;

  String? dateTime;

  @ToOne()
  PrimitiveElementEntity? dateTimeElement;

  @ToOne()
  ReferenceEntity? orderer;

  @ToMany()
  List<ReferenceEntity>? allergyIntolerance;

  @ToMany()
  List<CodeableConceptEntity>? foodPreferenceModifier;

  @ToMany()
  List<CodeableConceptEntity>? excludeFoodModifier;

  @ToOne()
  NutritionOrderOralDietEntity? oralDiet;

  @ToMany()
  List<NutritionOrderSupplementEntity>? supplement;

  @ToOne()
  NutritionOrderEnteralFormulaEntity? enteralFormula;

  @ToMany()
  List<AnnotationEntity>? note;
}

class NutritionOrderOralDietEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToMany()
  List<TimingEntity>? schedule;

  @ToMany()
  List<NutritionOrderNutrientEntity>? nutrient;

  @ToMany()
  List<NutritionOrderTextureEntity>? texture;

  @ToMany()
  List<CodeableConceptEntity>? fluidConsistencyType;

  String? instruction;

  @ToOne()
  PrimitiveElementEntity? instructionElement;
}

class NutritionOrderNutrientEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? modifier;

  @ToOne()
  QuantityEntity? amount;
}

class NutritionOrderTextureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? modifier;

  @ToOne()
  CodeableConceptEntity? foodType;
}

class NutritionOrderSupplementEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  String? productName;

  @ToOne()
  PrimitiveElementEntity? productNameElement;

  @ToMany()
  List<TimingEntity>? schedule;

  @ToOne()
  QuantityEntity? quantity;

  String? instruction;

  @ToOne()
  PrimitiveElementEntity? instructionElement;
}

class NutritionOrderEnteralFormulaEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? baseFormulaType;

  String? baseFormulaProductName;

  @ToOne()
  PrimitiveElementEntity? baseFormulaProductNameElement;

  @ToOne()
  CodeableConceptEntity? additiveType;

  String? additiveProductName;

  @ToOne()
  PrimitiveElementEntity? additiveProductNameElement;

  @ToOne()
  QuantityEntity? caloricDensity;

  @ToOne()
  CodeableConceptEntity? routeofAdministration;

  @ToMany()
  List<NutritionOrderAdministrationEntity>? administration;

  @ToOne()
  QuantityEntity? maxVolumeToDeliver;

  String? administrationInstruction;

  @ToOne()
  PrimitiveElementEntity? administrationInstructionElement;
}

class NutritionOrderAdministrationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  TimingEntity? schedule;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  QuantityEntity? rateQuantity;

  @ToOne()
  RatioEntity? rateRatio;
}
