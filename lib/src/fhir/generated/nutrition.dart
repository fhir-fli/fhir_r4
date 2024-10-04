import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class NutritionOrder {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final List<FhirUri> instantiates;
  final List<PrimitiveElement> instantiatesElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode intent;
  final PrimitiveElement intentElement;
  final Reference patient;
  final Reference encounter;
  final FhirDateTime dateTime;
  final PrimitiveElement dateTimeElement;
  final Reference orderer;
  final List<Reference> allergyIntolerance;
  final List<CodeableConcept> foodPreferenceModifier;
  final List<CodeableConcept> excludeFoodModifier;
  final NutritionOrderOralDiet oralDiet;
  final List<NutritionOrderSupplement> supplement;
  final NutritionOrderEnteralFormula enteralFormula;
  final List<Annotation> note;
  const NutritionOrder({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.instantiatesCanonical,
    required this.instantiatesUri,
    required this.instantiatesUriElement,
    required this.instantiates,
    required this.instantiatesElement,
    required this.status,
    required this.statusElement,
    required this.intent,
    required this.intentElement,
    required this.patient,
    required this.encounter,
    required this.dateTime,
    required this.dateTimeElement,
    required this.orderer,
    required this.allergyIntolerance,
    required this.foodPreferenceModifier,
    required this.excludeFoodModifier,
    required this.oralDiet,
    required this.supplement,
    required this.enteralFormula,
    required this.note,
  });
}

@Data()
@JsonCodable()
class NutritionOrderOralDiet {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> type;
  final List<Timing> schedule;
  final List<NutritionOrderNutrient> nutrient;
  final List<NutritionOrderTexture> texture;
  final List<CodeableConcept> fluidConsistencyType;
  final String instruction;
  final PrimitiveElement instructionElement;
  const NutritionOrderOralDiet({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.schedule,
    required this.nutrient,
    required this.texture,
    required this.fluidConsistencyType,
    required this.instruction,
    required this.instructionElement,
  });
}

@Data()
@JsonCodable()
class NutritionOrderNutrient {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept modifier;
  final Quantity amount;
  const NutritionOrderNutrient({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.modifier,
    required this.amount,
  });
}

@Data()
@JsonCodable()
class NutritionOrderTexture {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept modifier;
  final CodeableConcept foodType;
  const NutritionOrderTexture({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.modifier,
    required this.foodType,
  });
}

@Data()
@JsonCodable()
class NutritionOrderSupplement {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String productName;
  final PrimitiveElement productNameElement;
  final List<Timing> schedule;
  final Quantity quantity;
  final String instruction;
  final PrimitiveElement instructionElement;
  const NutritionOrderSupplement({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.productName,
    required this.productNameElement,
    required this.schedule,
    required this.quantity,
    required this.instruction,
    required this.instructionElement,
  });
}

@Data()
@JsonCodable()
class NutritionOrderEnteralFormula {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept baseFormulaType;
  final String baseFormulaProductName;
  final PrimitiveElement baseFormulaProductNameElement;
  final CodeableConcept additiveType;
  final String additiveProductName;
  final PrimitiveElement additiveProductNameElement;
  final Quantity caloricDensity;
  final CodeableConcept routeofAdministration;
  final List<NutritionOrderAdministration> administration;
  final Quantity maxVolumeToDeliver;
  final String administrationInstruction;
  final PrimitiveElement administrationInstructionElement;
  const NutritionOrderEnteralFormula({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.baseFormulaType,
    required this.baseFormulaProductName,
    required this.baseFormulaProductNameElement,
    required this.additiveType,
    required this.additiveProductName,
    required this.additiveProductNameElement,
    required this.caloricDensity,
    required this.routeofAdministration,
    required this.administration,
    required this.maxVolumeToDeliver,
    required this.administrationInstruction,
    required this.administrationInstructionElement,
  });
}

@Data()
@JsonCodable()
class NutritionOrderAdministration {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Timing schedule;
  final Quantity quantity;
  final Quantity rateQuantity;
  final Ratio rateRatio;
  const NutritionOrderAdministration({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.schedule,
    required this.quantity,
    required this.rateQuantity,
    required this.rateRatio,
  });
}

@Data()
@JsonCodable()
class NutritionProduct {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final List<Reference> manufacturer;
  final List<NutritionProductNutrient> nutrient;
  final List<NutritionProductIngredient> ingredient;
  final List<CodeableReference> knownAllergen;
  final List<NutritionProductProductCharacteristic> productCharacteristic;
  final NutritionProductInstance instance;
  final List<Annotation> note;
  const NutritionProduct({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.status,
    required this.statusElement,
    required this.category,
    required this.code,
    required this.manufacturer,
    required this.nutrient,
    required this.ingredient,
    required this.knownAllergen,
    required this.productCharacteristic,
    required this.instance,
    required this.note,
  });
}

@Data()
@JsonCodable()
class NutritionProductNutrient {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference item;
  final List<Ratio> amount;
  const NutritionProductNutrient({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.item,
    required this.amount,
  });
}

@Data()
@JsonCodable()
class NutritionProductIngredient {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableReference item;
  final List<Ratio> amount;
  const NutritionProductIngredient({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.item,
    required this.amount,
  });
}

@Data()
@JsonCodable()
class NutritionProductProductCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final Quantity valueQuantity;
  final String valueBase64Binary;
  final PrimitiveElement valueBase64BinaryElement;
  final Attachment valueAttachment;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  const NutritionProductProductCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueCodeableConcept,
    required this.valueString,
    required this.valueStringElement,
    required this.valueQuantity,
    required this.valueBase64Binary,
    required this.valueBase64BinaryElement,
    required this.valueAttachment,
    required this.valueBoolean,
    required this.valueBooleanElement,
  });
}

@Data()
@JsonCodable()
class NutritionProductInstance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity quantity;
  final List<Identifier> identifier;
  final String lotNumber;
  final PrimitiveElement lotNumberElement;
  final FhirDateTime expiry;
  final PrimitiveElement expiryElement;
  final FhirDateTime useBy;
  final PrimitiveElement useByElement;
  const NutritionProductInstance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.quantity,
    required this.identifier,
    required this.lotNumber,
    required this.lotNumberElement,
    required this.expiry,
    required this.expiryElement,
    required this.useBy,
    required this.useByElement,
  });
}


