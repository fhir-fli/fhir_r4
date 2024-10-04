import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class TestReport {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final String name;
  final PrimitiveElement nameElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Reference testScript;
  final FhirCode result;
  final PrimitiveElement resultElement;
  final FhirDecimal score;
  final PrimitiveElement scoreElement;
  final String tester;
  final PrimitiveElement testerElement;
  final FhirDateTime issued;
  final PrimitiveElement issuedElement;
  final List<TestReportParticipant> participant;
  final TestReportSetup setup;
  final List<TestReportTest> test;
  final TestReportTeardown teardown;
  const TestReport({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.name,
    required this.nameElement,
    required this.status,
    required this.statusElement,
    required this.testScript,
    required this.result,
    required this.resultElement,
    required this.score,
    required this.scoreElement,
    required this.tester,
    required this.testerElement,
    required this.issued,
    required this.issuedElement,
    required this.participant,
    required this.setup,
    required this.test,
    required this.teardown,
  });
}

@Data()
@JsonCodable()
class TestReportParticipant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirUri uri;
  final PrimitiveElement uriElement;
  final String display;
  final PrimitiveElement displayElement;
  const TestReportParticipant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.uri,
    required this.uriElement,
    required this.display,
    required this.displayElement,
  });
}

@Data()
@JsonCodable()
class TestReportSetup {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestReportAction> action;
  const TestReportSetup({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.action,
  });
}

@Data()
@JsonCodable()
class TestReportAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestReportOperation operation;
  final TestReportAssert assert_;
  const TestReportAction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.operation,
    required this.assert_,
  });
}

@Data()
@JsonCodable()
class TestReportOperation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode result;
  final PrimitiveElement resultElement;
  final FhirMarkdown message;
  final PrimitiveElement messageElement;
  final FhirUri detail;
  final PrimitiveElement detailElement;
  const TestReportOperation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.result,
    required this.resultElement,
    required this.message,
    required this.messageElement,
    required this.detail,
    required this.detailElement,
  });
}

@Data()
@JsonCodable()
class TestReportAssert {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode result;
  final PrimitiveElement resultElement;
  final FhirMarkdown message;
  final PrimitiveElement messageElement;
  final String detail;
  final PrimitiveElement detailElement;
  const TestReportAssert({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.result,
    required this.resultElement,
    required this.message,
    required this.messageElement,
    required this.detail,
    required this.detailElement,
  });
}

@Data()
@JsonCodable()
class TestReportTest {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<TestReportAction1> action;
  const TestReportTest({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
    required this.action,
  });
}

@Data()
@JsonCodable()
class TestReportAction1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestReportOperation operation;
  final TestReportAssert assert_;
  const TestReportAction1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.operation,
    required this.assert_,
  });
}

@Data()
@JsonCodable()
class TestReportTeardown {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestReportAction2> action;
  const TestReportTeardown({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.action,
  });
}

@Data()
@JsonCodable()
class TestReportAction2 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestReportOperation operation;
  const TestReportAction2({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.operation,
  });
}

@Data()
@JsonCodable()
class TestScript {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final Identifier identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final List<TestScriptOrigin> origin;
  final List<TestScriptDestination> destination;
  final TestScriptMetadata metadata;
  final List<TestScriptFixture> fixture;
  final List<Reference> profile;
  final List<TestScriptVariable> variable;
  final TestScriptSetup setup;
  final List<TestScriptTest> test;
  final TestScriptTeardown teardown;
  const TestScript({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.copyright,
    required this.copyrightElement,
    required this.origin,
    required this.destination,
    required this.metadata,
    required this.fixture,
    required this.profile,
    required this.variable,
    required this.setup,
    required this.test,
    required this.teardown,
  });
}

@Data()
@JsonCodable()
class TestScriptOrigin {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirInteger index;
  final PrimitiveElement indexElement;
  final Coding profile;
  const TestScriptOrigin({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.index,
    required this.indexElement,
    required this.profile,
  });
}

@Data()
@JsonCodable()
class TestScriptDestination {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirInteger index;
  final PrimitiveElement indexElement;
  final Coding profile;
  const TestScriptDestination({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.index,
    required this.indexElement,
    required this.profile,
  });
}

@Data()
@JsonCodable()
class TestScriptMetadata {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptLink> link;
  final List<TestScriptCapability> capability;
  const TestScriptMetadata({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.link,
    required this.capability,
  });
}

@Data()
@JsonCodable()
class TestScriptLink {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String description;
  final PrimitiveElement descriptionElement;
  const TestScriptLink({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.description,
    required this.descriptionElement,
  });
}

@Data()
@JsonCodable()
class TestScriptCapability {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean required_;
  final PrimitiveElement requiredElement;
  final FhirBoolean validated;
  final PrimitiveElement validatedElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<FhirInteger> origin;
  final List<PrimitiveElement> originElement;
  final FhirInteger destination;
  final PrimitiveElement destinationElement;
  final List<FhirUri> link;
  final List<PrimitiveElement> linkElement;
  final FhirCanonical capabilities;
  const TestScriptCapability({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.required_,
    required this.requiredElement,
    required this.validated,
    required this.validatedElement,
    required this.description,
    required this.descriptionElement,
    required this.origin,
    required this.originElement,
    required this.destination,
    required this.destinationElement,
    required this.link,
    required this.linkElement,
    required this.capabilities,
  });
}

@Data()
@JsonCodable()
class TestScriptFixture {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean autocreate;
  final PrimitiveElement autocreateElement;
  final FhirBoolean autodelete;
  final PrimitiveElement autodeleteElement;
  final Reference resource;
  const TestScriptFixture({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.autocreate,
    required this.autocreateElement,
    required this.autodelete,
    required this.autodeleteElement,
    required this.resource,
  });
}

@Data()
@JsonCodable()
class TestScriptVariable {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String defaultValue;
  final PrimitiveElement defaultValueElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final String expression;
  final PrimitiveElement expressionElement;
  final String headerField;
  final PrimitiveElement headerFieldElement;
  final String hint;
  final PrimitiveElement hintElement;
  final String path;
  final PrimitiveElement pathElement;
  final FhirId sourceId;
  final PrimitiveElement sourceIdElement;
  const TestScriptVariable({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.defaultValue,
    required this.defaultValueElement,
    required this.description,
    required this.descriptionElement,
    required this.expression,
    required this.expressionElement,
    required this.headerField,
    required this.headerFieldElement,
    required this.hint,
    required this.hintElement,
    required this.path,
    required this.pathElement,
    required this.sourceId,
    required this.sourceIdElement,
  });
}

@Data()
@JsonCodable()
class TestScriptSetup {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptAction> action;
  const TestScriptSetup({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.action,
  });
}

@Data()
@JsonCodable()
class TestScriptAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
  final TestScriptAssert assert_;
  const TestScriptAction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.operation,
    required this.assert_,
  });
}

@Data()
@JsonCodable()
class TestScriptOperation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Coding type;
  final FhirCode resource;
  final PrimitiveElement resourceElement;
  final String label;
  final PrimitiveElement labelElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirCode accept;
  final PrimitiveElement acceptElement;
  final FhirCode contentType;
  final PrimitiveElement contentTypeElement;
  final FhirInteger destination;
  final PrimitiveElement destinationElement;
  final FhirBoolean encodeRequestUrl;
  final PrimitiveElement encodeRequestUrlElement;
  final FhirCode method;
  final PrimitiveElement methodElement;
  final FhirInteger origin;
  final PrimitiveElement originElement;
  final String params;
  final PrimitiveElement paramsElement;
  final List<TestScriptRequestHeader> requestHeader;
  final FhirId requestId;
  final PrimitiveElement requestIdElement;
  final FhirId responseId;
  final PrimitiveElement responseIdElement;
  final FhirId sourceId;
  final PrimitiveElement sourceIdElement;
  final FhirId targetId;
  final PrimitiveElement targetIdElement;
  final String url;
  final PrimitiveElement urlElement;
  const TestScriptOperation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.resource,
    required this.resourceElement,
    required this.label,
    required this.labelElement,
    required this.description,
    required this.descriptionElement,
    required this.accept,
    required this.acceptElement,
    required this.contentType,
    required this.contentTypeElement,
    required this.destination,
    required this.destinationElement,
    required this.encodeRequestUrl,
    required this.encodeRequestUrlElement,
    required this.method,
    required this.methodElement,
    required this.origin,
    required this.originElement,
    required this.params,
    required this.paramsElement,
    required this.requestHeader,
    required this.requestId,
    required this.requestIdElement,
    required this.responseId,
    required this.responseIdElement,
    required this.sourceId,
    required this.sourceIdElement,
    required this.targetId,
    required this.targetIdElement,
    required this.url,
    required this.urlElement,
  });
}

@Data()
@JsonCodable()
class TestScriptRequestHeader {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String field;
  final PrimitiveElement fieldElement;
  final String value;
  final PrimitiveElement valueElement;
  const TestScriptRequestHeader({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.field,
    required this.fieldElement,
    required this.value,
    required this.valueElement,
  });
}

@Data()
@JsonCodable()
class TestScriptAssert {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String label;
  final PrimitiveElement labelElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirCode direction;
  final PrimitiveElement directionElement;
  final String compareToSourceId;
  final PrimitiveElement compareToSourceIdElement;
  final String compareToSourceExpression;
  final PrimitiveElement compareToSourceExpressionElement;
  final String compareToSourcePath;
  final PrimitiveElement compareToSourcePathElement;
  final FhirCode contentType;
  final PrimitiveElement contentTypeElement;
  final String expression;
  final PrimitiveElement expressionElement;
  final String headerField;
  final PrimitiveElement headerFieldElement;
  final String minimumId;
  final PrimitiveElement minimumIdElement;
  final FhirBoolean navigationLinks;
  final PrimitiveElement navigationLinksElement;
  final FhirCode operator_;
  final PrimitiveElement operatorElement;
  final String path;
  final PrimitiveElement pathElement;
  final FhirCode requestMethod;
  final PrimitiveElement requestMethodElement;
  final String requestURL;
  final PrimitiveElement requestURLElement;
  final FhirCode resource;
  final PrimitiveElement resourceElement;
  final FhirCode response;
  final PrimitiveElement responseElement;
  final String responseCode;
  final PrimitiveElement responseCodeElement;
  final FhirId sourceId;
  final PrimitiveElement sourceIdElement;
  final FhirId validateProfileId;
  final PrimitiveElement validateProfileIdElement;
  final String value;
  final PrimitiveElement valueElement;
  final FhirBoolean warningOnly;
  final PrimitiveElement warningOnlyElement;
  const TestScriptAssert({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.label,
    required this.labelElement,
    required this.description,
    required this.descriptionElement,
    required this.direction,
    required this.directionElement,
    required this.compareToSourceId,
    required this.compareToSourceIdElement,
    required this.compareToSourceExpression,
    required this.compareToSourceExpressionElement,
    required this.compareToSourcePath,
    required this.compareToSourcePathElement,
    required this.contentType,
    required this.contentTypeElement,
    required this.expression,
    required this.expressionElement,
    required this.headerField,
    required this.headerFieldElement,
    required this.minimumId,
    required this.minimumIdElement,
    required this.navigationLinks,
    required this.navigationLinksElement,
    required this.operator_,
    required this.operatorElement,
    required this.path,
    required this.pathElement,
    required this.requestMethod,
    required this.requestMethodElement,
    required this.requestURL,
    required this.requestURLElement,
    required this.resource,
    required this.resourceElement,
    required this.response,
    required this.responseElement,
    required this.responseCode,
    required this.responseCodeElement,
    required this.sourceId,
    required this.sourceIdElement,
    required this.validateProfileId,
    required this.validateProfileIdElement,
    required this.value,
    required this.valueElement,
    required this.warningOnly,
    required this.warningOnlyElement,
  });
}

@Data()
@JsonCodable()
class TestScriptTest {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<TestScriptAction1> action;
  const TestScriptTest({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
    required this.action,
  });
}

@Data()
@JsonCodable()
class TestScriptAction1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
  final TestScriptAssert assert_;
  const TestScriptAction1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.operation,
    required this.assert_,
  });
}

@Data()
@JsonCodable()
class TestScriptTeardown {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptAction2> action;
  const TestScriptTeardown({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.action,
  });
}

@Data()
@JsonCodable()
class TestScriptAction2 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
  const TestScriptAction2({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.operation,
  });
}


