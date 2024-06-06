import 'package:objectbox/objectbox.dart';
@Entity()
class RangeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> low = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> high = ToOne<QuantityDbObject>();
  RangeDbObject({required this.id});
}
