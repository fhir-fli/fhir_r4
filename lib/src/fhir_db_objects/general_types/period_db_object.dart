import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class PeriodDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDateTimeDbObject> start = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> startElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> end = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement = ToOne<PrimitiveElementDbObject>();
  PeriodDbObject({required this.id});
}
