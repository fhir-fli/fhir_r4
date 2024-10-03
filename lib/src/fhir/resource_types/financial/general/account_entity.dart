import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class AccountEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Account';

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

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? type;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToMany()
  List<ReferenceEntity>? subject;

  @ToOne()
  PeriodEntity? servicePeriod;

  @ToMany()
  List<AccountCoverageEntity>? coverage;

  @ToOne()
  ReferenceEntity? owner;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<AccountGuarantorEntity>? guarantor;

  @ToOne()
  ReferenceEntity? partOf;
}

class AccountCoverageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? coverage;

  int? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;
}

class AccountGuarantorEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? party;

  bool? onHold;

  @ToOne()
  PrimitiveElementEntity? onHoldElement;

  @ToOne()
  PeriodEntity? period;
}
