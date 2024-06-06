import 'package:objectbox/objectbox.dart';
@Entity()
class MessageDefinitionDbObject {
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
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> replaces = ToMany<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext = ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> base = ToOne<FhirCanonicalDbObject>();
  final ToMany<FhirCanonicalDbObject> parent = ToMany<FhirCanonicalDbObject>();
  final ToOne<CodingDbObject> eventCoding = ToOne<CodingDbObject>();
  final ToOne<FhirUriDbObject> eventUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> eventUriElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> category = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> categoryElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<MessageDefinitionFocusDbObject> focus = ToMany<MessageDefinitionFocusDbObject>();
  final ToOne<FhirCodeDbObject> responseRequired = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> responseRequiredElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<MessageDefinitionAllowedResponseDbObject> allowedResponse = ToMany<MessageDefinitionAllowedResponseDbObject>();
  final ToMany<FhirCanonicalDbObject> graph = ToMany<FhirCanonicalDbObject>();
  MessageDefinitionDbObject({required this.id});
}
@Entity()
class MessageDefinitionFocusDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> profile = ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirUnsignedIntDbObject> min = ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> minElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> max = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> maxElement = ToOne<PrimitiveElementDbObject>();
  MessageDefinitionFocusDbObject({required this.id});
}
@Entity()
class MessageDefinitionAllowedResponseDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCanonicalDbObject> message = ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirMarkdownDbObject> situation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> situationElement = ToOne<PrimitiveElementDbObject>();
  MessageDefinitionAllowedResponseDbObject({required this.id});
}
