import 'package:objectbox/objectbox.dart';
@Entity()
class DocumentManifestDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> masterIdentifier = ToOne<IdentifierDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> author = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> recipient = ToMany<ReferenceDbObject>();
  final ToOne<FhirUriDbObject> source = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> content = ToMany<ReferenceDbObject>();
  final ToMany<DocumentManifestRelatedDbObject> related = ToMany<DocumentManifestRelatedDbObject>();
  DocumentManifestDbObject({required this.id});
}
@Entity()
class DocumentManifestRelatedDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> ref = ToOne<ReferenceDbObject>();
  DocumentManifestRelatedDbObject({required this.id});
}
