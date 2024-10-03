import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CommunicationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Communication';

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

  List<FhirUri>? instantiatesUri;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesUriElement;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToMany()
  List<ReferenceEntity>? partOf;

  @ToMany()
  List<ReferenceEntity>? inResponseTo;

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

  @ToMany()
  List<CodeableConceptEntity>? medium;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  CodeableConceptEntity? topic;

  @ToMany()
  List<ReferenceEntity>? about;

  @ToOne()
  ReferenceEntity? encounter;

  String? sent;

  @ToOne()
  PrimitiveElementEntity? sentElement;

  String? received;

  @ToOne()
  PrimitiveElementEntity? receivedElement;

  @ToMany()
  List<ReferenceEntity>? recipient;

  @ToOne()
  ReferenceEntity? sender;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<CommunicationPayloadEntity>? payload;

  @ToMany()
  List<AnnotationEntity>? note;
}

class CommunicationPayloadEntity {
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
