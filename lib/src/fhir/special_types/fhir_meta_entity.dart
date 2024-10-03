import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class FhirMetaEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? versionId;

  @ToOne()
  PrimitiveElementEntity? versionIdElement;

  String? lastUpdated;

  @ToOne()
  PrimitiveElementEntity? lastUpdatedElement;

  String? source;

  @ToOne()
  PrimitiveElementEntity? sourceElement;

  List<String>? profile;

  @ToMany()
  List<CodingEntity>? security;

  @ToMany()
  List<CodingEntity>? tag;
}
