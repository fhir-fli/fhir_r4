import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class ParameterDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? use;

  @ToOne()
  PrimitiveElementEntity? useElement;

  int? min;

  @ToOne()
  PrimitiveElementEntity? minElement;

  String? max;

  @ToOne()
  PrimitiveElementEntity? maxElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? profile;
}
