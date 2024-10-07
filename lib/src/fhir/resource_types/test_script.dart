import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class TestScript extends DomainResource {
  final FhirUri url;
  final Element? urlElement;
  final Identifier? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final List<TestScriptOrigin>? origin;
  final List<TestScriptDestination>? destination;
  final TestScriptMetadata? metadata;
  final List<TestScriptFixture>? fixture;
  final List<Reference>? profile;
  final List<TestScriptVariable>? variable;
  final TestScriptSetup? setup;
  final List<TestScriptTest>? test;
  final TestScriptTeardown? teardown;

  TestScript({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(resourceType: R4ResourceType.TestScript);

  @override
  TestScript clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptOrigin extends BackboneElement {
  final FhirInteger index;
  final Element? indexElement;
  final Coding profile;

  TestScriptOrigin({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    this.indexElement,
    required this.profile,
  });

  @override
  TestScriptOrigin clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptDestination extends BackboneElement {
  final FhirInteger index;
  final Element? indexElement;
  final Coding profile;

  TestScriptDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    this.indexElement,
    required this.profile,
  });

  @override
  TestScriptDestination clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptMetadata extends BackboneElement {
  final List<TestScriptLink>? link;
  final List<TestScriptCapability> capability;

  TestScriptMetadata({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    required this.capability,
  });

  @override
  TestScriptMetadata clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptLink extends BackboneElement {
  final FhirUri url;
  final Element? urlElement;
  final FhirString? description;
  final Element? descriptionElement;

  TestScriptLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.urlElement,
    this.description,
    this.descriptionElement,
  });

  @override
  TestScriptLink clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptCapability extends BackboneElement {
  final FhirBoolean required_;
  final Element? requiredElement;
  final FhirBoolean validated;
  final Element? validatedElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<FhirInteger>? origin;
  final List<Element>? originElement;
  final FhirInteger? destination;
  final Element? destinationElement;
  final List<FhirUri>? link;
  final List<Element>? linkElement;
  final FhirCanonical capabilities;
  final Element? capabilitiesElement;

  TestScriptCapability({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  TestScriptCapability clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptFixture extends BackboneElement {
  final FhirBoolean autocreate;
  final Element? autocreateElement;
  final FhirBoolean autodelete;
  final Element? autodeleteElement;
  final Reference? resource;

  TestScriptFixture({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.autocreate,
    this.autocreateElement,
    required this.autodelete,
    this.autodeleteElement,
    this.resource,
  });

  @override
  TestScriptFixture clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptVariable extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirString? defaultValue;
  final Element? defaultValueElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirString? expression;
  final Element? expressionElement;
  final FhirString? headerField;
  final Element? headerFieldElement;
  final FhirString? hint;
  final Element? hintElement;
  final FhirString? path;
  final Element? pathElement;
  final FhirId? sourceId;
  final Element? sourceIdElement;

  TestScriptVariable({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  TestScriptVariable clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptSetup extends BackboneElement {
  final List<TestScriptAction> action;

  TestScriptSetup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  @override
  TestScriptSetup clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptAction extends BackboneElement {
  final TestScriptOperation? operation;
  final TestScriptAssert? assert_;

  TestScriptAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  @override
  TestScriptAction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptOperation extends BackboneElement {
  final Coding? type;
  final FhirCode? resource;
  final Element? resourceElement;
  final FhirString? label;
  final Element? labelElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirCode? accept;
  final Element? acceptElement;
  final FhirCode? contentType;
  final Element? contentTypeElement;
  final FhirInteger? destination;
  final Element? destinationElement;
  final FhirBoolean encodeRequestUrl;
  final Element? encodeRequestUrlElement;
  final FhirCode? method;
  final Element? methodElement;
  final FhirInteger? origin;
  final Element? originElement;
  final FhirString? params;
  final Element? paramsElement;
  final List<TestScriptRequestHeader>? requestHeader;
  final FhirId? requestId;
  final Element? requestIdElement;
  final FhirId? responseId;
  final Element? responseIdElement;
  final FhirId? sourceId;
  final Element? sourceIdElement;
  final FhirId? targetId;
  final Element? targetIdElement;
  final FhirString? url;
  final Element? urlElement;

  TestScriptOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  TestScriptOperation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptRequestHeader extends BackboneElement {
  final FhirString field;
  final Element? fieldElement;
  final FhirString value;
  final Element? valueElement;

  TestScriptRequestHeader({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.field,
    this.fieldElement,
    required this.value,
    this.valueElement,
  });

  @override
  TestScriptRequestHeader clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptAssert extends BackboneElement {
  final FhirString? label;
  final Element? labelElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirCode? direction;
  final Element? directionElement;
  final FhirString? compareToSourceId;
  final Element? compareToSourceIdElement;
  final FhirString? compareToSourceExpression;
  final Element? compareToSourceExpressionElement;
  final FhirString? compareToSourcePath;
  final Element? compareToSourcePathElement;
  final FhirCode? contentType;
  final Element? contentTypeElement;
  final FhirString? expression;
  final Element? expressionElement;
  final FhirString? headerField;
  final Element? headerFieldElement;
  final FhirString? minimumId;
  final Element? minimumIdElement;
  final FhirBoolean? navigationLinks;
  final Element? navigationLinksElement;
  final FhirCode? operator_;
  final Element? operatorElement;
  final FhirString? path;
  final Element? pathElement;
  final FhirCode? requestMethod;
  final Element? requestMethodElement;
  final FhirString? requestURL;
  final Element? requestURLElement;
  final FhirCode? resource;
  final Element? resourceElement;
  final FhirCode? response;
  final Element? responseElement;
  final FhirString? responseCode;
  final Element? responseCodeElement;
  final FhirId? sourceId;
  final Element? sourceIdElement;
  final FhirId? validateProfileId;
  final Element? validateProfileIdElement;
  final FhirString? value;
  final Element? valueElement;
  final FhirBoolean warningOnly;
  final Element? warningOnlyElement;

  TestScriptAssert({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  TestScriptAssert clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptTest extends BackboneElement {
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<TestScriptAction> action;

  TestScriptTest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    required this.action,
  });

  @override
  TestScriptTest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptAction1 extends BackboneElement {
  final TestScriptOperation? operation;
  final TestScriptAssert? assert_;

  TestScriptAction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  @override
  TestScriptAction1 clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptTeardown extends BackboneElement {
  final List<TestScriptAction> action;

  TestScriptTeardown({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  @override
  TestScriptTeardown clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TestScriptAction2 extends BackboneElement {
  final TestScriptOperation operation;

  TestScriptAction2({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.operation,
  });

  @override
  TestScriptAction2 clone() => throw UnimplementedError();
}
