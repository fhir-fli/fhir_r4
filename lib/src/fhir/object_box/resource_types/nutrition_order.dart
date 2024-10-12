// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxNutritionOrder {
  ObjectBoxNutritionOrder({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.instantiates,
    this.instantiatesElement,
    required this.status,
    this.statusElement,
    required this.intent,
    this.intentElement,
    required this.patient,
    this.encounter,
    required this.dateTime,
    this.dateTimeElement,
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement>? instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement>? instantiatesUriElement = ToMany<ObjectBoxElement>();
  List<String>? instantiates;
  ToMany<ObjectBoxElement>? instantiatesElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement>? intentElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String dateTime;
  ToOne<ObjectBoxElement>? dateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? orderer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? allergyIntolerance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? foodPreferenceModifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? excludeFoodModifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxNutritionOrderOralDiet>? oralDiet =
      ToOne<ObjectBoxNutritionOrderOralDiet>();
  ToMany<ObjectBoxNutritionOrderSupplement>? supplement =
      ToMany<ObjectBoxNutritionOrderSupplement>();
  ToOne<ObjectBoxNutritionOrderEnteralFormula>? enteralFormula =
      ToOne<ObjectBoxNutritionOrderEnteralFormula>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxNutritionOrderOralDiet {
  ObjectBoxNutritionOrderOralDiet({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
    this.instructionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxTiming>? schedule = ToMany<ObjectBoxTiming>();
  ToMany<ObjectBoxNutritionOrderNutrient>? nutrient =
      ToMany<ObjectBoxNutritionOrderNutrient>();
  ToMany<ObjectBoxNutritionOrderTexture>? texture =
      ToMany<ObjectBoxNutritionOrderTexture>();
  ToMany<ObjectBoxCodeableConcept>? fluidConsistencyType =
      ToMany<ObjectBoxCodeableConcept>();
  String? instruction;
  ToOne<ObjectBoxElement>? instructionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxNutritionOrderNutrient {
  ObjectBoxNutritionOrderNutrient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.modifier,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? modifier = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? amount = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxNutritionOrderTexture {
  ObjectBoxNutritionOrderTexture({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.modifier,
    this.foodType,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? modifier = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? foodType = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxNutritionOrderSupplement {
  ObjectBoxNutritionOrderSupplement({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.productName,
    this.productNameElement,
    this.schedule,
    this.quantity,
    this.instruction,
    this.instructionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String? productName;
  ToOne<ObjectBoxElement>? productNameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTiming>? schedule = ToMany<ObjectBoxTiming>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  String? instruction;
  ToOne<ObjectBoxElement>? instructionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxNutritionOrderEnteralFormula {
  ObjectBoxNutritionOrderEnteralFormula({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
    this.baseFormulaProductNameElement,
    this.additiveType,
    this.additiveProductName,
    this.additiveProductNameElement,
    this.caloricDensity,
    this.routeofAdministration,
    this.administration,
    this.maxVolumeToDeliver,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? baseFormulaType =
      ToOne<ObjectBoxCodeableConcept>();
  String? baseFormulaProductName;
  ToOne<ObjectBoxElement>? baseFormulaProductNameElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? additiveType =
      ToOne<ObjectBoxCodeableConcept>();
  String? additiveProductName;
  ToOne<ObjectBoxElement>? additiveProductNameElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? caloricDensity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? routeofAdministration =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxNutritionOrderAdministration>? administration =
      ToMany<ObjectBoxNutritionOrderAdministration>();
  ToOne<ObjectBoxQuantity>? maxVolumeToDeliver = ToOne<ObjectBoxQuantity>();
}

@Entity()
class ObjectBoxNutritionOrderAdministration {
  ObjectBoxNutritionOrderAdministration({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateQuantity,
    this.rateRatio,
    this.administrationInstruction,
    this.administrationInstructionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTiming>? schedule = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? rateQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio>? rateRatio = ToOne<ObjectBoxRatio>();
  String? administrationInstruction;
  ToOne<ObjectBoxElement>? administrationInstructionElement =
      ToOne<ObjectBoxElement>();
}
