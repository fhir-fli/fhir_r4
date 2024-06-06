import 'package:objectbox/objectbox.dart';
@Entity()
class CapabilityStatementDbObject {
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
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
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
  final ToOne<FhirCodeDbObject> kind = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> kindElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> instantiates = ToMany<FhirCanonicalDbObject>();
  final ToMany<FhirCanonicalDbObject> imports = ToMany<FhirCanonicalDbObject>();
  final ToOne<CapabilityStatementSoftwareDbObject> software = ToOne<CapabilityStatementSoftwareDbObject>();
  final ToOne<CapabilityStatementImplementationDbObject> implementation = ToOne<CapabilityStatementImplementationDbObject>();
  final ToOne<FhirCodeDbObject> fhirVersion = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> fhirVersionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> format = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> formatElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> patchFormat = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> patchFormatElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> implementationGuide = ToMany<FhirCanonicalDbObject>();
  final ToMany<CapabilityStatementRestDbObject> rest = ToMany<CapabilityStatementRestDbObject>();
  final ToMany<CapabilityStatementMessagingDbObject> messaging = ToMany<CapabilityStatementMessagingDbObject>();
  final ToMany<CapabilityStatementDocumentDbObject> document = ToMany<CapabilityStatementDocumentDbObject>();
  CapabilityStatementDbObject({required this.id});
}
@Entity()
class CapabilityStatementSoftwareDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> releaseDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> releaseDateElement = ToOne<PrimitiveElementDbObject>();
  CapabilityStatementSoftwareDbObject({required this.id});
}
@Entity()
class CapabilityStatementImplementationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> url = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> custodian = ToOne<ReferenceDbObject>();
  CapabilityStatementImplementationDbObject({required this.id});
}
@Entity()
class CapabilityStatementRestDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> documentation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CapabilityStatementSecurityDbObject> security = ToOne<CapabilityStatementSecurityDbObject>();
  final ToMany<CapabilityStatementResourceDbObject> resource = ToMany<CapabilityStatementResourceDbObject>();
  final ToMany<CapabilityStatementInteraction1DbObject> interaction = ToMany<CapabilityStatementInteraction1DbObject>();
  final ToMany<CapabilityStatementSearchParamDbObject> searchParam = ToMany<CapabilityStatementSearchParamDbObject>();
  final ToMany<CapabilityStatementOperationDbObject> operation = ToMany<CapabilityStatementOperationDbObject>();
  final ToMany<FhirCanonicalDbObject> compartment = ToMany<FhirCanonicalDbObject>();
  CapabilityStatementRestDbObject({required this.id});
}
@Entity()
class CapabilityStatementSecurityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> cors = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> corsElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> service = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  CapabilityStatementSecurityDbObject({required this.id});
}
@Entity()
class CapabilityStatementResourceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> profile = ToOne<FhirCanonicalDbObject>();
  final ToMany<FhirCanonicalDbObject> supportedProfile = ToMany<FhirCanonicalDbObject>();
  final ToOne<FhirMarkdownDbObject> documentation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CapabilityStatementInteractionDbObject> interaction = ToMany<CapabilityStatementInteractionDbObject>();
  final ToOne<FhirCodeDbObject> versioning = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> versioningElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> readHistory = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> readHistoryElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> updateCreate = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> updateCreateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> conditionalCreate = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> conditionalCreateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> conditionalRead = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> conditionalReadElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> conditionalUpdate = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> conditionalUpdateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> conditionalDelete = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> conditionalDeleteElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> referencePolicy = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> referencePolicyElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> searchInclude = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> searchIncludeElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> searchRevInclude = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> searchRevIncludeElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<CapabilityStatementSearchParamDbObject> searchParam = ToMany<CapabilityStatementSearchParamDbObject>();
  final ToMany<CapabilityStatementOperationDbObject> operation = ToMany<CapabilityStatementOperationDbObject>();
  CapabilityStatementResourceDbObject({required this.id});
}
@Entity()
class CapabilityStatementInteractionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> documentation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  CapabilityStatementInteractionDbObject({required this.id});
}
@Entity()
class CapabilityStatementSearchParamDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> definition = ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> documentation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  CapabilityStatementSearchParamDbObject({required this.id});
}
@Entity()
class CapabilityStatementOperationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> definition = ToOne<FhirCanonicalDbObject>();
  final ToOne<FhirMarkdownDbObject> documentation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  CapabilityStatementOperationDbObject({required this.id});
}
@Entity()
class CapabilityStatementInteraction1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> documentation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  CapabilityStatementInteraction1DbObject({required this.id});
}
@Entity()
class CapabilityStatementMessagingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CapabilityStatementEndpointDbObject> endpoint = ToMany<CapabilityStatementEndpointDbObject>();
  final ToOne<FhirUnsignedIntDbObject> reliableCache = ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> reliableCacheElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> documentation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CapabilityStatementSupportedMessageDbObject> supportedMessage = ToMany<CapabilityStatementSupportedMessageDbObject>();
  CapabilityStatementMessagingDbObject({required this.id});
}
@Entity()
class CapabilityStatementEndpointDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodingDbObject> protocol = ToOne<CodingDbObject>();
  final ToOne<FhirUrlDbObject> address = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> addressElement = ToOne<PrimitiveElementDbObject>();
  CapabilityStatementEndpointDbObject({required this.id});
}
@Entity()
class CapabilityStatementSupportedMessageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> definition = ToOne<FhirCanonicalDbObject>();
  CapabilityStatementSupportedMessageDbObject({required this.id});
}
@Entity()
class CapabilityStatementDocumentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> documentation = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> documentationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> profile = ToOne<FhirCanonicalDbObject>();
  CapabilityStatementDocumentDbObject({required this.id});
}
