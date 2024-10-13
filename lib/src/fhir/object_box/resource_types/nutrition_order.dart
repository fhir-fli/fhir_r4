// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxNutritionOrder {
  ObjectBoxNutritionOrder({
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
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    this.instantiates,
    List<ObjectBoxElement>? instantiatesElement,
    required this.status,
    ObjectBoxElement? statusElement,
    required this.intent,
    ObjectBoxElement? intentElement,
    ObjectBoxReference? patient,
    ObjectBoxReference? encounter,
    required this.dateTime,
    ObjectBoxElement? dateTimeElement,
    ObjectBoxReference? orderer,
    List<ObjectBoxReference>? allergyIntolerance,
    List<ObjectBoxCodeableConcept>? foodPreferenceModifier,
    List<ObjectBoxCodeableConcept>? excludeFoodModifier,
    ObjectBoxNutritionOrderOralDiet? oralDiet,
    List<ObjectBoxNutritionOrderSupplement>? supplement,
    ObjectBoxNutritionOrderEnteralFormula? enteralFormula,
    List<ObjectBoxAnnotation>? note,
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
    this
        .instantiatesCanonicalElement
        .addAll(instantiatesCanonicalElement ?? []);
    this.instantiatesUriElement.addAll(instantiatesUriElement ?? []);
    this.instantiatesElement.addAll(instantiatesElement ?? []);
    this.statusElement.target = statusElement;
    this.intentElement.target = intentElement;
    this.patient.target = patient;
    this.encounter.target = encounter;
    this.dateTimeElement.target = dateTimeElement;
    this.orderer.target = orderer;
    this.allergyIntolerance.addAll(allergyIntolerance ?? []);
    this.foodPreferenceModifier.addAll(foodPreferenceModifier ?? []);
    this.excludeFoodModifier.addAll(excludeFoodModifier ?? []);
    this.oralDiet.target = oralDiet;
    this.supplement.addAll(supplement ?? []);
    this.enteralFormula.target = enteralFormula;
    this.note.addAll(note ?? []);
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  List<String>? instantiates;
  ToMany<ObjectBoxElement> instantiatesElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement> intentElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String dateTime;
  ToOne<ObjectBoxElement> dateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> orderer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> allergyIntolerance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> foodPreferenceModifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> excludeFoodModifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxNutritionOrderOralDiet> oralDiet =
      ToOne<ObjectBoxNutritionOrderOralDiet>();
  ToMany<ObjectBoxNutritionOrderSupplement> supplement =
      ToMany<ObjectBoxNutritionOrderSupplement>();
  ToOne<ObjectBoxNutritionOrderEnteralFormula> enteralFormula =
      ToOne<ObjectBoxNutritionOrderEnteralFormula>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxNutritionOrderOralDiet {
  ObjectBoxNutritionOrderOralDiet({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? type,
    List<ObjectBoxTiming>? schedule,
    List<ObjectBoxNutritionOrderNutrient>? nutrient,
    List<ObjectBoxNutritionOrderTexture>? texture,
    List<ObjectBoxCodeableConcept>? fluidConsistencyType,
    this.instruction,
    ObjectBoxElement? instructionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.addAll(type ?? []);
    this.schedule.addAll(schedule ?? []);
    this.nutrient.addAll(nutrient ?? []);
    this.texture.addAll(texture ?? []);
    this.fluidConsistencyType.addAll(fluidConsistencyType ?? []);
    this.instructionElement.target = instructionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxTiming> schedule = ToMany<ObjectBoxTiming>();
  ToMany<ObjectBoxNutritionOrderNutrient> nutrient =
      ToMany<ObjectBoxNutritionOrderNutrient>();
  ToMany<ObjectBoxNutritionOrderTexture> texture =
      ToMany<ObjectBoxNutritionOrderTexture>();
  ToMany<ObjectBoxCodeableConcept> fluidConsistencyType =
      ToMany<ObjectBoxCodeableConcept>();
  String? instruction;
  ToOne<ObjectBoxElement> instructionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxNutritionOrderNutrient {
  ObjectBoxNutritionOrderNutrient({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? modifier,
    ObjectBoxQuantity? amount,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.modifier.target = modifier;
    this.amount.target = amount;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> modifier = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> amount = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxNutritionOrderTexture {
  ObjectBoxNutritionOrderTexture({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? modifier,
    ObjectBoxCodeableConcept? foodType,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.modifier.target = modifier;
    this.foodType.target = foodType;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> modifier = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> foodType = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxNutritionOrderSupplement {
  ObjectBoxNutritionOrderSupplement({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.productName,
    ObjectBoxElement? productNameElement,
    List<ObjectBoxTiming>? schedule,
    ObjectBoxQuantity? quantity,
    this.instruction,
    ObjectBoxElement? instructionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.productNameElement.target = productNameElement;
    this.schedule.addAll(schedule ?? []);
    this.quantity.target = quantity;
    this.instructionElement.target = instructionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? productName;
  ToOne<ObjectBoxElement> productNameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTiming> schedule = ToMany<ObjectBoxTiming>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  String? instruction;
  ToOne<ObjectBoxElement> instructionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxNutritionOrderEnteralFormula {
  ObjectBoxNutritionOrderEnteralFormula({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? baseFormulaType,
    this.baseFormulaProductName,
    ObjectBoxElement? baseFormulaProductNameElement,
    ObjectBoxCodeableConcept? additiveType,
    this.additiveProductName,
    ObjectBoxElement? additiveProductNameElement,
    ObjectBoxQuantity? caloricDensity,
    ObjectBoxCodeableConcept? routeofAdministration,
    List<ObjectBoxNutritionOrderAdministration>? administration,
    ObjectBoxQuantity? maxVolumeToDeliver,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.baseFormulaType.target = baseFormulaType;
    this.baseFormulaProductNameElement.target = baseFormulaProductNameElement;
    this.additiveType.target = additiveType;
    this.additiveProductNameElement.target = additiveProductNameElement;
    this.caloricDensity.target = caloricDensity;
    this.routeofAdministration.target = routeofAdministration;
    this.administration.addAll(administration ?? []);
    this.maxVolumeToDeliver.target = maxVolumeToDeliver;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> baseFormulaType =
      ToOne<ObjectBoxCodeableConcept>();
  String? baseFormulaProductName;
  ToOne<ObjectBoxElement> baseFormulaProductNameElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> additiveType =
      ToOne<ObjectBoxCodeableConcept>();
  String? additiveProductName;
  ToOne<ObjectBoxElement> additiveProductNameElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> caloricDensity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> routeofAdministration =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxNutritionOrderAdministration> administration =
      ToMany<ObjectBoxNutritionOrderAdministration>();
  ToOne<ObjectBoxQuantity> maxVolumeToDeliver = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxNutritionOrderAdministration {
  ObjectBoxNutritionOrderAdministration({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxTiming? schedule,
    ObjectBoxQuantity? quantity,
    ObjectBoxQuantity? rateQuantity,
    ObjectBoxRatio? rateRatio,
    this.administrationInstruction,
    ObjectBoxElement? administrationInstructionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.schedule.target = schedule;
    this.quantity.target = quantity;
    this.rateQuantity.target = rateQuantity;
    this.rateRatio.target = rateRatio;
    this.administrationInstructionElement.target =
        administrationInstructionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTiming> schedule = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> rateQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio> rateRatio = ToOne<ObjectBoxRatio>();
  String? administrationInstruction;
  ToOne<ObjectBoxElement> administrationInstructionElement =
      ToOne<ObjectBoxElement>();
}
