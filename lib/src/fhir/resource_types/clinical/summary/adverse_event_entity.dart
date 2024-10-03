import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class AdverseEventEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'AdverseEvent';
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
  @ToOne()
  IdentifierEntity? identifier;
  String? actuality;
  @ToOne()
  PrimitiveElementEntity? actualityElement;
  @ToMany()
  List<CodeableConceptEntity>? category;
  @ToOne()
  CodeableConceptEntity? event;
  @ToOne()
  ReferenceEntity? subject;
  @ToOne()
  ReferenceEntity? encounter;
  String? date;
  @ToOne()
  PrimitiveElementEntity? dateElement;
  String? detected;
  @ToOne()
  PrimitiveElementEntity? detectedElement;
  String? recordedDate;
  @ToOne()
  PrimitiveElementEntity? recordedDateElement;
  @ToMany()
  List<ReferenceEntity>? resultingCondition;
  @ToOne()
  ReferenceEntity? location;
  @ToOne()
  CodeableConceptEntity? seriousness;
  @ToOne()
  CodeableConceptEntity? severity;
  @ToOne()
  CodeableConceptEntity? outcome;
  @ToOne()
  ReferenceEntity? recorder;
  @ToMany()
  List<ReferenceEntity>? contributor;
  @ToMany()
  List<AdverseEventSuspectEntityEntity>? suspectEntity;
  @ToMany()
  List<ReferenceEntity>? subjectMedicalHistory;
  @ToMany()
  List<ReferenceEntity>? referenceDocument;
  @ToMany()
  List<ReferenceEntity>? study;
}

class AdverseEventSuspectEntityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  ReferenceEntity? instance;
  @ToMany()
  List<AdverseEventCausalityEntity>? causality;
}

class AdverseEventCausalityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? assessment;
  String? productRelatedness;

  @ToOne()
  PrimitiveElementEntity? productRelatednessElement;
  @ToOne()
  ReferenceEntity? author;
  @ToOne()
  CodeableConceptEntity? method;
}
