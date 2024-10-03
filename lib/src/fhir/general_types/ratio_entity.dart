import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class RatioEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  QuantityEntity? numerator;

  @ToOne()
  QuantityEntity? denominator;
}
