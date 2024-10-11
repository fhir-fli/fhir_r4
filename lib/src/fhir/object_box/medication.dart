import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Medication extends Resource {
  Medication({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.code,
    this.status,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch,
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
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? status;
  ToOne<Reference>? manufacturer = ToOne<Reference>();
  ToOne<CodeableConcept>? form = ToOne<CodeableConcept>();
  ToOne<Ratio>? amount = ToOne<Ratio>();
  ToMany<MedicationIngredient>? ingredient = ToMany<MedicationIngredient>();
  ToOne<MedicationBatch>? batch = ToOne<MedicationBatch>();
}

@Entity()
class MedicationIngredient {
  MedicationIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.strength,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? itemCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? itemReference = ToOne<Reference>();
  bool? isActive;
  ToOne<Ratio>? strength = ToOne<Ratio>();
}

@Entity()
class MedicationBatch {
  MedicationBatch({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.lotNumber,
    this.expirationDate,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? lotNumber;
  String? expirationDate;
}
