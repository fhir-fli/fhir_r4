import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class RatioRangeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> lowNumerator = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> highNumerator = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> denominator = ToOne<QuantityDbObject>();
  RatioRangeDbObject({required this.id});
}
