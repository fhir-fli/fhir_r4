import 'package:objectbox/objectbox.dart';
@Entity()
class AddressDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<AddressUseDbObject> use = ToOne<AddressUseDbObject>();
  final ToOne<PrimitiveElementDbObject> useElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AddressTypeDbObject> type = ToOne<AddressTypeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> line = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> lineElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> city = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> cityElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> district = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> districtElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> state = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> stateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> postalCode = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> postalCodeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> country = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> countryElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  AddressDbObject({required this.id});
}
