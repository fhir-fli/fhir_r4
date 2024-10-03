import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class MarketingStatusEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? country;

  @ToOne()
  CodeableConceptEntity? jurisdiction;

  @ToOne()
  CodeableConceptEntity? status;

  @ToOne()
  PeriodEntity? dateRange;

  String? restoreDate;

  @ToOne()
  PrimitiveElementEntity? restoreDateElement;
}
