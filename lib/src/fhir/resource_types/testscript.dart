import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class TestScript extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final Identifier? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? status;
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.status,
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
  }): super(resourceType: R4ResourceType.TestScript);

@override
TestScript clone() => this;

}


@Data()
@JsonCodable()
class TestScriptOrigin {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirInteger? index;
  final Element? indexElement;
  final Coding profile;

  TestScriptOrigin({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.index,
    this.indexElement,
    required this.profile,
  });

}


@Data()
@JsonCodable()
class TestScriptDestination {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirInteger? index;
  final Element? indexElement;
  final Coding profile;

  TestScriptDestination({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.index,
    this.indexElement,
    required this.profile,
  });

}


@Data()
@JsonCodable()
class TestScriptMetadata {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<TestScriptLink>? link;
  final List<TestScriptCapability> capability;

  TestScriptMetadata({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.link,
    required this.capability,
  });

}


@Data()
@JsonCodable()
class TestScriptLink {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? url;
  final Element? urlElement;
  final FhirString? description;
  final Element? descriptionElement;

  TestScriptLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.urlElement,
    this.description,
    this.descriptionElement,
  });

}


@Data()
@JsonCodable()
class TestScriptCapability {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? required_;
  final Element? requiredElement;
  final FhirBoolean? validated;
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

  TestScriptCapability({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.required_,
    this.requiredElement,
    this.validated,
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
  });

}


@Data()
@JsonCodable()
class TestScriptFixture {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? autocreate;
  final Element? autocreateElement;
  final FhirBoolean? autodelete;
  final Element? autodeleteElement;
  final Reference? resource;

  TestScriptFixture({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.autocreate,
    this.autocreateElement,
    this.autodelete,
    this.autodeleteElement,
    this.resource,
  });

}


@Data()
@JsonCodable()
class TestScriptVariable {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
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
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
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

}


@Data()
@JsonCodable()
class TestScriptSetup {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<TestScriptAction> action;

  TestScriptSetup({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

}


@Data()
@JsonCodable()
class TestScriptAction {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final TestScriptOperation? operation;
  final TestScriptAssert? assert_;

  TestScriptAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

}


@Data()
@JsonCodable()
class TestScriptOperation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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
  final FhirBoolean? encodeRequestUrl;
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
    this.encodeRequestUrl,
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

}


@Data()
@JsonCodable()
class TestScriptRequestHeader {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? field;
  final Element? fieldElement;
  final FhirString? value;
  final Element? valueElement;

  TestScriptRequestHeader({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.field,
    this.fieldElement,
    this.value,
    this.valueElement,
  });

}


@Data()
@JsonCodable()
class TestScriptAssert {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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
  final FhirBoolean? warningOnly;
  final Element? warningOnlyElement;

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
    this.warningOnly,
    this.warningOnlyElement,
  });

}


@Data()
@JsonCodable()
class TestScriptTest {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<TestScriptAction1> action;

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

}


@Data()
@JsonCodable()
class TestScriptAction1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final TestScriptOperation? operation;
  final TestScriptAssert? assert_;

  TestScriptAction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.operation,
    this.assert_,
  });

}


@Data()
@JsonCodable()
class TestScriptTeardown {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<TestScriptAction2> action;

  TestScriptTeardown({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
  });

}


@Data()
@JsonCodable()
class TestScriptAction2 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final TestScriptOperation operation;

  TestScriptAction2({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.operation,
  });

}



