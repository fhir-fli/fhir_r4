import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class FhirGroupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Group';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  bool? active;

  @ToOne()
  PrimitiveElementEntity? activeElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  bool? actual;

  @ToOne()
  PrimitiveElementEntity? actualElement;

  @ToOne()
  CodeableConceptEntity? code;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  int? quantity;

  @ToOne()
  PrimitiveElementEntity? quantityElement;

  @ToOne()
  ReferenceEntity? managingEntity;

  @ToMany()
  List<GroupCharacteristicEntity>? characteristic;

  @ToMany()
  List<GroupMemberEntity>? member;
}

class GroupCharacteristicEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  RangeEntity? valueRange;

  @ToOne()
  ReferenceEntity? valueReference;

  bool? exclude;

  @ToOne()
  PrimitiveElementEntity? excludeElement;

  @ToOne()
  PeriodEntity? period;
}

class GroupMemberEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? entity;

  @ToOne()
  PeriodEntity? period;

  bool? inactive;

  @ToOne()
  PrimitiveElementEntity? inactiveElement;
}
