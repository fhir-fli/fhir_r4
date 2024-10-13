// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTestScript {
  ObjectBoxTestScript({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.url,
    ObjectBoxElement? urlElement,
    ObjectBoxIdentifier? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    required this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    List<ObjectBoxTestScriptOrigin>? origin,
    List<ObjectBoxTestScriptDestination>? destination,
    ObjectBoxTestScriptMetadata? metadata,
    List<ObjectBoxTestScriptFixture>? fixture,
    List<ObjectBoxReference>? profile,
    List<ObjectBoxTestScriptVariable>? variable,
    ObjectBoxTestScriptSetup? setup,
    List<ObjectBoxTestScriptTest>? test,
    ObjectBoxTestScriptTeardown? teardown,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.target = identifier;
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.origin.addAll(origin ?? []);
    this.destination.addAll(destination ?? []);
    this.metadata.target = metadata;
    this.fixture.addAll(fixture ?? []);
    this.profile.addAll(profile ?? []);
    this.variable.addAll(variable ?? []);
    this.setup.target = setup;
    this.test.addAll(test ?? []);
    this.teardown.target = teardown;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestScriptOrigin> origin =
      ToMany<ObjectBoxTestScriptOrigin>();
  ToMany<ObjectBoxTestScriptDestination> destination =
      ToMany<ObjectBoxTestScriptDestination>();
  ToOne<ObjectBoxTestScriptMetadata> metadata =
      ToOne<ObjectBoxTestScriptMetadata>();
  ToMany<ObjectBoxTestScriptFixture> fixture =
      ToMany<ObjectBoxTestScriptFixture>();
  ToMany<ObjectBoxReference> profile = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxTestScriptVariable> variable =
      ToMany<ObjectBoxTestScriptVariable>();
  ToOne<ObjectBoxTestScriptSetup> setup = ToOne<ObjectBoxTestScriptSetup>();
  ToMany<ObjectBoxTestScriptTest> test = ToMany<ObjectBoxTestScriptTest>();
  ToOne<ObjectBoxTestScriptTeardown> teardown =
      ToOne<ObjectBoxTestScriptTeardown>();
}

@Entity()
class ObjectBoxTestScriptOrigin {
  ObjectBoxTestScriptOrigin({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.index,
    ObjectBoxElement? indexElement,
    ObjectBoxCoding? profile,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.indexElement.target = indexElement;
    this.profile.target = profile;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int index;
  ToOne<ObjectBoxElement> indexElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> profile = ToOne<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxTestScriptDestination {
  ObjectBoxTestScriptDestination({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.index,
    ObjectBoxElement? indexElement,
    ObjectBoxCoding? profile,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.indexElement.target = indexElement;
    this.profile.target = profile;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int index;
  ToOne<ObjectBoxElement> indexElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> profile = ToOne<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxTestScriptMetadata {
  ObjectBoxTestScriptMetadata({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxTestScriptLink>? link,
    List<ObjectBoxTestScriptCapability>? capability,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.link.addAll(link ?? []);
    this.capability.addAll(capability ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestScriptLink> link = ToMany<ObjectBoxTestScriptLink>();
  ToMany<ObjectBoxTestScriptCapability> capability =
      ToMany<ObjectBoxTestScriptCapability>();
}

@Entity()
class ObjectBoxTestScriptLink {
  ObjectBoxTestScriptLink({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.url,
    ObjectBoxElement? urlElement,
    this.description,
    ObjectBoxElement? descriptionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.descriptionElement.target = descriptionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptCapability {
  ObjectBoxTestScriptCapability({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.required_,
    ObjectBoxElement? requiredElement,
    required this.validated,
    ObjectBoxElement? validatedElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.origin,
    List<ObjectBoxElement>? originElement,
    this.destination,
    ObjectBoxElement? destinationElement,
    this.link,
    List<ObjectBoxElement>? linkElement,
    required this.capabilities,
    ObjectBoxElement? capabilitiesElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.requiredElement.target = requiredElement;
    this.validatedElement.target = validatedElement;
    this.descriptionElement.target = descriptionElement;
    this.originElement.addAll(originElement ?? []);
    this.destinationElement.target = destinationElement;
    this.linkElement.addAll(linkElement ?? []);
    this.capabilitiesElement.target = capabilitiesElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool required_;
  ToOne<ObjectBoxElement> requiredElement = ToOne<ObjectBoxElement>();
  bool validated;
  ToOne<ObjectBoxElement> validatedElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  List<int>? origin;
  ToMany<ObjectBoxElement> originElement = ToMany<ObjectBoxElement>();
  int? destination;
  ToOne<ObjectBoxElement> destinationElement = ToOne<ObjectBoxElement>();
  List<String>? link;
  ToMany<ObjectBoxElement> linkElement = ToMany<ObjectBoxElement>();
  String capabilities;
  ToOne<ObjectBoxElement> capabilitiesElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptFixture {
  ObjectBoxTestScriptFixture({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.autocreate,
    ObjectBoxElement? autocreateElement,
    required this.autodelete,
    ObjectBoxElement? autodeleteElement,
    ObjectBoxReference? resource,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.autocreateElement.target = autocreateElement;
    this.autodeleteElement.target = autodeleteElement;
    this.resource.target = resource;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool autocreate;
  ToOne<ObjectBoxElement> autocreateElement = ToOne<ObjectBoxElement>();
  bool autodelete;
  ToOne<ObjectBoxElement> autodeleteElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> resource = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxTestScriptVariable {
  ObjectBoxTestScriptVariable({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.defaultValue,
    ObjectBoxElement? defaultValueElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.expression,
    ObjectBoxElement? expressionElement,
    this.headerField,
    ObjectBoxElement? headerFieldElement,
    this.hint,
    ObjectBoxElement? hintElement,
    this.path,
    ObjectBoxElement? pathElement,
    this.sourceId,
    ObjectBoxElement? sourceIdElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.defaultValueElement.target = defaultValueElement;
    this.descriptionElement.target = descriptionElement;
    this.expressionElement.target = expressionElement;
    this.headerFieldElement.target = headerFieldElement;
    this.hintElement.target = hintElement;
    this.pathElement.target = pathElement;
    this.sourceIdElement.target = sourceIdElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? defaultValue;
  ToOne<ObjectBoxElement> defaultValueElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement> expressionElement = ToOne<ObjectBoxElement>();
  String? headerField;
  ToOne<ObjectBoxElement> headerFieldElement = ToOne<ObjectBoxElement>();
  String? hint;
  ToOne<ObjectBoxElement> hintElement = ToOne<ObjectBoxElement>();
  String? path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  String? sourceId;
  ToOne<ObjectBoxElement> sourceIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptSetup {
  ObjectBoxTestScriptSetup({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxTestScriptAction>? action,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.action.addAll(action ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestScriptAction> action =
      ToMany<ObjectBoxTestScriptAction>();
}

@Entity()
class ObjectBoxTestScriptAction {
  ObjectBoxTestScriptAction({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxTestScriptOperation? operation,
    ObjectBoxTestScriptAssert? assert_,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.operation.target = operation;
    this.assert_.target = assert_;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestScriptOperation> operation =
      ToOne<ObjectBoxTestScriptOperation>();
  ToOne<ObjectBoxTestScriptAssert> assert_ = ToOne<ObjectBoxTestScriptAssert>();
}

@Entity()
class ObjectBoxTestScriptOperation {
  ObjectBoxTestScriptOperation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCoding? type,
    this.resource,
    ObjectBoxElement? resourceElement,
    this.label,
    ObjectBoxElement? labelElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.accept,
    ObjectBoxElement? acceptElement,
    this.contentType,
    ObjectBoxElement? contentTypeElement,
    this.destination,
    ObjectBoxElement? destinationElement,
    required this.encodeRequestUrl,
    ObjectBoxElement? encodeRequestUrlElement,
    this.method,
    ObjectBoxElement? methodElement,
    this.origin,
    ObjectBoxElement? originElement,
    this.params,
    ObjectBoxElement? paramsElement,
    List<ObjectBoxTestScriptRequestHeader>? requestHeader,
    this.requestId,
    ObjectBoxElement? requestIdElement,
    this.responseId,
    ObjectBoxElement? responseIdElement,
    this.sourceId,
    ObjectBoxElement? sourceIdElement,
    this.targetId,
    ObjectBoxElement? targetIdElement,
    this.url,
    ObjectBoxElement? urlElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.resourceElement.target = resourceElement;
    this.labelElement.target = labelElement;
    this.descriptionElement.target = descriptionElement;
    this.acceptElement.target = acceptElement;
    this.contentTypeElement.target = contentTypeElement;
    this.destinationElement.target = destinationElement;
    this.encodeRequestUrlElement.target = encodeRequestUrlElement;
    this.methodElement.target = methodElement;
    this.originElement.target = originElement;
    this.paramsElement.target = paramsElement;
    this.requestHeader.addAll(requestHeader ?? []);
    this.requestIdElement.target = requestIdElement;
    this.responseIdElement.target = responseIdElement;
    this.sourceIdElement.target = sourceIdElement;
    this.targetIdElement.target = targetIdElement;
    this.urlElement.target = urlElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> type = ToOne<ObjectBoxCoding>();
  String? resource;
  ToOne<ObjectBoxElement> resourceElement = ToOne<ObjectBoxElement>();
  String? label;
  ToOne<ObjectBoxElement> labelElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? accept;
  ToOne<ObjectBoxElement> acceptElement = ToOne<ObjectBoxElement>();
  String? contentType;
  ToOne<ObjectBoxElement> contentTypeElement = ToOne<ObjectBoxElement>();
  int? destination;
  ToOne<ObjectBoxElement> destinationElement = ToOne<ObjectBoxElement>();
  bool encodeRequestUrl;
  ToOne<ObjectBoxElement> encodeRequestUrlElement = ToOne<ObjectBoxElement>();
  String? method;
  ToOne<ObjectBoxElement> methodElement = ToOne<ObjectBoxElement>();
  int? origin;
  ToOne<ObjectBoxElement> originElement = ToOne<ObjectBoxElement>();
  String? params;
  ToOne<ObjectBoxElement> paramsElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestScriptRequestHeader> requestHeader =
      ToMany<ObjectBoxTestScriptRequestHeader>();
  String? requestId;
  ToOne<ObjectBoxElement> requestIdElement = ToOne<ObjectBoxElement>();
  String? responseId;
  ToOne<ObjectBoxElement> responseIdElement = ToOne<ObjectBoxElement>();
  String? sourceId;
  ToOne<ObjectBoxElement> sourceIdElement = ToOne<ObjectBoxElement>();
  String? targetId;
  ToOne<ObjectBoxElement> targetIdElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptRequestHeader {
  ObjectBoxTestScriptRequestHeader({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.field,
    ObjectBoxElement? fieldElement,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.fieldElement.target = fieldElement;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String field;
  ToOne<ObjectBoxElement> fieldElement = ToOne<ObjectBoxElement>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptAssert {
  ObjectBoxTestScriptAssert({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.label,
    ObjectBoxElement? labelElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.direction,
    ObjectBoxElement? directionElement,
    this.compareToSourceId,
    ObjectBoxElement? compareToSourceIdElement,
    this.compareToSourceExpression,
    ObjectBoxElement? compareToSourceExpressionElement,
    this.compareToSourcePath,
    ObjectBoxElement? compareToSourcePathElement,
    this.contentType,
    ObjectBoxElement? contentTypeElement,
    this.expression,
    ObjectBoxElement? expressionElement,
    this.headerField,
    ObjectBoxElement? headerFieldElement,
    this.minimumId,
    ObjectBoxElement? minimumIdElement,
    this.navigationLinks,
    ObjectBoxElement? navigationLinksElement,
    this.operator_,
    ObjectBoxElement? operatorElement,
    this.path,
    ObjectBoxElement? pathElement,
    this.requestMethod,
    ObjectBoxElement? requestMethodElement,
    this.requestURL,
    ObjectBoxElement? requestURLElement,
    this.resource,
    ObjectBoxElement? resourceElement,
    this.response,
    ObjectBoxElement? responseElement,
    this.responseCode,
    ObjectBoxElement? responseCodeElement,
    this.sourceId,
    ObjectBoxElement? sourceIdElement,
    this.validateProfileId,
    ObjectBoxElement? validateProfileIdElement,
    this.value,
    ObjectBoxElement? valueElement,
    required this.warningOnly,
    ObjectBoxElement? warningOnlyElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.labelElement.target = labelElement;
    this.descriptionElement.target = descriptionElement;
    this.directionElement.target = directionElement;
    this.compareToSourceIdElement.target = compareToSourceIdElement;
    this.compareToSourceExpressionElement.target =
        compareToSourceExpressionElement;
    this.compareToSourcePathElement.target = compareToSourcePathElement;
    this.contentTypeElement.target = contentTypeElement;
    this.expressionElement.target = expressionElement;
    this.headerFieldElement.target = headerFieldElement;
    this.minimumIdElement.target = minimumIdElement;
    this.navigationLinksElement.target = navigationLinksElement;
    this.operatorElement.target = operatorElement;
    this.pathElement.target = pathElement;
    this.requestMethodElement.target = requestMethodElement;
    this.requestURLElement.target = requestURLElement;
    this.resourceElement.target = resourceElement;
    this.responseElement.target = responseElement;
    this.responseCodeElement.target = responseCodeElement;
    this.sourceIdElement.target = sourceIdElement;
    this.validateProfileIdElement.target = validateProfileIdElement;
    this.valueElement.target = valueElement;
    this.warningOnlyElement.target = warningOnlyElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? label;
  ToOne<ObjectBoxElement> labelElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? direction;
  ToOne<ObjectBoxElement> directionElement = ToOne<ObjectBoxElement>();
  String? compareToSourceId;
  ToOne<ObjectBoxElement> compareToSourceIdElement = ToOne<ObjectBoxElement>();
  String? compareToSourceExpression;
  ToOne<ObjectBoxElement> compareToSourceExpressionElement =
      ToOne<ObjectBoxElement>();
  String? compareToSourcePath;
  ToOne<ObjectBoxElement> compareToSourcePathElement =
      ToOne<ObjectBoxElement>();
  String? contentType;
  ToOne<ObjectBoxElement> contentTypeElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement> expressionElement = ToOne<ObjectBoxElement>();
  String? headerField;
  ToOne<ObjectBoxElement> headerFieldElement = ToOne<ObjectBoxElement>();
  String? minimumId;
  ToOne<ObjectBoxElement> minimumIdElement = ToOne<ObjectBoxElement>();
  bool? navigationLinks;
  ToOne<ObjectBoxElement> navigationLinksElement = ToOne<ObjectBoxElement>();
  String? operator_;
  ToOne<ObjectBoxElement> operatorElement = ToOne<ObjectBoxElement>();
  String? path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  String? requestMethod;
  ToOne<ObjectBoxElement> requestMethodElement = ToOne<ObjectBoxElement>();
  String? requestURL;
  ToOne<ObjectBoxElement> requestURLElement = ToOne<ObjectBoxElement>();
  String? resource;
  ToOne<ObjectBoxElement> resourceElement = ToOne<ObjectBoxElement>();
  String? response;
  ToOne<ObjectBoxElement> responseElement = ToOne<ObjectBoxElement>();
  String? responseCode;
  ToOne<ObjectBoxElement> responseCodeElement = ToOne<ObjectBoxElement>();
  String? sourceId;
  ToOne<ObjectBoxElement> sourceIdElement = ToOne<ObjectBoxElement>();
  String? validateProfileId;
  ToOne<ObjectBoxElement> validateProfileIdElement = ToOne<ObjectBoxElement>();
  String? value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  bool warningOnly;
  ToOne<ObjectBoxElement> warningOnlyElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTestScriptTest {
  ObjectBoxTestScriptTest({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxTestScriptAction>? action,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
    this.action.addAll(action ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTestScriptAction> action =
      ToMany<ObjectBoxTestScriptAction>();
}

@Entity()
class ObjectBoxTestScriptAction1 {
  ObjectBoxTestScriptAction1({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxTestScriptOperation? operation,
    ObjectBoxTestScriptAssert? assert_,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.operation.target = operation;
    this.assert_.target = assert_;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestScriptOperation> operation =
      ToOne<ObjectBoxTestScriptOperation>();
  ToOne<ObjectBoxTestScriptAssert> assert_ = ToOne<ObjectBoxTestScriptAssert>();
}

@Entity()
class ObjectBoxTestScriptTeardown {
  ObjectBoxTestScriptTeardown({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxTestScriptAction>? action,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.action.addAll(action ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxTestScriptAction> action =
      ToMany<ObjectBoxTestScriptAction>();
}

@Entity()
class ObjectBoxTestScriptAction2 {
  ObjectBoxTestScriptAction2({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxTestScriptOperation? operation,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.operation.target = operation;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxTestScriptOperation> operation =
      ToOne<ObjectBoxTestScriptOperation>();
}
