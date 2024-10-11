import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class NutritionProduct extends Resource {
  NutritionProduct({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.status,
    this.category,
    this.code,
    this.manufacturer,
    this.nutrient,
    this.ingredient,
    this.knownAllergen,
    this.productCharacteristic,
    this.instance,
    this.note,
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
  String status;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToMany<Reference>? manufacturer = ToMany<Reference>();
  ToMany<NutritionProductNutrient>? nutrient =
      ToMany<NutritionProductNutrient>();
  ToMany<NutritionProductIngredient>? ingredient =
      ToMany<NutritionProductIngredient>();
  ToMany<CodeableReference>? knownAllergen = ToMany<CodeableReference>();
  ToMany<NutritionProductProductCharacteristic>? productCharacteristic =
      ToMany<NutritionProductProductCharacteristic>();
  ToOne<NutritionProductInstance>? instance = ToOne<NutritionProductInstance>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class NutritionProductNutrient {
  NutritionProductNutrient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.item,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference>? item = ToOne<CodeableReference>();
  ToMany<Ratio>? amount = ToMany<Ratio>();
}

@Entity()
class NutritionProductIngredient {
  NutritionProductIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.item,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableReference> item = ToOne<CodeableReference>();
  ToMany<Ratio>? amount = ToMany<Ratio>();
}

@Entity()
class NutritionProductProductCharacteristic {
  NutritionProductProductCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.valueQuantity,
    this.valueBase64Binary,
    this.valueAttachment,
    this.valueBoolean,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  String? valueString;
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  String? valueBase64Binary;
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
  bool? valueBoolean;
}

@Entity()
class NutritionProductInstance {
  NutritionProductInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.quantity,
    this.identifier,
    this.lotNumber,
    this.expiry,
    this.useBy,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? lotNumber;
  String? expiry;
  String? useBy;
}
