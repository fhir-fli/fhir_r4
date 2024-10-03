import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class SignatureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<CodingEntity>? type;

  String? when;

  @ToOne()
  PrimitiveElementEntity? whenElement;

  @ToOne()
  ReferenceEntity? who;

  @ToOne()
  ReferenceEntity? onBehalfOf;

  String? targetFormat;

  @ToOne()
  PrimitiveElementEntity? targetFormatElement;

  String? sigFormat;

  @ToOne()
  PrimitiveElementEntity? sigFormatElement;

  String? data;

  @ToOne()
  PrimitiveElementEntity? dataElement;
}
