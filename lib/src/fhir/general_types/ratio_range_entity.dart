import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class RatioRangeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  QuantityEntity? lowNumerator;

  @ToOne()
  QuantityEntity? highNumerator;

  @ToOne()
  QuantityEntity? denominator;
}
