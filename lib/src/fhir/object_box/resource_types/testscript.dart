import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class TestScript extends Resource {
  TestScript({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
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
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
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
    this.indexElement,
    required this.profile,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int index;
  ToOne<Element>? indexElement = ToOne<Element>();
  ToOne<Coding> profile = ToOne<Coding>();
}

@Entity()
class TestScriptDestination {
  TestScriptDestination({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.index,
    this.indexElement,
    required this.profile,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int index;
  ToOne<Element>? indexElement = ToOne<Element>();
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
    this.urlElement,
    this.description,
    this.descriptionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  ToOne<Element>? urlElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
}

@Entity()
class TestScriptCapability {
  TestScriptCapability({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.required_,
    this.requiredElement,
    required this.validated,
    this.validatedElement,
    this.description,
    this.descriptionElement,
    this.origin,
    this.originElement,
    this.destination,
    this.destinationElement,
    this.link,
    this.linkElement,
    required this.capabilities,
    this.capabilitiesElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool required_;
  ToOne<Element>? requiredElement = ToOne<Element>();
  bool validated;
  ToOne<Element>? validatedElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  List<int>? origin;
  ToMany<Element>? originElement = ToMany<Element>();
  int? destination;
  ToOne<Element>? destinationElement = ToOne<Element>();
  List<String>? link;
  ToMany<Element>? linkElement = ToMany<Element>();
  String capabilities;
  ToOne<Element>? capabilitiesElement = ToOne<Element>();
}

@Entity()
class TestScriptFixture {
  TestScriptFixture({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.autocreate,
    this.autocreateElement,
    required this.autodelete,
    this.autodeleteElement,
    this.resource,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool autocreate;
  ToOne<Element>? autocreateElement = ToOne<Element>();
  bool autodelete;
  ToOne<Element>? autodeleteElement = ToOne<Element>();
  ToOne<Reference>? resource = ToOne<Reference>();
}

@Entity()
class TestScriptVariable {
  TestScriptVariable({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.defaultValue,
    this.defaultValueElement,
    this.description,
    this.descriptionElement,
    this.expression,
    this.expressionElement,
    this.headerField,
    this.headerFieldElement,
    this.hint,
    this.hintElement,
    this.path,
    this.pathElement,
    this.sourceId,
    this.sourceIdElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? defaultValue;
  ToOne<Element>? defaultValueElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? expression;
  ToOne<Element>? expressionElement = ToOne<Element>();
  String? headerField;
  ToOne<Element>? headerFieldElement = ToOne<Element>();
  String? hint;
  ToOne<Element>? hintElement = ToOne<Element>();
  String? path;
  ToOne<Element>? pathElement = ToOne<Element>();
  String? sourceId;
  ToOne<Element>? sourceIdElement = ToOne<Element>();
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
    this.resourceElement,
    this.label,
    this.labelElement,
    this.description,
    this.descriptionElement,
    this.accept,
    this.acceptElement,
    this.contentType,
    this.contentTypeElement,
    this.destination,
    this.destinationElement,
    required this.encodeRequestUrl,
    this.encodeRequestUrlElement,
    this.method,
    this.methodElement,
    this.origin,
    this.originElement,
    this.params,
    this.paramsElement,
    this.requestHeader,
    this.requestId,
    this.requestIdElement,
    this.responseId,
    this.responseIdElement,
    this.sourceId,
    this.sourceIdElement,
    this.targetId,
    this.targetIdElement,
    this.url,
    this.urlElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Coding>? type = ToOne<Coding>();
  String? resource;
  ToOne<Element>? resourceElement = ToOne<Element>();
  String? label;
  ToOne<Element>? labelElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? accept;
  ToOne<Element>? acceptElement = ToOne<Element>();
  String? contentType;
  ToOne<Element>? contentTypeElement = ToOne<Element>();
  int? destination;
  ToOne<Element>? destinationElement = ToOne<Element>();
  bool encodeRequestUrl;
  ToOne<Element>? encodeRequestUrlElement = ToOne<Element>();
  String? method;
  ToOne<Element>? methodElement = ToOne<Element>();
  int? origin;
  ToOne<Element>? originElement = ToOne<Element>();
  String? params;
  ToOne<Element>? paramsElement = ToOne<Element>();
  ToMany<TestScriptRequestHeader>? requestHeader =
      ToMany<TestScriptRequestHeader>();
  String? requestId;
  ToOne<Element>? requestIdElement = ToOne<Element>();
  String? responseId;
  ToOne<Element>? responseIdElement = ToOne<Element>();
  String? sourceId;
  ToOne<Element>? sourceIdElement = ToOne<Element>();
  String? targetId;
  ToOne<Element>? targetIdElement = ToOne<Element>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
}

@Entity()
class TestScriptRequestHeader {
  TestScriptRequestHeader({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.field,
    this.fieldElement,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String field;
  ToOne<Element>? fieldElement = ToOne<Element>();
  String value;
  ToOne<Element>? valueElement = ToOne<Element>();
}

@Entity()
class TestScriptAssert {
  TestScriptAssert({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.label,
    this.labelElement,
    this.description,
    this.descriptionElement,
    this.direction,
    this.directionElement,
    this.compareToSourceId,
    this.compareToSourceIdElement,
    this.compareToSourceExpression,
    this.compareToSourceExpressionElement,
    this.compareToSourcePath,
    this.compareToSourcePathElement,
    this.contentType,
    this.contentTypeElement,
    this.expression,
    this.expressionElement,
    this.headerField,
    this.headerFieldElement,
    this.minimumId,
    this.minimumIdElement,
    this.navigationLinks,
    this.navigationLinksElement,
    this.operator_,
    this.operatorElement,
    this.path,
    this.pathElement,
    this.requestMethod,
    this.requestMethodElement,
    this.requestURL,
    this.requestURLElement,
    this.resource,
    this.resourceElement,
    this.response,
    this.responseElement,
    this.responseCode,
    this.responseCodeElement,
    this.sourceId,
    this.sourceIdElement,
    this.validateProfileId,
    this.validateProfileIdElement,
    this.value,
    this.valueElement,
    required this.warningOnly,
    this.warningOnlyElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? label;
  ToOne<Element>? labelElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? direction;
  ToOne<Element>? directionElement = ToOne<Element>();
  String? compareToSourceId;
  ToOne<Element>? compareToSourceIdElement = ToOne<Element>();
  String? compareToSourceExpression;
  ToOne<Element>? compareToSourceExpressionElement = ToOne<Element>();
  String? compareToSourcePath;
  ToOne<Element>? compareToSourcePathElement = ToOne<Element>();
  String? contentType;
  ToOne<Element>? contentTypeElement = ToOne<Element>();
  String? expression;
  ToOne<Element>? expressionElement = ToOne<Element>();
  String? headerField;
  ToOne<Element>? headerFieldElement = ToOne<Element>();
  String? minimumId;
  ToOne<Element>? minimumIdElement = ToOne<Element>();
  bool? navigationLinks;
  ToOne<Element>? navigationLinksElement = ToOne<Element>();
  String? operator_;
  ToOne<Element>? operatorElement = ToOne<Element>();
  String? path;
  ToOne<Element>? pathElement = ToOne<Element>();
  String? requestMethod;
  ToOne<Element>? requestMethodElement = ToOne<Element>();
  String? requestURL;
  ToOne<Element>? requestURLElement = ToOne<Element>();
  String? resource;
  ToOne<Element>? resourceElement = ToOne<Element>();
  String? response;
  ToOne<Element>? responseElement = ToOne<Element>();
  String? responseCode;
  ToOne<Element>? responseCodeElement = ToOne<Element>();
  String? sourceId;
  ToOne<Element>? sourceIdElement = ToOne<Element>();
  String? validateProfileId;
  ToOne<Element>? validateProfileIdElement = ToOne<Element>();
  String? value;
  ToOne<Element>? valueElement = ToOne<Element>();
  bool warningOnly;
  ToOne<Element>? warningOnlyElement = ToOne<Element>();
}

@Entity()
class TestScriptTest {
  TestScriptTest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
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
