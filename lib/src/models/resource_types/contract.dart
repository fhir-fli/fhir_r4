import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Contract]
/// Legally enforceable, formally recorded unilateral or bilateral
/// directive i.e., a policy or agreement.
class Contract extends DomainResource {
  /// Primary constructor for
  /// [Contract]

  const Contract({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.url,
    this.version,
    this.status,
    this.legalState,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.contentDerivative,
    this.issued,
    this.applies,
    this.expirationType,
    this.subject,
    this.authority,
    this.domain,
    this.site,
    this.name,
    this.title,
    this.subtitle,
    this.alias,
    this.author,
    this.scope,
    this.topicX,
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
    this.legallyBindingX,
  }) : super(
          resourceType: R4ResourceType.Contract,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Contract.fromJson(
    Map<String, dynamic> json,
  ) {
    return Contract(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<ContractResourceStatusCodes>(
        json,
        'status',
        ContractResourceStatusCodes.fromJson,
      ),
      legalState: JsonParser.parseObject<CodeableConcept>(
        json,
        'legalState',
        CodeableConcept.fromJson,
      ),
      instantiatesCanonical: JsonParser.parseObject<Reference>(
        json,
        'instantiatesCanonical',
        Reference.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitive<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      contentDerivative: JsonParser.parseObject<CodeableConcept>(
        json,
        'contentDerivative',
        CodeableConcept.fromJson,
      ),
      issued: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'issued',
        FhirDateTime.fromJson,
      ),
      applies: JsonParser.parseObject<Period>(
        json,
        'applies',
        Period.fromJson,
      ),
      expirationType: JsonParser.parseObject<CodeableConcept>(
        json,
        'expirationType',
        CodeableConcept.fromJson,
      ),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      authority: (json['authority'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      site: (json['site'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
        FhirString.fromJson,
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
      ),
      scope: JsonParser.parseObject<CodeableConcept>(
        json,
        'scope',
        CodeableConcept.fromJson,
      ),
      topicX: JsonParser.parsePolymorphic<TopicXContract>(json, {
        'topicCodeableConcept': CodeableConcept.fromJson,
        'topicReference': Reference.fromJson,
      }),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      subType: (json['subType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      contentDefinition: JsonParser.parseObject<ContractContentDefinition>(
        json,
        'contentDefinition',
        ContractContentDefinition.fromJson,
      ),
      term: (json['term'] as List<dynamic>?)
          ?.map<ContractTerm>(
            (v) => ContractTerm.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      signer: (json['signer'] as List<dynamic>?)
          ?.map<ContractSigner>(
            (v) => ContractSigner.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      friendly: (json['friendly'] as List<dynamic>?)
          ?.map<ContractFriendly>(
            (v) => ContractFriendly.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      legal: (json['legal'] as List<dynamic>?)
          ?.map<ContractLegal>(
            (v) => ContractLegal.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map<ContractRule>(
            (v) => ContractRule.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      legallyBindingX:
          JsonParser.parsePolymorphic<LegallyBindingXContract>(json, {
        'legallyBindingAttachment': Attachment.fromJson,
        'legallyBindingReference': Reference.fromJson,
      }),
    );
  }

  /// Deserialize [Contract]
  /// from a [String] or [YamlMap] object
  factory Contract.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Contract.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Contract.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Contract '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Contract]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Contract.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Contract.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Contract';

  /// [identifier]
  /// Unique identifier for this Contract or a derivative that references a
  /// Source Contract.
  final List<Identifier>? identifier;

  /// [url]
  /// Canonical identifier for this contract, represented as a URI (globally
  /// unique).
  final FhirUri? url;

  /// [version]
  /// An edition identifier used for business purposes to label business
  /// significant variants.
  final FhirString? version;

  /// [status]
  /// The status of the resource instance.
  final ContractResourceStatusCodes? status;

  /// [legalState]
  /// Legal states of the formation of a legal instrument, which is a
  /// formally executed written document that can be formally attributed to
  /// its author, records and formally expresses a legally enforceable act,
  /// process, or contractual duty, obligation, or right, and therefore
  /// evidences that act, process, or agreement.
  final CodeableConcept? legalState;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined Contract Definition that is adhered
  /// to in whole or part by this Contract.
  final Reference? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained definition that is adhered
  /// to in whole or in part by this Contract.
  final FhirUri? instantiatesUri;

  /// [contentDerivative]
  /// The minimal content derived from the basal information source at a
  /// specific stage in its lifecycle.
  final CodeableConcept? contentDerivative;

  /// [issued]
  /// When this Contract was issued.
  final FhirDateTime? issued;

  /// [applies]
  /// Relevant time or time-period when this Contract is applicable.
  final Period? applies;

  /// [expirationType]
  /// Event resulting in discontinuation or termination of this Contract
  /// instance by one or more parties to the contract.
  final CodeableConcept? expirationType;

  /// [subject]
  /// The target entity impacted by or of interest to parties to the
  /// agreement.
  final List<Reference>? subject;

  /// [authority]
  /// A formally or informally recognized grouping of people, principals,
  /// organizations, or jurisdictions formed for the purpose of achieving
  /// some form of collective action such as the promulgation, administration
  /// and enforcement of contracts and policies.
  final List<Reference>? authority;

  /// [domain]
  /// Recognized governance framework or system operating with a
  /// circumscribed scope in accordance with specified principles, policies,
  /// processes or procedures for managing rights, actions, or behaviors of
  /// parties or principals relative to resources.
  final List<Reference>? domain;

  /// [site]
  /// Sites in which the contract is complied with, exercised, or in force.
  final List<Reference>? site;

  /// [name]
  /// A natural language name identifying this Contract definition,
  /// derivative, or instance in any legal state. Provides additional
  /// information about its content. This name should be usable as an
  /// identifier for the module by machine processing applications such as
  /// code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for this Contract definition,
  /// derivative, or instance in any legal state.t giving additional
  /// information about its content.
  final FhirString? title;

  /// [subtitle]
  /// An explanatory or alternate user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving
  /// additional information about its content.
  final FhirString? subtitle;

  /// [alias]
  /// Alternative representation of the title for this Contract definition,
  /// derivative, or instance in any legal state., e.g., a domain specific
  /// contract number related to legislation.
  final List<FhirString>? alias;

  /// [author]
  /// The individual or organization that authored the Contract definition,
  /// derivative, or instance in any legal state.
  final Reference? author;

  /// [scope]
  /// A selector of legal concerns for this Contract definition, derivative,
  /// or instance in any legal state.
  final CodeableConcept? scope;

  /// [topicX]
  /// Narrows the range of legal concerns to focus on the achievement of
  /// specific contractual objectives.
  final TopicXContract? topicX;

  /// [type]
  /// A high-level category for the legal instrument, whether constructed as
  /// a Contract definition, derivative, or instance in any legal state.
  /// Provides additional information about its content within the context of
  /// the Contract's scope to distinguish the kinds of systems that would be
  /// interested in the contract.
  final CodeableConcept? type;

  /// [subType]
  /// Sub-category for the Contract that distinguishes the kinds of systems
  /// that would be interested in the Contract within the context of the
  /// Contract's scope.
  final List<CodeableConcept>? subType;

  /// [contentDefinition]
  /// Precusory content developed with a focus and intent of supporting the
  /// formation a Contract instance, which may be associated with and
  /// transformable into a Contract.
  final ContractContentDefinition? contentDefinition;

  /// [term]
  /// One or more Contract Provisions, which may be related and conveyed as a
  /// group, and may contain nested groups.
  final List<ContractTerm>? term;

  /// [supportingInfo]
  /// Information that may be needed by/relevant to the performer in their
  /// execution of this term action.
  final List<Reference>? supportingInfo;

  /// [relevantHistory]
  /// Links to Provenance records for past versions of this Contract
  /// definition, derivative, or instance, which identify key state
  /// transitions or updates that are likely to be relevant to a user looking
  /// at the current version of the Contract. The Provence.entity indicates
  /// the target that was changed in the update.
  /// http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  final List<Reference>? relevantHistory;

  /// [signer]
  /// Parties with legal standing in the Contract, including the principal
  /// parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  /// facilitate the execution of the contract such as a notary or witness.
  final List<ContractSigner>? signer;

  /// [friendly]
  /// The "patient friendly language" versionof the Contract in whole or in
  /// parts. "Patient friendly language" means the representation of the
  /// Contract and Contract Provisions in a manner that is readily accessible
  /// and understandable by a layperson in accordance with best practices for
  /// communication styles that ensure that those agreeing to or signing the
  /// Contract understand the roles, actions, obligations, responsibilities,
  /// and implication of the agreement.
  final List<ContractFriendly>? friendly;

  /// [legal]
  /// List of Legal expressions or representations of this Contract.
  final List<ContractLegal>? legal;

  /// [rule]
  /// List of Computable Policy Rule Language Representations of this
  /// Contract.
  final List<ContractRule>? rule;

  /// [legallyBindingX]
  /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of
  /// truth" and which would be the basis for legal action related to
  /// enforcement of this Contract.
  final LegallyBindingXContract? legallyBindingX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (url != null) {
      addField('url', url);
    }

    if (version != null) {
      addField('version', version);
    }

    if (status != null) {
      addField('status', status);
    }

    if (legalState != null) {
      json['legalState'] = legalState!.toJson();
    }

    if (instantiatesCanonical != null) {
      json['instantiatesCanonical'] = instantiatesCanonical!.toJson();
    }

    if (instantiatesUri != null) {
      addField('instantiatesUri', instantiatesUri);
    }

    if (contentDerivative != null) {
      json['contentDerivative'] = contentDerivative!.toJson();
    }

    if (issued != null) {
      addField('issued', issued);
    }

    if (applies != null) {
      json['applies'] = applies!.toJson();
    }

    if (expirationType != null) {
      json['expirationType'] = expirationType!.toJson();
    }

    if (subject != null && subject!.isNotEmpty) {
      json['subject'] = subject!.map((e) => e.toJson()).toList();
    }

    if (authority != null && authority!.isNotEmpty) {
      json['authority'] = authority!.map((e) => e.toJson()).toList();
    }

    if (domain != null && domain!.isNotEmpty) {
      json['domain'] = domain!.map((e) => e.toJson()).toList();
    }

    if (site != null && site!.isNotEmpty) {
      json['site'] = site!.map((e) => e.toJson()).toList();
    }

    if (name != null) {
      addField('name', name);
    }

    if (title != null) {
      addField('title', title);
    }

    if (subtitle != null) {
      addField('subtitle', subtitle);
    }

    if (alias != null && alias!.isNotEmpty) {
      final fieldJson0 = alias!.map((e) => e.toJson()).toList();
      json['alias'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_alias'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (author != null) {
      json['author'] = author!.toJson();
    }

    if (scope != null) {
      json['scope'] = scope!.toJson();
    }

    if (topicX != null) {
      json['topic${topicX!.fhirType.capitalize()}'] = topicX!.toJson();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (subType != null && subType!.isNotEmpty) {
      json['subType'] = subType!.map((e) => e.toJson()).toList();
    }

    if (contentDefinition != null) {
      json['contentDefinition'] = contentDefinition!.toJson();
    }

    if (term != null && term!.isNotEmpty) {
      json['term'] = term!.map((e) => e.toJson()).toList();
    }

    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] = supportingInfo!.map((e) => e.toJson()).toList();
    }

    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      json['relevantHistory'] =
          relevantHistory!.map((e) => e.toJson()).toList();
    }

    if (signer != null && signer!.isNotEmpty) {
      json['signer'] = signer!.map((e) => e.toJson()).toList();
    }

    if (friendly != null && friendly!.isNotEmpty) {
      json['friendly'] = friendly!.map((e) => e.toJson()).toList();
    }

    if (legal != null && legal!.isNotEmpty) {
      json['legal'] = legal!.map((e) => e.toJson()).toList();
    }

    if (rule != null && rule!.isNotEmpty) {
      json['rule'] = rule!.map((e) => e.toJson()).toList();
    }

    if (legallyBindingX != null) {
      json['legallyBinding${legallyBindingX!.fhirType.capitalize()}'] =
          legallyBindingX!.toJson();
    }

    return json;
  }

  @override
  Contract clone() => throw UnimplementedError();
  @override
  Contract copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirUri? url,
    FhirString? version,
    ContractResourceStatusCodes? status,
    CodeableConcept? legalState,
    Reference? instantiatesCanonical,
    FhirUri? instantiatesUri,
    CodeableConcept? contentDerivative,
    FhirDateTime? issued,
    Period? applies,
    CodeableConcept? expirationType,
    List<Reference>? subject,
    List<Reference>? authority,
    List<Reference>? domain,
    List<Reference>? site,
    FhirString? name,
    FhirString? title,
    FhirString? subtitle,
    List<FhirString>? alias,
    Reference? author,
    CodeableConcept? scope,
    TopicXContract? topicX,
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
    LegallyBindingXContract? legallyBindingX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Contract(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      url: url ?? this.url,
      version: version ?? this.version,
      status: status ?? this.status,
      legalState: legalState ?? this.legalState,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      contentDerivative: contentDerivative ?? this.contentDerivative,
      issued: issued ?? this.issued,
      applies: applies ?? this.applies,
      expirationType: expirationType ?? this.expirationType,
      subject: subject ?? this.subject,
      authority: authority ?? this.authority,
      domain: domain ?? this.domain,
      site: site ?? this.site,
      name: name ?? this.name,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      alias: alias ?? this.alias,
      author: author ?? this.author,
      scope: scope ?? this.scope,
      topicX: topicX ?? this.topicX,
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
      legallyBindingX: legallyBindingX ?? this.legallyBindingX,
    );
  }
}

/// [ContractContentDefinition]
/// Precusory content developed with a focus and intent of supporting the
/// formation a Contract instance, which may be associated with and
/// transformable into a Contract.
class ContractContentDefinition extends BackboneElement {
  /// Primary constructor for
  /// [ContractContentDefinition]

  const ContractContentDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.subType,
    this.publisher,
    this.publicationDate,
    required this.publicationStatus,
    this.copyright,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractContentDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractContentDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      subType: JsonParser.parseObject<CodeableConcept>(
        json,
        'subType',
        CodeableConcept.fromJson,
      ),
      publisher: JsonParser.parseObject<Reference>(
        json,
        'publisher',
        Reference.fromJson,
      ),
      publicationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'publicationDate',
        FhirDateTime.fromJson,
      ),
      publicationStatus:
          JsonParser.parsePrimitive<ContractResourcePublicationStatusCodes>(
        json,
        'publicationStatus',
        ContractResourcePublicationStatusCodes.fromJson,
      )!,
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [ContractContentDefinition]
  /// from a [String] or [YamlMap] object
  factory ContractContentDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractContentDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractContentDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractContentDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractContentDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractContentDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractContentDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractContentDefinition';

  /// [type]
  /// Precusory content structure and use, i.e., a boilerplate, template,
  /// application for a contract such as an insurance policy or benefits
  /// under a program, e.g., workers compensation.
  final CodeableConcept type;

  /// [subType]
  /// Detailed Precusory content type.
  final CodeableConcept? subType;

  /// [publisher]
  /// The individual or organization that published the Contract precursor
  /// content.
  final Reference? publisher;

  /// [publicationDate]
  /// The date (and optionally time) when the contract was published. The
  /// date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the contract changes.
  final FhirDateTime? publicationDate;

  /// [publicationStatus]
  /// amended | appended | cancelled | disputed | entered-in-error |
  /// executable | executed | negotiable | offered | policy | rejected |
  /// renewed | revoked | resolved | terminated.
  final ContractResourcePublicationStatusCodes publicationStatus;

  /// [copyright]
  /// A copyright statement relating to Contract precursor content. Copyright
  /// statements are generally legal restrictions on the use and publishing
  /// of the Contract precursor content.
  final FhirMarkdown? copyright;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (subType != null) {
      json['subType'] = subType!.toJson();
    }

    if (publisher != null) {
      json['publisher'] = publisher!.toJson();
    }

    if (publicationDate != null) {
      addField('publicationDate', publicationDate);
    }

    addField('publicationStatus', publicationStatus);
    if (copyright != null) {
      addField('copyright', copyright);
    }

    return json;
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
    ContractResourcePublicationStatusCodes? publicationStatus,
    FhirMarkdown? copyright,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractContentDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      publisher: publisher ?? this.publisher,
      publicationDate: publicationDate ?? this.publicationDate,
      publicationStatus: publicationStatus ?? this.publicationStatus,
      copyright: copyright ?? this.copyright,
    );
  }
}

/// [ContractTerm]
/// One or more Contract Provisions, which may be related and conveyed as a
/// group, and may contain nested groups.
class ContractTerm extends BackboneElement {
  /// Primary constructor for
  /// [ContractTerm]

  const ContractTerm({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.issued,
    this.applies,
    this.topicX,
    this.type,
    this.subType,
    this.text,
    this.securityLabel,
    required this.offer,
    this.asset,
    this.action,
    this.group,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractTerm.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractTerm(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      issued: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'issued',
        FhirDateTime.fromJson,
      ),
      applies: JsonParser.parseObject<Period>(
        json,
        'applies',
        Period.fromJson,
      ),
      topicX: JsonParser.parsePolymorphic<TopicXContractTerm>(json, {
        'topicCodeableConcept': CodeableConcept.fromJson,
        'topicReference': Reference.fromJson,
      }),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      subType: JsonParser.parseObject<CodeableConcept>(
        json,
        'subType',
        CodeableConcept.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<ContractSecurityLabel>(
            (v) => ContractSecurityLabel.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      offer: JsonParser.parseObject<ContractOffer>(
        json,
        'offer',
        ContractOffer.fromJson,
      )!,
      asset: (json['asset'] as List<dynamic>?)
          ?.map<ContractAsset>(
            (v) => ContractAsset.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<ContractAction>(
            (v) => ContractAction.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map<ContractTerm>(
            (v) => ContractTerm.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContractTerm]
  /// from a [String] or [YamlMap] object
  factory ContractTerm.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractTerm.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractTerm.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractTerm '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractTerm]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractTerm.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractTerm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractTerm';

  /// [identifier]
  /// Unique identifier for this particular Contract Provision.
  final Identifier? identifier;

  /// [issued]
  /// When this Contract Provision was issued.
  final FhirDateTime? issued;

  /// [applies]
  /// Relevant time or time-period when this Contract Provision is
  /// applicable.
  final Period? applies;

  /// [topicX]
  /// The entity that the term applies to.
  final TopicXContractTerm? topicX;

  /// [type]
  /// A legal clause or condition contained within a contract that requires
  /// one or both parties to perform a particular requirement by some
  /// specified time or prevents one or both parties from performing a
  /// particular requirement by some specified time.
  final CodeableConcept? type;

  /// [subType]
  /// A specialized legal clause or condition based on overarching contract
  /// type.
  final CodeableConcept? subType;

  /// [text]
  /// Statement of a provision in a policy or a contract.
  final FhirString? text;

  /// [securityLabel]
  /// Security labels that protect the handling of information about the term
  /// and its elements, which may be specifically identified..
  final List<ContractSecurityLabel>? securityLabel;

  /// [offer]
  /// The matter of concern in the context of this provision of the agrement.
  final ContractOffer offer;

  /// [asset]
  /// Contract Term Asset List.
  final List<ContractAsset>? asset;

  /// [action]
  /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  final List<ContractAction>? action;

  /// [group]
  /// Nested group of Contract Provisions.
  final List<ContractTerm>? group;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (issued != null) {
      addField('issued', issued);
    }

    if (applies != null) {
      json['applies'] = applies!.toJson();
    }

    if (topicX != null) {
      json['topic${topicX!.fhirType.capitalize()}'] = topicX!.toJson();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (subType != null) {
      json['subType'] = subType!.toJson();
    }

    if (text != null) {
      addField('text', text);
    }

    if (securityLabel != null && securityLabel!.isNotEmpty) {
      json['securityLabel'] = securityLabel!.map((e) => e.toJson()).toList();
    }

    json['offer'] = offer.toJson();

    if (asset != null && asset!.isNotEmpty) {
      json['asset'] = asset!.map((e) => e.toJson()).toList();
    }

    if (action != null && action!.isNotEmpty) {
      json['action'] = action!.map((e) => e.toJson()).toList();
    }

    if (group != null && group!.isNotEmpty) {
      json['group'] = group!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Period? applies,
    TopicXContractTerm? topicX,
    CodeableConcept? type,
    CodeableConcept? subType,
    FhirString? text,
    List<ContractSecurityLabel>? securityLabel,
    ContractOffer? offer,
    List<ContractAsset>? asset,
    List<ContractAction>? action,
    List<ContractTerm>? group,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractTerm(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      issued: issued ?? this.issued,
      applies: applies ?? this.applies,
      topicX: topicX ?? this.topicX,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      text: text ?? this.text,
      securityLabel: securityLabel ?? this.securityLabel,
      offer: offer ?? this.offer,
      asset: asset ?? this.asset,
      action: action ?? this.action,
      group: group ?? this.group,
    );
  }
}

/// [ContractSecurityLabel]
/// Security labels that protect the handling of information about the term
/// and its elements, which may be specifically identified..
class ContractSecurityLabel extends BackboneElement {
  /// Primary constructor for
  /// [ContractSecurityLabel]

  const ContractSecurityLabel({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    required this.classification,
    this.category,
    this.control,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSecurityLabel.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractSecurityLabel(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      number: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'number',
        FhirUnsignedInt.fromJson,
      ),
      classification: JsonParser.parseObject<Coding>(
        json,
        'classification',
        Coding.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      control: (json['control'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContractSecurityLabel]
  /// from a [String] or [YamlMap] object
  factory ContractSecurityLabel.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractSecurityLabel.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractSecurityLabel.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractSecurityLabel '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractSecurityLabel]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSecurityLabel.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractSecurityLabel.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractSecurityLabel';

  /// [number]
  /// Number used to link this term or term element to the applicable
  /// Security Label.
  final List<FhirUnsignedInt>? number;

  /// [classification]
  /// Security label privacy tag that species the level of confidentiality
  /// protection required for this term and/or term elements.
  final Coding classification;

  /// [category]
  /// Security label privacy tag that species the applicable privacy and
  /// security policies governing this term and/or term elements.
  final List<Coding>? category;

  /// [control]
  /// Security label privacy tag that species the manner in which term and/or
  /// term elements are to be protected.
  final List<Coding>? control;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (number != null && number!.isNotEmpty) {
      final fieldJson0 = number!.map((e) => e.toJson()).toList();
      json['number'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_number'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    json['classification'] = classification.toJson();

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (control != null && control!.isNotEmpty) {
      json['control'] = control!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ContractSecurityLabel clone() => throw UnimplementedError();
  @override
  ContractSecurityLabel copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirUnsignedInt>? number,
    Coding? classification,
    List<Coding>? category,
    List<Coding>? control,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractSecurityLabel(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      classification: classification ?? this.classification,
      category: category ?? this.category,
      control: control ?? this.control,
    );
  }
}

/// [ContractOffer]
/// The matter of concern in the context of this provision of the agrement.
class ContractOffer extends BackboneElement {
  /// Primary constructor for
  /// [ContractOffer]

  const ContractOffer({
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
    this.linkId,
    this.securityLabelNumber,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractOffer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractOffer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      party: (json['party'] as List<dynamic>?)
          ?.map<ContractParty>(
            (v) => ContractParty.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      topic: JsonParser.parseObject<Reference>(
        json,
        'topic',
        Reference.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      decision: JsonParser.parseObject<CodeableConcept>(
        json,
        'decision',
        CodeableConcept.fromJson,
      ),
      decisionMode: (json['decisionMode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<ContractAnswer>(
            (v) => ContractAnswer.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
      linkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      securityLabelNumber: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'securityLabelNumber',
        FhirUnsignedInt.fromJson,
      ),
    );
  }

  /// Deserialize [ContractOffer]
  /// from a [String] or [YamlMap] object
  factory ContractOffer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractOffer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractOffer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractOffer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractOffer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractOffer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractOffer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractOffer';

  /// [identifier]
  /// Unique identifier for this particular Contract Provision.
  final List<Identifier>? identifier;

  /// [party]
  /// Offer Recipient.
  final List<ContractParty>? party;

  /// [topic]
  /// The owner of an asset has the residual control rights over the asset:
  /// the right to decide all usages of the asset in any way not inconsistent
  /// with a prior contract, custom, or law (Hart, 1995, p. 30).
  final Reference? topic;

  /// [type]
  /// Type of Contract Provision such as specific requirements, purposes for
  /// actions, obligations, prohibitions, e.g. life time maximum benefit.
  final CodeableConcept? type;

  /// [decision]
  /// Type of choice made by accepting party with respect to an offer made by
  /// an offeror/ grantee.
  final CodeableConcept? decision;

  /// [decisionMode]
  /// How the decision about a Contract was conveyed.
  final List<CodeableConcept>? decisionMode;

  /// [answer]
  /// Response to offer text.
  final List<ContractAnswer>? answer;

  /// [text]
  /// Human readable form of this Contract Offer.
  final FhirString? text;

  /// [linkId]
  /// The id of the clause or question text of the offer in the referenced
  /// questionnaire/response.
  final List<FhirString>? linkId;

  /// [securityLabelNumber]
  /// Security labels that protects the offer.
  final List<FhirUnsignedInt>? securityLabelNumber;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (party != null && party!.isNotEmpty) {
      json['party'] = party!.map((e) => e.toJson()).toList();
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
      json['decisionMode'] = decisionMode!.map((e) => e.toJson()).toList();
    }

    if (answer != null && answer!.isNotEmpty) {
      json['answer'] = answer!.map((e) => e.toJson()).toList();
    }

    if (text != null) {
      addField('text', text);
    }

    if (linkId != null && linkId!.isNotEmpty) {
      final fieldJson0 = linkId!.map((e) => e.toJson()).toList();
      json['linkId'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_linkId'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      final fieldJson1 = securityLabelNumber!.map((e) => e.toJson()).toList();
      json['securityLabelNumber'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_securityLabelNumber'] =
            fieldJson1.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    List<FhirString>? linkId,
    List<FhirUnsignedInt>? securityLabelNumber,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      linkId: linkId ?? this.linkId,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
    );
  }
}

/// [ContractParty]
/// Offer Recipient.
class ContractParty extends BackboneElement {
  /// Primary constructor for
  /// [ContractParty]

  const ContractParty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    required this.role,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractParty.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractParty(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      )!,
    );
  }

  /// Deserialize [ContractParty]
  /// from a [String] or [YamlMap] object
  factory ContractParty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractParty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractParty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractParty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractParty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractParty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractParty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractParty';

  /// [reference]
  /// Participant in the offer.
  final List<Reference> reference;

  /// [role]
  /// How the party participates in the offer.
  final CodeableConcept role;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (reference.isNotEmpty) {
      json['reference'] = reference.map((e) => e.toJson()).toList();
    }

    json['role'] = role.toJson();

    return json;
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
  }) {
    return ContractParty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
    );
  }
}

/// [ContractAnswer]
/// Response to offer text.
class ContractAnswer extends BackboneElement {
  /// Primary constructor for
  /// [ContractAnswer]

  const ContractAnswer({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractAnswer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXContractAnswer>(json, {
        'valueBoolean': FhirBoolean.fromJson,
        'valueDecimal': FhirDecimal.fromJson,
        'valueInteger': FhirInteger.fromJson,
        'valueDate': FhirDate.fromJson,
        'valueDateTime': FhirDateTime.fromJson,
        'valueTime': FhirTime.fromJson,
        'valueString': FhirString.fromJson,
        'valueUri': FhirUri.fromJson,
        'valueAttachment': Attachment.fromJson,
        'valueCoding': Coding.fromJson,
        'valueQuantity': Quantity.fromJson,
        'valueReference': Reference.fromJson,
      })!,
    );
  }

  /// Deserialize [ContractAnswer]
  /// from a [String] or [YamlMap] object
  factory ContractAnswer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractAnswer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractAnswer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractAnswer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractAnswer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractAnswer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractAnswer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractAnswer';

  /// [valueX]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final ValueXContractAnswer valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('value${valueX.fhirType.capitalize()}', valueX);
    return json;
  }

  @override
  ContractAnswer clone() => throw UnimplementedError();
  @override
  ContractAnswer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXContractAnswer? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractAnswer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ?? this.valueX,
    );
  }
}

/// [ContractAsset]
/// Contract Term Asset List.
class ContractAsset extends BackboneElement {
  /// Primary constructor for
  /// [ContractAsset]

  const ContractAsset({
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
    this.periodType,
    this.period,
    this.usePeriod,
    this.text,
    this.linkId,
    this.answer,
    this.securityLabelNumber,
    this.valuedItem,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAsset.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractAsset(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      scope: JsonParser.parseObject<CodeableConcept>(
        json,
        'scope',
        CodeableConcept.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      typeReference: (json['typeReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relationship: JsonParser.parseObject<Coding>(
        json,
        'relationship',
        Coding.fromJson,
      ),
      context: (json['context'] as List<dynamic>?)
          ?.map<ContractContext>(
            (v) => ContractContext.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      condition: JsonParser.parsePrimitive<FhirString>(
        json,
        'condition',
        FhirString.fromJson,
      ),
      periodType: (json['periodType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      period: (json['period'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      usePeriod: (json['usePeriod'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
      linkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<ContractAnswer>(
            (v) => ContractAnswer.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      securityLabelNumber: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'securityLabelNumber',
        FhirUnsignedInt.fromJson,
      ),
      valuedItem: (json['valuedItem'] as List<dynamic>?)
          ?.map<ContractValuedItem>(
            (v) => ContractValuedItem.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContractAsset]
  /// from a [String] or [YamlMap] object
  factory ContractAsset.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractAsset.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractAsset.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractAsset '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractAsset]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractAsset.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractAsset.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractAsset';

  /// [scope]
  /// Differentiates the kind of the asset .
  final CodeableConcept? scope;

  /// [type]
  /// Target entity type about which the term may be concerned.
  final List<CodeableConcept>? type;

  /// [typeReference]
  /// Associated entities.
  final List<Reference>? typeReference;

  /// [subtype]
  /// May be a subtype or part of an offered asset.
  final List<CodeableConcept>? subtype;

  /// [relationship]
  /// Specifies the applicability of the term to an asset resource instance,
  /// and instances it refers to orinstances that refer to it, and/or are
  /// owned by the offeree.
  final Coding? relationship;

  /// [context]
  /// Circumstance of the asset.
  final List<ContractContext>? context;

  /// [condition]
  /// Description of the quality and completeness of the asset that imay be a
  /// factor in its valuation.
  final FhirString? condition;

  /// [periodType]
  /// Type of Asset availability for use or ownership.
  final List<CodeableConcept>? periodType;

  /// [period]
  /// Asset relevant contractual time period.
  final List<Period>? period;

  /// [usePeriod]
  /// Time period of asset use.
  final List<Period>? usePeriod;

  /// [text]
  /// Clause or question text (Prose Object) concerning the asset in a linked
  /// form, such as a QuestionnaireResponse used in the formation of the
  /// contract.
  final FhirString? text;

  /// [linkId]
  /// Id [identifier??] of the clause or question text about the asset in the
  /// referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;

  /// [answer]
  /// Response to assets.
  final List<ContractAnswer>? answer;

  /// [securityLabelNumber]
  /// Security labels that protects the asset.
  final List<FhirUnsignedInt>? securityLabelNumber;

  /// [valuedItem]
  /// Contract Valued Item List.
  final List<ContractValuedItem>? valuedItem;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (scope != null) {
      json['scope'] = scope!.toJson();
    }

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (typeReference != null && typeReference!.isNotEmpty) {
      json['typeReference'] = typeReference!.map((e) => e.toJson()).toList();
    }

    if (subtype != null && subtype!.isNotEmpty) {
      json['subtype'] = subtype!.map((e) => e.toJson()).toList();
    }

    if (relationship != null) {
      json['relationship'] = relationship!.toJson();
    }

    if (context != null && context!.isNotEmpty) {
      json['context'] = context!.map((e) => e.toJson()).toList();
    }

    if (condition != null) {
      addField('condition', condition);
    }

    if (periodType != null && periodType!.isNotEmpty) {
      json['periodType'] = periodType!.map((e) => e.toJson()).toList();
    }

    if (period != null && period!.isNotEmpty) {
      json['period'] = period!.map((e) => e.toJson()).toList();
    }

    if (usePeriod != null && usePeriod!.isNotEmpty) {
      json['usePeriod'] = usePeriod!.map((e) => e.toJson()).toList();
    }

    if (text != null) {
      addField('text', text);
    }

    if (linkId != null && linkId!.isNotEmpty) {
      final fieldJson0 = linkId!.map((e) => e.toJson()).toList();
      json['linkId'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_linkId'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (answer != null && answer!.isNotEmpty) {
      json['answer'] = answer!.map((e) => e.toJson()).toList();
    }

    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      final fieldJson1 = securityLabelNumber!.map((e) => e.toJson()).toList();
      json['securityLabelNumber'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_securityLabelNumber'] =
            fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (valuedItem != null && valuedItem!.isNotEmpty) {
      json['valuedItem'] = valuedItem!.map((e) => e.toJson()).toList();
    }

    return json;
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
    List<CodeableConcept>? periodType,
    List<Period>? period,
    List<Period>? usePeriod,
    FhirString? text,
    List<FhirString>? linkId,
    List<ContractAnswer>? answer,
    List<FhirUnsignedInt>? securityLabelNumber,
    List<ContractValuedItem>? valuedItem,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      periodType: periodType ?? this.periodType,
      period: period ?? this.period,
      usePeriod: usePeriod ?? this.usePeriod,
      text: text ?? this.text,
      linkId: linkId ?? this.linkId,
      answer: answer ?? this.answer,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      valuedItem: valuedItem ?? this.valuedItem,
    );
  }
}

/// [ContractContext]
/// Circumstance of the asset.
class ContractContext extends BackboneElement {
  /// Primary constructor for
  /// [ContractContext]

  const ContractContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.code,
    this.text,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractContext.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractContext(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ContractContext]
  /// from a [String] or [YamlMap] object
  factory ContractContext.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractContext.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractContext.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractContext '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractContext]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractContext.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractContext';

  /// [reference]
  /// Asset context reference may include the creator, custodian, or owning
  /// Person or Organization (e.g., bank, repository), location held, e.g.,
  /// building, jurisdiction.
  final Reference? reference;

  /// [code]
  /// Coded representation of the context generally or of the Referenced
  /// entity, such as the asset holder type or location.
  final List<CodeableConcept>? code;

  /// [text]
  /// Context description.
  final FhirString? text;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (reference != null) {
      json['reference'] = reference!.toJson();
    }

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (text != null) {
      addField('text', text);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      code: code ?? this.code,
      text: text ?? this.text,
    );
  }
}

/// [ContractValuedItem]
/// Contract Valued Item List.
class ContractValuedItem extends BackboneElement {
  /// Primary constructor for
  /// [ContractValuedItem]

  const ContractValuedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.entityX,
    this.identifier,
    this.effectiveTime,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.points,
    this.net,
    this.payment,
    this.paymentDate,
    this.responsible,
    this.recipient,
    this.linkId,
    this.securityLabelNumber,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractValuedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractValuedItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      entityX: JsonParser.parsePolymorphic<EntityXContractValuedItem>(json, {
        'entityCodeableConcept': CodeableConcept.fromJson,
        'entityReference': Reference.fromJson,
      }),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      effectiveTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'effectiveTime',
        FhirDateTime.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      points: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'points',
        FhirDecimal.fromJson,
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
      ),
      payment: JsonParser.parsePrimitive<FhirString>(
        json,
        'payment',
        FhirString.fromJson,
      ),
      paymentDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'paymentDate',
        FhirDateTime.fromJson,
      ),
      responsible: JsonParser.parseObject<Reference>(
        json,
        'responsible',
        Reference.fromJson,
      ),
      recipient: JsonParser.parseObject<Reference>(
        json,
        'recipient',
        Reference.fromJson,
      ),
      linkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      securityLabelNumber: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'securityLabelNumber',
        FhirUnsignedInt.fromJson,
      ),
    );
  }

  /// Deserialize [ContractValuedItem]
  /// from a [String] or [YamlMap] object
  factory ContractValuedItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractValuedItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractValuedItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractValuedItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractValuedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractValuedItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractValuedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractValuedItem';

  /// [entityX]
  /// Specific type of Contract Valued Item that may be priced.
  final EntityXContractValuedItem? entityX;

  /// [identifier]
  /// Identifies a Contract Valued Item instance.
  final Identifier? identifier;

  /// [effectiveTime]
  /// Indicates the time during which this Contract ValuedItem information is
  /// effective.
  final FhirDateTime? effectiveTime;

  /// [quantity]
  /// Specifies the units by which the Contract Valued Item is measured or
  /// counted, and quantifies the countable or measurable Contract Valued
  /// Item instances.
  final Quantity? quantity;

  /// [unitPrice]
  /// A Contract Valued Item unit valuation measure.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of the Contract Valued Item delivered. The concept of a
  /// Factor allows for a discount or surcharge multiplier to be applied to a
  /// monetary amount.
  final FhirDecimal? factor;

  /// [points]
  /// An amount that expresses the weighting (based on difficulty, cost
  /// and/or resource intensiveness) associated with the Contract Valued Item
  /// delivered. The concept of Points allows for assignment of point values
  /// for a Contract Valued Item, such that a monetary amount can be assigned
  /// to each point.
  final FhirDecimal? points;

  /// [net]
  /// Expresses the product of the Contract Valued Item unitQuantity and the
  /// unitPriceAmt. For example, the formula: unit Quantity * unit Price
  /// (Cost per Point) * factor Number * points = net Amount. Quantity,
  /// factor and points are assumed to be 1 if not supplied.
  final Money? net;

  /// [payment]
  /// Terms of valuation.
  final FhirString? payment;

  /// [paymentDate]
  /// When payment is due.
  final FhirDateTime? paymentDate;

  /// [responsible]
  /// Who will make payment.
  final Reference? responsible;

  /// [recipient]
  /// Who will receive payment.
  final Reference? recipient;

  /// [linkId]
  /// Id of the clause or question text related to the context of this
  /// valuedItem in the referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;

  /// [securityLabelNumber]
  /// A set of security labels that define which terms are controlled by this
  /// condition.
  final List<FhirUnsignedInt>? securityLabelNumber;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (entityX != null) {
      json['entity${entityX!.fhirType.capitalize()}'] = entityX!.toJson();
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (effectiveTime != null) {
      addField('effectiveTime', effectiveTime);
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }

    if (factor != null) {
      addField('factor', factor);
    }

    if (points != null) {
      addField('points', points);
    }

    if (net != null) {
      json['net'] = net!.toJson();
    }

    if (payment != null) {
      addField('payment', payment);
    }

    if (paymentDate != null) {
      addField('paymentDate', paymentDate);
    }

    if (responsible != null) {
      json['responsible'] = responsible!.toJson();
    }

    if (recipient != null) {
      json['recipient'] = recipient!.toJson();
    }

    if (linkId != null && linkId!.isNotEmpty) {
      final fieldJson0 = linkId!.map((e) => e.toJson()).toList();
      json['linkId'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_linkId'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      final fieldJson1 = securityLabelNumber!.map((e) => e.toJson()).toList();
      json['securityLabelNumber'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_securityLabelNumber'] =
            fieldJson1.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ContractValuedItem clone() => throw UnimplementedError();
  @override
  ContractValuedItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EntityXContractValuedItem? entityX,
    Identifier? identifier,
    FhirDateTime? effectiveTime,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    FhirDecimal? points,
    Money? net,
    FhirString? payment,
    FhirDateTime? paymentDate,
    Reference? responsible,
    Reference? recipient,
    List<FhirString>? linkId,
    List<FhirUnsignedInt>? securityLabelNumber,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractValuedItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      entityX: entityX ?? this.entityX,
      identifier: identifier ?? this.identifier,
      effectiveTime: effectiveTime ?? this.effectiveTime,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      points: points ?? this.points,
      net: net ?? this.net,
      payment: payment ?? this.payment,
      paymentDate: paymentDate ?? this.paymentDate,
      responsible: responsible ?? this.responsible,
      recipient: recipient ?? this.recipient,
      linkId: linkId ?? this.linkId,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
    );
  }
}

/// [ContractAction]
/// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ContractAction extends BackboneElement {
  /// Primary constructor for
  /// [ContractAction]

  const ContractAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.doNotPerform,
    required this.type,
    this.subject,
    required this.intent,
    this.linkId,
    required this.status,
    this.context,
    this.contextLinkId,
    this.occurrenceX,
    this.requester,
    this.requesterLinkId,
    this.performerType,
    this.performerRole,
    this.performer,
    this.performerLinkId,
    this.reasonCode,
    this.reasonReference,
    this.reason,
    this.reasonLinkId,
    this.note,
    this.securityLabelNumber,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractAction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      subject: (json['subject'] as List<dynamic>?)
          ?.map<ContractSubject>(
            (v) => ContractSubject.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      intent: JsonParser.parseObject<CodeableConcept>(
        json,
        'intent',
        CodeableConcept.fromJson,
      )!,
      linkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      )!,
      context: JsonParser.parseObject<Reference>(
        json,
        'context',
        Reference.fromJson,
      ),
      contextLinkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'contextLinkId',
        FhirString.fromJson,
      ),
      occurrenceX:
          JsonParser.parsePolymorphic<OccurrenceXContractAction>(json, {
        'occurrenceDateTime': FhirDateTime.fromJson,
        'occurrencePeriod': Period.fromJson,
        'occurrenceTiming': Timing.fromJson,
      }),
      requester: (json['requester'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      requesterLinkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'requesterLinkId',
        FhirString.fromJson,
      ),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      performerRole: JsonParser.parseObject<CodeableConcept>(
        json,
        'performerRole',
        CodeableConcept.fromJson,
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
      ),
      performerLinkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'performerLinkId',
        FhirString.fromJson,
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reason: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'reason',
        FhirString.fromJson,
      ),
      reasonLinkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'reasonLinkId',
        FhirString.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      securityLabelNumber: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'securityLabelNumber',
        FhirUnsignedInt.fromJson,
      ),
    );
  }

  /// Deserialize [ContractAction]
  /// from a [String] or [YamlMap] object
  factory ContractAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractAction';

  /// [doNotPerform]
  /// True if the term prohibits the action.
  final FhirBoolean? doNotPerform;

  /// [type]
  /// Activity or service obligation to be done or not done, performed or not
  /// performed, effectuated or not by this Contract term.
  final CodeableConcept type;

  /// [subject]
  /// Entity of the action.
  final List<ContractSubject>? subject;

  /// [intent]
  /// Reason or purpose for the action stipulated by this Contract Provision.
  final CodeableConcept intent;

  /// [linkId]
  /// Id [identifier??] of the clause or question text related to this action
  /// in the referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;

  /// [status]
  /// Current state of the term action.
  final CodeableConcept status;

  /// [context]
  /// Encounter or Episode with primary association to specified term
  /// activity.
  final Reference? context;

  /// [contextLinkId]
  /// Id [identifier??] of the clause or question text related to the
  /// requester of this action in the referenced form or
  /// QuestionnaireResponse.
  final List<FhirString>? contextLinkId;

  /// [occurrenceX]
  /// When action happens.
  final OccurrenceXContractAction? occurrenceX;

  /// [requester]
  /// Who or what initiated the action and has responsibility for its
  /// activation.
  final List<Reference>? requester;

  /// [requesterLinkId]
  /// Id [identifier??] of the clause or question text related to the
  /// requester of this action in the referenced form or
  /// QuestionnaireResponse.
  final List<FhirString>? requesterLinkId;

  /// [performerType]
  /// The type of individual that is desired or required to perform or not
  /// perform the action.
  final List<CodeableConcept>? performerType;

  /// [performerRole]
  /// The type of role or competency of an individual desired or required to
  /// perform or not perform the action.
  final CodeableConcept? performerRole;

  /// [performer]
  /// Indicates who or what is being asked to perform (or not perform) the
  /// ction.
  final Reference? performer;

  /// [performerLinkId]
  /// Id [identifier??] of the clause or question text related to the reason
  /// type or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  final List<FhirString>? performerLinkId;

  /// [reasonCode]
  /// Rationale for the action to be performed or not performed. Describes
  /// why the action is permitted or prohibited.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource whose existence justifies permitting or not
  /// permitting this action.
  final List<Reference>? reasonReference;

  /// [reason]
  /// Describes why the action is to be performed or not performed in textual
  /// form.
  final List<FhirString>? reason;

  /// [reasonLinkId]
  /// Id [identifier??] of the clause or question text related to the reason
  /// type or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  final List<FhirString>? reasonLinkId;

  /// [note]
  /// Comments made about the term action made by the requester, performer,
  /// subject or other participants.
  final List<Annotation>? note;

  /// [securityLabelNumber]
  /// Security labels that protects the action.
  final List<FhirUnsignedInt>? securityLabelNumber;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (doNotPerform != null) {
      addField('doNotPerform', doNotPerform);
    }

    json['type'] = type.toJson();

    if (subject != null && subject!.isNotEmpty) {
      json['subject'] = subject!.map((e) => e.toJson()).toList();
    }

    json['intent'] = intent.toJson();

    if (linkId != null && linkId!.isNotEmpty) {
      final fieldJson0 = linkId!.map((e) => e.toJson()).toList();
      json['linkId'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_linkId'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    json['status'] = status.toJson();

    if (context != null) {
      json['context'] = context!.toJson();
    }

    if (contextLinkId != null && contextLinkId!.isNotEmpty) {
      final fieldJson1 = contextLinkId!.map((e) => e.toJson()).toList();
      json['contextLinkId'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_contextLinkId'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (occurrenceX != null) {
      addField('occurrence${occurrenceX!.fhirType.capitalize()}', occurrenceX);
    }

    if (requester != null && requester!.isNotEmpty) {
      json['requester'] = requester!.map((e) => e.toJson()).toList();
    }

    if (requesterLinkId != null && requesterLinkId!.isNotEmpty) {
      final fieldJson2 = requesterLinkId!.map((e) => e.toJson()).toList();
      json['requesterLinkId'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_requesterLinkId'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (performerType != null && performerType!.isNotEmpty) {
      json['performerType'] = performerType!.map((e) => e.toJson()).toList();
    }

    if (performerRole != null) {
      json['performerRole'] = performerRole!.toJson();
    }

    if (performer != null) {
      json['performer'] = performer!.toJson();
    }

    if (performerLinkId != null && performerLinkId!.isNotEmpty) {
      final fieldJson3 = performerLinkId!.map((e) => e.toJson()).toList();
      json['performerLinkId'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_performerLinkId'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (reason != null && reason!.isNotEmpty) {
      final fieldJson4 = reason!.map((e) => e.toJson()).toList();
      json['reason'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_reason'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (reasonLinkId != null && reasonLinkId!.isNotEmpty) {
      final fieldJson5 = reasonLinkId!.map((e) => e.toJson()).toList();
      json['reasonLinkId'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_reasonLinkId'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      final fieldJson6 = securityLabelNumber!.map((e) => e.toJson()).toList();
      json['securityLabelNumber'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_securityLabelNumber'] =
            fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ContractAction clone() => throw UnimplementedError();
  @override
  ContractAction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? doNotPerform,
    CodeableConcept? type,
    List<ContractSubject>? subject,
    CodeableConcept? intent,
    List<FhirString>? linkId,
    CodeableConcept? status,
    Reference? context,
    List<FhirString>? contextLinkId,
    OccurrenceXContractAction? occurrenceX,
    List<Reference>? requester,
    List<FhirString>? requesterLinkId,
    List<CodeableConcept>? performerType,
    CodeableConcept? performerRole,
    Reference? performer,
    List<FhirString>? performerLinkId,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<FhirString>? reason,
    List<FhirString>? reasonLinkId,
    List<Annotation>? note,
    List<FhirUnsignedInt>? securityLabelNumber,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      intent: intent ?? this.intent,
      linkId: linkId ?? this.linkId,
      status: status ?? this.status,
      context: context ?? this.context,
      contextLinkId: contextLinkId ?? this.contextLinkId,
      occurrenceX: occurrenceX ?? this.occurrenceX,
      requester: requester ?? this.requester,
      requesterLinkId: requesterLinkId ?? this.requesterLinkId,
      performerType: performerType ?? this.performerType,
      performerRole: performerRole ?? this.performerRole,
      performer: performer ?? this.performer,
      performerLinkId: performerLinkId ?? this.performerLinkId,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      reason: reason ?? this.reason,
      reasonLinkId: reasonLinkId ?? this.reasonLinkId,
      note: note ?? this.note,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
    );
  }
}

/// [ContractSubject]
/// Entity of the action.
class ContractSubject extends BackboneElement {
  /// Primary constructor for
  /// [ContractSubject]

  const ContractSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.role,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSubject.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractSubject(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ContractSubject]
  /// from a [String] or [YamlMap] object
  factory ContractSubject.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractSubject.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractSubject.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractSubject '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractSubject]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSubject.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractSubject';

  /// [reference]
  /// The entity the action is performed or not performed on or for.
  final List<Reference> reference;

  /// [role]
  /// Role type of agent assigned roles in this Contract.
  final CodeableConcept? role;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (reference.isNotEmpty) {
      json['reference'] = reference.map((e) => e.toJson()).toList();
    }

    if (role != null) {
      json['role'] = role!.toJson();
    }

    return json;
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
  }) {
    return ContractSubject(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
    );
  }
}

/// [ContractSigner]
/// Parties with legal standing in the Contract, including the principal
/// parties, the grantor(s) and grantee(s), which are any person or
/// organization bound by the contract, and any ancillary parties, which
/// facilitate the execution of the contract such as a notary or witness.
class ContractSigner extends BackboneElement {
  /// Primary constructor for
  /// [ContractSigner]

  const ContractSigner({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.party,
    required this.signature,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSigner.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractSigner(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<Coding>(
        json,
        'type',
        Coding.fromJson,
      )!,
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
      )!,
      signature: (json['signature'] as List<dynamic>)
          .map<Signature>(
            (v) => Signature.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContractSigner]
  /// from a [String] or [YamlMap] object
  factory ContractSigner.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractSigner.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractSigner.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractSigner '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractSigner]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSigner.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractSigner.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractSigner';

  /// [type]
  /// Role of this Contract signer, e.g. notary, grantee.
  final Coding type;

  /// [party]
  /// Party which is a signator to this Contract.
  final Reference party;

  /// [signature]
  /// Legally binding Contract DSIG signature contents in Base64.
  final List<Signature> signature;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    json['party'] = party.toJson();

    if (signature.isNotEmpty) {
      json['signature'] = signature.map((e) => e.toJson()).toList();
    }

    return json;
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
  }) {
    return ContractSigner(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
      signature: signature ?? this.signature,
    );
  }
}

/// [ContractFriendly]
/// The "patient friendly language" versionof the Contract in whole or in
/// parts. "Patient friendly language" means the representation of the
/// Contract and Contract Provisions in a manner that is readily accessible
/// and understandable by a layperson in accordance with best practices for
/// communication styles that ensure that those agreeing to or signing the
/// Contract understand the roles, actions, obligations, responsibilities,
/// and implication of the agreement.
class ContractFriendly extends BackboneElement {
  /// Primary constructor for
  /// [ContractFriendly]

  const ContractFriendly({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractFriendly.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractFriendly(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractFriendly>(json, {
        'contentAttachment': Attachment.fromJson,
        'contentReference': Reference.fromJson,
      })!,
    );
  }

  /// Deserialize [ContractFriendly]
  /// from a [String] or [YamlMap] object
  factory ContractFriendly.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractFriendly.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractFriendly.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractFriendly '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractFriendly]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractFriendly.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractFriendly.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractFriendly';

  /// [contentX]
  /// Human readable rendering of this Contract in a format and
  /// representation intended to enhance comprehension and ensure
  /// understandability.
  final ContentXContractFriendly contentX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['content${contentX.fhirType.capitalize()}'] = contentX.toJson();

    return json;
  }

  @override
  ContractFriendly clone() => throw UnimplementedError();
  @override
  ContractFriendly copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractFriendly? contentX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractFriendly(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentX: contentX ?? this.contentX,
    );
  }
}

/// [ContractLegal]
/// List of Legal expressions or representations of this Contract.
class ContractLegal extends BackboneElement {
  /// Primary constructor for
  /// [ContractLegal]

  const ContractLegal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractLegal.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractLegal(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractLegal>(json, {
        'contentAttachment': Attachment.fromJson,
        'contentReference': Reference.fromJson,
      })!,
    );
  }

  /// Deserialize [ContractLegal]
  /// from a [String] or [YamlMap] object
  factory ContractLegal.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractLegal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractLegal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractLegal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractLegal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractLegal.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractLegal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractLegal';

  /// [contentX]
  /// Contract legal text in human renderable form.
  final ContentXContractLegal contentX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['content${contentX.fhirType.capitalize()}'] = contentX.toJson();

    return json;
  }

  @override
  ContractLegal clone() => throw UnimplementedError();
  @override
  ContractLegal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractLegal? contentX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractLegal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentX: contentX ?? this.contentX,
    );
  }
}

/// [ContractRule]
/// List of Computable Policy Rule Language Representations of this
/// Contract.
class ContractRule extends BackboneElement {
  /// Primary constructor for
  /// [ContractRule]

  const ContractRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractRule.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContractRule(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractRule>(json, {
        'contentAttachment': Attachment.fromJson,
        'contentReference': Reference.fromJson,
      })!,
    );
  }

  /// Deserialize [ContractRule]
  /// from a [String] or [YamlMap] object
  factory ContractRule.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractRule.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractRule.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractRule '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractRule]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractRule.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ContractRule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ContractRule';

  /// [contentX]
  /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  final ContentXContractRule contentX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['content${contentX.fhirType.capitalize()}'] = contentX.toJson();

    return json;
  }

  @override
  ContractRule clone() => throw UnimplementedError();
  @override
  ContractRule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractRule? contentX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ContractRule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentX: contentX ?? this.contentX,
    );
  }
}
