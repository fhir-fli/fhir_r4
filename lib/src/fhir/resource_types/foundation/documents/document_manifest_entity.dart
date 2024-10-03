import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DocumentManifestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'DocumentManifest';

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
  IdentifierEntity? masterIdentifier;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  ReferenceEntity? subject;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToMany()
  List<ReferenceEntity>? author;

  @ToMany()
  List<ReferenceEntity>? recipient;

  String? source;

  @ToOne()
  PrimitiveElementEntity? sourceElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<ReferenceEntity>? content;

  @ToMany()
  List<DocumentManifestRelatedEntity>? related;
}

class DocumentManifestRelatedEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  IdentifierEntity? identifier;

  @ToOne()
  ReferenceEntity? ref;
}
