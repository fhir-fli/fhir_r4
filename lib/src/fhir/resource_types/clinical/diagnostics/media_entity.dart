import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MediaEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Media';

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
  List<ReferenceEntity>? partOf;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? modality;

  @ToOne()
  CodeableConceptEntity? view;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  String? createdDateTime;

  @ToOne()
  PrimitiveElementEntity? createdDateTimeElement;

  @ToOne()
  PeriodEntity? createdPeriod;

  String? issued;

  @ToOne()
  PrimitiveElementEntity? issuedElement;

  @ToOne()
  ReferenceEntity? operator_;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToOne()
  CodeableConceptEntity? bodySite;

  String? deviceName;

  @ToOne()
  PrimitiveElementEntity? deviceNameElement;

  @ToOne()
  ReferenceEntity? device;

  int? height;

  @ToOne()
  PrimitiveElementEntity? heightElement;

  int? width;

  @ToOne()
  PrimitiveElementEntity? widthElement;

  int? frames;

  @ToOne()
  PrimitiveElementEntity? framesElement;

  double? duration;

  @ToOne()
  PrimitiveElementEntity? durationElement;

  @ToOne()
  AttachmentEntity? content;

  @ToMany()
  List<AnnotationEntity>? note;
}
