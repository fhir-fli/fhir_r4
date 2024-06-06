import 'package:objectbox/objectbox.dart';
@Entity()
class IdentifierDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierUseDbObject> use = ToOne<IdentifierUseDbObject>();
  final ToOne<PrimitiveElementDbObject> useElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirUriDbObject> system = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> systemElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> assigner = ToOne<ReferenceDbObject>();
  IdentifierDbObject({required this.id});
}
