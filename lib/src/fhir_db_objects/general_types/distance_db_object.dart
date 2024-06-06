import 'package:objectbox/objectbox.dart';
@Entity()
class DistanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDecimalDbObject> value = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<DistanceComparatorDbObject> comparator = ToOne<DistanceComparatorDbObject>();
  final ToOne<PrimitiveElementDbObject> comparatorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> unit = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> unitElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> system = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> systemElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  DistanceDbObject({required this.id});
}
