import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class HumanNameEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  HumanNameUseEntity? use;

  @ToOne()
  PrimitiveElementEntity? useElement;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  String? family;

  @ToOne()
  PrimitiveElementEntity? familyElement;

  List<String>? given;

  @ToMany()
  List<PrimitiveElementEntity>? givenElement;

  List<String>? prefix;

  @ToMany()
  List<PrimitiveElementEntity>? prefixElement;

  List<String>? suffix;

  @ToMany()
  List<PrimitiveElementEntity>? suffixElement;

  @ToOne()
  PeriodEntity? period;
}
