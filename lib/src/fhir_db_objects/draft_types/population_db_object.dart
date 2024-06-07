import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class PopulationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<RangeDbObject> ageRange = ToOne<RangeDbObject>();
  final ToOne<CodeableConceptDbObject> ageCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> gender = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> race = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> physiologicalCondition = ToOne<CodeableConceptDbObject>();
  PopulationDbObject({required this.id});
}
