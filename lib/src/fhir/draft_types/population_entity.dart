import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class PopulationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  RangeEntity? ageRange;

  @ToOne()
  CodeableConceptEntity? ageCodeableConcept;

  @ToOne()
  CodeableConceptEntity? gender;

  @ToOne()
  CodeableConceptEntity? race;

  @ToOne()
  CodeableConceptEntity? physiologicalCondition;
}
