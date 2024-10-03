import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class UsageContextEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  CodingEntity? code;

  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  RangeEntity? valueRange;

  @ToOne()
  ReferenceEntity? valueReference;
}
