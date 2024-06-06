import 'package:objectbox/objectbox.dart';

import '../fhir_db_objects.dart';

@Entity()
class ReferenceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> reference = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> referenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> type = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement =
      ToOne<PrimitiveElementDbObject>();
  ReferenceDbObject({required this.id});
}
