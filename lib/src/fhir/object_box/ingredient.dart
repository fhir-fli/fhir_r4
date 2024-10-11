import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Ingredient extends Resource {
  Ingredient({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.for_,
    required this.role,
    this.function_,
    this.allergenicIndicator,
    this.manufacturer,
    required this.substance,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String status;
  ToMany<Reference>? for_ = ToMany<Reference>();
  ToOne<CodeableConcept> role = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? function_ = ToMany<CodeableConcept>();
  bool? allergenicIndicator;
  ToMany<IngredientManufacturer>? manufacturer =
      ToMany<IngredientManufacturer>();
  ToOne<IngredientSubstance> substance = ToOne<IngredientSubstance>();
}

@Entity()
class IngredientManufacturer {
  IngredientManufacturer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.role,
    required this.manufacturer,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? role;
  ToOne<Reference> manufacturer = ToOne<Reference>();
}

@Entity()
class IngredientSubstance {
  IngredientSubstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.strength,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference> code = ToOne<CodeableReference>();
  ToMany<IngredientStrength>? strength = ToMany<IngredientStrength>();
}

@Entity()
class IngredientStrength {
  IngredientStrength({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.presentationRatio,
    this.presentationRatioRange,
    this.textPresentation,
    this.concentrationRatio,
    this.concentrationRatioRange,
    this.textConcentration,
    this.measurementPoint,
    this.country,
    this.referenceStrength,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Ratio>? presentationRatio = ToOne<Ratio>();
  ToOne<RatioRange>? presentationRatioRange = ToOne<RatioRange>();
  String? textPresentation;
  ToOne<Ratio>? concentrationRatio = ToOne<Ratio>();
  ToOne<RatioRange>? concentrationRatioRange = ToOne<RatioRange>();
  String? textConcentration;
  String? measurementPoint;
  ToMany<CodeableConcept>? country = ToMany<CodeableConcept>();
  ToMany<IngredientReferenceStrength>? referenceStrength =
      ToMany<IngredientReferenceStrength>();
}

@Entity()
class IngredientReferenceStrength {
  IngredientReferenceStrength({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.substance,
    this.strengthRatio,
    this.strengthRatioRange,
    this.measurementPoint,
    this.country,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference>? substance = ToOne<CodeableReference>();
  ToOne<Ratio>? strengthRatio = ToOne<Ratio>();
  ToOne<RatioRange>? strengthRatioRange = ToOne<RatioRange>();
  String? measurementPoint;
  ToMany<CodeableConcept>? country = ToMany<CodeableConcept>();
}
