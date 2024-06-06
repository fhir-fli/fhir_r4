import 'package:objectbox/objectbox.dart';
@Entity()
class SignatureDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<CodingDbObject> type = ToMany<CodingDbObject>();
  final ToOne<FhirInstantDbObject> when = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> whenElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> who = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> onBehalfOf = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> targetFormat = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> targetFormatElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> sigFormat = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> sigFormatElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBase64BinaryDbObject> data = ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> dataElement = ToOne<PrimitiveElementDbObject>();
  SignatureDbObject({required this.id});
}
