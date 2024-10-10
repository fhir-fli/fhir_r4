import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Contract] /// Legally enforceable, formally recorded unilateral or bilateral directive
/// i.e., a policy or agreement.
class Contract extends DomainResource {
  Contract({
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
    this.identifier,
    this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    this.status,
    this.statusElement,
    this.legalState,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.contentDerivative,
    this.issued,
    this.issuedElement,
    this.applies,
    this.expirationType,
    this.subject,
    this.authority,
    this.domain,
    this.site,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.subtitle,
    this.subtitleElement,
    this.alias,
    this.aliasElement,
    this.author,
    this.scope,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.contentDefinition,
    this.term,
    this.supportingInfo,
    this.relevantHistory,
    this.signer,
    this.friendly,
    this.legal,
    this.rule,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Contract);

  @override
  String get fhirType => 'Contract';

  /// [identifier] /// Unique identifier for this Contract or a derivative that references a
  /// Source Contract.
  final List<Identifier>? identifier;

  /// [url] /// Canonical identifier for this contract, represented as a URI (globally
  /// unique).
  final FhirUri? url;
  final Element? urlElement;

  /// [version] /// An edition identifier used for business purposes to label business
  /// significant variants.
  final FhirString? version;
  final Element? versionElement;

  /// [status] /// The status of the resource instance.
  final ContractResourceStatusCodes? status;
  final Element? statusElement;

  /// [legalState] /// Legal states of the formation of a legal instrument, which is a formally
  /// executed written document that can be formally attributed to its author,
  /// records and formally expresses a legally enforceable act, process, or
  /// contractual duty, obligation, or right, and therefore evidences that act,
  /// process, or agreement.
  final CodeableConcept? legalState;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined Contract Definition that is adhered to
  /// in whole or part by this Contract.
  final Reference? instantiatesCanonical;

  /// [instantiatesUri] /// The URL pointing to an externally maintained definition that is adhered to
  /// in whole or in part by this Contract.
  final FhirUri? instantiatesUri;
  final Element? instantiatesUriElement;

  /// [contentDerivative] /// The minimal content derived from the basal information source at a specific
  /// stage in its lifecycle.
  final CodeableConcept? contentDerivative;

  /// [issued] /// When this Contract was issued.
  final FhirDateTime? issued;
  final Element? issuedElement;

  /// [applies] /// Relevant time or time-period when this Contract is applicable.
  final Period? applies;

  /// [expirationType] /// Event resulting in discontinuation or termination of this Contract instance
  /// by one or more parties to the contract.
  final CodeableConcept? expirationType;

  /// [subject] /// The target entity impacted by or of interest to parties to the agreement.
  final List<Reference>? subject;

  /// [authority] /// A formally or informally recognized grouping of people, principals,
  /// organizations, or jurisdictions formed for the purpose of achieving some
  /// form of collective action such as the promulgation, administration and
  /// enforcement of contracts and policies.
  final List<Reference>? authority;

  /// [domain] /// Recognized governance framework or system operating with a circumscribed
  /// scope in accordance with specified principles, policies, processes or
  /// procedures for managing rights, actions, or behaviors of parties or
  /// principals relative to resources.
  final List<Reference>? domain;

  /// [site] /// Sites in which the contract is complied with, exercised, or in force.
  final List<Reference>? site;

  /// [name] /// A natural language name identifying this Contract definition, derivative,
  /// or instance in any legal state. Provides additional information about its
  /// content. This name should be usable as an identifier for the module by
  /// machine processing applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for this Contract definition,
  /// derivative, or instance in any legal state.t giving additional information
  /// about its content.
  final FhirString? title;
  final Element? titleElement;

  /// [subtitle] /// An explanatory or alternate user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving additional
  /// information about its content.
  final FhirString? subtitle;
  final Element? subtitleElement;

  /// [alias] /// Alternative representation of the title for this Contract definition,
  /// derivative, or instance in any legal state., e.g., a domain specific
  /// contract number related to legislation.
  final List<FhirString>? alias;
  final List<Element>? aliasElement;

  /// [author] /// The individual or organization that authored the Contract definition,
  /// derivative, or instance in any legal state.
  final Reference? author;

  /// [scope] /// A selector of legal concerns for this Contract definition, derivative, or
  /// instance in any legal state.
  final CodeableConcept? scope;

  /// [topicCodeableConcept] /// Narrows the range of legal concerns to focus on the achievement of specific
  /// contractual objectives.
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference] /// Narrows the range of legal concerns to focus on the achievement of specific
  /// contractual objectives.
  final Reference? topicReference;

  /// [type] /// A high-level category for the legal instrument, whether constructed as a
  /// Contract definition, derivative, or instance in any legal state. Provides
  /// additional information about its content within the context of the
  /// Contract's scope to distinguish the kinds of systems that would be
  /// interested in the contract.
  final CodeableConcept? type;

  /// [subType] /// Sub-category for the Contract that distinguishes the kinds of systems that
  /// would be interested in the Contract within the context of the Contract's
  /// scope.
  final List<CodeableConcept>? subType;

  /// [contentDefinition] /// Precusory content developed with a focus and intent of supporting the
  /// formation a Contract instance, which may be associated with and
  /// transformable into a Contract.
  final ContractContentDefinition? contentDefinition;

  /// [term] /// One or more Contract Provisions, which may be related and conveyed as a
  /// group, and may contain nested groups.
  final List<ContractTerm>? term;

  /// [supportingInfo] /// Information that may be needed by/relevant to the performer in their
  /// execution of this term action.
  final List<Reference>? supportingInfo;

  /// [relevantHistory] /// Links to Provenance records for past versions of this Contract definition,
  /// derivative, or instance, which identify key state transitions or updates
  /// that are likely to be relevant to a user looking at the current version of
  /// the Contract. The Provence.entity indicates the target that was changed in
  /// the update.
  /// http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  final List<Reference>? relevantHistory;

  /// [signer] /// Parties with legal standing in the Contract, including the principal
  /// parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  /// facilitate the execution of the contract such as a notary or witness.
  final List<ContractSigner>? signer;

  /// [friendly] /// The "patient friendly language" versionof the Contract in whole or in
  /// parts. "Patient friendly language" means the representation of the Contract
  /// and Contract Provisions in a manner that is readily accessible and
  /// understandable by a layperson in accordance with best practices for
  /// communication styles that ensure that those agreeing to or signing the
  /// Contract understand the roles, actions, obligations, responsibilities, and
  /// implication of the agreement.
  final List<ContractFriendly>? friendly;

  /// [legal] /// List of Legal expressions or representations of this Contract.
  final List<ContractLegal>? legal;

  /// [rule] /// List of Computable Policy Rule Language Representations of this Contract.
  final List<ContractRule>? rule;
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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (legalState != null) {
      json['legalState'] = legalState!.toJson();
    }
    if (instantiatesCanonical != null) {
      json['instantiatesCanonical'] = instantiatesCanonical!.toJson();
    }
    if (instantiatesUri?.value != null) {
      json['instantiatesUri'] = instantiatesUri!.toJson();
    }
    if (instantiatesUriElement != null) {
      json['_instantiatesUri'] = instantiatesUriElement!.toJson();
    }
    if (contentDerivative != null) {
      json['contentDerivative'] = contentDerivative!.toJson();
    }
    if (issued?.value != null) {
      json['issued'] = issued!.toJson();
    }
    if (issuedElement != null) {
      json['_issued'] = issuedElement!.toJson();
    }
    if (applies != null) {
      json['applies'] = applies!.toJson();
    }
    if (expirationType != null) {
      json['expirationType'] = expirationType!.toJson();
    }
    if (subject != null && subject!.isNotEmpty) {
      json['subject'] =
          subject!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (authority != null && authority!.isNotEmpty) {
      json['authority'] =
          authority!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (domain != null && domain!.isNotEmpty) {
      json['domain'] =
          domain!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (site != null && site!.isNotEmpty) {
      json['site'] = site!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (subtitle?.value != null) {
      json['subtitle'] = subtitle!.toJson();
    }
    if (subtitleElement != null) {
      json['_subtitle'] = subtitleElement!.toJson();
    }
    if (alias != null && alias!.isNotEmpty) {
      json['alias'] = alias!.map((FhirString v) => v.toJson()).toList();
    }
    if (aliasElement != null && aliasElement!.isNotEmpty) {
      json['_alias'] = aliasElement!.map((Element v) => v.toJson()).toList();
    }
    if (author != null) {
      json['author'] = author!.toJson();
    }
    if (scope != null) {
      json['scope'] = scope!.toJson();
    }
    if (topicCodeableConcept != null) {
      json['topicCodeableConcept'] = topicCodeableConcept!.toJson();
    }
    if (topicReference != null) {
      json['topicReference'] = topicReference!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (subType != null && subType!.isNotEmpty) {
      json['subType'] =
          subType!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (contentDefinition != null) {
      json['contentDefinition'] = contentDefinition!.toJson();
    }
    if (term != null && term!.isNotEmpty) {
      json['term'] =
          term!.map<dynamic>((ContractTerm v) => v.toJson()).toList();
    }
    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] =
          supportingInfo!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      json['relevantHistory'] =
          relevantHistory!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (signer != null && signer!.isNotEmpty) {
      json['signer'] =
          signer!.map<dynamic>((ContractSigner v) => v.toJson()).toList();
    }
    if (friendly != null && friendly!.isNotEmpty) {
      json['friendly'] =
          friendly!.map<dynamic>((ContractFriendly v) => v.toJson()).toList();
    }
    if (legal != null && legal!.isNotEmpty) {
      json['legal'] =
          legal!.map<dynamic>((ContractLegal v) => v.toJson()).toList();
    }
    if (rule != null && rule!.isNotEmpty) {
      json['rule'] =
          rule!.map<dynamic>((ContractRule v) => v.toJson()).toList();
    }
    return json;
  }

  factory Contract.fromJson(Map<String, dynamic> json) {
    return Contract(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      status: json['status'] != null
          ? ContractResourceStatusCodes.fromJson(json['status'])
          : null,
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      legalState: json['legalState'] != null
          ? CodeableConcept.fromJson(json['legalState'] as Map<String, dynamic>)
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? Reference.fromJson(
              json['instantiatesCanonical'] as Map<String, dynamic>)
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? FhirUri.fromJson(json['instantiatesUri'])
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? Element.fromJson(json['_instantiatesUri'] as Map<String, dynamic>)
          : null,
      contentDerivative: json['contentDerivative'] != null
          ? CodeableConcept.fromJson(
              json['contentDerivative'] as Map<String, dynamic>)
          : null,
      issued:
          json['issued'] != null ? FhirDateTime.fromJson(json['issued']) : null,
      issuedElement: json['_issued'] != null
          ? Element.fromJson(json['_issued'] as Map<String, dynamic>)
          : null,
      applies: json['applies'] != null
          ? Period.fromJson(json['applies'] as Map<String, dynamic>)
          : null,
      expirationType: json['expirationType'] != null
          ? CodeableConcept.fromJson(
              json['expirationType'] as Map<String, dynamic>)
          : null,
      subject: json['subject'] != null
          ? (json['subject'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      authority: json['authority'] != null
          ? (json['authority'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      domain: json['domain'] != null
          ? (json['domain'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      site: json['site'] != null
          ? (json['site'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      subtitle: json['subtitle'] != null
          ? FhirString.fromJson(json['subtitle'])
          : null,
      subtitleElement: json['_subtitle'] != null
          ? Element.fromJson(json['_subtitle'] as Map<String, dynamic>)
          : null,
      alias: json['alias'] != null
          ? (json['alias'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      aliasElement: json['_alias'] != null
          ? (json['_alias'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      scope: json['scope'] != null
          ? CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>)
          : null,
      topicCodeableConcept: json['topicCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['topicCodeableConcept'] as Map<String, dynamic>)
          : null,
      topicReference: json['topicReference'] != null
          ? Reference.fromJson(json['topicReference'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      subType: json['subType'] != null
          ? (json['subType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      contentDefinition: json['contentDefinition'] != null
          ? ContractContentDefinition.fromJson(
              json['contentDefinition'] as Map<String, dynamic>)
          : null,
      term: json['term'] != null
          ? (json['term'] as List<dynamic>)
              .map<ContractTerm>((dynamic v) =>
                  ContractTerm.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relevantHistory: json['relevantHistory'] != null
          ? (json['relevantHistory'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      signer: json['signer'] != null
          ? (json['signer'] as List<dynamic>)
              .map<ContractSigner>((dynamic v) =>
                  ContractSigner.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      friendly: json['friendly'] != null
          ? (json['friendly'] as List<dynamic>)
              .map<ContractFriendly>((dynamic v) =>
                  ContractFriendly.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      legal: json['legal'] != null
          ? (json['legal'] as List<dynamic>)
              .map<ContractLegal>((dynamic v) =>
                  ContractLegal.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      rule: json['rule'] != null
          ? (json['rule'] as List<dynamic>)
              .map<ContractRule>((dynamic v) =>
                  ContractRule.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Contract clone() => throw UnimplementedError();
  @override
  Contract copyWith({
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
    List<Identifier>? identifier,
    FhirUri? url,
    Element? urlElement,
    FhirString? version,
    Element? versionElement,
    ContractResourceStatusCodes? status,
    Element? statusElement,
    CodeableConcept? legalState,
    Reference? instantiatesCanonical,
    FhirUri? instantiatesUri,
    Element? instantiatesUriElement,
    CodeableConcept? contentDerivative,
    FhirDateTime? issued,
    Element? issuedElement,
    Period? applies,
    CodeableConcept? expirationType,
    List<Reference>? subject,
    List<Reference>? authority,
    List<Reference>? domain,
    List<Reference>? site,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    FhirString? subtitle,
    Element? subtitleElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    Reference? author,
    CodeableConcept? scope,
    CodeableConcept? topicCodeableConcept,
    Reference? topicReference,
    CodeableConcept? type,
    List<CodeableConcept>? subType,
    ContractContentDefinition? contentDefinition,
    List<ContractTerm>? term,
    List<Reference>? supportingInfo,
    List<Reference>? relevantHistory,
    List<ContractSigner>? signer,
    List<ContractFriendly>? friendly,
    List<ContractLegal>? legal,
    List<ContractRule>? rule,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Contract(
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
      identifier: identifier ?? this.identifier,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      legalState: legalState ?? this.legalState,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      contentDerivative: contentDerivative ?? this.contentDerivative,
      issued: issued ?? this.issued,
      issuedElement: issuedElement ?? this.issuedElement,
      applies: applies ?? this.applies,
      expirationType: expirationType ?? this.expirationType,
      subject: subject ?? this.subject,
      authority: authority ?? this.authority,
      domain: domain ?? this.domain,
      site: site ?? this.site,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      subtitle: subtitle ?? this.subtitle,
      subtitleElement: subtitleElement ?? this.subtitleElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      author: author ?? this.author,
      scope: scope ?? this.scope,
      topicCodeableConcept: topicCodeableConcept ?? this.topicCodeableConcept,
      topicReference: topicReference ?? this.topicReference,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      contentDefinition: contentDefinition ?? this.contentDefinition,
      term: term ?? this.term,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      signer: signer ?? this.signer,
      friendly: friendly ?? this.friendly,
      legal: legal ?? this.legal,
      rule: rule ?? this.rule,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Contract.fromYaml(dynamic yaml) => yaml is String
      ? Contract.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Contract.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Contract cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Contract.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Contract.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractContentDefinition] /// Precusory content developed with a focus and intent of supporting the
/// formation a Contract instance, which may be associated with and
/// transformable into a Contract.
class ContractContentDefinition extends BackboneElement {
  ContractContentDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.subType,
    this.publisher,
    this.publicationDate,
    this.publicationDateElement,
    required this.publicationStatus,
    this.publicationStatusElement,
    this.copyright,
    this.copyrightElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractContentDefinition';

  /// [type] /// Precusory content structure and use, i.e., a boilerplate, template,
  /// application for a contract such as an insurance policy or benefits under a
  /// program, e.g., workers compensation.
  final CodeableConcept type;

  /// [subType] /// Detailed Precusory content type.
  final CodeableConcept? subType;

  /// [publisher] /// The individual or organization that published the Contract precursor
  /// content.
  final Reference? publisher;

  /// [publicationDate] /// The date (and optionally time) when the contract was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the contract changes.
  final FhirDateTime? publicationDate;
  final Element? publicationDateElement;

  /// [publicationStatus] /// amended | appended | cancelled | disputed | entered-in-error | executable |
  /// executed | negotiable | offered | policy | rejected | renewed | revoked |
  /// resolved | terminated.
  final ContractResourcePublicationStatusCodes publicationStatus;
  final Element? publicationStatusElement;

  /// [copyright] /// A copyright statement relating to Contract precursor content. Copyright
  /// statements are generally legal restrictions on the use and publishing of
  /// the Contract precursor content.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
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
    json['type'] = type.toJson();
    if (subType != null) {
      json['subType'] = subType!.toJson();
    }
    if (publisher != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publicationDate?.value != null) {
      json['publicationDate'] = publicationDate!.toJson();
    }
    if (publicationDateElement != null) {
      json['_publicationDate'] = publicationDateElement!.toJson();
    }
    json['publicationStatus'] = publicationStatus.toJson();
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    return json;
  }

  factory ContractContentDefinition.fromJson(Map<String, dynamic> json) {
    return ContractContentDefinition(
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>)
          : null,
      publisher: json['publisher'] != null
          ? Reference.fromJson(json['publisher'] as Map<String, dynamic>)
          : null,
      publicationDate: json['publicationDate'] != null
          ? FhirDateTime.fromJson(json['publicationDate'])
          : null,
      publicationDateElement: json['_publicationDate'] != null
          ? Element.fromJson(json['_publicationDate'] as Map<String, dynamic>)
          : null,
      publicationStatus: ContractResourcePublicationStatusCodes.fromJson(
          json['publicationStatus']),
      publicationStatusElement: json['_publicationStatus'] != null
          ? Element.fromJson(json['_publicationStatus'] as Map<String, dynamic>)
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ContractContentDefinition clone() => throw UnimplementedError();
  @override
  ContractContentDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? subType,
    Reference? publisher,
    FhirDateTime? publicationDate,
    Element? publicationDateElement,
    ContractResourcePublicationStatusCodes? publicationStatus,
    Element? publicationStatusElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractContentDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      publisher: publisher ?? this.publisher,
      publicationDate: publicationDate ?? this.publicationDate,
      publicationDateElement:
          publicationDateElement ?? this.publicationDateElement,
      publicationStatus: publicationStatus ?? this.publicationStatus,
      publicationStatusElement:
          publicationStatusElement ?? this.publicationStatusElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractContentDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ContractContentDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractContentDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractContentDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractContentDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractContentDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractTerm] /// One or more Contract Provisions, which may be related and conveyed as a
/// group, and may contain nested groups.
class ContractTerm extends BackboneElement {
  ContractTerm({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.issued,
    this.issuedElement,
    this.applies,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.text,
    this.textElement,
    this.securityLabel,
    required this.offer,
    this.asset,
    this.action,
    this.group,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractTerm';

  /// [identifier] /// Unique identifier for this particular Contract Provision.
  final Identifier? identifier;

  /// [issued] /// When this Contract Provision was issued.
  final FhirDateTime? issued;
  final Element? issuedElement;

  /// [applies] /// Relevant time or time-period when this Contract Provision is applicable.
  final Period? applies;

  /// [topicCodeableConcept] /// The entity that the term applies to.
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference] /// The entity that the term applies to.
  final Reference? topicReference;

  /// [type] /// A legal clause or condition contained within a contract that requires one
  /// or both parties to perform a particular requirement by some specified time
  /// or prevents one or both parties from performing a particular requirement by
  /// some specified time.
  final CodeableConcept? type;

  /// [subType] /// A specialized legal clause or condition based on overarching contract type.
  final CodeableConcept? subType;

  /// [text] /// Statement of a provision in a policy or a contract.
  final FhirString? text;
  final Element? textElement;

  /// [securityLabel] /// Security labels that protect the handling of information about the term and
  /// its elements, which may be specifically identified..
  final List<ContractSecurityLabel>? securityLabel;

  /// [offer] /// The matter of concern in the context of this provision of the agrement.
  final ContractOffer offer;

  /// [asset] /// Contract Term Asset List.
  final List<ContractAsset>? asset;

  /// [action] /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  final List<ContractAction>? action;

  /// [group] /// Nested group of Contract Provisions.
  final List<ContractTerm>? group;
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
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    if (issued?.value != null) {
      json['issued'] = issued!.toJson();
    }
    if (issuedElement != null) {
      json['_issued'] = issuedElement!.toJson();
    }
    if (applies != null) {
      json['applies'] = applies!.toJson();
    }
    if (topicCodeableConcept != null) {
      json['topicCodeableConcept'] = topicCodeableConcept!.toJson();
    }
    if (topicReference != null) {
      json['topicReference'] = topicReference!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (subType != null) {
      json['subType'] = subType!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (securityLabel != null && securityLabel!.isNotEmpty) {
      json['securityLabel'] = securityLabel!
          .map<dynamic>((ContractSecurityLabel v) => v.toJson())
          .toList();
    }
    json['offer'] = offer.toJson();
    if (asset != null && asset!.isNotEmpty) {
      json['asset'] =
          asset!.map<dynamic>((ContractAsset v) => v.toJson()).toList();
    }
    if (action != null && action!.isNotEmpty) {
      json['action'] =
          action!.map<dynamic>((ContractAction v) => v.toJson()).toList();
    }
    if (group != null && group!.isNotEmpty) {
      json['group'] =
          group!.map<dynamic>((ContractTerm v) => v.toJson()).toList();
    }
    return json;
  }

  factory ContractTerm.fromJson(Map<String, dynamic> json) {
    return ContractTerm(
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
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      issued:
          json['issued'] != null ? FhirDateTime.fromJson(json['issued']) : null,
      issuedElement: json['_issued'] != null
          ? Element.fromJson(json['_issued'] as Map<String, dynamic>)
          : null,
      applies: json['applies'] != null
          ? Period.fromJson(json['applies'] as Map<String, dynamic>)
          : null,
      topicCodeableConcept: json['topicCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['topicCodeableConcept'] as Map<String, dynamic>)
          : null,
      topicReference: json['topicReference'] != null
          ? Reference.fromJson(json['topicReference'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      securityLabel: json['securityLabel'] != null
          ? (json['securityLabel'] as List<dynamic>)
              .map<ContractSecurityLabel>((dynamic v) =>
                  ContractSecurityLabel.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      offer: ContractOffer.fromJson(json['offer'] as Map<String, dynamic>),
      asset: json['asset'] != null
          ? (json['asset'] as List<dynamic>)
              .map<ContractAsset>((dynamic v) =>
                  ContractAsset.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<ContractAction>((dynamic v) =>
                  ContractAction.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      group: json['group'] != null
          ? (json['group'] as List<dynamic>)
              .map<ContractTerm>((dynamic v) =>
                  ContractTerm.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ContractTerm clone() => throw UnimplementedError();
  @override
  ContractTerm copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirDateTime? issued,
    Element? issuedElement,
    Period? applies,
    CodeableConcept? topicCodeableConcept,
    Reference? topicReference,
    CodeableConcept? type,
    CodeableConcept? subType,
    FhirString? text,
    Element? textElement,
    List<ContractSecurityLabel>? securityLabel,
    ContractOffer? offer,
    List<ContractAsset>? asset,
    List<ContractAction>? action,
    List<ContractTerm>? group,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractTerm(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      issued: issued ?? this.issued,
      issuedElement: issuedElement ?? this.issuedElement,
      applies: applies ?? this.applies,
      topicCodeableConcept: topicCodeableConcept ?? this.topicCodeableConcept,
      topicReference: topicReference ?? this.topicReference,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      securityLabel: securityLabel ?? this.securityLabel,
      offer: offer ?? this.offer,
      asset: asset ?? this.asset,
      action: action ?? this.action,
      group: group ?? this.group,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractTerm.fromYaml(dynamic yaml) => yaml is String
      ? ContractTerm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractTerm.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractTerm cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractTerm.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractTerm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractSecurityLabel] /// Security labels that protect the handling of information about the term and
/// its elements, which may be specifically identified..
class ContractSecurityLabel extends BackboneElement {
  ContractSecurityLabel({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.numberElement,
    required this.classification,
    this.category,
    this.control,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractSecurityLabel';

  /// [number] /// Number used to link this term or term element to the applicable Security
  /// Label.
  final List<FhirUnsignedInt>? number;
  final List<Element>? numberElement;

  /// [classification] /// Security label privacy tag that species the level of confidentiality
  /// protection required for this term and/or term elements.
  final Coding classification;

  /// [category] /// Security label privacy tag that species the applicable privacy and security
  /// policies governing this term and/or term elements.
  final List<Coding>? category;

  /// [control] /// Security label privacy tag that species the manner in which term and/or
  /// term elements are to be protected.
  final List<Coding>? control;
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
    if (number != null && number!.isNotEmpty) {
      json['number'] = number!.map((FhirUnsignedInt v) => v.toJson()).toList();
    }
    if (numberElement != null && numberElement!.isNotEmpty) {
      json['_number'] = numberElement!.map((Element v) => v.toJson()).toList();
    }
    json['classification'] = classification.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((Coding v) => v.toJson()).toList();
    }
    if (control != null && control!.isNotEmpty) {
      json['control'] =
          control!.map<dynamic>((Coding v) => v.toJson()).toList();
    }
    return json;
  }

  factory ContractSecurityLabel.fromJson(Map<String, dynamic> json) {
    return ContractSecurityLabel(
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
      number: json['number'] != null
          ? (json['number'] as List<dynamic>)
              .map<FhirUnsignedInt>(
                  (dynamic v) => FhirUnsignedInt.fromJson(v as dynamic))
              .toList()
          : null,
      numberElement: json['_number'] != null
          ? (json['_number'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      classification:
          Coding.fromJson(json['classification'] as Map<String, dynamic>),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<Coding>(
                  (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      control: json['control'] != null
          ? (json['control'] as List<dynamic>)
              .map<Coding>(
                  (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ContractSecurityLabel clone() => throw UnimplementedError();
  @override
  ContractSecurityLabel copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirUnsignedInt>? number,
    List<Element>? numberElement,
    Coding? classification,
    List<Coding>? category,
    List<Coding>? control,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractSecurityLabel(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      numberElement: numberElement ?? this.numberElement,
      classification: classification ?? this.classification,
      category: category ?? this.category,
      control: control ?? this.control,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractSecurityLabel.fromYaml(dynamic yaml) => yaml is String
      ? ContractSecurityLabel.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractSecurityLabel.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractSecurityLabel cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractSecurityLabel.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractSecurityLabel.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractOffer] /// The matter of concern in the context of this provision of the agrement.
class ContractOffer extends BackboneElement {
  ContractOffer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.party,
    this.topic,
    this.type,
    this.decision,
    this.decisionMode,
    this.answer,
    this.text,
    this.textElement,
    this.linkId,
    this.linkIdElement,
    this.securityLabelNumber,
    this.securityLabelNumberElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractOffer';

  /// [identifier] /// Unique identifier for this particular Contract Provision.
  final List<Identifier>? identifier;

  /// [party] /// Offer Recipient.
  final List<ContractParty>? party;

  /// [topic] /// The owner of an asset has the residual control rights over the asset: the
  /// right to decide all usages of the asset in any way not inconsistent with a
  /// prior contract, custom, or law (Hart, 1995, p. 30).
  final Reference? topic;

  /// [type] /// Type of Contract Provision such as specific requirements, purposes for
  /// actions, obligations, prohibitions, e.g. life time maximum benefit.
  final CodeableConcept? type;

  /// [decision] /// Type of choice made by accepting party with respect to an offer made by an
  /// offeror/ grantee.
  final CodeableConcept? decision;

  /// [decisionMode] /// How the decision about a Contract was conveyed.
  final List<CodeableConcept>? decisionMode;

  /// [answer] /// Response to offer text.
  final List<ContractAnswer>? answer;

  /// [text] /// Human readable form of this Contract Offer.
  final FhirString? text;
  final Element? textElement;

  /// [linkId] /// The id of the clause or question text of the offer in the referenced
  /// questionnaire/response.
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;

  /// [securityLabelNumber] /// Security labels that protects the offer.
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;
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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (party != null && party!.isNotEmpty) {
      json['party'] =
          party!.map<dynamic>((ContractParty v) => v.toJson()).toList();
    }
    if (topic != null) {
      json['topic'] = topic!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (decision != null) {
      json['decision'] = decision!.toJson();
    }
    if (decisionMode != null && decisionMode!.isNotEmpty) {
      json['decisionMode'] = decisionMode!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (answer != null && answer!.isNotEmpty) {
      json['answer'] =
          answer!.map<dynamic>((ContractAnswer v) => v.toJson()).toList();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (linkId != null && linkId!.isNotEmpty) {
      json['linkId'] = linkId!.map((FhirString v) => v.toJson()).toList();
    }
    if (linkIdElement != null && linkIdElement!.isNotEmpty) {
      json['_linkId'] = linkIdElement!.map((Element v) => v.toJson()).toList();
    }
    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      json['securityLabelNumber'] =
          securityLabelNumber!.map((FhirUnsignedInt v) => v.toJson()).toList();
    }
    if (securityLabelNumberElement != null &&
        securityLabelNumberElement!.isNotEmpty) {
      json['_securityLabelNumber'] =
          securityLabelNumberElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory ContractOffer.fromJson(Map<String, dynamic> json) {
    return ContractOffer(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      party: json['party'] != null
          ? (json['party'] as List<dynamic>)
              .map<ContractParty>((dynamic v) =>
                  ContractParty.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      topic: json['topic'] != null
          ? Reference.fromJson(json['topic'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      decision: json['decision'] != null
          ? CodeableConcept.fromJson(json['decision'] as Map<String, dynamic>)
          : null,
      decisionMode: json['decisionMode'] != null
          ? (json['decisionMode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      answer: json['answer'] != null
          ? (json['answer'] as List<dynamic>)
              .map<ContractAnswer>((dynamic v) =>
                  ContractAnswer.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      linkId: json['linkId'] != null
          ? (json['linkId'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      linkIdElement: json['_linkId'] != null
          ? (json['_linkId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      securityLabelNumber: json['securityLabelNumber'] != null
          ? (json['securityLabelNumber'] as List<dynamic>)
              .map<FhirUnsignedInt>(
                  (dynamic v) => FhirUnsignedInt.fromJson(v as dynamic))
              .toList()
          : null,
      securityLabelNumberElement: json['_securityLabelNumber'] != null
          ? (json['_securityLabelNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ContractOffer clone() => throw UnimplementedError();
  @override
  ContractOffer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<ContractParty>? party,
    Reference? topic,
    CodeableConcept? type,
    CodeableConcept? decision,
    List<CodeableConcept>? decisionMode,
    List<ContractAnswer>? answer,
    FhirString? text,
    Element? textElement,
    List<FhirString>? linkId,
    List<Element>? linkIdElement,
    List<FhirUnsignedInt>? securityLabelNumber,
    List<Element>? securityLabelNumberElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractOffer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      party: party ?? this.party,
      topic: topic ?? this.topic,
      type: type ?? this.type,
      decision: decision ?? this.decision,
      decisionMode: decisionMode ?? this.decisionMode,
      answer: answer ?? this.answer,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      linkId: linkId ?? this.linkId,
      linkIdElement: linkIdElement ?? this.linkIdElement,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      securityLabelNumberElement:
          securityLabelNumberElement ?? this.securityLabelNumberElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractOffer.fromYaml(dynamic yaml) => yaml is String
      ? ContractOffer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractOffer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractOffer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractOffer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractOffer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractParty] /// Offer Recipient.
class ContractParty extends BackboneElement {
  ContractParty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    required this.role,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractParty';

  /// [reference] /// Participant in the offer.
  final List<Reference> reference;

  /// [role] /// How the party participates in the offer.
  final CodeableConcept role;
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
    json['reference'] =
        reference.map<dynamic>((Reference v) => v.toJson()).toList();
    json['role'] = role.toJson();
    return json;
  }

  factory ContractParty.fromJson(Map<String, dynamic> json) {
    return ContractParty(
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
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
              (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
          .toList(),
      role: CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    );
  }
  @override
  ContractParty clone() => throw UnimplementedError();
  @override
  ContractParty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? role,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractParty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractParty.fromYaml(dynamic yaml) => yaml is String
      ? ContractParty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractParty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractParty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractParty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractParty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractAnswer] /// Response to offer text.
class ContractAnswer extends BackboneElement {
  ContractAnswer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDate,
    this.valueDateElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueString,
    this.valueStringElement,
    this.valueUri,
    this.valueUriElement,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractAnswer';

  /// [valueBoolean] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueDecimal] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;

  /// [valueInteger] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueDate] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueTime] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueString] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueUri] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirUri? valueUri;
  final Element? valueUriElement;

  /// [valueAttachment] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final Attachment? valueAttachment;

  /// [valueCoding] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final Coding? valueCoding;

  /// [valueQuantity] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final Quantity? valueQuantity;

  /// [valueReference] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final Reference? valueReference;
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
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.toJson();
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.toJson();
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.toJson();
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.toJson();
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.toJson();
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.toJson();
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    return json;
  }

  factory ContractAnswer.fromJson(Map<String, dynamic> json) {
    return ContractAnswer(
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
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson(json['valueDate'])
          : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(json['_valueDate'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>)
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson(json['valueTime'])
          : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(json['_valueTime'] as Map<String, dynamic>)
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson(json['valueString'])
          : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueUri:
          json['valueUri'] != null ? FhirUri.fromJson(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(json['_valueUri'] as Map<String, dynamic>)
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ContractAnswer clone() => throw UnimplementedError();
  @override
  ContractAnswer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    Attachment? valueAttachment,
    Coding? valueCoding,
    Quantity? valueQuantity,
    Reference? valueReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractAnswer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueCoding: valueCoding ?? this.valueCoding,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueReference: valueReference ?? this.valueReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractAnswer.fromYaml(dynamic yaml) => yaml is String
      ? ContractAnswer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractAnswer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractAnswer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractAnswer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractAnswer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractAsset] /// Contract Term Asset List.
class ContractAsset extends BackboneElement {
  ContractAsset({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.scope,
    this.type,
    this.typeReference,
    this.subtype,
    this.relationship,
    this.context,
    this.condition,
    this.conditionElement,
    this.periodType,
    this.period,
    this.usePeriod,
    this.text,
    this.textElement,
    this.linkId,
    this.linkIdElement,
    this.answer,
    this.securityLabelNumber,
    this.securityLabelNumberElement,
    this.valuedItem,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractAsset';

  /// [scope] /// Differentiates the kind of the asset .
  final CodeableConcept? scope;

  /// [type] /// Target entity type about which the term may be concerned.
  final List<CodeableConcept>? type;

  /// [typeReference] /// Associated entities.
  final List<Reference>? typeReference;

  /// [subtype] /// May be a subtype or part of an offered asset.
  final List<CodeableConcept>? subtype;

  /// [relationship] /// Specifies the applicability of the term to an asset resource instance, and
  /// instances it refers to orinstances that refer to it, and/or are owned by
  /// the offeree.
  final Coding? relationship;

  /// [context] /// Circumstance of the asset.
  final List<ContractContext>? context;

  /// [condition] /// Description of the quality and completeness of the asset that imay be a
  /// factor in its valuation.
  final FhirString? condition;
  final Element? conditionElement;

  /// [periodType] /// Type of Asset availability for use or ownership.
  final List<CodeableConcept>? periodType;

  /// [period] /// Asset relevant contractual time period.
  final List<Period>? period;

  /// [usePeriod] /// Time period of asset use.
  final List<Period>? usePeriod;

  /// [text] /// Clause or question text (Prose Object) concerning the asset in a linked
  /// form, such as a QuestionnaireResponse used in the formation of the
  /// contract.
  final FhirString? text;
  final Element? textElement;

  /// [linkId] /// Id [identifier??] of the clause or question text about the asset in the
  /// referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;

  /// [answer] /// Response to assets.
  final List<ContractAnswer>? answer;

  /// [securityLabelNumber] /// Security labels that protects the asset.
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;

  /// [valuedItem] /// Contract Valued Item List.
  final List<ContractValuedItem>? valuedItem;
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
    if (scope != null) {
      json['scope'] = scope!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (typeReference != null && typeReference!.isNotEmpty) {
      json['typeReference'] =
          typeReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (subtype != null && subtype!.isNotEmpty) {
      json['subtype'] =
          subtype!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (relationship != null) {
      json['relationship'] = relationship!.toJson();
    }
    if (context != null && context!.isNotEmpty) {
      json['context'] =
          context!.map<dynamic>((ContractContext v) => v.toJson()).toList();
    }
    if (condition?.value != null) {
      json['condition'] = condition!.toJson();
    }
    if (conditionElement != null) {
      json['_condition'] = conditionElement!.toJson();
    }
    if (periodType != null && periodType!.isNotEmpty) {
      json['periodType'] =
          periodType!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (period != null && period!.isNotEmpty) {
      json['period'] = period!.map<dynamic>((Period v) => v.toJson()).toList();
    }
    if (usePeriod != null && usePeriod!.isNotEmpty) {
      json['usePeriod'] =
          usePeriod!.map<dynamic>((Period v) => v.toJson()).toList();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (linkId != null && linkId!.isNotEmpty) {
      json['linkId'] = linkId!.map((FhirString v) => v.toJson()).toList();
    }
    if (linkIdElement != null && linkIdElement!.isNotEmpty) {
      json['_linkId'] = linkIdElement!.map((Element v) => v.toJson()).toList();
    }
    if (answer != null && answer!.isNotEmpty) {
      json['answer'] =
          answer!.map<dynamic>((ContractAnswer v) => v.toJson()).toList();
    }
    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      json['securityLabelNumber'] =
          securityLabelNumber!.map((FhirUnsignedInt v) => v.toJson()).toList();
    }
    if (securityLabelNumberElement != null &&
        securityLabelNumberElement!.isNotEmpty) {
      json['_securityLabelNumber'] =
          securityLabelNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (valuedItem != null && valuedItem!.isNotEmpty) {
      json['valuedItem'] = valuedItem!
          .map<dynamic>((ContractValuedItem v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ContractAsset.fromJson(Map<String, dynamic> json) {
    return ContractAsset(
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
      scope: json['scope'] != null
          ? CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      typeReference: json['typeReference'] != null
          ? (json['typeReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subtype: json['subtype'] != null
          ? (json['subtype'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relationship: json['relationship'] != null
          ? Coding.fromJson(json['relationship'] as Map<String, dynamic>)
          : null,
      context: json['context'] != null
          ? (json['context'] as List<dynamic>)
              .map<ContractContext>((dynamic v) =>
                  ContractContext.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      condition: json['condition'] != null
          ? FhirString.fromJson(json['condition'])
          : null,
      conditionElement: json['_condition'] != null
          ? Element.fromJson(json['_condition'] as Map<String, dynamic>)
          : null,
      periodType: json['periodType'] != null
          ? (json['periodType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? (json['period'] as List<dynamic>)
              .map<Period>(
                  (dynamic v) => Period.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      usePeriod: json['usePeriod'] != null
          ? (json['usePeriod'] as List<dynamic>)
              .map<Period>(
                  (dynamic v) => Period.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      linkId: json['linkId'] != null
          ? (json['linkId'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      linkIdElement: json['_linkId'] != null
          ? (json['_linkId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      answer: json['answer'] != null
          ? (json['answer'] as List<dynamic>)
              .map<ContractAnswer>((dynamic v) =>
                  ContractAnswer.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      securityLabelNumber: json['securityLabelNumber'] != null
          ? (json['securityLabelNumber'] as List<dynamic>)
              .map<FhirUnsignedInt>(
                  (dynamic v) => FhirUnsignedInt.fromJson(v as dynamic))
              .toList()
          : null,
      securityLabelNumberElement: json['_securityLabelNumber'] != null
          ? (json['_securityLabelNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      valuedItem: json['valuedItem'] != null
          ? (json['valuedItem'] as List<dynamic>)
              .map<ContractValuedItem>((dynamic v) =>
                  ContractValuedItem.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ContractAsset clone() => throw UnimplementedError();
  @override
  ContractAsset copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? scope,
    List<CodeableConcept>? type,
    List<Reference>? typeReference,
    List<CodeableConcept>? subtype,
    Coding? relationship,
    List<ContractContext>? context,
    FhirString? condition,
    Element? conditionElement,
    List<CodeableConcept>? periodType,
    List<Period>? period,
    List<Period>? usePeriod,
    FhirString? text,
    Element? textElement,
    List<FhirString>? linkId,
    List<Element>? linkIdElement,
    List<ContractAnswer>? answer,
    List<FhirUnsignedInt>? securityLabelNumber,
    List<Element>? securityLabelNumberElement,
    List<ContractValuedItem>? valuedItem,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractAsset(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      scope: scope ?? this.scope,
      type: type ?? this.type,
      typeReference: typeReference ?? this.typeReference,
      subtype: subtype ?? this.subtype,
      relationship: relationship ?? this.relationship,
      context: context ?? this.context,
      condition: condition ?? this.condition,
      conditionElement: conditionElement ?? this.conditionElement,
      periodType: periodType ?? this.periodType,
      period: period ?? this.period,
      usePeriod: usePeriod ?? this.usePeriod,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      linkId: linkId ?? this.linkId,
      linkIdElement: linkIdElement ?? this.linkIdElement,
      answer: answer ?? this.answer,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      securityLabelNumberElement:
          securityLabelNumberElement ?? this.securityLabelNumberElement,
      valuedItem: valuedItem ?? this.valuedItem,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractAsset.fromYaml(dynamic yaml) => yaml is String
      ? ContractAsset.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractAsset.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractAsset cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractAsset.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractAsset.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractContext] /// Circumstance of the asset.
class ContractContext extends BackboneElement {
  ContractContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.code,
    this.text,
    this.textElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractContext';

  /// [reference] /// Asset context reference may include the creator, custodian, or owning
  /// Person or Organization (e.g., bank, repository), location held, e.g.,
  /// building, jurisdiction.
  final Reference? reference;

  /// [code] /// Coded representation of the context generally or of the Referenced entity,
  /// such as the asset holder type or location.
  final List<CodeableConcept>? code;

  /// [text] /// Context description.
  final FhirString? text;
  final Element? textElement;
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
    if (reference != null) {
      json['reference'] = reference!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] =
          code!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    return json;
  }

  factory ContractContext.fromJson(Map<String, dynamic> json) {
    return ContractContext(
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
      reference: json['reference'] != null
          ? Reference.fromJson(json['reference'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ContractContext clone() => throw UnimplementedError();
  @override
  ContractContext copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    List<CodeableConcept>? code,
    FhirString? text,
    Element? textElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      code: code ?? this.code,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractContext.fromYaml(dynamic yaml) => yaml is String
      ? ContractContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractContext cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractContext.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractValuedItem] /// Contract Valued Item List.
class ContractValuedItem extends BackboneElement {
  ContractValuedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.entityCodeableConcept,
    this.entityReference,
    this.identifier,
    this.effectiveTime,
    this.effectiveTimeElement,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.points,
    this.pointsElement,
    this.net,
    this.payment,
    this.paymentElement,
    this.paymentDate,
    this.paymentDateElement,
    this.responsible,
    this.recipient,
    this.linkId,
    this.linkIdElement,
    this.securityLabelNumber,
    this.securityLabelNumberElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractValuedItem';

  /// [entityCodeableConcept] /// Specific type of Contract Valued Item that may be priced.
  final CodeableConcept? entityCodeableConcept;

  /// [entityReference] /// Specific type of Contract Valued Item that may be priced.
  final Reference? entityReference;

  /// [identifier] /// Identifies a Contract Valued Item instance.
  final Identifier? identifier;

  /// [effectiveTime] /// Indicates the time during which this Contract ValuedItem information is
  /// effective.
  final FhirDateTime? effectiveTime;
  final Element? effectiveTimeElement;

  /// [quantity] /// Specifies the units by which the Contract Valued Item is measured or
  /// counted, and quantifies the countable or measurable Contract Valued Item
  /// instances.
  final Quantity? quantity;

  /// [unitPrice] /// A Contract Valued Item unit valuation measure.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of the Contract Valued Item delivered. The concept of a Factor allows
  /// for a discount or surcharge multiplier to be applied to a monetary amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [points] /// An amount that expresses the weighting (based on difficulty, cost and/or
  /// resource intensiveness) associated with the Contract Valued Item delivered.
  /// The concept of Points allows for assignment of point values for a Contract
  /// Valued Item, such that a monetary amount can be assigned to each point.
  final FhirDecimal? points;
  final Element? pointsElement;

  /// [net] /// Expresses the product of the Contract Valued Item unitQuantity and the
  /// unitPriceAmt. For example, the formula: unit Quantity * unit Price (Cost
  /// per Point) * factor Number * points = net Amount. Quantity, factor and
  /// points are assumed to be 1 if not supplied.
  final Money? net;

  /// [payment] /// Terms of valuation.
  final FhirString? payment;
  final Element? paymentElement;

  /// [paymentDate] /// When payment is due.
  final FhirDateTime? paymentDate;
  final Element? paymentDateElement;

  /// [responsible] /// Who will make payment.
  final Reference? responsible;

  /// [recipient] /// Who will receive payment.
  final Reference? recipient;

  /// [linkId] /// Id of the clause or question text related to the context of this valuedItem
  /// in the referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;

  /// [securityLabelNumber] /// A set of security labels that define which terms are controlled by this
  /// condition.
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;
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
    if (entityCodeableConcept != null) {
      json['entityCodeableConcept'] = entityCodeableConcept!.toJson();
    }
    if (entityReference != null) {
      json['entityReference'] = entityReference!.toJson();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    if (effectiveTime?.value != null) {
      json['effectiveTime'] = effectiveTime!.toJson();
    }
    if (effectiveTimeElement != null) {
      json['_effectiveTime'] = effectiveTimeElement!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.toJson();
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (points?.value != null) {
      json['points'] = points!.toJson();
    }
    if (pointsElement != null) {
      json['_points'] = pointsElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (payment?.value != null) {
      json['payment'] = payment!.toJson();
    }
    if (paymentElement != null) {
      json['_payment'] = paymentElement!.toJson();
    }
    if (paymentDate?.value != null) {
      json['paymentDate'] = paymentDate!.toJson();
    }
    if (paymentDateElement != null) {
      json['_paymentDate'] = paymentDateElement!.toJson();
    }
    if (responsible != null) {
      json['responsible'] = responsible!.toJson();
    }
    if (recipient != null) {
      json['recipient'] = recipient!.toJson();
    }
    if (linkId != null && linkId!.isNotEmpty) {
      json['linkId'] = linkId!.map((FhirString v) => v.toJson()).toList();
    }
    if (linkIdElement != null && linkIdElement!.isNotEmpty) {
      json['_linkId'] = linkIdElement!.map((Element v) => v.toJson()).toList();
    }
    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      json['securityLabelNumber'] =
          securityLabelNumber!.map((FhirUnsignedInt v) => v.toJson()).toList();
    }
    if (securityLabelNumberElement != null &&
        securityLabelNumberElement!.isNotEmpty) {
      json['_securityLabelNumber'] =
          securityLabelNumberElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory ContractValuedItem.fromJson(Map<String, dynamic> json) {
    return ContractValuedItem(
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
      entityCodeableConcept: json['entityCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['entityCodeableConcept'] as Map<String, dynamic>)
          : null,
      entityReference: json['entityReference'] != null
          ? Reference.fromJson(json['entityReference'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      effectiveTime: json['effectiveTime'] != null
          ? FhirDateTime.fromJson(json['effectiveTime'])
          : null,
      effectiveTimeElement: json['_effectiveTime'] != null
          ? Element.fromJson(json['_effectiveTime'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor:
          json['factor'] != null ? FhirDecimal.fromJson(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      points:
          json['points'] != null ? FhirDecimal.fromJson(json['points']) : null,
      pointsElement: json['_points'] != null
          ? Element.fromJson(json['_points'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      payment:
          json['payment'] != null ? FhirString.fromJson(json['payment']) : null,
      paymentElement: json['_payment'] != null
          ? Element.fromJson(json['_payment'] as Map<String, dynamic>)
          : null,
      paymentDate: json['paymentDate'] != null
          ? FhirDateTime.fromJson(json['paymentDate'])
          : null,
      paymentDateElement: json['_paymentDate'] != null
          ? Element.fromJson(json['_paymentDate'] as Map<String, dynamic>)
          : null,
      responsible: json['responsible'] != null
          ? Reference.fromJson(json['responsible'] as Map<String, dynamic>)
          : null,
      recipient: json['recipient'] != null
          ? Reference.fromJson(json['recipient'] as Map<String, dynamic>)
          : null,
      linkId: json['linkId'] != null
          ? (json['linkId'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      linkIdElement: json['_linkId'] != null
          ? (json['_linkId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      securityLabelNumber: json['securityLabelNumber'] != null
          ? (json['securityLabelNumber'] as List<dynamic>)
              .map<FhirUnsignedInt>(
                  (dynamic v) => FhirUnsignedInt.fromJson(v as dynamic))
              .toList()
          : null,
      securityLabelNumberElement: json['_securityLabelNumber'] != null
          ? (json['_securityLabelNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ContractValuedItem clone() => throw UnimplementedError();
  @override
  ContractValuedItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? entityCodeableConcept,
    Reference? entityReference,
    Identifier? identifier,
    FhirDateTime? effectiveTime,
    Element? effectiveTimeElement,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    FhirDecimal? points,
    Element? pointsElement,
    Money? net,
    FhirString? payment,
    Element? paymentElement,
    FhirDateTime? paymentDate,
    Element? paymentDateElement,
    Reference? responsible,
    Reference? recipient,
    List<FhirString>? linkId,
    List<Element>? linkIdElement,
    List<FhirUnsignedInt>? securityLabelNumber,
    List<Element>? securityLabelNumberElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractValuedItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      entityCodeableConcept:
          entityCodeableConcept ?? this.entityCodeableConcept,
      entityReference: entityReference ?? this.entityReference,
      identifier: identifier ?? this.identifier,
      effectiveTime: effectiveTime ?? this.effectiveTime,
      effectiveTimeElement: effectiveTimeElement ?? this.effectiveTimeElement,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      points: points ?? this.points,
      pointsElement: pointsElement ?? this.pointsElement,
      net: net ?? this.net,
      payment: payment ?? this.payment,
      paymentElement: paymentElement ?? this.paymentElement,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentDateElement: paymentDateElement ?? this.paymentDateElement,
      responsible: responsible ?? this.responsible,
      recipient: recipient ?? this.recipient,
      linkId: linkId ?? this.linkId,
      linkIdElement: linkIdElement ?? this.linkIdElement,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      securityLabelNumberElement:
          securityLabelNumberElement ?? this.securityLabelNumberElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractValuedItem.fromYaml(dynamic yaml) => yaml is String
      ? ContractValuedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractValuedItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractValuedItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractValuedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractValuedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractAction] /// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ContractAction extends BackboneElement {
  ContractAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.doNotPerform,
    this.doNotPerformElement,
    required this.type,
    this.subject,
    required this.intent,
    this.linkId,
    this.linkIdElement,
    required this.status,
    this.context,
    this.contextLinkId,
    this.contextLinkIdElement,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.requester,
    this.requesterLinkId,
    this.requesterLinkIdElement,
    this.performerType,
    this.performerRole,
    this.performer,
    this.performerLinkId,
    this.performerLinkIdElement,
    this.reasonCode,
    this.reasonReference,
    this.reason,
    this.reasonElement,
    this.reasonLinkId,
    this.reasonLinkIdElement,
    this.note,
    this.securityLabelNumber,
    this.securityLabelNumberElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractAction';

  /// [doNotPerform] /// True if the term prohibits the action.
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;

  /// [type] /// Activity or service obligation to be done or not done, performed or not
  /// performed, effectuated or not by this Contract term.
  final CodeableConcept type;

  /// [subject] /// Entity of the action.
  final List<ContractSubject>? subject;

  /// [intent] /// Reason or purpose for the action stipulated by this Contract Provision.
  final CodeableConcept intent;

  /// [linkId] /// Id [identifier??] of the clause or question text related to this action in
  /// the referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;

  /// [status] /// Current state of the term action.
  final CodeableConcept status;

  /// [context] /// Encounter or Episode with primary association to specified term activity.
  final Reference? context;

  /// [contextLinkId] /// Id [identifier??] of the clause or question text related to the requester
  /// of this action in the referenced form or QuestionnaireResponse.
  final List<FhirString>? contextLinkId;
  final List<Element>? contextLinkIdElement;

  /// [occurrenceDateTime] /// When action happens.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// When action happens.
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// When action happens.
  final Timing? occurrenceTiming;

  /// [requester] /// Who or what initiated the action and has responsibility for its activation.
  final List<Reference>? requester;

  /// [requesterLinkId] /// Id [identifier??] of the clause or question text related to the requester
  /// of this action in the referenced form or QuestionnaireResponse.
  final List<FhirString>? requesterLinkId;
  final List<Element>? requesterLinkIdElement;

  /// [performerType] /// The type of individual that is desired or required to perform or not
  /// perform the action.
  final List<CodeableConcept>? performerType;

  /// [performerRole] /// The type of role or competency of an individual desired or required to
  /// perform or not perform the action.
  final CodeableConcept? performerRole;

  /// [performer] /// Indicates who or what is being asked to perform (or not perform) the ction.
  final Reference? performer;

  /// [performerLinkId] /// Id [identifier??] of the clause or question text related to the reason type
  /// or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  final List<FhirString>? performerLinkId;
  final List<Element>? performerLinkIdElement;

  /// [reasonCode] /// Rationale for the action to be performed or not performed. Describes why
  /// the action is permitted or prohibited.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies permitting or not
  /// permitting this action.
  final List<Reference>? reasonReference;

  /// [reason] /// Describes why the action is to be performed or not performed in textual
  /// form.
  final List<FhirString>? reason;
  final List<Element>? reasonElement;

  /// [reasonLinkId] /// Id [identifier??] of the clause or question text related to the reason type
  /// or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  final List<FhirString>? reasonLinkId;
  final List<Element>? reasonLinkIdElement;

  /// [note] /// Comments made about the term action made by the requester, performer,
  /// subject or other participants.
  final List<Annotation>? note;

  /// [securityLabelNumber] /// Security labels that protects the action.
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;
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
    if (doNotPerform?.value != null) {
      json['doNotPerform'] = doNotPerform!.toJson();
    }
    if (doNotPerformElement != null) {
      json['_doNotPerform'] = doNotPerformElement!.toJson();
    }
    json['type'] = type.toJson();
    if (subject != null && subject!.isNotEmpty) {
      json['subject'] =
          subject!.map<dynamic>((ContractSubject v) => v.toJson()).toList();
    }
    json['intent'] = intent.toJson();
    if (linkId != null && linkId!.isNotEmpty) {
      json['linkId'] = linkId!.map((FhirString v) => v.toJson()).toList();
    }
    if (linkIdElement != null && linkIdElement!.isNotEmpty) {
      json['_linkId'] = linkIdElement!.map((Element v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (context != null) {
      json['context'] = context!.toJson();
    }
    if (contextLinkId != null && contextLinkId!.isNotEmpty) {
      json['contextLinkId'] =
          contextLinkId!.map((FhirString v) => v.toJson()).toList();
    }
    if (contextLinkIdElement != null && contextLinkIdElement!.isNotEmpty) {
      json['_contextLinkId'] =
          contextLinkIdElement!.map((Element v) => v.toJson()).toList();
    }
    if (occurrenceDateTime?.value != null) {
      json['occurrenceDateTime'] = occurrenceDateTime!.toJson();
    }
    if (occurrenceDateTimeElement != null) {
      json['_occurrenceDateTime'] = occurrenceDateTimeElement!.toJson();
    }
    if (occurrencePeriod != null) {
      json['occurrencePeriod'] = occurrencePeriod!.toJson();
    }
    if (occurrenceTiming != null) {
      json['occurrenceTiming'] = occurrenceTiming!.toJson();
    }
    if (requester != null && requester!.isNotEmpty) {
      json['requester'] =
          requester!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (requesterLinkId != null && requesterLinkId!.isNotEmpty) {
      json['requesterLinkId'] =
          requesterLinkId!.map((FhirString v) => v.toJson()).toList();
    }
    if (requesterLinkIdElement != null && requesterLinkIdElement!.isNotEmpty) {
      json['_requesterLinkId'] =
          requesterLinkIdElement!.map((Element v) => v.toJson()).toList();
    }
    if (performerType != null && performerType!.isNotEmpty) {
      json['performerType'] = performerType!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (performerRole != null) {
      json['performerRole'] = performerRole!.toJson();
    }
    if (performer != null) {
      json['performer'] = performer!.toJson();
    }
    if (performerLinkId != null && performerLinkId!.isNotEmpty) {
      json['performerLinkId'] =
          performerLinkId!.map((FhirString v) => v.toJson()).toList();
    }
    if (performerLinkIdElement != null && performerLinkIdElement!.isNotEmpty) {
      json['_performerLinkId'] =
          performerLinkIdElement!.map((Element v) => v.toJson()).toList();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (reason != null && reason!.isNotEmpty) {
      json['reason'] = reason!.map((FhirString v) => v.toJson()).toList();
    }
    if (reasonElement != null && reasonElement!.isNotEmpty) {
      json['_reason'] = reasonElement!.map((Element v) => v.toJson()).toList();
    }
    if (reasonLinkId != null && reasonLinkId!.isNotEmpty) {
      json['reasonLinkId'] =
          reasonLinkId!.map((FhirString v) => v.toJson()).toList();
    }
    if (reasonLinkIdElement != null && reasonLinkIdElement!.isNotEmpty) {
      json['_reasonLinkId'] =
          reasonLinkIdElement!.map((Element v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      json['securityLabelNumber'] =
          securityLabelNumber!.map((FhirUnsignedInt v) => v.toJson()).toList();
    }
    if (securityLabelNumberElement != null &&
        securityLabelNumberElement!.isNotEmpty) {
      json['_securityLabelNumber'] =
          securityLabelNumberElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory ContractAction.fromJson(Map<String, dynamic> json) {
    return ContractAction(
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
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean.fromJson(json['doNotPerform'])
          : null,
      doNotPerformElement: json['_doNotPerform'] != null
          ? Element.fromJson(json['_doNotPerform'] as Map<String, dynamic>)
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subject: json['subject'] != null
          ? (json['subject'] as List<dynamic>)
              .map<ContractSubject>((dynamic v) =>
                  ContractSubject.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      intent: CodeableConcept.fromJson(json['intent'] as Map<String, dynamic>),
      linkId: json['linkId'] != null
          ? (json['linkId'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      linkIdElement: json['_linkId'] != null
          ? (json['_linkId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      context: json['context'] != null
          ? Reference.fromJson(json['context'] as Map<String, dynamic>)
          : null,
      contextLinkId: json['contextLinkId'] != null
          ? (json['contextLinkId'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      contextLinkIdElement: json['_contextLinkId'] != null
          ? (json['_contextLinkId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson(json['occurrenceDateTime'])
          : null,
      occurrenceDateTimeElement: json['_occurrenceDateTime'] != null
          ? Element.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>)
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>)
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>)
          : null,
      requester: json['requester'] != null
          ? (json['requester'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      requesterLinkId: json['requesterLinkId'] != null
          ? (json['requesterLinkId'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      requesterLinkIdElement: json['_requesterLinkId'] != null
          ? (json['_requesterLinkId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      performerType: json['performerType'] != null
          ? (json['performerType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      performerRole: json['performerRole'] != null
          ? CodeableConcept.fromJson(
              json['performerRole'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(json['performer'] as Map<String, dynamic>)
          : null,
      performerLinkId: json['performerLinkId'] != null
          ? (json['performerLinkId'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      performerLinkIdElement: json['_performerLinkId'] != null
          ? (json['_performerLinkId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reason: json['reason'] != null
          ? (json['reason'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      reasonElement: json['_reason'] != null
          ? (json['_reason'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonLinkId: json['reasonLinkId'] != null
          ? (json['reasonLinkId'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      reasonLinkIdElement: json['_reasonLinkId'] != null
          ? (json['_reasonLinkId'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      securityLabelNumber: json['securityLabelNumber'] != null
          ? (json['securityLabelNumber'] as List<dynamic>)
              .map<FhirUnsignedInt>(
                  (dynamic v) => FhirUnsignedInt.fromJson(v as dynamic))
              .toList()
          : null,
      securityLabelNumberElement: json['_securityLabelNumber'] != null
          ? (json['_securityLabelNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ContractAction clone() => throw UnimplementedError();
  @override
  ContractAction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? doNotPerform,
    Element? doNotPerformElement,
    CodeableConcept? type,
    List<ContractSubject>? subject,
    CodeableConcept? intent,
    List<FhirString>? linkId,
    List<Element>? linkIdElement,
    CodeableConcept? status,
    Reference? context,
    List<FhirString>? contextLinkId,
    List<Element>? contextLinkIdElement,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    List<Reference>? requester,
    List<FhirString>? requesterLinkId,
    List<Element>? requesterLinkIdElement,
    List<CodeableConcept>? performerType,
    CodeableConcept? performerRole,
    Reference? performer,
    List<FhirString>? performerLinkId,
    List<Element>? performerLinkIdElement,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<FhirString>? reason,
    List<Element>? reasonElement,
    List<FhirString>? reasonLinkId,
    List<Element>? reasonLinkIdElement,
    List<Annotation>? note,
    List<FhirUnsignedInt>? securityLabelNumber,
    List<Element>? securityLabelNumberElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      doNotPerformElement: doNotPerformElement ?? this.doNotPerformElement,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      intent: intent ?? this.intent,
      linkId: linkId ?? this.linkId,
      linkIdElement: linkIdElement ?? this.linkIdElement,
      status: status ?? this.status,
      context: context ?? this.context,
      contextLinkId: contextLinkId ?? this.contextLinkId,
      contextLinkIdElement: contextLinkIdElement ?? this.contextLinkIdElement,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      requester: requester ?? this.requester,
      requesterLinkId: requesterLinkId ?? this.requesterLinkId,
      requesterLinkIdElement:
          requesterLinkIdElement ?? this.requesterLinkIdElement,
      performerType: performerType ?? this.performerType,
      performerRole: performerRole ?? this.performerRole,
      performer: performer ?? this.performer,
      performerLinkId: performerLinkId ?? this.performerLinkId,
      performerLinkIdElement:
          performerLinkIdElement ?? this.performerLinkIdElement,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      reason: reason ?? this.reason,
      reasonElement: reasonElement ?? this.reasonElement,
      reasonLinkId: reasonLinkId ?? this.reasonLinkId,
      reasonLinkIdElement: reasonLinkIdElement ?? this.reasonLinkIdElement,
      note: note ?? this.note,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      securityLabelNumberElement:
          securityLabelNumberElement ?? this.securityLabelNumberElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractAction.fromYaml(dynamic yaml) => yaml is String
      ? ContractAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractAction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractSubject] /// Entity of the action.
class ContractSubject extends BackboneElement {
  ContractSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.role,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractSubject';

  /// [reference] /// The entity the action is performed or not performed on or for.
  final List<Reference> reference;

  /// [role] /// Role type of agent assigned roles in this Contract.
  final CodeableConcept? role;
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
    json['reference'] =
        reference.map<dynamic>((Reference v) => v.toJson()).toList();
    if (role != null) {
      json['role'] = role!.toJson();
    }
    return json;
  }

  factory ContractSubject.fromJson(Map<String, dynamic> json) {
    return ContractSubject(
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
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
              (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
          .toList(),
      role: json['role'] != null
          ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ContractSubject clone() => throw UnimplementedError();
  @override
  ContractSubject copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? role,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractSubject(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractSubject.fromYaml(dynamic yaml) => yaml is String
      ? ContractSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractSubject.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractSubject cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractSubject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractSigner] /// Parties with legal standing in the Contract, including the principal
/// parties, the grantor(s) and grantee(s), which are any person or
/// organization bound by the contract, and any ancillary parties, which
/// facilitate the execution of the contract such as a notary or witness.
class ContractSigner extends BackboneElement {
  ContractSigner({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.party,
    required this.signature,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractSigner';

  /// [type] /// Role of this Contract signer, e.g. notary, grantee.
  final Coding type;

  /// [party] /// Party which is a signator to this Contract.
  final Reference party;

  /// [signature] /// Legally binding Contract DSIG signature contents in Base64.
  final List<Signature> signature;
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
    json['type'] = type.toJson();
    json['party'] = party.toJson();
    json['signature'] =
        signature.map<dynamic>((Signature v) => v.toJson()).toList();
    return json;
  }

  factory ContractSigner.fromJson(Map<String, dynamic> json) {
    return ContractSigner(
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
      type: Coding.fromJson(json['type'] as Map<String, dynamic>),
      party: Reference.fromJson(json['party'] as Map<String, dynamic>),
      signature: (json['signature'] as List<dynamic>)
          .map<Signature>(
              (dynamic v) => Signature.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
  @override
  ContractSigner clone() => throw UnimplementedError();
  @override
  ContractSigner copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    Reference? party,
    List<Signature>? signature,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractSigner(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
      signature: signature ?? this.signature,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractSigner.fromYaml(dynamic yaml) => yaml is String
      ? ContractSigner.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractSigner.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractSigner cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractSigner.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractSigner.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractFriendly] /// The "patient friendly language" versionof the Contract in whole or in
/// parts. "Patient friendly language" means the representation of the Contract
/// and Contract Provisions in a manner that is readily accessible and
/// understandable by a layperson in accordance with best practices for
/// communication styles that ensure that those agreeing to or signing the
/// Contract understand the roles, actions, obligations, responsibilities, and
/// implication of the agreement.
class ContractFriendly extends BackboneElement {
  ContractFriendly({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.contentAttachment,
    this.contentReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractFriendly';

  /// [contentAttachment] /// Human readable rendering of this Contract in a format and representation
  /// intended to enhance comprehension and ensure understandability.
  final Attachment? contentAttachment;

  /// [contentReference] /// Human readable rendering of this Contract in a format and representation
  /// intended to enhance comprehension and ensure understandability.
  final Reference? contentReference;
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
    if (contentAttachment != null) {
      json['contentAttachment'] = contentAttachment!.toJson();
    }
    if (contentReference != null) {
      json['contentReference'] = contentReference!.toJson();
    }
    return json;
  }

  factory ContractFriendly.fromJson(Map<String, dynamic> json) {
    return ContractFriendly(
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
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              json['contentAttachment'] as Map<String, dynamic>)
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(json['contentReference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ContractFriendly clone() => throw UnimplementedError();
  @override
  ContractFriendly copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? contentAttachment,
    Reference? contentReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractFriendly(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractFriendly.fromYaml(dynamic yaml) => yaml is String
      ? ContractFriendly.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractFriendly.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractFriendly cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractFriendly.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractFriendly.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractLegal] /// List of Legal expressions or representations of this Contract.
class ContractLegal extends BackboneElement {
  ContractLegal({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.contentAttachment,
    this.contentReference,
    this.legallyBindingAttachment,
    this.legallyBindingReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractLegal';

  /// [contentAttachment] /// Contract legal text in human renderable form.
  final Attachment? contentAttachment;

  /// [contentReference] /// Contract legal text in human renderable form.
  final Reference? contentReference;

  /// [legallyBindingAttachment] /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of truth"
  /// and which would be the basis for legal action related to enforcement of
  /// this Contract.
  final Attachment? legallyBindingAttachment;

  /// [legallyBindingReference] /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of truth"
  /// and which would be the basis for legal action related to enforcement of
  /// this Contract.
  final Reference? legallyBindingReference;
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
    if (contentAttachment != null) {
      json['contentAttachment'] = contentAttachment!.toJson();
    }
    if (contentReference != null) {
      json['contentReference'] = contentReference!.toJson();
    }
    if (legallyBindingAttachment != null) {
      json['legallyBindingAttachment'] = legallyBindingAttachment!.toJson();
    }
    if (legallyBindingReference != null) {
      json['legallyBindingReference'] = legallyBindingReference!.toJson();
    }
    return json;
  }

  factory ContractLegal.fromJson(Map<String, dynamic> json) {
    return ContractLegal(
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
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              json['contentAttachment'] as Map<String, dynamic>)
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(json['contentReference'] as Map<String, dynamic>)
          : null,
      legallyBindingAttachment: json['legallyBindingAttachment'] != null
          ? Attachment.fromJson(
              json['legallyBindingAttachment'] as Map<String, dynamic>)
          : null,
      legallyBindingReference: json['legallyBindingReference'] != null
          ? Reference.fromJson(
              json['legallyBindingReference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ContractLegal clone() => throw UnimplementedError();
  @override
  ContractLegal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? contentAttachment,
    Reference? contentReference,
    Attachment? legallyBindingAttachment,
    Reference? legallyBindingReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractLegal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      legallyBindingAttachment:
          legallyBindingAttachment ?? this.legallyBindingAttachment,
      legallyBindingReference:
          legallyBindingReference ?? this.legallyBindingReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractLegal.fromYaml(dynamic yaml) => yaml is String
      ? ContractLegal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractLegal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractLegal cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractLegal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractLegal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ContractRule] /// List of Computable Policy Rule Language Representations of this Contract.
class ContractRule extends BackboneElement {
  ContractRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.contentAttachment,
    this.contentReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ContractRule';

  /// [contentAttachment] /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  final Attachment? contentAttachment;

  /// [contentReference] /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  final Reference? contentReference;
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
    if (contentAttachment != null) {
      json['contentAttachment'] = contentAttachment!.toJson();
    }
    if (contentReference != null) {
      json['contentReference'] = contentReference!.toJson();
    }
    return json;
  }

  factory ContractRule.fromJson(Map<String, dynamic> json) {
    return ContractRule(
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
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              json['contentAttachment'] as Map<String, dynamic>)
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(json['contentReference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ContractRule clone() => throw UnimplementedError();
  @override
  ContractRule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? contentAttachment,
    Reference? contentReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractRule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ContractRule.fromYaml(dynamic yaml) => yaml is String
      ? ContractRule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ContractRule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ContractRule cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ContractRule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractRule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
