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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<FhirUri> instantiates;
  final List<PrimitiveElement> Instantiates;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final Reference patient;
  final Reference encounter;
  final FhirDateTime dateTime;
  final PrimitiveElement DateTime;
  final Reference orderer;
  final List<Reference> allergyIntolerance;
  final List<CodeableConcept> foodPreferenceModifier;
  final List<CodeableConcept> excludeFoodModifier;
  final NutritionOrderOralDiet oralDiet;
  final List<NutritionOrderSupplement> supplement;
  final NutritionOrderEnteralFormula enteralFormula;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class NutritionOrderOralDiet {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> type;
  final List<Timing> schedule;
  final List<NutritionOrderNutrient> nutrient;
  final List<NutritionOrderTexture> texture;
  final List<CodeableConcept> fluidConsistencyType;
  final String instruction;
  final PrimitiveElement Instruction;
}

@Data()
@JsonCodable()
class NutritionOrderNutrient {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept modifier;
  final Quantity amount;
}

@Data()
@JsonCodable()
class NutritionOrderTexture {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept modifier;
  final CodeableConcept foodType;
}

@Data()
@JsonCodable()
class NutritionOrderSupplement {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String productName;
  final PrimitiveElement ProductName;
  final List<Timing> schedule;
  final Quantity quantity;
  final String instruction;
  final PrimitiveElement Instruction;
}

@Data()
@JsonCodable()
class NutritionOrderEnteralFormula {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept baseFormulaType;
  final String baseFormulaProductName;
  final PrimitiveElement BaseFormulaProductName;
  final CodeableConcept additiveType;
  final String additiveProductName;
  final PrimitiveElement AdditiveProductName;
  final Quantity caloricDensity;
  final CodeableConcept routeofAdministration;
  final List<NutritionOrderAdministration> administration;
  final Quantity maxVolumeToDeliver;
  final String administrationInstruction;
  final PrimitiveElement AdministrationInstruction;
}

@Data()
@JsonCodable()
class NutritionOrderAdministration {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Timing schedule;
  final Quantity quantity;
  final Quantity rateQuantity;
  final Ratio rateRatio;
}

@Data()
@JsonCodable()
class NutritionProduct {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final List<Reference> manufacturer;
  final List<NutritionProductNutrient> nutrient;
  final List<NutritionProductIngredient> ingredient;
  final List<CodeableReference> knownAllergen;
  final List<NutritionProductProductCharacteristic> productCharacteristic;
  final NutritionProductInstance instance;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class NutritionProductNutrient {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableReference item;
  final List<Ratio> amount;
}

@Data()
@JsonCodable()
class NutritionProductIngredient {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableReference item;
  final List<Ratio> amount;
}

@Data()
@JsonCodable()
class NutritionProductProductCharacteristic {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement ValueString;
  final Quantity valueQuantity;
  final String valueBase64Binary;
  final PrimitiveElement ValueBase64Binary;
  final Attachment valueAttachment;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
}

@Data()
@JsonCodable()
class NutritionProductInstance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Quantity quantity;
  final List<Identifier> identifier;
  final String lotNumber;
  final PrimitiveElement LotNumber;
  final FhirDateTime expiry;
  final PrimitiveElement Expiry;
  final FhirDateTime useBy;
  final PrimitiveElement UseBy;
}


