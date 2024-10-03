import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class AnnotationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  ReferenceEntity? authorReference;

  String? authorString;

  @ToOne()
  PrimitiveElementEntity? authorStringElement;

  String? time;

  @ToOne()
  PrimitiveElementEntity? timeElement;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;
}
