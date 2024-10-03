import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ProvenanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Provenance';

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
  List<ReferenceEntity>? target;

  @ToOne()
  PeriodEntity? occurredPeriod;

  String? occurredDateTime;

  @ToOne()
  PrimitiveElementEntity? occurredDateTimeElement;

  String? recorded;

  @ToOne()
  PrimitiveElementEntity? recordedElement;

  List<FhirUri>? policy;

  @ToMany()
  List<PrimitiveElementEntity>? policyElement;

  @ToOne()
  ReferenceEntity? location;

  @ToMany()
  List<CodeableConceptEntity>? reason;

  @ToOne()
  CodeableConceptEntity? activity;

  @ToMany()
  List<ProvenanceAgentEntity>? agent;

  @ToMany()
  List<ProvenanceEntityEntity>? entity;

  @ToMany()
  List<SignatureEntity>? signature;
}

class ProvenanceAgentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<CodeableConceptEntity>? role;

  @ToOne()
  ReferenceEntity? who;

  @ToOne()
  ReferenceEntity? onBehalfOf;
}

class ProvenanceEntityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? role;

  @ToOne()
  PrimitiveElementEntity? roleElement;

  @ToOne()
  ReferenceEntity? what;

  @ToMany()
  List<ProvenanceAgentEntity>? agent;
}
