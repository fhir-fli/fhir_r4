// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPopulation {
  ObjectBoxPopulation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxRange? ageRange,
    ObjectBoxCodeableConcept? ageCodeableConcept,
    ObjectBoxCodeableConcept? gender,
    ObjectBoxCodeableConcept? race,
    ObjectBoxCodeableConcept? physiologicalCondition,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.ageRange.target = ageRange;
    this.ageCodeableConcept.target = ageCodeableConcept;
    this.gender.target = gender;
    this.race.target = race;
    this.physiologicalCondition.target = physiologicalCondition;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxRange> ageRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxCodeableConcept> ageCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> gender = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> race = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> physiologicalCondition =
      ToOne<ObjectBoxCodeableConcept>();
}
