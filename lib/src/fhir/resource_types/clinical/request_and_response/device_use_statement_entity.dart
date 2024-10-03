import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DeviceUseStatementEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'DeviceUseStatement';

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

  @ToMany()
  List<ReferenceEntity>? basedOn;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  ReferenceEntity? subject;

  @ToMany()
  List<ReferenceEntity>? derivedFrom;

  @ToOne()
  TimingEntity? timingTiming;

  @ToOne()
  PeriodEntity? timingPeriod;

  String? timingDateTime;

  @ToOne()
  PrimitiveElementEntity? timingDateTimeElement;

  String? recordedOn;

  @ToOne()
  PrimitiveElementEntity? recordedOnElement;

  @ToOne()
  ReferenceEntity? source;

  @ToOne()
  ReferenceEntity? device;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToOne()
  CodeableConceptEntity? bodySite;

  @ToMany()
  List<AnnotationEntity>? note;
}
