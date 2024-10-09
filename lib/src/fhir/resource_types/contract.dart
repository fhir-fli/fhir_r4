import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'contract.g.dart';

/// [Contract] /// Legally enforceable, formally recorded unilateral or bilateral directive
/// i.e., a policy or agreement.
@JsonSerializable()
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Contract);
  @override
  String get fhirType => 'Contract';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for this Contract or a derivative that references a
  /// Source Contract.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [url] /// Canonical identifier for this contract, represented as a URI (globally
  /// unique).
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [version] /// An edition identifier used for business purposes to label business
  /// significant variants.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final ContractResourceStatusCodes? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [legalState] /// Legal states of the formation of a legal instrument, which is a formally
  /// executed written document that can be formally attributed to its author,
  /// records and formally expresses a legally enforceable act, process, or
  /// contractual duty, obligation, or right, and therefore evidences that act,
  /// process, or agreement.
  @JsonKey(name: 'legalState')
  final CodeableConcept? legalState;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined Contract Definition that is adhered to
  /// in whole or part by this Contract.
  @JsonKey(name: 'instantiatesCanonical')
  final Reference? instantiatesCanonical;

  /// [instantiatesUri] /// The URL pointing to an externally maintained definition that is adhered to
  /// in whole or in part by this Contract.
  @JsonKey(name: 'instantiatesUri')
  final FhirUri? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final Element? instantiatesUriElement;

  /// [contentDerivative] /// The minimal content derived from the basal information source at a specific
  /// stage in its lifecycle.
  @JsonKey(name: 'contentDerivative')
  final CodeableConcept? contentDerivative;

  /// [issued] /// When this Contract was issued.
  @JsonKey(name: 'issued')
  final FhirDateTime? issued;
  @JsonKey(name: '_issued')
  final Element? issuedElement;

  /// [applies] /// Relevant time or time-period when this Contract is applicable.
  @JsonKey(name: 'applies')
  final Period? applies;

  /// [expirationType] /// Event resulting in discontinuation or termination of this Contract instance
  /// by one or more parties to the contract.
  @JsonKey(name: 'expirationType')
  final CodeableConcept? expirationType;

  /// [subject] /// The target entity impacted by or of interest to parties to the agreement.
  @JsonKey(name: 'subject')
  final List<Reference>? subject;

  /// [authority] /// A formally or informally recognized grouping of people, principals,
  /// organizations, or jurisdictions formed for the purpose of achieving some
  /// form of collective action such as the promulgation, administration and
  /// enforcement of contracts and policies.
  @JsonKey(name: 'authority')
  final List<Reference>? authority;

  /// [domain] /// Recognized governance framework or system operating with a circumscribed
  /// scope in accordance with specified principles, policies, processes or
  /// procedures for managing rights, actions, or behaviors of parties or
  /// principals relative to resources.
  @JsonKey(name: 'domain')
  final List<Reference>? domain;

  /// [site] /// Sites in which the contract is complied with, exercised, or in force.
  @JsonKey(name: 'site')
  final List<Reference>? site;

  /// [name] /// A natural language name identifying this Contract definition, derivative,
  /// or instance in any legal state. Provides additional information about its
  /// content. This name should be usable as an identifier for the module by
  /// machine processing applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for this Contract definition,
  /// derivative, or instance in any legal state.t giving additional information
  /// about its content.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [subtitle] /// An explanatory or alternate user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving additional
  /// information about its content.
  @JsonKey(name: 'subtitle')
  final FhirString? subtitle;
  @JsonKey(name: '_subtitle')
  final Element? subtitleElement;

  /// [alias] /// Alternative representation of the title for this Contract definition,
  /// derivative, or instance in any legal state., e.g., a domain specific
  /// contract number related to legislation.
  @JsonKey(name: 'alias')
  final List<FhirString>? alias;
  @JsonKey(name: '_alias')
  final List<Element>? aliasElement;

  /// [author] /// The individual or organization that authored the Contract definition,
  /// derivative, or instance in any legal state.
  @JsonKey(name: 'author')
  final Reference? author;

  /// [scope] /// A selector of legal concerns for this Contract definition, derivative, or
  /// instance in any legal state.
  @JsonKey(name: 'scope')
  final CodeableConcept? scope;

  /// [topicCodeableConcept] /// Narrows the range of legal concerns to focus on the achievement of specific
  /// contractual objectives.
  @JsonKey(name: 'topicCodeableConcept')
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference] /// Narrows the range of legal concerns to focus on the achievement of specific
  /// contractual objectives.
  @JsonKey(name: 'topicReference')
  final Reference? topicReference;

  /// [type] /// A high-level category for the legal instrument, whether constructed as a
  /// Contract definition, derivative, or instance in any legal state. Provides
  /// additional information about its content within the context of the
  /// Contract's scope to distinguish the kinds of systems that would be
  /// interested in the contract.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [subType] /// Sub-category for the Contract that distinguishes the kinds of systems that
  /// would be interested in the Contract within the context of the Contract's
  /// scope.
  @JsonKey(name: 'subType')
  final List<CodeableConcept>? subType;

  /// [contentDefinition] /// Precusory content developed with a focus and intent of supporting the
  /// formation a Contract instance, which may be associated with and
  /// transformable into a Contract.
  @JsonKey(name: 'contentDefinition')
  final ContractContentDefinition? contentDefinition;

  /// [term] /// One or more Contract Provisions, which may be related and conveyed as a
  /// group, and may contain nested groups.
  @JsonKey(name: 'term')
  final List<ContractTerm>? term;

  /// [supportingInfo] /// Information that may be needed by/relevant to the performer in their
  /// execution of this term action.
  @JsonKey(name: 'supportingInfo')
  final List<Reference>? supportingInfo;

  /// [relevantHistory] /// Links to Provenance records for past versions of this Contract definition,
  /// derivative, or instance, which identify key state transitions or updates
  /// that are likely to be relevant to a user looking at the current version of
  /// the Contract. The Provence.entity indicates the target that was changed in
  /// the update.
  /// http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  @JsonKey(name: 'relevantHistory')
  final List<Reference>? relevantHistory;

  /// [signer] /// Parties with legal standing in the Contract, including the principal
  /// parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  /// facilitate the execution of the contract such as a notary or witness.
  @JsonKey(name: 'signer')
  final List<ContractSigner>? signer;

  /// [friendly] /// The "patient friendly language" versionof the Contract in whole or in
  /// parts. "Patient friendly language" means the representation of the Contract
  /// and Contract Provisions in a manner that is readily accessible and
  /// understandable by a layperson in accordance with best practices for
  /// communication styles that ensure that those agreeing to or signing the
  /// Contract understand the roles, actions, obligations, responsibilities, and
  /// implication of the agreement.
  @JsonKey(name: 'friendly')
  final List<ContractFriendly>? friendly;

  /// [legal] /// List of Legal expressions or representations of this Contract.
  @JsonKey(name: 'legal')
  final List<ContractLegal>? legal;

  /// [rule] /// List of Computable Policy Rule Language Representations of this Contract.
  @JsonKey(name: 'rule')
  final List<ContractRule>? rule;
  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Precusory content structure and use, i.e., a boilerplate, template,
  /// application for a contract such as an insurance policy or benefits under a
  /// program, e.g., workers compensation.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [subType] /// Detailed Precusory content type.
  @JsonKey(name: 'subType')
  final CodeableConcept? subType;

  /// [publisher] /// The individual or organization that published the Contract precursor
  /// content.
  @JsonKey(name: 'publisher')
  final Reference? publisher;

  /// [publicationDate] /// The date (and optionally time) when the contract was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the contract changes.
  @JsonKey(name: 'publicationDate')
  final FhirDateTime? publicationDate;
  @JsonKey(name: '_publicationDate')
  final Element? publicationDateElement;

  /// [publicationStatus] /// amended | appended | cancelled | disputed | entered-in-error | executable |
  /// executed | negotiable | offered | policy | rejected | renewed | revoked |
  /// resolved | terminated.
  @JsonKey(name: 'publicationStatus')
  final ContractResourcePublicationStatusCodes publicationStatus;
  @JsonKey(name: '_publicationStatus')
  final Element? publicationStatusElement;

  /// [copyright] /// A copyright statement relating to Contract precursor content. Copyright
  /// statements are generally legal restrictions on the use and publishing of
  /// the Contract precursor content.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;
  factory ContractContentDefinition.fromJson(Map<String, dynamic> json) =>
      _$ContractContentDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractContentDefinitionToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for this particular Contract Provision.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [issued] /// When this Contract Provision was issued.
  @JsonKey(name: 'issued')
  final FhirDateTime? issued;
  @JsonKey(name: '_issued')
  final Element? issuedElement;

  /// [applies] /// Relevant time or time-period when this Contract Provision is applicable.
  @JsonKey(name: 'applies')
  final Period? applies;

  /// [topicCodeableConcept] /// The entity that the term applies to.
  @JsonKey(name: 'topicCodeableConcept')
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference] /// The entity that the term applies to.
  @JsonKey(name: 'topicReference')
  final Reference? topicReference;

  /// [type] /// A legal clause or condition contained within a contract that requires one
  /// or both parties to perform a particular requirement by some specified time
  /// or prevents one or both parties from performing a particular requirement by
  /// some specified time.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [subType] /// A specialized legal clause or condition based on overarching contract type.
  @JsonKey(name: 'subType')
  final CodeableConcept? subType;

  /// [text] /// Statement of a provision in a policy or a contract.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [securityLabel] /// Security labels that protect the handling of information about the term and
  /// its elements, which may be specifically identified..
  @JsonKey(name: 'securityLabel')
  final List<ContractSecurityLabel>? securityLabel;

  /// [offer] /// The matter of concern in the context of this provision of the agrement.
  @JsonKey(name: 'offer')
  final ContractOffer offer;

  /// [asset] /// Contract Term Asset List.
  @JsonKey(name: 'asset')
  final List<ContractAsset>? asset;

  /// [action] /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  @JsonKey(name: 'action')
  final List<ContractAction>? action;

  /// [group] /// Nested group of Contract Provisions.
  @JsonKey(name: 'group')
  final List<ContractTerm>? group;
  factory ContractTerm.fromJson(Map<String, dynamic> json) =>
      _$ContractTermFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractTermToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [number] /// Number used to link this term or term element to the applicable Security
  /// Label.
  @JsonKey(name: 'number')
  final List<FhirUnsignedInt>? number;
  @JsonKey(name: '_number')
  final List<Element>? numberElement;

  /// [classification] /// Security label privacy tag that species the level of confidentiality
  /// protection required for this term and/or term elements.
  @JsonKey(name: 'classification')
  final Coding classification;

  /// [category] /// Security label privacy tag that species the applicable privacy and security
  /// policies governing this term and/or term elements.
  @JsonKey(name: 'category')
  final List<Coding>? category;

  /// [control] /// Security label privacy tag that species the manner in which term and/or
  /// term elements are to be protected.
  @JsonKey(name: 'control')
  final List<Coding>? control;
  factory ContractSecurityLabel.fromJson(Map<String, dynamic> json) =>
      _$ContractSecurityLabelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractSecurityLabelToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for this particular Contract Provision.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [party] /// Offer Recipient.
  @JsonKey(name: 'party')
  final List<ContractParty>? party;

  /// [topic] /// The owner of an asset has the residual control rights over the asset: the
  /// right to decide all usages of the asset in any way not inconsistent with a
  /// prior contract, custom, or law (Hart, 1995, p. 30).
  @JsonKey(name: 'topic')
  final Reference? topic;

  /// [type] /// Type of Contract Provision such as specific requirements, purposes for
  /// actions, obligations, prohibitions, e.g. life time maximum benefit.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [decision] /// Type of choice made by accepting party with respect to an offer made by an
  /// offeror/ grantee.
  @JsonKey(name: 'decision')
  final CodeableConcept? decision;

  /// [decisionMode] /// How the decision about a Contract was conveyed.
  @JsonKey(name: 'decisionMode')
  final List<CodeableConcept>? decisionMode;

  /// [answer] /// Response to offer text.
  @JsonKey(name: 'answer')
  final List<ContractAnswer>? answer;

  /// [text] /// Human readable form of this Contract Offer.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [linkId] /// The id of the clause or question text of the offer in the referenced
  /// questionnaire/response.
  @JsonKey(name: 'linkId')
  final List<FhirString>? linkId;
  @JsonKey(name: '_linkId')
  final List<Element>? linkIdElement;

  /// [securityLabelNumber] /// Security labels that protects the offer.
  @JsonKey(name: 'securityLabelNumber')
  final List<FhirUnsignedInt>? securityLabelNumber;
  @JsonKey(name: '_securityLabelNumber')
  final List<Element>? securityLabelNumberElement;
  factory ContractOffer.fromJson(Map<String, dynamic> json) =>
      _$ContractOfferFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractOfferToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// Participant in the offer.
  @JsonKey(name: 'reference')
  final List<Reference> reference;

  /// [role] /// How the party participates in the offer.
  @JsonKey(name: 'role')
  final CodeableConcept role;
  factory ContractParty.fromJson(Map<String, dynamic> json) =>
      _$ContractPartyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractPartyToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [valueBoolean] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueDecimal] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal? valueDecimal;
  @JsonKey(name: '_valueDecimal')
  final Element? valueDecimalElement;

  /// [valueInteger] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueInteger')
  final FhirInteger? valueInteger;
  @JsonKey(name: '_valueInteger')
  final Element? valueIntegerElement;

  /// [valueDate] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueDateTime] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime? valueDateTime;
  @JsonKey(name: '_valueDateTime')
  final Element? valueDateTimeElement;

  /// [valueTime] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueTime')
  final FhirTime? valueTime;
  @JsonKey(name: '_valueTime')
  final Element? valueTimeElement;

  /// [valueString] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueString')
  final FhirString? valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueUri] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueUri')
  final FhirUri? valueUri;
  @JsonKey(name: '_valueUri')
  final Element? valueUriElement;

  /// [valueAttachment] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;

  /// [valueCoding] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueCoding')
  final Coding? valueCoding;

  /// [valueQuantity] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueReference] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  @JsonKey(name: 'valueReference')
  final Reference? valueReference;
  factory ContractAnswer.fromJson(Map<String, dynamic> json) =>
      _$ContractAnswerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractAnswerToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [scope] /// Differentiates the kind of the asset .
  @JsonKey(name: 'scope')
  final CodeableConcept? scope;

  /// [type] /// Target entity type about which the term may be concerned.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [typeReference] /// Associated entities.
  @JsonKey(name: 'typeReference')
  final List<Reference>? typeReference;

  /// [subtype] /// May be a subtype or part of an offered asset.
  @JsonKey(name: 'subtype')
  final List<CodeableConcept>? subtype;

  /// [relationship] /// Specifies the applicability of the term to an asset resource instance, and
  /// instances it refers to orinstances that refer to it, and/or are owned by
  /// the offeree.
  @JsonKey(name: 'relationship')
  final Coding? relationship;

  /// [context] /// Circumstance of the asset.
  @JsonKey(name: 'context')
  final List<ContractContext>? context;

  /// [condition] /// Description of the quality and completeness of the asset that imay be a
  /// factor in its valuation.
  @JsonKey(name: 'condition')
  final FhirString? condition;
  @JsonKey(name: '_condition')
  final Element? conditionElement;

  /// [periodType] /// Type of Asset availability for use or ownership.
  @JsonKey(name: 'periodType')
  final List<CodeableConcept>? periodType;

  /// [period] /// Asset relevant contractual time period.
  @JsonKey(name: 'period')
  final List<Period>? period;

  /// [usePeriod] /// Time period of asset use.
  @JsonKey(name: 'usePeriod')
  final List<Period>? usePeriod;

  /// [text] /// Clause or question text (Prose Object) concerning the asset in a linked
  /// form, such as a QuestionnaireResponse used in the formation of the
  /// contract.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [linkId] /// Id [identifier??] of the clause or question text about the asset in the
  /// referenced form or QuestionnaireResponse.
  @JsonKey(name: 'linkId')
  final List<FhirString>? linkId;
  @JsonKey(name: '_linkId')
  final List<Element>? linkIdElement;

  /// [answer] /// Response to assets.
  @JsonKey(name: 'answer')
  final List<ContractAnswer>? answer;

  /// [securityLabelNumber] /// Security labels that protects the asset.
  @JsonKey(name: 'securityLabelNumber')
  final List<FhirUnsignedInt>? securityLabelNumber;
  @JsonKey(name: '_securityLabelNumber')
  final List<Element>? securityLabelNumberElement;

  /// [valuedItem] /// Contract Valued Item List.
  @JsonKey(name: 'valuedItem')
  final List<ContractValuedItem>? valuedItem;
  factory ContractAsset.fromJson(Map<String, dynamic> json) =>
      _$ContractAssetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractAssetToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// Asset context reference may include the creator, custodian, or owning
  /// Person or Organization (e.g., bank, repository), location held, e.g.,
  /// building, jurisdiction.
  @JsonKey(name: 'reference')
  final Reference? reference;

  /// [code] /// Coded representation of the context generally or of the Referenced entity,
  /// such as the asset holder type or location.
  @JsonKey(name: 'code')
  final List<CodeableConcept>? code;

  /// [text] /// Context description.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;
  factory ContractContext.fromJson(Map<String, dynamic> json) =>
      _$ContractContextFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractContextToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [entityCodeableConcept] /// Specific type of Contract Valued Item that may be priced.
  @JsonKey(name: 'entityCodeableConcept')
  final CodeableConcept? entityCodeableConcept;

  /// [entityReference] /// Specific type of Contract Valued Item that may be priced.
  @JsonKey(name: 'entityReference')
  final Reference? entityReference;

  /// [identifier] /// Identifies a Contract Valued Item instance.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [effectiveTime] /// Indicates the time during which this Contract ValuedItem information is
  /// effective.
  @JsonKey(name: 'effectiveTime')
  final FhirDateTime? effectiveTime;
  @JsonKey(name: '_effectiveTime')
  final Element? effectiveTimeElement;

  /// [quantity] /// Specifies the units by which the Contract Valued Item is measured or
  /// counted, and quantifies the countable or measurable Contract Valued Item
  /// instances.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// A Contract Valued Item unit valuation measure.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of the Contract Valued Item delivered. The concept of a Factor allows
  /// for a discount or surcharge multiplier to be applied to a monetary amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [points] /// An amount that expresses the weighting (based on difficulty, cost and/or
  /// resource intensiveness) associated with the Contract Valued Item delivered.
  /// The concept of Points allows for assignment of point values for a Contract
  /// Valued Item, such that a monetary amount can be assigned to each point.
  @JsonKey(name: 'points')
  final FhirDecimal? points;
  @JsonKey(name: '_points')
  final Element? pointsElement;

  /// [net] /// Expresses the product of the Contract Valued Item unitQuantity and the
  /// unitPriceAmt. For example, the formula: unit Quantity * unit Price (Cost
  /// per Point) * factor Number * points = net Amount. Quantity, factor and
  /// points are assumed to be 1 if not supplied.
  @JsonKey(name: 'net')
  final Money? net;

  /// [payment] /// Terms of valuation.
  @JsonKey(name: 'payment')
  final FhirString? payment;
  @JsonKey(name: '_payment')
  final Element? paymentElement;

  /// [paymentDate] /// When payment is due.
  @JsonKey(name: 'paymentDate')
  final FhirDateTime? paymentDate;
  @JsonKey(name: '_paymentDate')
  final Element? paymentDateElement;

  /// [responsible] /// Who will make payment.
  @JsonKey(name: 'responsible')
  final Reference? responsible;

  /// [recipient] /// Who will receive payment.
  @JsonKey(name: 'recipient')
  final Reference? recipient;

  /// [linkId] /// Id of the clause or question text related to the context of this valuedItem
  /// in the referenced form or QuestionnaireResponse.
  @JsonKey(name: 'linkId')
  final List<FhirString>? linkId;
  @JsonKey(name: '_linkId')
  final List<Element>? linkIdElement;

  /// [securityLabelNumber] /// A set of security labels that define which terms are controlled by this
  /// condition.
  @JsonKey(name: 'securityLabelNumber')
  final List<FhirUnsignedInt>? securityLabelNumber;
  @JsonKey(name: '_securityLabelNumber')
  final List<Element>? securityLabelNumberElement;
  factory ContractValuedItem.fromJson(Map<String, dynamic> json) =>
      _$ContractValuedItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractValuedItemToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [doNotPerform] /// True if the term prohibits the action.
  @JsonKey(name: 'doNotPerform')
  final FhirBoolean? doNotPerform;
  @JsonKey(name: '_doNotPerform')
  final Element? doNotPerformElement;

  /// [type] /// Activity or service obligation to be done or not done, performed or not
  /// performed, effectuated or not by this Contract term.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [subject] /// Entity of the action.
  @JsonKey(name: 'subject')
  final List<ContractSubject>? subject;

  /// [intent] /// Reason or purpose for the action stipulated by this Contract Provision.
  @JsonKey(name: 'intent')
  final CodeableConcept intent;

  /// [linkId] /// Id [identifier??] of the clause or question text related to this action in
  /// the referenced form or QuestionnaireResponse.
  @JsonKey(name: 'linkId')
  final List<FhirString>? linkId;
  @JsonKey(name: '_linkId')
  final List<Element>? linkIdElement;

  /// [status] /// Current state of the term action.
  @JsonKey(name: 'status')
  final CodeableConcept status;

  /// [context] /// Encounter or Episode with primary association to specified term activity.
  @JsonKey(name: 'context')
  final Reference? context;

  /// [contextLinkId] /// Id [identifier??] of the clause or question text related to the requester
  /// of this action in the referenced form or QuestionnaireResponse.
  @JsonKey(name: 'contextLinkId')
  final List<FhirString>? contextLinkId;
  @JsonKey(name: '_contextLinkId')
  final List<Element>? contextLinkIdElement;

  /// [occurrenceDateTime] /// When action happens.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime? occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// When action happens.
  @JsonKey(name: 'occurrencePeriod')
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// When action happens.
  @JsonKey(name: 'occurrenceTiming')
  final Timing? occurrenceTiming;

  /// [requester] /// Who or what initiated the action and has responsibility for its activation.
  @JsonKey(name: 'requester')
  final List<Reference>? requester;

  /// [requesterLinkId] /// Id [identifier??] of the clause or question text related to the requester
  /// of this action in the referenced form or QuestionnaireResponse.
  @JsonKey(name: 'requesterLinkId')
  final List<FhirString>? requesterLinkId;
  @JsonKey(name: '_requesterLinkId')
  final List<Element>? requesterLinkIdElement;

  /// [performerType] /// The type of individual that is desired or required to perform or not
  /// perform the action.
  @JsonKey(name: 'performerType')
  final List<CodeableConcept>? performerType;

  /// [performerRole] /// The type of role or competency of an individual desired or required to
  /// perform or not perform the action.
  @JsonKey(name: 'performerRole')
  final CodeableConcept? performerRole;

  /// [performer] /// Indicates who or what is being asked to perform (or not perform) the ction.
  @JsonKey(name: 'performer')
  final Reference? performer;

  /// [performerLinkId] /// Id [identifier??] of the clause or question text related to the reason type
  /// or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  @JsonKey(name: 'performerLinkId')
  final List<FhirString>? performerLinkId;
  @JsonKey(name: '_performerLinkId')
  final List<Element>? performerLinkIdElement;

  /// [reasonCode] /// Rationale for the action to be performed or not performed. Describes why
  /// the action is permitted or prohibited.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies permitting or not
  /// permitting this action.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [reason] /// Describes why the action is to be performed or not performed in textual
  /// form.
  @JsonKey(name: 'reason')
  final List<FhirString>? reason;
  @JsonKey(name: '_reason')
  final List<Element>? reasonElement;

  /// [reasonLinkId] /// Id [identifier??] of the clause or question text related to the reason type
  /// or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  @JsonKey(name: 'reasonLinkId')
  final List<FhirString>? reasonLinkId;
  @JsonKey(name: '_reasonLinkId')
  final List<Element>? reasonLinkIdElement;

  /// [note] /// Comments made about the term action made by the requester, performer,
  /// subject or other participants.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [securityLabelNumber] /// Security labels that protects the action.
  @JsonKey(name: 'securityLabelNumber')
  final List<FhirUnsignedInt>? securityLabelNumber;
  @JsonKey(name: '_securityLabelNumber')
  final List<Element>? securityLabelNumberElement;
  factory ContractAction.fromJson(Map<String, dynamic> json) =>
      _$ContractActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractActionToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// The entity the action is performed or not performed on or for.
  @JsonKey(name: 'reference')
  final List<Reference> reference;

  /// [role] /// Role type of agent assigned roles in this Contract.
  @JsonKey(name: 'role')
  final CodeableConcept? role;
  factory ContractSubject.fromJson(Map<String, dynamic> json) =>
      _$ContractSubjectFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractSubjectToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Role of this Contract signer, e.g. notary, grantee.
  @JsonKey(name: 'type')
  final Coding type;

  /// [party] /// Party which is a signator to this Contract.
  @JsonKey(name: 'party')
  final Reference party;

  /// [signature] /// Legally binding Contract DSIG signature contents in Base64.
  @JsonKey(name: 'signature')
  final List<Signature> signature;
  factory ContractSigner.fromJson(Map<String, dynamic> json) =>
      _$ContractSignerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractSignerToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentAttachment] /// Human readable rendering of this Contract in a format and representation
  /// intended to enhance comprehension and ensure understandability.
  @JsonKey(name: 'contentAttachment')
  final Attachment? contentAttachment;

  /// [contentReference] /// Human readable rendering of this Contract in a format and representation
  /// intended to enhance comprehension and ensure understandability.
  @JsonKey(name: 'contentReference')
  final Reference? contentReference;
  factory ContractFriendly.fromJson(Map<String, dynamic> json) =>
      _$ContractFriendlyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractFriendlyToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentAttachment] /// Contract legal text in human renderable form.
  @JsonKey(name: 'contentAttachment')
  final Attachment? contentAttachment;

  /// [contentReference] /// Contract legal text in human renderable form.
  @JsonKey(name: 'contentReference')
  final Reference? contentReference;

  /// [legallyBindingAttachment] /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of truth"
  /// and which would be the basis for legal action related to enforcement of
  /// this Contract.
  @JsonKey(name: 'legallyBindingAttachment')
  final Attachment? legallyBindingAttachment;

  /// [legallyBindingReference] /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of truth"
  /// and which would be the basis for legal action related to enforcement of
  /// this Contract.
  @JsonKey(name: 'legallyBindingReference')
  final Reference? legallyBindingReference;
  factory ContractLegal.fromJson(Map<String, dynamic> json) =>
      _$ContractLegalFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractLegalToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentAttachment] /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  @JsonKey(name: 'contentAttachment')
  final Attachment? contentAttachment;

  /// [contentReference] /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  @JsonKey(name: 'contentReference')
  final Reference? contentReference;
  factory ContractRule.fromJson(Map<String, dynamic> json) =>
      _$ContractRuleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContractRuleToJson(this);

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
