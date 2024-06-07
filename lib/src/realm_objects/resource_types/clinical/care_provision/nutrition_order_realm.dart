import 'package:realm/realm.dart';
@RealmModel()
class _NutritionOrderRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late List<_FhirCanonicalRealm> instantiatesCanonical;
  late List<_FhirUriRealm> instantiatesUri;
  late List<_PrimitiveElementRealm> instantiatesUriElement;
  late List<_FhirUriRealm> instantiates;
  late List<_PrimitiveElementRealm> instantiatesElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirCodeRealm intent;
  late _PrimitiveElementRealm intentElement;
  late _ReferenceRealm patient;
  late _ReferenceRealm encounter;
  late String dateTime;
  late _PrimitiveElementRealm dateTimeElement;
  late _ReferenceRealm orderer;
  late List<_ReferenceRealm> allergyIntolerance;
  late List<_CodeableConceptRealm> foodPreferenceModifier;
  late List<_CodeableConceptRealm> excludeFoodModifier;
  late _NutritionOrderOralDietRealm oralDiet;
  late List<_NutritionOrderSupplementRealm> supplement;
  late _NutritionOrderEnteralFormulaRealm enteralFormula;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _NutritionOrderOralDietRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> type;
  late List<_TimingRealm> schedule;
  late List<_NutritionOrderNutrientRealm> nutrient;
  late List<_NutritionOrderTextureRealm> texture;
  late List<_CodeableConceptRealm> fluidConsistencyType;
  late String instruction;
  late _PrimitiveElementRealm instructionElement;
}
@RealmModel()
class _NutritionOrderNutrientRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm modifier;
  late _QuantityRealm amount;
}
@RealmModel()
class _NutritionOrderTextureRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm modifier;
  late _CodeableConceptRealm foodType;
}
@RealmModel()
class _NutritionOrderSupplementRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late String productName;
  late _PrimitiveElementRealm productNameElement;
  late List<_TimingRealm> schedule;
  late _QuantityRealm quantity;
  late String instruction;
  late _PrimitiveElementRealm instructionElement;
}
@RealmModel()
class _NutritionOrderEnteralFormulaRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm baseFormulaType;
  late String baseFormulaProductName;
  late _PrimitiveElementRealm baseFormulaProductNameElement;
  late _CodeableConceptRealm additiveType;
  late String additiveProductName;
  late _PrimitiveElementRealm additiveProductNameElement;
  late _QuantityRealm caloricDensity;
  late _CodeableConceptRealm routeofAdministration;
  late List<_NutritionOrderAdministrationRealm> administration;
  late _QuantityRealm maxVolumeToDeliver;
  late String administrationInstruction;
  late _PrimitiveElementRealm administrationInstructionElement;
}
@RealmModel()
class _NutritionOrderAdministrationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _TimingRealm schedule;
  late _QuantityRealm quantity;
  late _QuantityRealm rateQuantity;
  late _RatioRealm rateRatio;
}
