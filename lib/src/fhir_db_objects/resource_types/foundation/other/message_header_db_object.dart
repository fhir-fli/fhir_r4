import 'package:objectbox/objectbox.dart';
@Entity()
class MessageHeaderDbObject {
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
  final ToOne<CodingDbObject> eventCoding = ToOne<CodingDbObject>();
  final ToOne<FhirUriDbObject> eventUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> eventUriElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<MessageHeaderDestinationDbObject> destination = ToMany<MessageHeaderDestinationDbObject>();
  final ToOne<ReferenceDbObject> sender = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> enterer = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> author = ToOne<ReferenceDbObject>();
  final ToOne<MessageHeaderSourceDbObject> source = ToOne<MessageHeaderSourceDbObject>();
  final ToOne<ReferenceDbObject> responsible = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> reason = ToOne<CodeableConceptDbObject>();
  final ToOne<MessageHeaderResponseDbObject> response = ToOne<MessageHeaderResponseDbObject>();
  final ToMany<ReferenceDbObject> focus = ToMany<ReferenceDbObject>();
  final ToOne<FhirCanonicalDbObject> definition = ToOne<FhirCanonicalDbObject>();
  MessageHeaderDbObject({required this.id});
}
@Entity()
class MessageHeaderDestinationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> target = ToOne<ReferenceDbObject>();
  final ToOne<FhirUrlDbObject> endpoint = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> endpointElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> receiver = ToOne<ReferenceDbObject>();
  MessageHeaderDestinationDbObject({required this.id});
}
@Entity()
class MessageHeaderSourceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> software = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> softwareElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ContactPointDbObject> contact = ToOne<ContactPointDbObject>();
  final ToOne<FhirUrlDbObject> endpoint = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> endpointElement = ToOne<PrimitiveElementDbObject>();
  MessageHeaderSourceDbObject({required this.id});
}
@Entity()
class MessageHeaderResponseDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> identifier = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> identifierElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> details = ToOne<ReferenceDbObject>();
  MessageHeaderResponseDbObject({required this.id});
}
