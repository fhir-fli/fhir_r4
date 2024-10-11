import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class TestScript extends Resource {
  TestScript({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.identifier,
    this.version,
    required this.name,
    this.title,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.origin,
    this.destination,
    this.metadata,
    this.fixture,
    this.profile,
    this.variable,
    this.setup,
    this.test,
    this.teardown,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? version;
  String name;
  String? title;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  ToMany<TestScriptOrigin>? origin = ToMany<TestScriptOrigin>();
  ToMany<TestScriptDestination>? destination = ToMany<TestScriptDestination>();
  ToOne<TestScriptMetadata>? metadata = ToOne<TestScriptMetadata>();
  ToMany<TestScriptFixture>? fixture = ToMany<TestScriptFixture>();
  ToMany<Reference>? profile = ToMany<Reference>();
  ToMany<TestScriptVariable>? variable = ToMany<TestScriptVariable>();
  ToOne<TestScriptSetup>? setup = ToOne<TestScriptSetup>();
  ToMany<TestScriptTest>? test = ToMany<TestScriptTest>();
  ToOne<TestScriptTeardown>? teardown = ToOne<TestScriptTeardown>();
}

@Entity()
class TestScriptOrigin {
  TestScriptOrigin({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.index,
    required this.profile,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int index;
  ToOne<Coding> profile = ToOne<Coding>();
}

@Entity()
class TestScriptDestination {
  TestScriptDestination({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.index,
    required this.profile,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int index;
  ToOne<Coding> profile = ToOne<Coding>();
}

@Entity()
class TestScriptMetadata {
  TestScriptMetadata({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.link,
    required this.capability,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<TestScriptLink>? link = ToMany<TestScriptLink>();
  ToMany<TestScriptCapability> capability = ToMany<TestScriptCapability>();
}

@Entity()
class TestScriptLink {
  TestScriptLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  String? description;
}

@Entity()
class TestScriptCapability {
  TestScriptCapability({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.required_,
    required this.validated,
    this.description,
    this.origin,
    this.destination,
    this.link,
    required this.capabilities,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool required_;
  bool validated;
  String? description;
  List<int>? origin;
  int? destination;
  List<String>? link;
  String capabilities;
}

@Entity()
class TestScriptFixture {
  TestScriptFixture({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.autocreate,
    required this.autodelete,
    this.resource,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool autocreate;
  bool autodelete;
  ToOne<Reference>? resource = ToOne<Reference>();
}

@Entity()
class TestScriptVariable {
  TestScriptVariable({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.defaultValue,
    this.description,
    this.expression,
    this.headerField,
    this.hint,
    this.path,
    this.sourceId,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? defaultValue;
  String? description;
  String? expression;
  String? headerField;
  String? hint;
  String? path;
  String? sourceId;
}

@Entity()
class TestScriptSetup {
  TestScriptSetup({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<TestScriptAction> action = ToMany<TestScriptAction>();
}

@Entity()
class TestScriptAction {
  TestScriptAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<TestScriptOperation>? operation = ToOne<TestScriptOperation>();
  ToOne<TestScriptAssert>? assert_ = ToOne<TestScriptAssert>();
}

@Entity()
class TestScriptOperation {
  TestScriptOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.resource,
    this.label,
    this.description,
    this.accept,
    this.contentType,
    this.destination,
    required this.encodeRequestUrl,
    this.method,
    this.origin,
    this.params,
    this.requestHeader,
    this.requestId,
    this.responseId,
    this.sourceId,
    this.targetId,
    this.url,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Coding>? type = ToOne<Coding>();
  String? resource;
  String? label;
  String? description;
  String? accept;
  String? contentType;
  int? destination;
  bool encodeRequestUrl;
  String? method;
  int? origin;
  String? params;
  ToMany<TestScriptRequestHeader>? requestHeader =
      ToMany<TestScriptRequestHeader>();
  String? requestId;
  String? responseId;
  String? sourceId;
  String? targetId;
  String? url;
}

@Entity()
class TestScriptRequestHeader {
  TestScriptRequestHeader({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.field,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String field;
  String value;
}

@Entity()
class TestScriptAssert {
  TestScriptAssert({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.label,
    this.description,
    this.direction,
    this.compareToSourceId,
    this.compareToSourceExpression,
    this.compareToSourcePath,
    this.contentType,
    this.expression,
    this.headerField,
    this.minimumId,
    this.navigationLinks,
    this.operator_,
    this.path,
    this.requestMethod,
    this.requestURL,
    this.resource,
    this.response,
    this.responseCode,
    this.sourceId,
    this.validateProfileId,
    this.value,
    required this.warningOnly,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? label;
  String? description;
  String? direction;
  String? compareToSourceId;
  String? compareToSourceExpression;
  String? compareToSourcePath;
  String? contentType;
  String? expression;
  String? headerField;
  String? minimumId;
  bool? navigationLinks;
  String? operator_;
  String? path;
  String? requestMethod;
  String? requestURL;
  String? resource;
  String? response;
  String? responseCode;
  String? sourceId;
  String? validateProfileId;
  String? value;
  bool warningOnly;
}

@Entity()
class TestScriptTest {
  TestScriptTest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.description,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? name;
  String? description;
  ToMany<TestScriptAction> action = ToMany<TestScriptAction>();
}

@Entity()
class TestScriptAction1 {
  TestScriptAction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<TestScriptOperation>? operation = ToOne<TestScriptOperation>();
  ToOne<TestScriptAssert>? assert_ = ToOne<TestScriptAssert>();
}

@Entity()
class TestScriptTeardown {
  TestScriptTeardown({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<TestScriptAction> action = ToMany<TestScriptAction>();
}

@Entity()
class TestScriptAction2 {
  TestScriptAction2({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.operation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<TestScriptOperation> operation = ToOne<TestScriptOperation>();
}
