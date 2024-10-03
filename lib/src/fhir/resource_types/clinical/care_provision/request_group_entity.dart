import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class RequestGroupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'RequestGroup';

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

  List<String>? instantiatesCanonical;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesCanonicalElement;

  List<FhirUri>? instantiatesUri;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesUriElement;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToMany()
  List<ReferenceEntity>? replaces;

  @ToOne()
  IdentifierEntity? groupIdentifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? intent;

  @ToOne()
  PrimitiveElementEntity? intentElement;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  String? authoredOn;

  @ToOne()
  PrimitiveElementEntity? authoredOnElement;

  @ToOne()
  ReferenceEntity? author;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<RequestGroupActionEntity>? action;
}

class RequestGroupActionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? prefix;

  @ToOne()
  PrimitiveElementEntity? prefixElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? textEquivalent;

  @ToOne()
  PrimitiveElementEntity? textEquivalentElement;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  @ToMany()
  List<CodeableConceptEntity>? code;

  @ToMany()
  List<RelatedArtifactEntity>? documentation;

  @ToMany()
  List<RequestGroupConditionEntity>? condition;

  @ToMany()
  List<RequestGroupRelatedActionEntity>? relatedAction;

  String? timingDateTime;

  @ToOne()
  PrimitiveElementEntity? timingDateTimeElement;

  @ToOne()
  AgeEntity? timingAge;

  @ToOne()
  PeriodEntity? timingPeriod;

  @ToOne()
  FhirDurationEntity? timingDuration;

  @ToOne()
  RangeEntity? timingRange;

  @ToOne()
  TimingEntity? timingTiming;

  @ToMany()
  List<ReferenceEntity>? participant;

  @ToOne()
  CodeableConceptEntity? type;

  String? groupingBehavior;

  @ToOne()
  PrimitiveElementEntity? groupingBehaviorElement;

  String? selectionBehavior;

  @ToOne()
  PrimitiveElementEntity? selectionBehaviorElement;

  String? requiredBehavior;

  @ToOne()
  PrimitiveElementEntity? requiredBehaviorElement;

  String? precheckBehavior;

  @ToOne()
  PrimitiveElementEntity? precheckBehaviorElement;

  String? cardinalityBehavior;

  @ToOne()
  PrimitiveElementEntity? cardinalityBehaviorElement;

  @ToOne()
  ReferenceEntity? resource;

  @ToMany()
  List<RequestGroupActionEntity>? action;
}

class RequestGroupConditionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? kind;

  @ToOne()
  PrimitiveElementEntity? kindElement;

  @ToOne()
  FhirExpressionEntity? expression;
}

class RequestGroupRelatedActionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? actionId;

  @ToOne()
  PrimitiveElementEntity? actionIdElement;

  String? relationship;

  @ToOne()
  PrimitiveElementEntity? relationshipElement;

  @ToOne()
  FhirDurationEntity? offsetDuration;

  @ToOne()
  RangeEntity? offsetRange;
}
