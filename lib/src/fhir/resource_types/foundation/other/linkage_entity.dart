import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class LinkageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Linkage';

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

  bool? active;

  @ToOne()
  PrimitiveElementEntity? activeElement;

  @ToOne()
  ReferenceEntity? author;

  @ToMany()
  List<LinkageItemEntity>? item;
}

class LinkageItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToOne()
  ReferenceEntity? resource;
}
