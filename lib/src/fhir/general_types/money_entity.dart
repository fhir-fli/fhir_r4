import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class MoneyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  double? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;

  String? currency;

  @ToOne()
  PrimitiveElementEntity? currencyElement;
}
