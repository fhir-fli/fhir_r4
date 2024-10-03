import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class DistanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  double? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;

  @ToOne()
  DistanceComparatorEntity? comparator;

  @ToOne()
  PrimitiveElementEntity? comparatorElement;

  String? unit;

  @ToOne()
  PrimitiveElementEntity? unitElement;

  String? system;

  @ToOne()
  PrimitiveElementEntity? systemElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;
}
