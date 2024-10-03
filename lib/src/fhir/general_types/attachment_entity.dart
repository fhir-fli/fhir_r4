import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class AttachmentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? contentType;

  @ToOne()
  PrimitiveElementEntity? contentTypeElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  String? data;

  @ToOne()
  PrimitiveElementEntity? dataElement;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  int? size;

  @ToOne()
  PrimitiveElementEntity? sizeElement;

  String? hash;

  @ToOne()
  PrimitiveElementEntity? hashElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? creation;

  @ToOne()
  PrimitiveElementEntity? creationElement;
}
