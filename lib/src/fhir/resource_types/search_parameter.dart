import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.SearchParameter);

  @override
  String get fhirType => 'SearchParameter';

  @Id()
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
  final PublicationStatus status;
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
  final SearchParamType type;
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
  final XPathUsageType? xpathUsage;
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
  final List<SearchComparator>? comparator;
  final List<Element>? comparatorElement;

  /// [modifier] /// A modifier supported for the search parameter.
  final List<SearchModifierCode>? modifier;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['url'] = url.toJson();
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (derivedFrom?.value != null) {
      json['derivedFrom'] = derivedFrom!.toJson();
    }
    if (derivedFromElement != null) {
      json['_derivedFrom'] = derivedFromElement!.toJson();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.toJson();
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    json['description'] = description.toJson();
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map<dynamic>((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    json['code'] = code.toJson();
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    json['base'] = base.map((FhirCode v) => v.toJson()).toList();
    if (baseElement != null && baseElement!.isNotEmpty) {
      json['_base'] = baseElement!.map((Element v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (expression?.value != null) {
      json['expression'] = expression!.toJson();
    }
    if (expressionElement != null) {
      json['_expression'] = expressionElement!.toJson();
    }
    if (xpath?.value != null) {
      json['xpath'] = xpath!.toJson();
    }
    if (xpathElement != null) {
      json['_xpath'] = xpathElement!.toJson();
    }
    if (xpathUsage != null) {
      json['xpathUsage'] = xpathUsage!.toJson();
    }
    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((FhirCode v) => v.toJson()).toList();
    }
    if (targetElement != null && targetElement!.isNotEmpty) {
      json['_target'] = targetElement!.map((Element v) => v.toJson()).toList();
    }
    if (multipleOr?.value != null) {
      json['multipleOr'] = multipleOr!.toJson();
    }
    if (multipleOrElement != null) {
      json['_multipleOr'] = multipleOrElement!.toJson();
    }
    if (multipleAnd?.value != null) {
      json['multipleAnd'] = multipleAnd!.toJson();
    }
    if (multipleAndElement != null) {
      json['_multipleAnd'] = multipleAndElement!.toJson();
    }
    if (comparator != null && comparator!.isNotEmpty) {
      json['comparator'] =
          comparator!.map<dynamic>((SearchComparator v) => v.toJson()).toList();
    }
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((SearchModifierCode v) => v.toJson()).toList();
    }
    if (chain != null && chain!.isNotEmpty) {
      json['chain'] = chain!.map((FhirString v) => v.toJson()).toList();
    }
    if (chainElement != null && chainElement!.isNotEmpty) {
      json['_chain'] = chainElement!.map((Element v) => v.toJson()).toList();
    }
    if (component != null && component!.isNotEmpty) {
      json['component'] = component!
          .map<dynamic>((SearchParameterComponent v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory SearchParameter.fromJson(Map<String, dynamic> json) {
    return SearchParameter(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      url: FhirUri.fromJson(json['url']),
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      derivedFrom: json['derivedFrom'] != null
          ? FhirCanonical.fromJson(json['derivedFrom'])
          : null,
      derivedFromElement: json['_derivedFrom'] != null
          ? Element.fromJson(json['_derivedFrom'] as Map<String, dynamic>)
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(json['_publisher'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>((dynamic v) =>
                  UsageContext.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson(json['purpose'])
          : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(json['_purpose'] as Map<String, dynamic>)
          : null,
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      base: (json['base'] as List<dynamic>)
          .map<FhirCode>((dynamic v) => FhirCode.fromJson(v as dynamic))
          .toList(),
      baseElement: json['_base'] != null
          ? (json['_base'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: SearchParamType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      expression: json['expression'] != null
          ? FhirString.fromJson(json['expression'])
          : null,
      expressionElement: json['_expression'] != null
          ? Element.fromJson(json['_expression'] as Map<String, dynamic>)
          : null,
      xpath: json['xpath'] != null ? FhirString.fromJson(json['xpath']) : null,
      xpathElement: json['_xpath'] != null
          ? Element.fromJson(json['_xpath'] as Map<String, dynamic>)
          : null,
      xpathUsage: json['xpathUsage'] != null
          ? XPathUsageType.fromJson(json['xpathUsage'])
          : null,
      xpathUsageElement: json['_xpathUsage'] != null
          ? Element.fromJson(json['_xpathUsage'] as Map<String, dynamic>)
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<FhirCode>((dynamic v) => FhirCode.fromJson(v as dynamic))
              .toList()
          : null,
      targetElement: json['_target'] != null
          ? (json['_target'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      multipleOr: json['multipleOr'] != null
          ? FhirBoolean.fromJson(json['multipleOr'])
          : null,
      multipleOrElement: json['_multipleOr'] != null
          ? Element.fromJson(json['_multipleOr'] as Map<String, dynamic>)
          : null,
      multipleAnd: json['multipleAnd'] != null
          ? FhirBoolean.fromJson(json['multipleAnd'])
          : null,
      multipleAndElement: json['_multipleAnd'] != null
          ? Element.fromJson(json['_multipleAnd'] as Map<String, dynamic>)
          : null,
      comparator: json['comparator'] != null
          ? (json['comparator'] as List<dynamic>)
              .map<SearchComparator>(
                  (dynamic v) => SearchComparator.fromJson(v as dynamic))
              .toList()
          : null,
      comparatorElement: json['_comparator'] != null
          ? (json['_comparator'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<SearchModifierCode>(
                  (dynamic v) => SearchModifierCode.fromJson(v as dynamic))
              .toList()
          : null,
      modifierElement: json['_modifier'] != null
          ? (json['_modifier'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      chain: json['chain'] != null
          ? (json['chain'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      chainElement: json['_chain'] != null
          ? (json['_chain'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      component: json['component'] != null
          ? (json['component'] as List<dynamic>)
              .map<SearchParameterComponent>((dynamic v) =>
                  SearchParameterComponent.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  SearchParameter clone() => throw UnimplementedError();
  @override
  SearchParameter copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    PublicationStatus? status,
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
    SearchParamType? type,
    Element? typeElement,
    FhirString? expression,
    Element? expressionElement,
    FhirString? xpath,
    Element? xpathElement,
    XPathUsageType? xpathUsage,
    Element? xpathUsageElement,
    List<FhirCode>? target,
    List<Element>? targetElement,
    FhirBoolean? multipleOr,
    Element? multipleOrElement,
    FhirBoolean? multipleAnd,
    Element? multipleAndElement,
    List<SearchComparator>? comparator,
    List<Element>? comparatorElement,
    List<SearchModifierCode>? modifier,
    List<Element>? modifierElement,
    List<FhirString>? chain,
    List<Element>? chainElement,
    List<SearchParameterComponent>? component,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SearchParameter.fromYaml(dynamic yaml) => yaml is String
      ? SearchParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SearchParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SearchParameter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SearchParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SearchParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'SearchParameterComponent';

  @Id()
  int dbId = 0;

  /// [definition] /// The definition of the search parameter that describes this part.
  final FhirCanonical definition;
  final Element? definitionElement;

  /// [expression] /// A sub-expression that defines how to extract values for this component from
  /// the output of the main SearchParameter.expression.
  final FhirString expression;
  final Element? expressionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['definition'] = definition.toJson();
    if (definitionElement != null) {
      json['_definition'] = definitionElement!.toJson();
    }
    json['expression'] = expression.toJson();
    if (expressionElement != null) {
      json['_expression'] = expressionElement!.toJson();
    }
    return json;
  }

  factory SearchParameterComponent.fromJson(Map<String, dynamic> json) {
    return SearchParameterComponent(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      definition: FhirCanonical.fromJson(json['definition']),
      definitionElement: json['_definition'] != null
          ? Element.fromJson(json['_definition'] as Map<String, dynamic>)
          : null,
      expression: FhirString.fromJson(json['expression']),
      expressionElement: json['_expression'] != null
          ? Element.fromJson(json['_expression'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  SearchParameterComponent clone() => throw UnimplementedError();
  @override
  SearchParameterComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? definition,
    Element? definitionElement,
    FhirString? expression,
    Element? expressionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SearchParameterComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SearchParameterComponent.fromYaml(dynamic yaml) => yaml is String
      ? SearchParameterComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SearchParameterComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SearchParameterComponent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SearchParameterComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SearchParameterComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
