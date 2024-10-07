import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class NutritionOrder extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<FhirUri>? instantiates;
  final List<Element>? instantiatesElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirCode intent;
  final Element? intentElement;
  final Reference patient;
  final Reference? encounter;
  final FhirDateTime dateTime;
  final Element? dateTimeElement;
  final Reference? orderer;
  final List<Reference>? allergyIntolerance;
  final List<CodeableConcept>? foodPreferenceModifier;
  final List<CodeableConcept>? excludeFoodModifier;
  final BackboneElement? oralDiet;
  final List<BackboneElement>? nutrient;
  final List<BackboneElement>? texture;
  final List<BackboneElement>? supplement;
  final BackboneElement? enteralFormula;
  final List<BackboneElement>? administration;
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
    this.nutrient,
    this.texture,
    this.supplement,
    this.enteralFormula,
    this.administration,
    this.note,
  }) : super(resourceType: R4ResourceType.NutritionOrder);

@override
NutritionOrder clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionOrderOralDiet extends BackboneElement {
  final List<CodeableConcept>? type;
  final List<Timing>? schedule;
  final List<CodeableConcept>? fluidConsistencyType;
  final FhirString? instruction;
  final Element? instructionElement;

  NutritionOrderOralDiet({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.schedule,
    this.fluidConsistencyType,
    this.instruction,
this.instructionElement,
  });

@override
NutritionOrderOralDiet clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionOrderNutrient extends BackboneElement {
  final CodeableConcept? modifier;
  final Quantity? amount;

  NutritionOrderNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.amount,
  });

@override
NutritionOrderNutrient clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionOrderTexture extends BackboneElement {
  final CodeableConcept? modifier;
  final CodeableConcept? foodType;

  NutritionOrderTexture({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.foodType,
  });

@override
NutritionOrderTexture clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionOrderSupplement extends BackboneElement {
  final CodeableConcept? type;
  final FhirString? productName;
  final Element? productNameElement;
  final List<Timing>? schedule;
  final Quantity? quantity;
  final FhirString? instruction;
  final Element? instructionElement;

  NutritionOrderSupplement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.productName,
this.productNameElement,
    this.schedule,
    this.quantity,
    this.instruction,
this.instructionElement,
  });

@override
NutritionOrderSupplement clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionOrderEnteralFormula extends BackboneElement {
  final CodeableConcept? baseFormulaType;
  final FhirString? baseFormulaProductName;
  final Element? baseFormulaProductNameElement;
  final CodeableConcept? additiveType;
  final FhirString? additiveProductName;
  final Element? additiveProductNameElement;
  final Quantity? caloricDensity;
  final CodeableConcept? routeofAdministration;
  final Quantity? maxVolumeToDeliver;

  NutritionOrderEnteralFormula({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
this.baseFormulaProductNameElement,
    this.additiveType,
    this.additiveProductName,
this.additiveProductNameElement,
    this.caloricDensity,
    this.routeofAdministration,
    this.maxVolumeToDeliver,
  });

@override
NutritionOrderEnteralFormula clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionOrderAdministration extends BackboneElement {
  final Timing? schedule;
  final Quantity? quantity;
  final Quantity? rateQuantity;
  final Ratio? rateRatio;
  final FhirString? administrationInstruction;
  final Element? administrationInstructionElement;

  NutritionOrderAdministration({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.schedule,
    this.quantity,
    this.rateQuantity,
    this.rateRatio,
    this.administrationInstruction,
this.administrationInstructionElement,
  });

@override
NutritionOrderAdministration clone() => throw UnimplementedError();
}

