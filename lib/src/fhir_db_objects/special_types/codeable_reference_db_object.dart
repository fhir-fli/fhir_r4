import 'package:objectbox/objectbox.dart';

import '../fhir_db_objects.dart';

@Entity()
class CodeableReferenceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> concept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> reference = ToOne<ReferenceDbObject>();
  CodeableReferenceDbObject({required this.id});
}
