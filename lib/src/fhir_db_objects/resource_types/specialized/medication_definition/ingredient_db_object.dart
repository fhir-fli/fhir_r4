import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class IngredientDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> for_ = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> function =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> group = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> allergenicIndicator =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> allergenicIndicatorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<IngredientManufacturerDbObject> manufacturer =
      ToMany<IngredientManufacturerDbObject>();
  final ToOne<IngredientSubstanceDbObject> substance =
      ToOne<IngredientSubstanceDbObject>();
  IngredientDbObject({required this.id});
}

@Entity()
class IngredientManufacturerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> role = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> roleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> manufacturer = ToOne<ReferenceDbObject>();
  IngredientManufacturerDbObject({required this.id});
}

@Entity()
class IngredientSubstanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> code =
      ToOne<CodeableReferenceDbObject>();
  final ToMany<IngredientStrengthDbObject> strength =
      ToMany<IngredientStrengthDbObject>();
  IngredientSubstanceDbObject({required this.id});
}

@Entity()
class IngredientStrengthDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<RatioDbObject> presentationRatio = ToOne<RatioDbObject>();
  final ToOne<RatioRangeDbObject> presentationRatioRange =
      ToOne<RatioRangeDbObject>();
  final ToOne<StringDbObject> textPresentation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textPresentationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<RatioDbObject> concentrationRatio = ToOne<RatioDbObject>();
  final ToOne<RatioRangeDbObject> concentrationRatioRange =
      ToOne<RatioRangeDbObject>();
  final ToOne<StringDbObject> textConcentration = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textConcentrationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> measurementPoint = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> measurementPointElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> country =
      ToMany<CodeableConceptDbObject>();
  final ToMany<IngredientReferenceStrengthDbObject> referenceStrength =
      ToMany<IngredientReferenceStrengthDbObject>();
  IngredientStrengthDbObject({required this.id});
}

@Entity()
class IngredientReferenceStrengthDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> substance =
      ToOne<CodeableReferenceDbObject>();
  final ToOne<RatioDbObject> strengthRatio = ToOne<RatioDbObject>();
  final ToOne<RatioRangeDbObject> strengthRatioRange =
      ToOne<RatioRangeDbObject>();
  final ToOne<QuantityDbObject> strengthQuantity = ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> measurementPoint = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> measurementPointElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> country =
      ToMany<CodeableConceptDbObject>();
  IngredientReferenceStrengthDbObject({required this.id});
}
