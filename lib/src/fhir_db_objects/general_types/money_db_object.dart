import 'package:objectbox/objectbox.dart';
@Entity()
class MoneyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDecimalDbObject> value = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> currency = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> currencyElement = ToOne<PrimitiveElementDbObject>();
  MoneyDbObject({required this.id});
}
