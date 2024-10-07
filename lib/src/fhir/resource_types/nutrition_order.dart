import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [NutritionOrder] /// A request to supply a diet, formula feeding (enteral) or oral nutritional
/// supplement to a patient/resident.
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

  /// [identifier] /// Identifiers assigned to this order by the order sender or by the order
  /// receiver.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this NutritionOrder.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// NutritionOrder.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [instantiates] /// The URL pointing to a protocol, guideline, orderset or other definition
  /// that is adhered to in whole or in part by this NutritionOrder.
  final List<FhirUri>? instantiates;
  final List<Element>? instantiatesElement;

  /// [status] /// The workflow status of the nutrition order/request.
  final FhirCode status;
  final Element? statusElement;

  /// [intent] /// Indicates the level of authority/intentionality associated with the
  /// NutrionOrder and where the request fits into the workflow chain.
  final FhirCode intent;
  final Element? intentElement;

  /// [patient] /// The person (patient) who needs the nutrition order for an oral diet,
  /// nutritional supplement and/or enteral or formula feeding.
  final Reference patient;

  /// [encounter] /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  final Reference? encounter;

  /// [dateTime] /// The date and time that this nutrition order was requested.
  final FhirDateTime dateTime;
  final Element? dateTimeElement;

  /// [orderer] /// The practitioner that holds legal responsibility for ordering the diet,
  /// nutritional supplement, or formula feedings.
  final Reference? orderer;

  /// [allergyIntolerance] /// A link to a record of allergies or intolerances which should be included in
  /// the nutrition order.
  final List<Reference>? allergyIntolerance;

  /// [foodPreferenceModifier] /// This modifier is used to convey order-specific modifiers about the type of
  /// food that should be given. These can be derived from patient allergies,
  /// intolerances, or preferences such as Halal, Vegan or Kosher. This modifier
  /// applies to the entire nutrition order inclusive of the oral diet,
  /// nutritional supplements and enteral formula feedings.
  final List<CodeableConcept>? foodPreferenceModifier;

  /// [excludeFoodModifier] /// This modifier is used to convey Order-specific modifier about the type of
  /// oral food or oral fluids that should not be given. These can be derived
  /// from patient allergies, intolerances, or preferences such as No Red Meat,
  /// No Soy or No Wheat or Gluten-Free. While it should not be necessary to
  /// repeat allergy or intolerance information captured in the referenced
  /// AllergyIntolerance resource in the excludeFoodModifier, this element may be
  /// used to convey additional specificity related to foods that should be
  /// eliminated from the patient’s diet for any reason. This modifier applies to
  /// the entire nutrition order inclusive of the oral diet, nutritional
  /// supplements and enteral formula feedings.
  final List<CodeableConcept>? excludeFoodModifier;

  /// [oralDiet] /// Diet given orally in contrast to enteral (tube) feeding.
  final NutritionOrderOralDiet? oralDiet;

  /// [supplement] /// Oral nutritional products given in order to add further nutritional value
  /// to the patient's diet.
  final List<NutritionOrderSupplement>? supplement;

  /// [enteralFormula] /// Feeding provided through the gastrointestinal tract via a tube, catheter,
  /// or stoma that delivers nutrition distal to the oral cavity.
  final NutritionOrderEnteralFormula? enteralFormula;

  /// [note] /// Comments made about the {{title}} by the requester, performer, subject or
  /// other participants.
  final List<Annotation>? note;
  @override
  NutritionOrder clone() => throw UnimplementedError();
  NutritionOrder copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    List<FhirUri>? instantiates,
    List<Element>? instantiatesElement,
    FhirCode? status,
    Element? statusElement,
    FhirCode? intent,
    Element? intentElement,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? dateTime,
    Element? dateTimeElement,
    Reference? orderer,
    List<Reference>? allergyIntolerance,
    List<CodeableConcept>? foodPreferenceModifier,
    List<CodeableConcept>? excludeFoodModifier,
    NutritionOrderOralDiet? oralDiet,
    List<NutritionOrderSupplement>? supplement,
    NutritionOrderEnteralFormula? enteralFormula,
    List<Annotation>? note,
  }) {
    return NutritionOrder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      instantiates: instantiates ?? this.instantiates,
      instantiatesElement: instantiatesElement ?? this.instantiatesElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      dateTime: dateTime ?? this.dateTime,
      dateTimeElement: dateTimeElement ?? this.dateTimeElement,
      orderer: orderer ?? this.orderer,
      allergyIntolerance: allergyIntolerance ?? this.allergyIntolerance,
      foodPreferenceModifier:
          foodPreferenceModifier ?? this.foodPreferenceModifier,
      excludeFoodModifier: excludeFoodModifier ?? this.excludeFoodModifier,
      oralDiet: oralDiet ?? this.oralDiet,
      supplement: supplement ?? this.supplement,
      enteralFormula: enteralFormula ?? this.enteralFormula,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionOrderOralDiet] /// Diet given orally in contrast to enteral (tube) feeding.
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

  /// [type] /// The kind of diet or dietary restriction such as fiber restricted diet or
  /// diabetic diet.
  final List<CodeableConcept>? type;

  /// [schedule] /// The time period and frequency at which the diet should be given. The diet
  /// should be given for the combination of all schedules if more than one
  /// schedule is present.
  final List<Timing>? schedule;

  /// [nutrient] /// Class that defines the quantity and type of nutrient modifications (for
  /// example carbohydrate, fiber or sodium) required for the oral diet.
  final List<NutritionOrderNutrient>? nutrient;

  /// [texture] /// Class that describes any texture modifications required for the patient to
  /// safely consume various types of solid foods.
  final List<NutritionOrderTexture>? texture;

  /// [fluidConsistencyType] /// The required consistency (e.g. honey-thick, nectar-thick, thin, thickened.)
  /// of liquids or fluids served to the patient.
  final List<CodeableConcept>? fluidConsistencyType;

  /// [instruction] /// Free text or additional instructions or information pertaining to the oral
  /// diet.
  final FhirString? instruction;
  final Element? instructionElement;
  @override
  NutritionOrderOralDiet clone() => throw UnimplementedError();
  NutritionOrderOralDiet copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    List<Timing>? schedule,
    List<NutritionOrderNutrient>? nutrient,
    List<NutritionOrderTexture>? texture,
    List<CodeableConcept>? fluidConsistencyType,
    FhirString? instruction,
    Element? instructionElement,
  }) {
    return NutritionOrderOralDiet(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      schedule: schedule ?? this.schedule,
      nutrient: nutrient ?? this.nutrient,
      texture: texture ?? this.texture,
      fluidConsistencyType: fluidConsistencyType ?? this.fluidConsistencyType,
      instruction: instruction ?? this.instruction,
      instructionElement: instructionElement ?? this.instructionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionOrderNutrient] /// Class that defines the quantity and type of nutrient modifications (for
/// example carbohydrate, fiber or sodium) required for the oral diet.
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

  /// [modifier] /// The nutrient that is being modified such as carbohydrate or sodium.
  final CodeableConcept? modifier;

  /// [amount] /// The quantity of the specified nutrient to include in diet.
  final Quantity? amount;
  @override
  NutritionOrderNutrient clone() => throw UnimplementedError();
  NutritionOrderNutrient copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? modifier,
    Quantity? amount,
  }) {
    return NutritionOrderNutrient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      modifier: modifier ?? this.modifier,
      amount: amount ?? this.amount,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionOrderTexture] /// Class that describes any texture modifications required for the patient to
/// safely consume various types of solid foods.
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

  /// [modifier] /// Any texture modifications (for solid foods) that should be made, e.g. easy
  /// to chew, chopped, ground, and pureed.
  final CodeableConcept? modifier;

  /// [foodType] /// The food type(s) (e.g. meats, all foods) that the texture modification
  /// applies to. This could be all foods types.
  final CodeableConcept? foodType;
  @override
  NutritionOrderTexture clone() => throw UnimplementedError();
  NutritionOrderTexture copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? modifier,
    CodeableConcept? foodType,
  }) {
    return NutritionOrderTexture(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      modifier: modifier ?? this.modifier,
      foodType: foodType ?? this.foodType,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionOrderSupplement] /// Oral nutritional products given in order to add further nutritional value
/// to the patient's diet.
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

  /// [type] /// The kind of nutritional supplement product required such as a high protein
  /// or pediatric clear liquid supplement.
  final CodeableConcept? type;

  /// [productName] /// The product or brand name of the nutritional supplement such as "Acme
  /// Protein Shake".
  final FhirString? productName;
  final Element? productNameElement;

  /// [schedule] /// The time period and frequency at which the supplement(s) should be given.
  /// The supplement should be given for the combination of all schedules if more
  /// than one schedule is present.
  final List<Timing>? schedule;

  /// [quantity] /// The amount of the nutritional supplement to be given.
  final Quantity? quantity;

  /// [instruction] /// Free text or additional instructions or information pertaining to the oral
  /// supplement.
  final FhirString? instruction;
  final Element? instructionElement;
  @override
  NutritionOrderSupplement clone() => throw UnimplementedError();
  NutritionOrderSupplement copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? productName,
    Element? productNameElement,
    List<Timing>? schedule,
    Quantity? quantity,
    FhirString? instruction,
    Element? instructionElement,
  }) {
    return NutritionOrderSupplement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      productName: productName ?? this.productName,
      productNameElement: productNameElement ?? this.productNameElement,
      schedule: schedule ?? this.schedule,
      quantity: quantity ?? this.quantity,
      instruction: instruction ?? this.instruction,
      instructionElement: instructionElement ?? this.instructionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionOrderEnteralFormula] /// Feeding provided through the gastrointestinal tract via a tube, catheter,
/// or stoma that delivers nutrition distal to the oral cavity.
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

  /// [baseFormulaType] /// The type of enteral or infant formula such as an adult standard formula
  /// with fiber or a soy-based infant formula.
  final CodeableConcept? baseFormulaType;

  /// [baseFormulaProductName] /// The product or brand name of the enteral or infant formula product such as
  /// "ACME Adult Standard Formula".
  final FhirString? baseFormulaProductName;
  final Element? baseFormulaProductNameElement;

  /// [additiveType] /// Indicates the type of modular component such as protein, carbohydrate, fat
  /// or fiber to be provided in addition to or mixed with the base formula.
  final CodeableConcept? additiveType;

  /// [additiveProductName] /// The product or brand name of the type of modular component to be added to
  /// the formula.
  final FhirString? additiveProductName;
  final Element? additiveProductNameElement;

  /// [caloricDensity] /// The amount of energy (calories) that the formula should provide per
  /// specified volume, typically per mL or fluid oz. For example, an infant may
  /// require a formula that provides 24 calories per fluid ounce or an adult may
  /// require an enteral formula that provides 1.5 calorie/mL.
  final Quantity? caloricDensity;

  /// [routeofAdministration] /// The route or physiological path of administration into the patient's
  /// gastrointestinal tract for purposes of providing the formula feeding, e.g.
  /// nasogastric tube.
  final CodeableConcept? routeofAdministration;

  /// [administration] /// Formula administration instructions as structured data. This repeating
  /// structure allows for changing the administration rate or volume over time
  /// for both bolus and continuous feeding. An example of this would be an
  /// instruction to increase the rate of continuous feeding every 2 hours.
  final List<NutritionOrderAdministration>? administration;

  /// [maxVolumeToDeliver] /// The maximum total quantity of formula that may be administered to a subject
  /// over the period of time, e.g. 1440 mL over 24 hours.
  final Quantity? maxVolumeToDeliver;
  @override
  NutritionOrderEnteralFormula clone() => throw UnimplementedError();
  NutritionOrderEnteralFormula copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? baseFormulaType,
    FhirString? baseFormulaProductName,
    Element? baseFormulaProductNameElement,
    CodeableConcept? additiveType,
    FhirString? additiveProductName,
    Element? additiveProductNameElement,
    Quantity? caloricDensity,
    CodeableConcept? routeofAdministration,
    List<NutritionOrderAdministration>? administration,
    Quantity? maxVolumeToDeliver,
  }) {
    return NutritionOrderEnteralFormula(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      baseFormulaType: baseFormulaType ?? this.baseFormulaType,
      baseFormulaProductName:
          baseFormulaProductName ?? this.baseFormulaProductName,
      baseFormulaProductNameElement:
          baseFormulaProductNameElement ?? this.baseFormulaProductNameElement,
      additiveType: additiveType ?? this.additiveType,
      additiveProductName: additiveProductName ?? this.additiveProductName,
      additiveProductNameElement:
          additiveProductNameElement ?? this.additiveProductNameElement,
      caloricDensity: caloricDensity ?? this.caloricDensity,
      routeofAdministration:
          routeofAdministration ?? this.routeofAdministration,
      administration: administration ?? this.administration,
      maxVolumeToDeliver: maxVolumeToDeliver ?? this.maxVolumeToDeliver,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionOrderAdministration] /// Formula administration instructions as structured data. This repeating
/// structure allows for changing the administration rate or volume over time
/// for both bolus and continuous feeding. An example of this would be an
/// instruction to increase the rate of continuous feeding every 2 hours.
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

  /// [schedule] /// The time period and frequency at which the enteral formula should be
  /// delivered to the patient.
  final Timing? schedule;

  /// [quantity] /// The volume of formula to provide to the patient per the specified
  /// administration schedule.
  final Quantity? quantity;

  /// [rateQuantity] /// The rate of administration of formula via a feeding pump, e.g. 60 mL per
  /// hour, according to the specified schedule.
  final Quantity? rateQuantity;

  /// [rateRatio] /// The rate of administration of formula via a feeding pump, e.g. 60 mL per
  /// hour, according to the specified schedule.
  final Ratio? rateRatio;

  /// [administrationInstruction] /// Free text formula administration, feeding instructions or additional
  /// instructions or information.
  final FhirString? administrationInstruction;
  final Element? administrationInstructionElement;
  @override
  NutritionOrderAdministration clone() => throw UnimplementedError();
  NutritionOrderAdministration copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Timing? schedule,
    Quantity? quantity,
    Quantity? rateQuantity,
    Ratio? rateRatio,
    FhirString? administrationInstruction,
    Element? administrationInstructionElement,
  }) {
    return NutritionOrderAdministration(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      schedule: schedule ?? this.schedule,
      quantity: quantity ?? this.quantity,
      rateQuantity: rateQuantity ?? this.rateQuantity,
      rateRatio: rateRatio ?? this.rateRatio,
      administrationInstruction:
          administrationInstruction ?? this.administrationInstruction,
      administrationInstructionElement: administrationInstructionElement ??
          this.administrationInstructionElement,
    );
  }
}
