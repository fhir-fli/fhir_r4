import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class IdentifierEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  IdentifierUseEntity? use;

  @ToOne()
  PrimitiveElementEntity? useElement;

  @ToOne()
  CodeableConceptEntity? type;

  String? system;

  @ToOne()
  PrimitiveElementEntity? systemElement;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;

  @ToOne()
  PeriodEntity? period;

  @ToOne()
  ReferenceEntity? assigner;
}
