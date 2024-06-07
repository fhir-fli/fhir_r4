import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class UsageContextDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<CodingDbObject> code = ToOne<CodingDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> valueRange = ToOne<RangeDbObject>();
  final ToOne<ReferenceDbObject> valueReference = ToOne<ReferenceDbObject>();
  UsageContextDbObject({required this.id});
}
