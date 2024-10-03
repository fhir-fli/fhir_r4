import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class RelatedArtifactEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  RelatedArtifactTypeEntity? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? label;

  @ToOne()
  PrimitiveElementEntity? labelElement;

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;

  String? citation;

  @ToOne()
  PrimitiveElementEntity? citationElement;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToOne()
  AttachmentEntity? document;

  String? resource;
}
