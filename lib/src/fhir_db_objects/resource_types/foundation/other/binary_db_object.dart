import 'package:objectbox/objectbox.dart';
@Entity()
class BinaryDbObject {
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
  final ToOne<FhirCodeDbObject> contentType = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> contentTypeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> securityContext = ToOne<ReferenceDbObject>();
  final ToOne<FhirBase64BinaryDbObject> data = ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> dataElement = ToOne<PrimitiveElementDbObject>();
  BinaryDbObject({required this.id});
}
