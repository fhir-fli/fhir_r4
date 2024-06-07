import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';

@Entity()
class IdentifierDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> use = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> useElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirUriDbObject> system = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> systemElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> assigner = ToOne<ReferenceDbObject>();
  IdentifierDbObject({required this.id});
}
