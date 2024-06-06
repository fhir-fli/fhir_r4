import 'package:objectbox/objectbox.dart';
@Entity()
class BodyStructureDbObject {
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
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirBooleanDbObject> active = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> activeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> morphology = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> location = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> locationQualifier = ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AttachmentDbObject> image = ToMany<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  BodyStructureDbObject({required this.id});
}
