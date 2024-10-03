import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class FhirExpressionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  FhirExpressionLanguageEntity? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;

  String? reference;

  @ToOne()
  PrimitiveElementEntity? referenceElement;
}
