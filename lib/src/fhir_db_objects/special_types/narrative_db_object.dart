import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';

@Entity()
class NarrativeDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirXhtmlDbObject> div = ToOne<FhirXhtmlDbObject>();
  NarrativeDbObject({required this.id});
}
