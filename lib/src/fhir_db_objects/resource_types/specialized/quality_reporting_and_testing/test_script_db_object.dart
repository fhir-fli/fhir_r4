import 'package:objectbox/objectbox.dart';
@Entity()
class TestScriptDbObject {
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
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
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
  final ToMany<TestScriptOriginDbObject> origin = ToMany<TestScriptOriginDbObject>();
  final ToMany<TestScriptDestinationDbObject> destination = ToMany<TestScriptDestinationDbObject>();
  final ToOne<TestScriptMetadataDbObject> metadata = ToOne<TestScriptMetadataDbObject>();
  final ToMany<TestScriptFixtureDbObject> fixture = ToMany<TestScriptFixtureDbObject>();
  final ToMany<ReferenceDbObject> profile = ToMany<ReferenceDbObject>();
  final ToMany<TestScriptVariableDbObject> variable = ToMany<TestScriptVariableDbObject>();
  final ToOne<TestScriptSetupDbObject> setup = ToOne<TestScriptSetupDbObject>();
  final ToMany<TestScriptTestDbObject> test = ToMany<TestScriptTestDbObject>();
  final ToOne<TestScriptTeardownDbObject> teardown = ToOne<TestScriptTeardownDbObject>();
  TestScriptDbObject({required this.id});
}
@Entity()
class TestScriptOriginDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIntegerDbObject> index = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> indexElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> profile = ToOne<CodingDbObject>();
  TestScriptOriginDbObject({required this.id});
}
@Entity()
class TestScriptDestinationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIntegerDbObject> index = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> indexElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> profile = ToOne<CodingDbObject>();
  TestScriptDestinationDbObject({required this.id});
}
@Entity()
class TestScriptMetadataDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<TestScriptLinkDbObject> link = ToMany<TestScriptLinkDbObject>();
  final ToMany<TestScriptCapabilityDbObject> capability = ToMany<TestScriptCapabilityDbObject>();
  TestScriptMetadataDbObject({required this.id});
}
@Entity()
class TestScriptLinkDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  TestScriptLinkDbObject({required this.id});
}
@Entity()
class TestScriptCapabilityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> required_ = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> requiredElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> validated = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> validatedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirIntegerDbObject> origin = ToMany<FhirIntegerDbObject>();
  final ToMany<PrimitiveElementDbObject> originElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> destination = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> destinationElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirUriDbObject> link = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> linkElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> capabilities = ToOne<FhirCanonicalDbObject>();
  TestScriptCapabilityDbObject({required this.id});
}
@Entity()
class TestScriptFixtureDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> autocreate = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> autocreateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> autodelete = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> autodeleteElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> resource = ToOne<ReferenceDbObject>();
  TestScriptFixtureDbObject({required this.id});
}
@Entity()
class TestScriptVariableDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> defaultValue = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> defaultValueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> expression = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> expressionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> headerField = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> headerFieldElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> hint = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> hintElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> path = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pathElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> sourceId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceIdElement = ToOne<PrimitiveElementDbObject>();
  TestScriptVariableDbObject({required this.id});
}
@Entity()
class TestScriptSetupDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<TestScriptActionDbObject> action = ToMany<TestScriptActionDbObject>();
  TestScriptSetupDbObject({required this.id});
}
@Entity()
class TestScriptActionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<TestScriptOperationDbObject> operation = ToOne<TestScriptOperationDbObject>();
  final ToOne<TestScriptAssertDbObject> assert_ = ToOne<TestScriptAssertDbObject>();
  TestScriptActionDbObject({required this.id});
}
@Entity()
class TestScriptOperationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodingDbObject> type = ToOne<CodingDbObject>();
  final ToOne<FhirCodeDbObject> resource = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> label = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> labelElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> accept = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> acceptElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> contentType = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> contentTypeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> destination = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> destinationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> encodeRequestUrl = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> encodeRequestUrlElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> method = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> methodElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> origin = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> originElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> params = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> paramsElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<TestScriptRequestHeaderDbObject> requestHeader = ToMany<TestScriptRequestHeaderDbObject>();
  final ToOne<FhirIdDbObject> requestId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> requestIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> responseId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> responseIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> sourceId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> targetId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> targetIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> url = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  TestScriptOperationDbObject({required this.id});
}
@Entity()
class TestScriptRequestHeaderDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> field = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> fieldElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  TestScriptRequestHeaderDbObject({required this.id});
}
@Entity()
class TestScriptAssertDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> label = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> labelElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> direction = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> directionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> compareToSourceId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> compareToSourceIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> compareToSourceExpression = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> compareToSourceExpressionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> compareToSourcePath = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> compareToSourcePathElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> contentType = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> contentTypeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> expression = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> expressionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> headerField = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> headerFieldElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> minimumId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> minimumIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> navigationLinks = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> navigationLinksElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> operator_ = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> operatorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> path = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pathElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> requestMethod = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> requestMethodElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> requestURL = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> requestURLElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> resource = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> resourceElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> response = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> responseElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> responseCode = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> responseCodeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> sourceId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> sourceIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIdDbObject> validateProfileId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> validateProfileIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> warningOnly = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> warningOnlyElement = ToOne<PrimitiveElementDbObject>();
  TestScriptAssertDbObject({required this.id});
}
@Entity()
class TestScriptTestDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<TestScriptAction1DbObject> action = ToMany<TestScriptAction1DbObject>();
  TestScriptTestDbObject({required this.id});
}
@Entity()
class TestScriptAction1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<TestScriptOperationDbObject> operation = ToOne<TestScriptOperationDbObject>();
  final ToOne<TestScriptAssertDbObject> assert_ = ToOne<TestScriptAssertDbObject>();
  TestScriptAction1DbObject({required this.id});
}
@Entity()
class TestScriptTeardownDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<TestScriptAction2DbObject> action = ToMany<TestScriptAction2DbObject>();
  TestScriptTeardownDbObject({required this.id});
}
@Entity()
class TestScriptAction2DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<TestScriptOperationDbObject> operation = ToOne<TestScriptOperationDbObject>();
  TestScriptAction2DbObject({required this.id});
}
