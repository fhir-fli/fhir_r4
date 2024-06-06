import 'package:objectbox/objectbox.dart';
@Entity()
class ParameterDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> name = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> use = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> useElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> min = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> minElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> max = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> maxElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> documentation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> profile = ToOne<FhirCanonicalDbObject>();
  ParameterDefinitionDbObject({required this.id});
}
