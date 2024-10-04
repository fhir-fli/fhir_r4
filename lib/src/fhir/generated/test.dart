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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final String name;
  final PrimitiveElement Name;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference testScript;
  final FhirCode result;
  final PrimitiveElement Result;
  final FhirDecimal score;
  final PrimitiveElement Score;
  final String tester;
  final PrimitiveElement Tester;
  final FhirDateTime issued;
  final PrimitiveElement Issued;
  final List<TestReportParticipant> participant;
  final TestReportSetup setup;
  final List<TestReportTest> test;
  final TestReportTeardown teardown;
}

@Data()
@JsonCodable()
class TestReportParticipant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirUri uri;
  final PrimitiveElement Uri;
  final String display;
  final PrimitiveElement Display;
}

@Data()
@JsonCodable()
class TestReportSetup {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<TestReportAction> action;
}

@Data()
@JsonCodable()
class TestReportAction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final TestReportOperation operation;
  final TestReportAssert assert;
}

@Data()
@JsonCodable()
class TestReportOperation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode result;
  final PrimitiveElement Result;
  final FhirMarkdown message;
  final PrimitiveElement Message;
  final FhirUri detail;
  final PrimitiveElement Detail;
}

@Data()
@JsonCodable()
class TestReportAssert {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode result;
  final PrimitiveElement Result;
  final FhirMarkdown message;
  final PrimitiveElement Message;
  final String detail;
  final PrimitiveElement Detail;
}

@Data()
@JsonCodable()
class TestReportTest {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final List<TestReportAction1> action;
}

@Data()
@JsonCodable()
class TestReportAction1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final TestReportOperation operation;
  final TestReportAssert assert;
}

@Data()
@JsonCodable()
class TestReportTeardown {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<TestReportAction2> action;
}

@Data()
@JsonCodable()
class TestReportAction2 {
  final String id;
  final List<FhirExtension> extension;
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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final Identifier identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirInteger index;
  final PrimitiveElement Index;
  final Coding profile;
}

@Data()
@JsonCodable()
class TestScriptDestination {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirInteger index;
  final PrimitiveElement Index;
  final Coding profile;
}

@Data()
@JsonCodable()
class TestScriptMetadata {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptLink> link;
  final List<TestScriptCapability> capability;
}

@Data()
@JsonCodable()
class TestScriptLink {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final String description;
  final PrimitiveElement Description;
}

@Data()
@JsonCodable()
class TestScriptCapability {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean required;
  final PrimitiveElement Required;
  final FhirBoolean validated;
  final PrimitiveElement Validated;
  final String description;
  final PrimitiveElement Description;
  final List<FhirInteger> origin;
  final List<PrimitiveElement> Origin;
  final FhirInteger destination;
  final PrimitiveElement Destination;
  final List<FhirUri> link;
  final List<PrimitiveElement> Link;
  final FhirCanonical capabilities;
}

@Data()
@JsonCodable()
class TestScriptFixture {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean autocreate;
  final PrimitiveElement Autocreate;
  final FhirBoolean autodelete;
  final PrimitiveElement Autodelete;
  final Reference resource;
}

@Data()
@JsonCodable()
class TestScriptVariable {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String defaultValue;
  final PrimitiveElement DefaultValue;
  final String description;
  final PrimitiveElement Description;
  final String expression;
  final PrimitiveElement Expression;
  final String headerField;
  final PrimitiveElement HeaderField;
  final String hint;
  final PrimitiveElement Hint;
  final String path;
  final PrimitiveElement Path;
  final FhirId sourceId;
  final PrimitiveElement SourceId;
}

@Data()
@JsonCodable()
class TestScriptSetup {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptAction> action;
}

@Data()
@JsonCodable()
class TestScriptAction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
  final TestScriptAssert assert;
}

@Data()
@JsonCodable()
class TestScriptOperation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Coding type;
  final FhirCode resource;
  final PrimitiveElement Resource;
  final String label;
  final PrimitiveElement Label;
  final String description;
  final PrimitiveElement Description;
  final FhirCode accept;
  final PrimitiveElement Accept;
  final FhirCode contentType;
  final PrimitiveElement ContentType;
  final FhirInteger destination;
  final PrimitiveElement Destination;
  final FhirBoolean encodeRequestUrl;
  final PrimitiveElement EncodeRequestUrl;
  final FhirCode method;
  final PrimitiveElement Method;
  final FhirInteger origin;
  final PrimitiveElement Origin;
  final String params;
  final PrimitiveElement Params;
  final List<TestScriptRequestHeader> requestHeader;
  final FhirId requestId;
  final PrimitiveElement RequestId;
  final FhirId responseId;
  final PrimitiveElement ResponseId;
  final FhirId sourceId;
  final PrimitiveElement SourceId;
  final FhirId targetId;
  final PrimitiveElement TargetId;
  final String url;
  final PrimitiveElement Url;
}

@Data()
@JsonCodable()
class TestScriptRequestHeader {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String field;
  final PrimitiveElement Field;
  final String value;
  final PrimitiveElement Value;
}

@Data()
@JsonCodable()
class TestScriptAssert {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String label;
  final PrimitiveElement Label;
  final String description;
  final PrimitiveElement Description;
  final FhirCode direction;
  final PrimitiveElement Direction;
  final String compareToSourceId;
  final PrimitiveElement CompareToSourceId;
  final String compareToSourceExpression;
  final PrimitiveElement CompareToSourceExpression;
  final String compareToSourcePath;
  final PrimitiveElement CompareToSourcePath;
  final FhirCode contentType;
  final PrimitiveElement ContentType;
  final String expression;
  final PrimitiveElement Expression;
  final String headerField;
  final PrimitiveElement HeaderField;
  final String minimumId;
  final PrimitiveElement MinimumId;
  final FhirBoolean navigationLinks;
  final PrimitiveElement NavigationLinks;
  final FhirCode operator;
  final PrimitiveElement Operator;
  final String path;
  final PrimitiveElement Path;
  final FhirCode requestMethod;
  final PrimitiveElement RequestMethod;
  final String requestURL;
  final PrimitiveElement RequestURL;
  final FhirCode resource;
  final PrimitiveElement Resource;
  final FhirCode response;
  final PrimitiveElement Response;
  final String responseCode;
  final PrimitiveElement ResponseCode;
  final FhirId sourceId;
  final PrimitiveElement SourceId;
  final FhirId validateProfileId;
  final PrimitiveElement ValidateProfileId;
  final String value;
  final PrimitiveElement Value;
  final FhirBoolean warningOnly;
  final PrimitiveElement WarningOnly;
}

@Data()
@JsonCodable()
class TestScriptTest {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final List<TestScriptAction1> action;
}

@Data()
@JsonCodable()
class TestScriptAction1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
  final TestScriptAssert assert;
}

@Data()
@JsonCodable()
class TestScriptTeardown {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<TestScriptAction2> action;
}

@Data()
@JsonCodable()
class TestScriptAction2 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final TestScriptOperation operation;
}


