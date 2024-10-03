import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class ContactPointEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  ContactPointSystemEntity? system;

  @ToOne()
  PrimitiveElementEntity? systemElement;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;

  @ToOne()
  ContactPointUseEntity? use;

  @ToOne()
  PrimitiveElementEntity? useElement;

  int? rank;

  @ToOne()
  PrimitiveElementEntity? rankElement;

  @ToOne()
  PeriodEntity? period;
}
