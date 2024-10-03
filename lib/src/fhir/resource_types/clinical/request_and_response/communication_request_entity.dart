import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CommunicationRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CommunicationRequest';

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

  @ToMany()
  List<ReferenceEntity>? replaces;

  @ToOne()
  IdentifierEntity? groupIdentifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? statusReason;

  @ToMany()
  List<CodeableConceptEntity>? category;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  bool? doNotPerform;

  @ToOne()
  PrimitiveElementEntity? doNotPerformElement;

  @ToMany()
  List<CodeableConceptEntity>? medium;

  @ToOne()
  ReferenceEntity? subject;

  @ToMany()
  List<ReferenceEntity>? about;

  @ToOne()
  ReferenceEntity? encounter;

  @ToMany()
  List<CommunicationRequestPayloadEntity>? payload;

  String? occurrenceDateTime;

  @ToOne()
  PrimitiveElementEntity? occurrenceDateTimeElement;

  @ToOne()
  PeriodEntity? occurrencePeriod;

  String? authoredOn;

  @ToOne()
  PrimitiveElementEntity? authoredOnElement;

  @ToOne()
  ReferenceEntity? requester;

  @ToMany()
  List<ReferenceEntity>? recipient;

  @ToOne()
  ReferenceEntity? sender;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<AnnotationEntity>? note;
}

class CommunicationRequestPayloadEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? contentString;

  @ToOne()
  PrimitiveElementEntity? contentStringElement;

  @ToOne()
  AttachmentEntity? contentAttachment;

  @ToOne()
  ReferenceEntity? contentReference;
}
