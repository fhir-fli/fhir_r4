import 'package:objectbox/objectbox.dart';
@Entity()
class HumanNameDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<HumanNameUseDbObject> use = ToOne<HumanNameUseDbObject>();
  final ToOne<PrimitiveElementDbObject> useElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> family = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> familyElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> given = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> givenElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> prefix = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> prefixElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> suffix = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> suffixElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  HumanNameDbObject({required this.id});
}
