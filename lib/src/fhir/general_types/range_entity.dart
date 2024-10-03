import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class RangeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  QuantityEntity? low;

  @ToOne()
  QuantityEntity? high;
}
