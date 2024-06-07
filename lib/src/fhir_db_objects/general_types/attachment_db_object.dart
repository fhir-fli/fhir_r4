import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class AttachmentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> contentType = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> contentTypeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBase64BinaryDbObject> data = ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> dataElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> url = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> size = ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> sizeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBase64BinaryDbObject> hash = ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> hashElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> creation = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> creationElement = ToOne<PrimitiveElementDbObject>();
  AttachmentDbObject({required this.id});
}
