import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ConditionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Condition';
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
  @ToOne()
  CodeableConceptEntity? clinicalStatus;
  @ToOne()
  CodeableConceptEntity? verificationStatus;
  @ToMany()
  List<CodeableConceptEntity>? category;
  @ToOne()
  CodeableConceptEntity? severity;
  @ToOne()
  CodeableConceptEntity? code;
  @ToMany()
  List<CodeableConceptEntity>? bodySite;
  @ToOne()
  ReferenceEntity? subject;
  @ToOne()
  ReferenceEntity? encounter;
  String? onsetDateTime;
  @ToOne()
  PrimitiveElementEntity? onsetDateTimeElement;
  @ToOne()
  AgeEntity? onsetAge;
  @ToOne()
  PeriodEntity? onsetPeriod;
  @ToOne()
  RangeEntity? onsetRange;
  String? onsetString;
  @ToOne()
  PrimitiveElementEntity? onsetStringElement;
  String? abatementDateTime;

  @ToOne()
  PrimitiveElementEntity? abatementDateTimeElement;
  @ToOne()
  AgeEntity? abatementAge;
  @ToOne()
  PeriodEntity? abatementPeriod;
  @ToOne()
  RangeEntity? abatementRange;
  String? abatementString;
  @ToOne()
  PrimitiveElementEntity? abatementStringElement;
  String? recordedDate;
  @ToOne()
  PrimitiveElementEntity? recordedDateElement;
  @ToOne()
  ReferenceEntity? recorder;
  @ToOne()
  ReferenceEntity? asserter;
  @ToMany()
  List<ConditionStageEntity>? stage;
  @ToMany()
  List<ConditionEvidenceEntity>? evidence;
  @ToMany()
  List<AnnotationEntity>? note;
}

class ConditionStageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? summary;
  @ToMany()
  List<ReferenceEntity>? assessment;
  @ToOne()
  CodeableConceptEntity? type;
}

class ConditionEvidenceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToMany()
  List<CodeableConceptEntity>? code;
  @ToMany()
  List<ReferenceEntity>? detail;
}
