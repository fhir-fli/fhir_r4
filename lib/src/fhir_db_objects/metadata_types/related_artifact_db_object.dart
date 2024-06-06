import 'package:objectbox/objectbox.dart';
@Entity()
class RelatedArtifactDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToOne<RelatedArtifactTypeDbObject> type = ToOne<RelatedArtifactTypeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> label = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> labelElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> citation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> citationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> url = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> document = ToOne<AttachmentDbObject>();
  final ToOne<FhirCanonicalDbObject> resource = ToOne<FhirCanonicalDbObject>();
  RelatedArtifactDbObject({required this.id});
}
