import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class BinaryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Binary';

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

  String? contentType;

  @ToOne()
  PrimitiveElementEntity? contentTypeElement;

  @ToOne()
  ReferenceEntity? securityContext;

  String? data;

  @ToOne()
  PrimitiveElementEntity? dataElement;
}
