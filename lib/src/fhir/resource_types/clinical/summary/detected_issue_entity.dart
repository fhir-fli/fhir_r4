import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DetectedIssueEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'DetectedIssue';
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
  CodeableConceptEntity? code;
  String? severity;
  @ToOne()
  PrimitiveElementEntity? severityElement;
  @ToOne()
  ReferenceEntity? patient;
  String? identifiedDateTime;

  @ToOne()
  PrimitiveElementEntity? identifiedDateTimeElement;
  @ToOne()
  PeriodEntity? identifiedPeriod;
  @ToOne()
  ReferenceEntity? author;
  @ToMany()
  List<ReferenceEntity>? implicated;
  @ToMany()
  List<DetectedIssueEvidenceEntity>? evidence;
  String? detail;
  @ToOne()
  PrimitiveElementEntity? detailElement;
  String? reference;
  @ToOne()
  PrimitiveElementEntity? referenceElement;
  @ToMany()
  List<DetectedIssueMitigationEntity>? mitigation;
}

class DetectedIssueEvidenceEntity {
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

class DetectedIssueMitigationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? action;
  String? date;
  @ToOne()
  PrimitiveElementEntity? dateElement;
  @ToOne()
  ReferenceEntity? author;
}
