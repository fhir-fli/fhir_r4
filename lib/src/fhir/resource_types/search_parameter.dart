import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SearchParameter extends DomainResource {
  final FhirUri url;
  final Element? urlElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirString name;
  final Element? nameElement;
  final FhirCanonical? derivedFrom;
  final Element? derivedFromElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirCode code;
  final Element? codeElement;
  final List<FhirCode> base;
  final List<Element>? baseElement;
  final FhirCode type;
  final Element? typeElement;
  final FhirString? expression;
  final Element? expressionElement;
  final FhirString? xpath;
  final Element? xpathElement;
  final FhirCode? xpathUsage;
  final Element? xpathUsageElement;
  final List<FhirCode>? target;
  final List<Element>? targetElement;
  final FhirBoolean? multipleOr;
  final Element? multipleOrElement;
  final FhirBoolean? multipleAnd;
  final Element? multipleAndElement;
  final List<FhirCode>? comparator;
  final List<Element>? comparatorElement;
  final List<FhirCode>? modifier;
  final List<Element>? modifierElement;
  final List<FhirString>? chain;
  final List<Element>? chainElement;
  final List<SearchParameterComponent>? component;

  SearchParameter({
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
    this.version,
this.versionElement,
    required this.name,
this.nameElement,
    this.derivedFrom,
this.derivedFromElement,
    required this.status,
this.statusElement,
    this.experimental,
this.experimentalElement,
    this.date,
this.dateElement,
    this.publisher,
this.publisherElement,
    this.contact,
    required this.description,
this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
this.purposeElement,
    required this.code,
this.codeElement,
    required this.base,
this.baseElement,
    required this.type,
this.typeElement,
    this.expression,
this.expressionElement,
    this.xpath,
this.xpathElement,
    this.xpathUsage,
this.xpathUsageElement,
    this.target,
this.targetElement,
    this.multipleOr,
this.multipleOrElement,
    this.multipleAnd,
this.multipleAndElement,
    this.comparator,
this.comparatorElement,
    this.modifier,
this.modifierElement,
    this.chain,
this.chainElement,
    this.component,
  }) : super(resourceType: R4ResourceType.SearchParameter);

@override
SearchParameter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SearchParameterComponent extends BackboneElement {
  final FhirCanonical definition;
  final Element? definitionElement;
  final FhirString expression;
  final Element? expressionElement;

  SearchParameterComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.definition,
this.definitionElement,
    required this.expression,
this.expressionElement,
  });

@override
SearchParameterComponent clone() => throw UnimplementedError();
}

