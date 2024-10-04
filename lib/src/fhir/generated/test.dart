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
}

@Data()
@JsonCodable()
class TestReportSetup {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestReportAction> action;
}

@Data()
@JsonCodable()
class TestReportAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestReportOperation operation;
  final TestReportAssert assert_;
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
}

@Data()
@JsonCodable()
class TestReportAction1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestReportOperation operation;
  final TestReportAssert assert_;
}

@Data()
@JsonCodable()
class TestReportTeardown {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestReportAction2> action;
}

@Data()
@JsonCodable()
class TestReportAction2 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestReportOperation operation;
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
}

@Data()
@JsonCodable()
class TestScriptMetadata {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptLink> link;
  final List<TestScriptCapability> capability;
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
}

@Data()
@JsonCodable()
class TestScriptSetup {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptAction> action;
}

@Data()
@JsonCodable()
class TestScriptAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
  final TestScriptAssert assert_;
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
}

@Data()
@JsonCodable()
class TestScriptAction1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
  final TestScriptAssert assert_;
}

@Data()
@JsonCodable()
class TestScriptTeardown {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptAction2> action;
}

@Data()
@JsonCodable()
class TestScriptAction2 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
}


