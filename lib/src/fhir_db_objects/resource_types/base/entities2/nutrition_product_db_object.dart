import 'package:objectbox/objectbox.dart';
@Entity()
class NutritionProductDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> manufacturer = ToMany<ReferenceDbObject>();
  final ToMany<NutritionProductNutrientDbObject> nutrient = ToMany<NutritionProductNutrientDbObject>();
  final ToMany<NutritionProductIngredientDbObject> ingredient = ToMany<NutritionProductIngredientDbObject>();
  final ToMany<CodeableReferenceDbObject> knownAllergen = ToMany<CodeableReferenceDbObject>();
  final ToMany<NutritionProductCharacteristicDbObject> productCharacteristic = ToMany<NutritionProductCharacteristicDbObject>();
  final ToMany<NutritionProductInstanceDbObject> instance = ToMany<NutritionProductInstanceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  NutritionProductDbObject({required this.id});
}
@Entity()
class NutritionProductNutrientDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> item = ToOne<CodeableReferenceDbObject>();
  final ToMany<RatioDbObject> amount = ToMany<RatioDbObject>();
  NutritionProductNutrientDbObject({required this.id});
}
@Entity()
class NutritionProductIngredientDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> item = ToOne<CodeableReferenceDbObject>();
  final ToMany<RatioDbObject> amount = ToMany<RatioDbObject>();
  NutritionProductIngredientDbObject({required this.id});
}
@Entity()
class NutritionProductCharacteristicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> valueString = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<FhirBase64BinaryDbObject> valueBase64Binary = ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBase64BinaryElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> valueAttachment = ToOne<AttachmentDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement = ToOne<PrimitiveElementDbObject>();
  NutritionProductCharacteristicDbObject({required this.id});
}
@Entity()
class NutritionProductInstanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> lotNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> lotNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> expiry = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> expiryElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> useBy = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> useByElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<IdentifierDbObject> biologicalSource = ToOne<IdentifierDbObject>();
  NutritionProductInstanceDbObject({required this.id});
}
