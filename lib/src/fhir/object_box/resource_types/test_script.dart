// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTestScript {
  ObjectBoxTestScript({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestScriptOrigin>? origin =
      ToMany<ObjectBoxTestScriptOrigin>();
  ToMany<ObjectBoxTestScriptDestination>? destination =
      ToMany<ObjectBoxTestScriptDestination>();
  ToOne<ObjectBoxTestScriptMetadata>? metadata =
      ToOne<ObjectBoxTestScriptMetadata>();
  ToMany<ObjectBoxTestScriptFixture>? fixture =
      ToMany<ObjectBoxTestScriptFixture>();
  ToMany<ObjectBoxReference>? profile = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxTestScriptVariable>? variable =
      ToMany<ObjectBoxTestScriptVariable>();
  ToOne<ObjectBoxTestScriptSetup>? setup = ToOne<ObjectBoxTestScriptSetup>();
  ToMany<ObjectBoxTestScriptTest>? test = ToMany<ObjectBoxTestScriptTest>();
  ToOne<ObjectBoxTestScriptTeardown>? teardown =
      ToOne<ObjectBoxTestScriptTeardown>();
}

@Entity()
class ObjectBoxTestScriptOrigin {
  ObjectBoxTestScriptOrigin({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int index;
  ToOne<ObjectBoxElement>? indexElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> profile = ToOne<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxTestScriptDestination {
  ObjectBoxTestScriptDestination({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int index;
  ToOne<ObjectBoxElement>? indexElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> profile = ToOne<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxTestScriptMetadata {
  ObjectBoxTestScriptMetadata({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.link,
    required this.capability,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestScriptLink>? link = ToMany<ObjectBoxTestScriptLink>();
  ToMany<ObjectBoxTestScriptCapability> capability =
      ToMany<ObjectBoxTestScriptCapability>();
}

@Entity()
class ObjectBoxTestScriptLink {
  ObjectBoxTestScriptLink({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptCapability {
  ObjectBoxTestScriptCapability({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool required_;
  ToOne<ObjectBoxElement>? requiredElement = ToOne<ObjectBoxElement>();
  bool validated;
  ToOne<ObjectBoxElement>? validatedElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  List<int>? origin;
  ToMany<ObjectBoxElement>? originElement = ToMany<ObjectBoxElement>();
  int? destination;
  ToOne<ObjectBoxElement>? destinationElement = ToOne<ObjectBoxElement>();
  List<String>? link;
  ToMany<ObjectBoxElement>? linkElement = ToMany<ObjectBoxElement>();
  String capabilities;
  ToOne<ObjectBoxElement>? capabilitiesElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptFixture {
  ObjectBoxTestScriptFixture({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool autocreate;
  ToOne<ObjectBoxElement>? autocreateElement = ToOne<ObjectBoxElement>();
  bool autodelete;
  ToOne<ObjectBoxElement>? autodeleteElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? resource = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxTestScriptVariable {
  ObjectBoxTestScriptVariable({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? defaultValue;
  ToOne<ObjectBoxElement>? defaultValueElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement>? expressionElement = ToOne<ObjectBoxElement>();
  String? headerField;
  ToOne<ObjectBoxElement>? headerFieldElement = ToOne<ObjectBoxElement>();
  String? hint;
  ToOne<ObjectBoxElement>? hintElement = ToOne<ObjectBoxElement>();
  String? path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  String? sourceId;
  ToOne<ObjectBoxElement>? sourceIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptSetup {
  ObjectBoxTestScriptSetup({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestScriptAction> action =
      ToMany<ObjectBoxTestScriptAction>();
}

@Entity()
class ObjectBoxTestScriptAction {
  ObjectBoxTestScriptAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestScriptOperation>? operation =
      ToOne<ObjectBoxTestScriptOperation>();
  ToOne<ObjectBoxTestScriptAssert>? assert_ =
      ToOne<ObjectBoxTestScriptAssert>();
}

@Entity()
class ObjectBoxTestScriptOperation {
  ObjectBoxTestScriptOperation({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding>? type = ToOne<ObjectBoxCoding>();
  String? resource;
  ToOne<ObjectBoxElement>? resourceElement = ToOne<ObjectBoxElement>();
  String? label;
  ToOne<ObjectBoxElement>? labelElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? accept;
  ToOne<ObjectBoxElement>? acceptElement = ToOne<ObjectBoxElement>();
  String? contentType;
  ToOne<ObjectBoxElement>? contentTypeElement = ToOne<ObjectBoxElement>();
  int? destination;
  ToOne<ObjectBoxElement>? destinationElement = ToOne<ObjectBoxElement>();
  bool encodeRequestUrl;
  ToOne<ObjectBoxElement>? encodeRequestUrlElement = ToOne<ObjectBoxElement>();
  String? method;
  ToOne<ObjectBoxElement>? methodElement = ToOne<ObjectBoxElement>();
  int? origin;
  ToOne<ObjectBoxElement>? originElement = ToOne<ObjectBoxElement>();
  String? params;
  ToOne<ObjectBoxElement>? paramsElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestScriptRequestHeader>? requestHeader =
      ToMany<ObjectBoxTestScriptRequestHeader>();
  String? requestId;
  ToOne<ObjectBoxElement>? requestIdElement = ToOne<ObjectBoxElement>();
  String? responseId;
  ToOne<ObjectBoxElement>? responseIdElement = ToOne<ObjectBoxElement>();
  String? sourceId;
  ToOne<ObjectBoxElement>? sourceIdElement = ToOne<ObjectBoxElement>();
  String? targetId;
  ToOne<ObjectBoxElement>? targetIdElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptRequestHeader {
  ObjectBoxTestScriptRequestHeader({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String field;
  ToOne<ObjectBoxElement>? fieldElement = ToOne<ObjectBoxElement>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptAssert {
  ObjectBoxTestScriptAssert({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? label;
  ToOne<ObjectBoxElement>? labelElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? direction;
  ToOne<ObjectBoxElement>? directionElement = ToOne<ObjectBoxElement>();
  String? compareToSourceId;
  ToOne<ObjectBoxElement>? compareToSourceIdElement = ToOne<ObjectBoxElement>();
  String? compareToSourceExpression;
  ToOne<ObjectBoxElement>? compareToSourceExpressionElement =
      ToOne<ObjectBoxElement>();
  String? compareToSourcePath;
  ToOne<ObjectBoxElement>? compareToSourcePathElement =
      ToOne<ObjectBoxElement>();
  String? contentType;
  ToOne<ObjectBoxElement>? contentTypeElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement>? expressionElement = ToOne<ObjectBoxElement>();
  String? headerField;
  ToOne<ObjectBoxElement>? headerFieldElement = ToOne<ObjectBoxElement>();
  String? minimumId;
  ToOne<ObjectBoxElement>? minimumIdElement = ToOne<ObjectBoxElement>();
  bool? navigationLinks;
  ToOne<ObjectBoxElement>? navigationLinksElement = ToOne<ObjectBoxElement>();
  String? operator_;
  ToOne<ObjectBoxElement>? operatorElement = ToOne<ObjectBoxElement>();
  String? path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  String? requestMethod;
  ToOne<ObjectBoxElement>? requestMethodElement = ToOne<ObjectBoxElement>();
  String? requestURL;
  ToOne<ObjectBoxElement>? requestURLElement = ToOne<ObjectBoxElement>();
  String? resource;
  ToOne<ObjectBoxElement>? resourceElement = ToOne<ObjectBoxElement>();
  String? response;
  ToOne<ObjectBoxElement>? responseElement = ToOne<ObjectBoxElement>();
  String? responseCode;
  ToOne<ObjectBoxElement>? responseCodeElement = ToOne<ObjectBoxElement>();
  String? sourceId;
  ToOne<ObjectBoxElement>? sourceIdElement = ToOne<ObjectBoxElement>();
  String? validateProfileId;
  ToOne<ObjectBoxElement>? validateProfileIdElement = ToOne<ObjectBoxElement>();
  String? value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
  bool warningOnly;
  ToOne<ObjectBoxElement>? warningOnlyElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptTest {
  ObjectBoxTestScriptTest({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestScriptAction> action =
      ToMany<ObjectBoxTestScriptAction>();
}

@Entity()
class ObjectBoxTestScriptAction1 {
  ObjectBoxTestScriptAction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestScriptOperation>? operation =
      ToOne<ObjectBoxTestScriptOperation>();
  ToOne<ObjectBoxTestScriptAssert>? assert_ =
      ToOne<ObjectBoxTestScriptAssert>();
}

@Entity()
class ObjectBoxTestScriptTeardown {
  ObjectBoxTestScriptTeardown({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestScriptAction> action =
      ToMany<ObjectBoxTestScriptAction>();
}

@Entity()
class ObjectBoxTestScriptAction2 {
  ObjectBoxTestScriptAction2({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.operation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestScriptOperation> operation =
      ToOne<ObjectBoxTestScriptOperation>();
}
