import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Substance extends Resource {
  Substance({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.category,
    required this.code,
    this.description,
    this.instance,
    this.ingredient,
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
  String? status;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  String? description;
  ToMany<SubstanceInstance>? instance = ToMany<SubstanceInstance>();
  ToMany<SubstanceIngredient>? ingredient = ToMany<SubstanceIngredient>();
}

@Entity()
class SubstanceInstance {
  SubstanceInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.expiry,
    this.quantity,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? expiry;
  ToOne<Quantity>? quantity = ToOne<Quantity>();
}

@Entity()
class SubstanceIngredient {
  SubstanceIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.quantity,
    this.substanceCodeableConcept,
    this.substanceReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Ratio>? quantity = ToOne<Ratio>();
  ToOne<CodeableConcept>? substanceCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? substanceReference = ToOne<Reference>();
}
