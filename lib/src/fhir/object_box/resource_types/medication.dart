// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedication {
  ObjectBoxMedication({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.code,
    this.status,
    this.statusElement,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? manufacturer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? form = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxRatio>? amount = ToOne<ObjectBoxRatio>();
  ToMany<ObjectBoxMedicationIngredient>? ingredient =
      ToMany<ObjectBoxMedicationIngredient>();
  ToOne<ObjectBoxMedicationBatch>? batch = ToOne<ObjectBoxMedicationBatch>();
}

@Entity()
class ObjectBoxMedicationIngredient {
  ObjectBoxMedicationIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? itemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? itemReference = ToOne<ObjectBoxReference>();
  bool? isActive;
  ToOne<ObjectBoxElement>? isActiveElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio>? strength = ToOne<ObjectBoxRatio>();
}

@Entity()
class ObjectBoxMedicationBatch {
  ObjectBoxMedicationBatch({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.lotNumber,
    this.lotNumberElement,
    this.expirationDate,
    this.expirationDateElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? lotNumber;
  ToOne<ObjectBoxElement>? lotNumberElement = ToOne<ObjectBoxElement>();
  String? expirationDate;
  ToOne<ObjectBoxElement>? expirationDateElement = ToOne<ObjectBoxElement>();
}
