// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedication {
  ObjectBoxMedication({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    ObjectBoxCodeableConcept? code,
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxReference? manufacturer,
    ObjectBoxCodeableConcept? form,
    ObjectBoxRatio? amount,
    List<ObjectBoxMedicationIngredient>? ingredient,
    ObjectBoxMedicationBatch? batch,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.code.target = code;
    this.statusElement.target = statusElement;
    this.manufacturer.target = manufacturer;
    this.form.target = form;
    this.amount.target = amount;
    this.ingredient.addAll(ingredient ?? []);
    this.batch.target = batch;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> manufacturer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> form = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxRatio> amount = ToOne<ObjectBoxRatio>();
  ToMany<ObjectBoxMedicationIngredient> ingredient =
      ToMany<ObjectBoxMedicationIngredient>();
  ToOne<ObjectBoxMedicationBatch> batch = ToOne<ObjectBoxMedicationBatch>();
}

@Entity()
class ObjectBoxMedicationIngredient {
  ObjectBoxMedicationIngredient({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? itemCodeableConcept,
    ObjectBoxReference? itemReference,
    this.isActive,
    ObjectBoxElement? isActiveElement,
    ObjectBoxRatio? strength,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.itemCodeableConcept.target = itemCodeableConcept;
    this.itemReference.target = itemReference;
    this.isActiveElement.target = isActiveElement;
    this.strength.target = strength;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> itemReference = ToOne<ObjectBoxReference>();
  bool? isActive;
  ToOne<ObjectBoxElement> isActiveElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio> strength = ToOne<ObjectBoxRatio>();
}

@Entity()
class ObjectBoxMedicationBatch {
  ObjectBoxMedicationBatch({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.lotNumber,
    ObjectBoxElement? lotNumberElement,
    this.expirationDate,
    ObjectBoxElement? expirationDateElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.lotNumberElement.target = lotNumberElement;
    this.expirationDateElement.target = expirationDateElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? lotNumber;
  ToOne<ObjectBoxElement> lotNumberElement = ToOne<ObjectBoxElement>();
  String? expirationDate;
  ToOne<ObjectBoxElement> expirationDateElement = ToOne<ObjectBoxElement>();
}
