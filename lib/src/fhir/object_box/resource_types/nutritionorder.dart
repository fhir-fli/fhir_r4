import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class NutritionOrder extends Resource {
  NutritionOrder({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.instantiates,
    required this.status,
    required this.intent,
    required this.patient,
    this.encounter,
    required this.dateTime,
    this.orderer,
    this.allergyIntolerance,
    this.foodPreferenceModifier,
    this.excludeFoodModifier,
    this.oralDiet,
    this.supplement,
    this.enteralFormula,
    this.note,
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
  List<String>? instantiatesCanonical;
  List<String>? instantiatesUri;
  List<String>? instantiates;
  String status;
  String intent;
  ToOne<Reference> patient = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String dateTime;
  ToOne<Reference>? orderer = ToOne<Reference>();
  ToMany<Reference>? allergyIntolerance = ToMany<Reference>();
  ToMany<CodeableConcept>? foodPreferenceModifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? excludeFoodModifier = ToMany<CodeableConcept>();
  ToOne<NutritionOrderOralDiet>? oralDiet = ToOne<NutritionOrderOralDiet>();
  ToMany<NutritionOrderSupplement>? supplement =
      ToMany<NutritionOrderSupplement>();
  ToOne<NutritionOrderEnteralFormula>? enteralFormula =
      ToOne<NutritionOrderEnteralFormula>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class NutritionOrderOralDiet {
  NutritionOrderOralDiet({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToMany<Timing>? schedule = ToMany<Timing>();
  ToMany<NutritionOrderNutrient>? nutrient = ToMany<NutritionOrderNutrient>();
  ToMany<NutritionOrderTexture>? texture = ToMany<NutritionOrderTexture>();
  ToMany<CodeableConcept>? fluidConsistencyType = ToMany<CodeableConcept>();
  String? instruction;
}

@Entity()
class NutritionOrderNutrient {
  NutritionOrderNutrient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.modifier,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? modifier = ToOne<CodeableConcept>();
  ToOne<Quantity>? amount = ToOne<Quantity>();
}

@Entity()
class NutritionOrderTexture {
  NutritionOrderTexture({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.modifier,
    this.foodType,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? modifier = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? foodType = ToOne<CodeableConcept>();
}

@Entity()
class NutritionOrderSupplement {
  NutritionOrderSupplement({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.productName,
    this.schedule,
    this.quantity,
    this.instruction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? productName;
  ToMany<Timing>? schedule = ToMany<Timing>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  String? instruction;
}

@Entity()
class NutritionOrderEnteralFormula {
  NutritionOrderEnteralFormula({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
    this.additiveType,
    this.additiveProductName,
    this.caloricDensity,
    this.routeofAdministration,
    this.administration,
    this.maxVolumeToDeliver,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? baseFormulaType = ToOne<CodeableConcept>();
  String? baseFormulaProductName;
  ToOne<CodeableConcept>? additiveType = ToOne<CodeableConcept>();
  String? additiveProductName;
  ToOne<Quantity>? caloricDensity = ToOne<Quantity>();
  ToOne<CodeableConcept>? routeofAdministration = ToOne<CodeableConcept>();
  ToMany<NutritionOrderAdministration>? administration =
      ToMany<NutritionOrderAdministration>();
  ToOne<Quantity>? maxVolumeToDeliver = ToOne<Quantity>();
}

@Entity()
class NutritionOrderAdministration {
  NutritionOrderAdministration({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateQuantity,
    this.rateRatio,
    this.administrationInstruction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Timing>? schedule = ToOne<Timing>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Quantity>? rateQuantity = ToOne<Quantity>();
  ToOne<Ratio>? rateRatio = ToOne<Ratio>();
  String? administrationInstruction;
}
