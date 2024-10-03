import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class FhirListEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'FhirList';

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

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  ReferenceEntity? source;

  @ToOne()
  CodeableConceptEntity? orderedBy;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<FhirListEntryEntity>? entry;

  @ToOne()
  CodeableConceptEntity? emptyReason;
}

class FhirListEntryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? flag;

  bool? deleted;

  @ToOne()
  PrimitiveElementEntity? deletedElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  ReferenceEntity? item;
}
