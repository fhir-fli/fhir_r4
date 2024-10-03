import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class BodyStructureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'BodyStructure';

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

  bool? active;

  @ToOne()
  PrimitiveElementEntity? activeElement;

  @ToOne()
  CodeableConceptEntity? morphology;

  @ToOne()
  CodeableConceptEntity? location;

  @ToMany()
  List<CodeableConceptEntity>? locationQualifier;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<AttachmentEntity>? image;

  @ToOne()
  ReferenceEntity? patient;
}
