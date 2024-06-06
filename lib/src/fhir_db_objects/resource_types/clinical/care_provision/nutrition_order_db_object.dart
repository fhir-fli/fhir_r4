import 'package:objectbox/objectbox.dart';
@Entity()
class NutritionOrderDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<FhirCanonicalDbObject> instantiatesCanonical = ToMany<FhirCanonicalDbObject>();
  final ToMany<FhirUriDbObject> instantiatesUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesUriElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirUriDbObject> instantiates = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> intent = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> intentElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> dateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> orderer = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> allergyIntolerance = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> foodPreferenceModifier = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> excludeFoodModifier = ToMany<CodeableConceptDbObject>();
  final ToOne<NutritionOrderOralDietDbObject> oralDiet = ToOne<NutritionOrderOralDietDbObject>();
  final ToMany<NutritionOrderSupplementDbObject> supplement = ToMany<NutritionOrderSupplementDbObject>();
  final ToOne<NutritionOrderEnteralFormulaDbObject> enteralFormula = ToOne<NutritionOrderEnteralFormulaDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  NutritionOrderDbObject({required this.id});
}
@Entity()
class NutritionOrderOralDietDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> type = ToMany<CodeableConceptDbObject>();
  final ToMany<TimingDbObject> schedule = ToMany<TimingDbObject>();
  final ToMany<NutritionOrderNutrientDbObject> nutrient = ToMany<NutritionOrderNutrientDbObject>();
  final ToMany<NutritionOrderTextureDbObject> texture = ToMany<NutritionOrderTextureDbObject>();
  final ToMany<CodeableConceptDbObject> fluidConsistencyType = ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> instruction = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> instructionElement = ToOne<PrimitiveElementDbObject>();
  NutritionOrderOralDietDbObject({required this.id});
}
@Entity()
class NutritionOrderNutrientDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> modifier = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> amount = ToOne<QuantityDbObject>();
  NutritionOrderNutrientDbObject({required this.id});
}
@Entity()
class NutritionOrderTextureDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> modifier = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> foodType = ToOne<CodeableConceptDbObject>();
  NutritionOrderTextureDbObject({required this.id});
}
@Entity()
class NutritionOrderSupplementDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> productName = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> productNameElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<TimingDbObject> schedule = ToMany<TimingDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> instruction = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> instructionElement = ToOne<PrimitiveElementDbObject>();
  NutritionOrderSupplementDbObject({required this.id});
}
@Entity()
class NutritionOrderEnteralFormulaDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> baseFormulaType = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> baseFormulaProductName = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> baseFormulaProductNameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> additiveType = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> additiveProductName = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> additiveProductNameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> caloricDensity = ToOne<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> routeofAdministration = ToOne<CodeableConceptDbObject>();
  final ToMany<NutritionOrderAdministrationDbObject> administration = ToMany<NutritionOrderAdministrationDbObject>();
  final ToOne<QuantityDbObject> maxVolumeToDeliver = ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> administrationInstruction = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> administrationInstructionElement = ToOne<PrimitiveElementDbObject>();
  NutritionOrderEnteralFormulaDbObject({required this.id});
}
@Entity()
class NutritionOrderAdministrationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<TimingDbObject> schedule = ToOne<TimingDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> rateQuantity = ToOne<QuantityDbObject>();
  final ToOne<RatioDbObject> rateRatio = ToOne<RatioDbObject>();
  NutritionOrderAdministrationDbObject({required this.id});
}
