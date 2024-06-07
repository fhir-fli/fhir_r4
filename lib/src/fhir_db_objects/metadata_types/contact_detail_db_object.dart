import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class ContactDetailDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  ContactDetailDbObject({required this.id});
}
