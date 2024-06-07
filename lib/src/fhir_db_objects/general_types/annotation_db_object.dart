import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';
@Entity()
class AnnotationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> authorReference = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> authorString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> authorStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> time = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> text = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  AnnotationDbObject({required this.id});
}
