import 'package:objectbox/objectbox.dart';
@Entity()
class ContactPointDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<ContactPointSystemDbObject> system = ToOne<ContactPointSystemDbObject>();
  final ToOne<PrimitiveElementDbObject> systemElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ContactPointUseDbObject> use = ToOne<ContactPointUseDbObject>();
  final ToOne<PrimitiveElementDbObject> useElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> rank = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> rankElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  ContactPointDbObject({required this.id});
}
