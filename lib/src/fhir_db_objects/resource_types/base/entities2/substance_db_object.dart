import 'package:objectbox/objectbox.dart';
@Entity()
class SubstanceDbObject {
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
  final ToOne<SubstanceStatusDbObject> status = ToOne<SubstanceStatusDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<SubstanceInstanceDbObject> instance = ToMany<SubstanceInstanceDbObject>();
  final ToMany<SubstanceIngredientDbObject> ingredient = ToMany<SubstanceIngredientDbObject>();
  SubstanceDbObject({required this.id});
}
@Entity()
class SubstanceInstanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirDateTimeDbObject> expiry = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> expiryElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  SubstanceInstanceDbObject({required this.id});
}
@Entity()
class SubstanceIngredientDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<RatioDbObject> quantity = ToOne<RatioDbObject>();
  final ToOne<CodeableConceptDbObject> substanceCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> substanceReference = ToOne<ReferenceDbObject>();
  SubstanceIngredientDbObject({required this.id});
}
