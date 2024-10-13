// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxNutritionProduct {
  ObjectBoxNutritionProduct({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxReference>? manufacturer,
    List<ObjectBoxNutritionProductNutrient>? nutrient,
    List<ObjectBoxNutritionProductIngredient>? ingredient,
    List<ObjectBoxCodeableReference>? knownAllergen,
    List<ObjectBoxNutritionProductProductCharacteristic>? productCharacteristic,
    ObjectBoxNutritionProductInstance? instance,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.statusElement.target = statusElement;
    this.category.addAll(category ?? []);
    this.code.target = code;
    this.manufacturer.addAll(manufacturer ?? []);
    this.nutrient.addAll(nutrient ?? []);
    this.ingredient.addAll(ingredient ?? []);
    this.knownAllergen.addAll(knownAllergen ?? []);
    this.productCharacteristic.addAll(productCharacteristic ?? []);
    this.instance.target = instance;
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> manufacturer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxNutritionProductNutrient> nutrient =
      ToMany<ObjectBoxNutritionProductNutrient>();
  ToMany<ObjectBoxNutritionProductIngredient> ingredient =
      ToMany<ObjectBoxNutritionProductIngredient>();
  ToMany<ObjectBoxCodeableReference> knownAllergen =
      ToMany<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxNutritionProductProductCharacteristic> productCharacteristic =
      ToMany<ObjectBoxNutritionProductProductCharacteristic>();
  ToOne<ObjectBoxNutritionProductInstance> instance =
      ToOne<ObjectBoxNutritionProductInstance>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxNutritionProductNutrient {
  ObjectBoxNutritionProductNutrient({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? item,
    List<ObjectBoxRatio>? amount,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.item.target = item;
    this.amount.addAll(amount ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> item = ToOne<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxRatio> amount = ToMany<ObjectBoxRatio>();
}

@Entity()
class ObjectBoxNutritionProductIngredient {
  ObjectBoxNutritionProductIngredient({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? item,
    List<ObjectBoxRatio>? amount,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.item.target = item;
    this.amount.addAll(amount ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> item = ToOne<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxRatio> amount = ToMany<ObjectBoxRatio>();
}

@Entity()
class ObjectBoxNutritionProductProductCharacteristic {
  ObjectBoxNutritionProductProductCharacteristic({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    ObjectBoxQuantity? valueQuantity,
    this.valueBase64Binary,
    ObjectBoxElement? valueBase64BinaryElement,
    ObjectBoxAttachment? valueAttachment,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueStringElement.target = valueStringElement;
    this.valueQuantity.target = valueQuantity;
    this.valueBase64BinaryElement.target = valueBase64BinaryElement;
    this.valueAttachment.target = valueAttachment;
    this.valueBooleanElement.target = valueBooleanElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement> valueBase64BinaryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxNutritionProductInstance {
  ObjectBoxNutritionProductInstance({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxQuantity? quantity,
    List<ObjectBoxIdentifier>? identifier,
    this.lotNumber,
    ObjectBoxElement? lotNumberElement,
    this.expiry,
    ObjectBoxElement? expiryElement,
    this.useBy,
    ObjectBoxElement? useByElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.quantity.target = quantity;
    this.identifier.addAll(identifier ?? []);
    this.lotNumberElement.target = lotNumberElement;
    this.expiryElement.target = expiryElement;
    this.useByElement.target = useByElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? lotNumber;
  ToOne<ObjectBoxElement> lotNumberElement = ToOne<ObjectBoxElement>();
  String? expiry;
  ToOne<ObjectBoxElement> expiryElement = ToOne<ObjectBoxElement>();
  String? useBy;
  ToOne<ObjectBoxElement> useByElement = ToOne<ObjectBoxElement>();
}
