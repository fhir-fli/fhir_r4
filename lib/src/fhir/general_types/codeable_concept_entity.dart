import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class CodeableConceptEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<CodingEntity>? coding;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;
}
