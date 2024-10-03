import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class PeriodEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  String? end;

  @ToOne()
  PrimitiveElementEntity? endElement;
}
