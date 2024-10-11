import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Population {
  Population({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.ageRange,
    this.ageCodeableConcept,
    this.gender,
    this.race,
    this.physiologicalCondition,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Range>? ageRange = ToOne<Range>();
  ToOne<CodeableConcept>? ageCodeableConcept = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? gender = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? race = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? physiologicalCondition = ToOne<CodeableConcept>();
}
