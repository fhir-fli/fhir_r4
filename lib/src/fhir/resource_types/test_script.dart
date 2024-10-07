import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class TestScript extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  TestScript clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptOrigin extends BackboneElement {
  TestScriptOrigin({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    this.indexElement,
    required this.profile,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirInteger index;
  final Element? indexElement;
  final Coding profile;
  @override
  TestScriptOrigin clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptDestination extends BackboneElement {
  TestScriptDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.index,
    this.indexElement,
    required this.profile,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirInteger index;
  final Element? indexElement;
  final Coding profile;
  @override
  TestScriptDestination clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptMetadata extends BackboneElement {
  TestScriptMetadata({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    required this.capability,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<TestScriptLink>? link;
  final List<TestScriptCapability> capability;
  @override
  TestScriptMetadata clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptLink extends BackboneElement {
  TestScriptLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.urlElement,
    this.description,
    this.descriptionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUri url;
  final Element? urlElement;
  final FhirString? description;
  final Element? descriptionElement;
  @override
  TestScriptLink clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptCapability extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  TestScriptCapability clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptFixture extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirBoolean autocreate;
  final Element? autocreateElement;
  final FhirBoolean autodelete;
  final Element? autodeleteElement;
  final Reference? resource;
  @override
  TestScriptFixture clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptVariable extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  TestScriptVariable clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptSetup extends BackboneElement {
  TestScriptSetup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<TestScriptAction> action;
  @override
  TestScriptSetup clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptAction extends BackboneElement {
  TestScriptAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final TestScriptOperation? operation;
  final TestScriptAssert? assert_;
  @override
  TestScriptAction clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptOperation extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  TestScriptOperation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptRequestHeader extends BackboneElement {
  TestScriptRequestHeader({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.field,
    this.fieldElement,
    required this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString field;
  final Element? fieldElement;
  final FhirString value;
  final Element? valueElement;
  @override
  TestScriptRequestHeader clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptAssert extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  TestScriptAssert clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptTest extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<TestScriptAction> action;
  @override
  TestScriptTest clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptAction1 extends BackboneElement {
  TestScriptAction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.operation,
    this.assert_,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final TestScriptOperation? operation;
  final TestScriptAssert? assert_;
  @override
  TestScriptAction1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptTeardown extends BackboneElement {
  TestScriptTeardown({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<TestScriptAction> action;
  @override
  TestScriptTeardown clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class TestScriptAction2 extends BackboneElement {
  TestScriptAction2({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.operation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final TestScriptOperation operation;
  @override
  TestScriptAction2 clone() => throw UnimplementedError();
}
