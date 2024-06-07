import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class RatioDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> numerator = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> denominator = ToOne<QuantityDbObject>();
  RatioDbObject({required this.id});
}
