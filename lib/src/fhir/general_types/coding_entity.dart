import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class CodingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? system;

  @ToOne()
  PrimitiveElementEntity? systemElement;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;

  bool? userSelected;

  @ToOne()
  PrimitiveElementEntity? userSelectedElement;
}
