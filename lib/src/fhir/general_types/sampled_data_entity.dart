import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class SampledDataEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  QuantityEntity? origin;

  double? period;

  @ToOne()
  PrimitiveElementEntity? periodElement;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  double? lowerLimit;

  @ToOne()
  PrimitiveElementEntity? lowerLimitElement;

  double? upperLimit;

  @ToOne()
  PrimitiveElementEntity? upperLimitElement;

  int? dimensions;

  @ToOne()
  PrimitiveElementEntity? dimensionsElement;

  String? data;

  @ToOne()
  PrimitiveElementEntity? dataElement;
}
