import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [SearchParameter] /// A search parameter that defines a named search item that can be used to
/// search/filter on a resource.
class SearchParameter extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this search parameter when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this search
  /// parameter is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the search parameter is
  /// stored on different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the search
  /// parameter when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the search parameter author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the search parameter. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [derivedFrom] /// Where this search parameter is originally defined. If a derivedFrom is
  /// provided, then the details in the search parameter must be consistent with
  /// the definition from which it is defined. i.e. the parameter should have the
  /// same meaning, and (usually) the functionality should be a proper subset of
  /// the underlying search parameter.
  final FhirCanonical? derivedFrom;
  final Element? derivedFromElement;

  /// [status] /// The status of this search parameter. Enables tracking the life-cycle of the
  /// content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this search parameter is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the search parameter was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the search parameter changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the search
  /// parameter.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// And how it used.
  final FhirMarkdown description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate search parameter instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the search parameter is intended to
  /// be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this search parameter is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [code] /// The code used in the URL or the parameter name in a parameters resource for
  /// this search parameter.
  final FhirCode code;
  final Element? codeElement;

  /// [base] /// The base resource type(s) that this search parameter can be used against.
  final List<FhirCode> base;
  final List<Element>? baseElement;

  /// [type] /// The type of value that a search parameter may contain, and how the content
  /// is interpreted.
  final FhirCode type;
  final Element? typeElement;

  /// [expression] /// A FHIRPath expression that returns a set of elements for the search
  /// parameter.
  final FhirString? expression;
  final Element? expressionElement;

  /// [xpath] /// An XPath expression that returns a set of elements for the search
  /// parameter.
  final FhirString? xpath;
  final Element? xpathElement;

  /// [xpathUsage] /// How the search parameter relates to the set of elements returned by
  /// evaluating the xpath query.
  final FhirCode? xpathUsage;
  final Element? xpathUsageElement;

  /// [target] /// Types of resource (if a resource is referenced).
  final List<FhirCode>? target;
  final List<Element>? targetElement;

  /// [multipleOr] /// Whether multiple values are allowed for each time the parameter exists.
  /// Values are separated by commas, and the parameter matches if any of the
  /// values match.
  final FhirBoolean? multipleOr;
  final Element? multipleOrElement;

  /// [multipleAnd] /// Whether multiple parameters are allowed - e.g. more than one parameter with
  /// the same name. The search matches if all the parameters match.
  final FhirBoolean? multipleAnd;
  final Element? multipleAndElement;

  /// [comparator] /// Comparators supported for the search parameter.
  final List<FhirCode>? comparator;
  final List<Element>? comparatorElement;

  /// [modifier] /// A modifier supported for the search parameter.
  final List<FhirCode>? modifier;
  final List<Element>? modifierElement;

  /// [chain] /// Contains the names of any search parameters which may be chained to the
  /// containing search parameter. Chained parameters may be added to search
  /// parameters of type reference and specify that resources will only be
  /// returned if they contain a reference to a resource which matches the
  /// chained parameter value. Values for this field should be drawn from
  /// SearchParameter.code for a parameter on the target resource type.
  final List<FhirString>? chain;
  final List<Element>? chainElement;

  /// [component] /// Used to define the parts of a composite search parameter.
  final List<SearchParameterComponent>? component;
  @override
  SearchParameter clone() => throw UnimplementedError();
  SearchParameter copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirCanonical? derivedFrom,
    Element? derivedFromElement,
    FhirCode? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirCode? code,
    Element? codeElement,
    List<FhirCode>? base,
    List<Element>? baseElement,
    FhirCode? type,
    Element? typeElement,
    FhirString? expression,
    Element? expressionElement,
    FhirString? xpath,
    Element? xpathElement,
    FhirCode? xpathUsage,
    Element? xpathUsageElement,
    List<FhirCode>? target,
    List<Element>? targetElement,
    FhirBoolean? multipleOr,
    Element? multipleOrElement,
    FhirBoolean? multipleAnd,
    Element? multipleAndElement,
    List<FhirCode>? comparator,
    List<Element>? comparatorElement,
    List<FhirCode>? modifier,
    List<Element>? modifierElement,
    List<FhirString>? chain,
    List<Element>? chainElement,
    List<SearchParameterComponent>? component,
  }) {
    return SearchParameter(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      derivedFromElement: derivedFromElement ?? this.derivedFromElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      base: base ?? this.base,
      baseElement: baseElement ?? this.baseElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      xpath: xpath ?? this.xpath,
      xpathElement: xpathElement ?? this.xpathElement,
      xpathUsage: xpathUsage ?? this.xpathUsage,
      xpathUsageElement: xpathUsageElement ?? this.xpathUsageElement,
      target: target ?? this.target,
      targetElement: targetElement ?? this.targetElement,
      multipleOr: multipleOr ?? this.multipleOr,
      multipleOrElement: multipleOrElement ?? this.multipleOrElement,
      multipleAnd: multipleAnd ?? this.multipleAnd,
      multipleAndElement: multipleAndElement ?? this.multipleAndElement,
      comparator: comparator ?? this.comparator,
      comparatorElement: comparatorElement ?? this.comparatorElement,
      modifier: modifier ?? this.modifier,
      modifierElement: modifierElement ?? this.modifierElement,
      chain: chain ?? this.chain,
      chainElement: chainElement ?? this.chainElement,
      component: component ?? this.component,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SearchParameterComponent] /// Used to define the parts of a composite search parameter.
class SearchParameterComponent extends BackboneElement {
  SearchParameterComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.definition,
    this.definitionElement,
    required this.expression,
    this.expressionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [definition] /// The definition of the search parameter that describes this part.
  final FhirCanonical definition;
  final Element? definitionElement;

  /// [expression] /// A sub-expression that defines how to extract values for this component from
  /// the output of the main SearchParameter.expression.
  final FhirString expression;
  final Element? expressionElement;
  @override
  SearchParameterComponent clone() => throw UnimplementedError();
  SearchParameterComponent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? definition,
    Element? definitionElement,
    FhirString? expression,
    Element? expressionElement,
  }) {
    return SearchParameterComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
    );
  }
}
