import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class NutritionOrder extends DomainResource {
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
    this.supplement,
    this.enteralFormula,
    this.note,
  }) : super(resourceType: R4ResourceType.NutritionOrder);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final NutritionOrderOralDiet? oralDiet;
  final List<NutritionOrderSupplement>? supplement;
  final NutritionOrderEnteralFormula? enteralFormula;
  final List<Annotation>? note;
  @override
  NutritionOrder clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class NutritionOrderOralDiet extends BackboneElement {
  NutritionOrderOralDiet({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
    this.instructionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<CodeableConcept>? type;
  final List<Timing>? schedule;
  final List<NutritionOrderNutrient>? nutrient;
  final List<NutritionOrderTexture>? texture;
  final List<CodeableConcept>? fluidConsistencyType;
  final FhirString? instruction;
  final Element? instructionElement;
  @override
  NutritionOrderOralDiet clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class NutritionOrderNutrient extends BackboneElement {
  NutritionOrderNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? modifier;
  final Quantity? amount;
  @override
  NutritionOrderNutrient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class NutritionOrderTexture extends BackboneElement {
  NutritionOrderTexture({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.foodType,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? modifier;
  final CodeableConcept? foodType;
  @override
  NutritionOrderTexture clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class NutritionOrderSupplement extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final FhirString? productName;
  final Element? productNameElement;
  final List<Timing>? schedule;
  final Quantity? quantity;
  final FhirString? instruction;
  final Element? instructionElement;
  @override
  NutritionOrderSupplement clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class NutritionOrderEnteralFormula extends BackboneElement {
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
    this.administration,
    this.maxVolumeToDeliver,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  NutritionOrderEnteralFormula clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class NutritionOrderAdministration extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Timing? schedule;
  final Quantity? quantity;
  final Quantity? rateQuantity;
  final Ratio? rateRatio;
  final FhirString? administrationInstruction;
  final Element? administrationInstructionElement;
  @override
  NutritionOrderAdministration clone() => throw UnimplementedError();
}
