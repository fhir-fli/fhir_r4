import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class NutritionOrder extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<FhirUri>? instantiates;
  final List<Element>? instantiatesElement;
  final FhirCode? status;
  final Element? statusElement;
  final FhirCode? intent;
  final Element? intentElement;
  final Reference patient;
  final Reference? encounter;
  final FhirDateTime? dateTime;
  final Element? dateTimeElement;
  final Reference? orderer;
  final List<Reference>? allergyIntolerance;
  final List<CodeableConcept>? foodPreferenceModifier;
  final List<CodeableConcept>? excludeFoodModifier;
  final NutritionOrderOralDiet? oralDiet;
  final List<NutritionOrderSupplement>? supplement;
  final NutritionOrderEnteralFormula? enteralFormula;
  final List<Annotation>? note;

  NutritionOrder({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.instantiates,
    this.instantiatesElement,
    this.status,
    this.statusElement,
    this.intent,
    this.intentElement,
    required this.patient,
    this.encounter,
    this.dateTime,
    this.dateTimeElement,
    this.orderer,
    this.allergyIntolerance,
    this.foodPreferenceModifier,
    this.excludeFoodModifier,
    this.oralDiet,
    this.supplement,
    this.enteralFormula,
    this.note,
  }): super(resourceType: R4ResourceType.NutritionOrder);

@override
NutritionOrder clone() => this;

}


@Data()
@JsonCodable()
class NutritionOrderOralDiet {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? type;
  final List<Timing>? schedule;
  final List<NutritionOrderNutrient>? nutrient;
  final List<NutritionOrderTexture>? texture;
  final List<CodeableConcept>? fluidConsistencyType;
  final FhirString? instruction;
  final Element? instructionElement;

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
    this.instructionElement,
  });

}


@Data()
@JsonCodable()
class NutritionOrderNutrient {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? modifier;
  final Quantity? amount;

  NutritionOrderNutrient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.modifier,
    this.amount,
  });

}


@Data()
@JsonCodable()
class NutritionOrderTexture {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? modifier;
  final CodeableConcept? foodType;

  NutritionOrderTexture({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.modifier,
    this.foodType,
  });

}


@Data()
@JsonCodable()
class NutritionOrderSupplement {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final FhirString? productName;
  final Element? productNameElement;
  final List<Timing>? schedule;
  final Quantity? quantity;
  final FhirString? instruction;
  final Element? instructionElement;

  NutritionOrderSupplement({
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

}


@Data()
@JsonCodable()
class NutritionOrderEnteralFormula {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? baseFormulaType;
  final FhirString? baseFormulaProductName;
  final Element? baseFormulaProductNameElement;
  final CodeableConcept? additiveType;
  final FhirString? additiveProductName;
  final Element? additiveProductNameElement;
  final Quantity? caloricDensity;
  final CodeableConcept? routeofAdministration;
  final List<NutritionOrderAdministration>? administration;
  final Quantity? maxVolumeToDeliver;
  final FhirString? administrationInstruction;
  final Element? administrationInstructionElement;

  NutritionOrderEnteralFormula({
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
    this.administrationInstruction,
    this.administrationInstructionElement,
  });

}


@Data()
@JsonCodable()
class NutritionOrderAdministration {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Timing? schedule;
  final Quantity? quantity;
  final Quantity? rateQuantity;
  final Ratio? rateRatio;

  NutritionOrderAdministration({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateQuantity,
    this.rateRatio,
  });

}



