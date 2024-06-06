import 'package:objectbox/objectbox.dart';

import '../fhir_db_objects.dart';

@Entity()
class FhirMetaDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> versionId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> versionIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> lastUpdated = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> lastUpdatedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> source = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> profile = ToMany<FhirCanonicalDbObject>();
  final ToMany<CodingDbObject> security = ToMany<CodingDbObject>();
  final ToMany<CodingDbObject> tag = ToMany<CodingDbObject>();
  FhirMetaDbObject({required this.id});
}
