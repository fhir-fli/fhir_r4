import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class CodeableReferenceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  CodeableConceptEntity? concept;

  @ToOne()
  ReferenceEntity? reference;
}
