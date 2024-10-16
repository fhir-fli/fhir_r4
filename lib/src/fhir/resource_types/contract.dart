import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Contract]
/// Legally enforceable, formally recorded unilateral or bilateral
/// directive i.e., a policy or agreement.
class Contract extends DomainResource {
  /// Primary constructor for [Contract]

  Contract({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
  }) : super(
          resourceType: R4ResourceType.Contract,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Contract.fromJson(Map<String, dynamic> json) {
    return Contract(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: json['url'] != null
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      status: json['status'] != null
          ? ContractResourceStatusCodes.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      legalState: json['legalState'] != null
          ? CodeableConcept.fromJson(
              json['legalState'] as Map<String, dynamic>,
            )
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? Reference.fromJson(
              json['instantiatesCanonical'] as Map<String, dynamic>,
            )
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? FhirUri.fromJson({
              'value': json['instantiatesUri'],
              '_value': json['_instantiatesUri'],
            })
          : null,
      contentDerivative: json['contentDerivative'] != null
          ? CodeableConcept.fromJson(
              json['contentDerivative'] as Map<String, dynamic>,
            )
          : null,
      issued: json['issued'] != null
          ? FhirDateTime.fromJson({
              'value': json['issued'],
              '_value': json['_issued'],
            })
          : null,
      applies: json['applies'] != null
          ? Period.fromJson(
              json['applies'] as Map<String, dynamic>,
            )
          : null,
      expirationType: json['expirationType'] != null
          ? CodeableConcept.fromJson(
              json['expirationType'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? (json['subject'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      authority: json['authority'] != null
          ? (json['authority'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      domain: json['domain'] != null
          ? (json['domain'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      site: json['site'] != null
          ? (json['site'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      subtitle: json['subtitle'] != null
          ? FhirString.fromJson({
              'value': json['subtitle'],
              '_value': json['_subtitle'],
            })
          : null,
      alias: parsePrimitiveList<FhirString>(
          json['alias'] as List<dynamic>?, json['_alias'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      scope: json['scope'] != null
          ? CodeableConcept.fromJson(
              json['scope'] as Map<String, dynamic>,
            )
          : null,
      topicCodeableConcept: json['topicCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['topicCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      topicReference: json['topicReference'] != null
          ? Reference.fromJson(
              json['topicReference'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      subType: json['subType'] != null
          ? (json['subType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contentDefinition: json['contentDefinition'] != null
          ? ContractContentDefinition.fromJson(
              json['contentDefinition'] as Map<String, dynamic>,
            )
          : null,
      term: json['term'] != null
          ? (json['term'] as List<dynamic>)
              .map<ContractTerm>(
                (v) => ContractTerm.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relevantHistory: json['relevantHistory'] != null
          ? (json['relevantHistory'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      signer: json['signer'] != null
          ? (json['signer'] as List<dynamic>)
              .map<ContractSigner>(
                (v) => ContractSigner.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      friendly: json['friendly'] != null
          ? (json['friendly'] as List<dynamic>)
              .map<ContractFriendly>(
                (v) => ContractFriendly.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      legal: json['legal'] != null
          ? (json['legal'] as List<dynamic>)
              .map<ContractLegal>(
                (v) => ContractLegal.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      rule: json['rule'] != null
          ? (json['rule'] as List<dynamic>)
              .map<ContractRule>(
                (v) => ContractRule.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Contract] from a [String]
  /// or [YamlMap] object
  factory Contract.fromYaml(dynamic yaml) => yaml is String
      ? Contract.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Contract.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Contract cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Contract]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Contract.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [topicCodeableConcept]
  /// Narrows the range of legal concerns to focus on the achievement of
  /// specific contractual objectives.
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference]
  /// Narrows the range of legal concerns to focus on the achievement of
  /// specific contractual objectives.
  final Reference? topicReference;

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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (url != null) {
      final fieldJson9 = url!.toJson();
      json['url'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_url'] = fieldJson9['_value'];
      }
    }

    if (version != null) {
      final fieldJson10 = version!.toJson();
      json['version'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_version'] = fieldJson10['_value'];
      }
    }

    if (status != null) {
      final fieldJson11 = status!.toJson();
      json['status'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_status'] = fieldJson11['_value'];
      }
    }

    if (legalState != null) {
      final fieldJson12 = legalState!.toJson();
      json['legalState'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_legalState'] = fieldJson12['_value'];
      }
    }

    if (instantiatesCanonical != null) {
      final fieldJson13 = instantiatesCanonical!.toJson();
      json['instantiatesCanonical'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_instantiatesCanonical'] = fieldJson13['_value'];
      }
    }

    if (instantiatesUri != null) {
      final fieldJson14 = instantiatesUri!.toJson();
      json['instantiatesUri'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_instantiatesUri'] = fieldJson14['_value'];
      }
    }

    if (contentDerivative != null) {
      final fieldJson15 = contentDerivative!.toJson();
      json['contentDerivative'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_contentDerivative'] = fieldJson15['_value'];
      }
    }

    if (issued != null) {
      final fieldJson16 = issued!.toJson();
      json['issued'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_issued'] = fieldJson16['_value'];
      }
    }

    if (applies != null) {
      final fieldJson17 = applies!.toJson();
      json['applies'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_applies'] = fieldJson17['_value'];
      }
    }

    if (expirationType != null) {
      final fieldJson18 = expirationType!.toJson();
      json['expirationType'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_expirationType'] = fieldJson18['_value'];
      }
    }

    if (subject != null && subject!.isNotEmpty) {
      final fieldJson19 = subject!.map((e) => e.toJson()).toList();
      json['subject'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_subject'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (authority != null && authority!.isNotEmpty) {
      final fieldJson20 = authority!.map((e) => e.toJson()).toList();
      json['authority'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_authority'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (domain != null && domain!.isNotEmpty) {
      final fieldJson21 = domain!.map((e) => e.toJson()).toList();
      json['domain'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_domain'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (site != null && site!.isNotEmpty) {
      final fieldJson22 = site!.map((e) => e.toJson()).toList();
      json['site'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_site'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (name != null) {
      final fieldJson23 = name!.toJson();
      json['name'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_name'] = fieldJson23['_value'];
      }
    }

    if (title != null) {
      final fieldJson24 = title!.toJson();
      json['title'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_title'] = fieldJson24['_value'];
      }
    }

    if (subtitle != null) {
      final fieldJson25 = subtitle!.toJson();
      json['subtitle'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_subtitle'] = fieldJson25['_value'];
      }
    }

    if (alias != null && alias!.isNotEmpty) {
      final fieldJson26 = alias!.map((e) => e.toJson()).toList();
      json['alias'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_alias'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

    if (author != null) {
      final fieldJson27 = author!.toJson();
      json['author'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_author'] = fieldJson27['_value'];
      }
    }

    if (scope != null) {
      final fieldJson28 = scope!.toJson();
      json['scope'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_scope'] = fieldJson28['_value'];
      }
    }

    if (topicCodeableConcept != null) {
      final fieldJson29 = topicCodeableConcept!.toJson();
      json['topicCodeableConcept'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_topicCodeableConcept'] = fieldJson29['_value'];
      }
    }

    if (topicReference != null) {
      final fieldJson30 = topicReference!.toJson();
      json['topicReference'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_topicReference'] = fieldJson30['_value'];
      }
    }

    if (type != null) {
      final fieldJson31 = type!.toJson();
      json['type'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_type'] = fieldJson31['_value'];
      }
    }

    if (subType != null && subType!.isNotEmpty) {
      final fieldJson32 = subType!.map((e) => e.toJson()).toList();
      json['subType'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_subType'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (contentDefinition != null) {
      final fieldJson33 = contentDefinition!.toJson();
      json['contentDefinition'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_contentDefinition'] = fieldJson33['_value'];
      }
    }

    if (term != null && term!.isNotEmpty) {
      final fieldJson34 = term!.map((e) => e.toJson()).toList();
      json['term'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_term'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      final fieldJson35 = supportingInfo!.map((e) => e.toJson()).toList();
      json['supportingInfo'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_supportingInfo'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      final fieldJson36 = relevantHistory!.map((e) => e.toJson()).toList();
      json['relevantHistory'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_relevantHistory'] = fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (signer != null && signer!.isNotEmpty) {
      final fieldJson37 = signer!.map((e) => e.toJson()).toList();
      json['signer'] = fieldJson37.map((e) => e['value']).toList();
      if (fieldJson37.any((e) => e['_value'] != null)) {
        json['_signer'] = fieldJson37.map((e) => e['_value']).toList();
      }
    }

    if (friendly != null && friendly!.isNotEmpty) {
      final fieldJson38 = friendly!.map((e) => e.toJson()).toList();
      json['friendly'] = fieldJson38.map((e) => e['value']).toList();
      if (fieldJson38.any((e) => e['_value'] != null)) {
        json['_friendly'] = fieldJson38.map((e) => e['_value']).toList();
      }
    }

    if (legal != null && legal!.isNotEmpty) {
      final fieldJson39 = legal!.map((e) => e.toJson()).toList();
      json['legal'] = fieldJson39.map((e) => e['value']).toList();
      if (fieldJson39.any((e) => e['_value'] != null)) {
        json['_legal'] = fieldJson39.map((e) => e['_value']).toList();
      }
    }

    if (rule != null && rule!.isNotEmpty) {
      final fieldJson40 = rule!.map((e) => e.toJson()).toList();
      json['rule'] = fieldJson40.map((e) => e['value']).toList();
      if (fieldJson40.any((e) => e['_value'] != null)) {
        json['_rule'] = fieldJson40.map((e) => e['_value']).toList();
      }
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
}

/// [ContractContentDefinition]
/// Precusory content developed with a focus and intent of supporting the
/// formation a Contract instance, which may be associated with and
/// transformable into a Contract.
class ContractContentDefinition extends BackboneElement {
  /// Primary constructor for [ContractContentDefinition]

  ContractContentDefinition({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.subType,
    this.publisher,
    this.publicationDate,
    required this.publicationStatus,
    this.copyright,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractContentDefinition.fromJson(Map<String, dynamic> json) {
    return ContractContentDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(
              json['subType'] as Map<String, dynamic>,
            )
          : null,
      publisher: json['publisher'] != null
          ? Reference.fromJson(
              json['publisher'] as Map<String, dynamic>,
            )
          : null,
      publicationDate: json['publicationDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['publicationDate'],
              '_value': json['_publicationDate'],
            })
          : null,
      publicationStatus: ContractResourcePublicationStatusCodes.fromJson({
        'value': json['publicationStatus'],
        '_value': json['_publicationStatus'],
      }),
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
    );
  }

  /// Deserialize [ContractContentDefinition] from a [String]
  /// or [YamlMap] object
  factory ContractContentDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ContractContentDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractContentDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ContractContentDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractContentDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractContentDefinition.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (subType != null) {
      final fieldJson4 = subType!.toJson();
      json['subType'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_subType'] = fieldJson4['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson5 = publisher!.toJson();
      json['publisher'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_publisher'] = fieldJson5['_value'];
      }
    }

    if (publicationDate != null) {
      final fieldJson6 = publicationDate!.toJson();
      json['publicationDate'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_publicationDate'] = fieldJson6['_value'];
      }
    }

    final fieldJson7 = publicationStatus.toJson();
    json['publicationStatus'] = fieldJson7['value'];
    if (fieldJson7['_value'] != null) {
      json['_publicationStatus'] = fieldJson7['_value'];
    }

    if (copyright != null) {
      final fieldJson8 = copyright!.toJson();
      json['copyright'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_copyright'] = fieldJson8['_value'];
      }
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
      publicationStatus: publicationStatus ?? this.publicationStatus,
      copyright: copyright ?? this.copyright,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ContractTerm]
/// One or more Contract Provisions, which may be related and conveyed as a
/// group, and may contain nested groups.
class ContractTerm extends BackboneElement {
  /// Primary constructor for [ContractTerm]

  ContractTerm({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.issued,
    this.applies,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.text,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractTerm.fromJson(Map<String, dynamic> json) {
    return ContractTerm(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      issued: json['issued'] != null
          ? FhirDateTime.fromJson({
              'value': json['issued'],
              '_value': json['_issued'],
            })
          : null,
      applies: json['applies'] != null
          ? Period.fromJson(
              json['applies'] as Map<String, dynamic>,
            )
          : null,
      topicCodeableConcept: json['topicCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['topicCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      topicReference: json['topicReference'] != null
          ? Reference.fromJson(
              json['topicReference'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(
              json['subType'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      securityLabel: json['securityLabel'] != null
          ? (json['securityLabel'] as List<dynamic>)
              .map<ContractSecurityLabel>(
                (v) => ContractSecurityLabel.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      offer: ContractOffer.fromJson(
        json['offer'] as Map<String, dynamic>,
      ),
      asset: json['asset'] != null
          ? (json['asset'] as List<dynamic>)
              .map<ContractAsset>(
                (v) => ContractAsset.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<ContractAction>(
                (v) => ContractAction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      group: json['group'] != null
          ? (json['group'] as List<dynamic>)
              .map<ContractTerm>(
                (v) => ContractTerm.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ContractTerm] from a [String]
  /// or [YamlMap] object
  factory ContractTerm.fromYaml(dynamic yaml) => yaml is String
      ? ContractTerm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractTerm.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractTerm cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractTerm]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractTerm.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [topicCodeableConcept]
  /// The entity that the term applies to.
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference]
  /// The entity that the term applies to.
  final Reference? topicReference;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null) {
      final fieldJson3 = identifier!.toJson();
      json['identifier'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_identifier'] = fieldJson3['_value'];
      }
    }

    if (issued != null) {
      final fieldJson4 = issued!.toJson();
      json['issued'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_issued'] = fieldJson4['_value'];
      }
    }

    if (applies != null) {
      final fieldJson5 = applies!.toJson();
      json['applies'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_applies'] = fieldJson5['_value'];
      }
    }

    if (topicCodeableConcept != null) {
      final fieldJson6 = topicCodeableConcept!.toJson();
      json['topicCodeableConcept'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_topicCodeableConcept'] = fieldJson6['_value'];
      }
    }

    if (topicReference != null) {
      final fieldJson7 = topicReference!.toJson();
      json['topicReference'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_topicReference'] = fieldJson7['_value'];
      }
    }

    if (type != null) {
      final fieldJson8 = type!.toJson();
      json['type'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_type'] = fieldJson8['_value'];
      }
    }

    if (subType != null) {
      final fieldJson9 = subType!.toJson();
      json['subType'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_subType'] = fieldJson9['_value'];
      }
    }

    if (text != null) {
      final fieldJson10 = text!.toJson();
      json['text'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_text'] = fieldJson10['_value'];
      }
    }

    if (securityLabel != null && securityLabel!.isNotEmpty) {
      final fieldJson11 = securityLabel!.map((e) => e.toJson()).toList();
      json['securityLabel'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_securityLabel'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    final fieldJson12 = offer.toJson();
    json['offer'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_offer'] = fieldJson12['_value'];
    }

    if (asset != null && asset!.isNotEmpty) {
      final fieldJson13 = asset!.map((e) => e.toJson()).toList();
      json['asset'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_asset'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

    if (action != null && action!.isNotEmpty) {
      final fieldJson14 = action!.map((e) => e.toJson()).toList();
      json['action'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_action'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (group != null && group!.isNotEmpty) {
      final fieldJson15 = group!.map((e) => e.toJson()).toList();
      json['group'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_group'] = fieldJson15.map((e) => e['_value']).toList();
      }
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
    CodeableConcept? topicCodeableConcept,
    Reference? topicReference,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractTerm(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      issued: issued ?? this.issued,
      applies: applies ?? this.applies,
      topicCodeableConcept: topicCodeableConcept ?? this.topicCodeableConcept,
      topicReference: topicReference ?? this.topicReference,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      text: text ?? this.text,
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
}

/// [ContractSecurityLabel]
/// Security labels that protect the handling of information about the term
/// and its elements, which may be specifically identified..
class ContractSecurityLabel extends BackboneElement {
  /// Primary constructor for [ContractSecurityLabel]

  ContractSecurityLabel({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.number,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSecurityLabel.fromJson(Map<String, dynamic> json) {
    return ContractSecurityLabel(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      number: parsePrimitiveList<FhirUnsignedInt>(
          json['number'] as List<dynamic>?, json['_number'] as List<dynamic>?,
          fromJson: FhirUnsignedInt.fromJson),
      classification: Coding.fromJson(
        json['classification'] as Map<String, dynamic>,
      ),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      control: json['control'] != null
          ? (json['control'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ContractSecurityLabel] from a [String]
  /// or [YamlMap] object
  factory ContractSecurityLabel.fromYaml(dynamic yaml) => yaml is String
      ? ContractSecurityLabel.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractSecurityLabel.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ContractSecurityLabel cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractSecurityLabel]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSecurityLabel.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (number != null && number!.isNotEmpty) {
      final fieldJson3 = number!.map((e) => e.toJson()).toList();
      json['number'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_number'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    final fieldJson4 = classification.toJson();
    json['classification'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_classification'] = fieldJson4['_value'];
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson5 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (control != null && control!.isNotEmpty) {
      final fieldJson6 = control!.map((e) => e.toJson()).toList();
      json['control'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_control'] = fieldJson6.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ContractSecurityLabel(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
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
}

/// [ContractOffer]
/// The matter of concern in the context of this provision of the agrement.
class ContractOffer extends BackboneElement {
  /// Primary constructor for [ContractOffer]

  ContractOffer({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractOffer.fromJson(Map<String, dynamic> json) {
    return ContractOffer(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      party: json['party'] != null
          ? (json['party'] as List<dynamic>)
              .map<ContractParty>(
                (v) => ContractParty.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      topic: json['topic'] != null
          ? Reference.fromJson(
              json['topic'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      decision: json['decision'] != null
          ? CodeableConcept.fromJson(
              json['decision'] as Map<String, dynamic>,
            )
          : null,
      decisionMode: json['decisionMode'] != null
          ? (json['decisionMode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      answer: json['answer'] != null
          ? (json['answer'] as List<dynamic>)
              .map<ContractAnswer>(
                (v) => ContractAnswer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      linkId: parsePrimitiveList<FhirString>(
          json['linkId'] as List<dynamic>?, json['_linkId'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      securityLabelNumber: parsePrimitiveList<FhirUnsignedInt>(
          json['securityLabelNumber'] as List<dynamic>?,
          json['_securityLabelNumber'] as List<dynamic>?,
          fromJson: FhirUnsignedInt.fromJson),
    );
  }

  /// Deserialize [ContractOffer] from a [String]
  /// or [YamlMap] object
  factory ContractOffer.fromYaml(dynamic yaml) => yaml is String
      ? ContractOffer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractOffer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractOffer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractOffer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractOffer.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson3 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (party != null && party!.isNotEmpty) {
      final fieldJson4 = party!.map((e) => e.toJson()).toList();
      json['party'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_party'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (topic != null) {
      final fieldJson5 = topic!.toJson();
      json['topic'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_topic'] = fieldJson5['_value'];
      }
    }

    if (type != null) {
      final fieldJson6 = type!.toJson();
      json['type'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_type'] = fieldJson6['_value'];
      }
    }

    if (decision != null) {
      final fieldJson7 = decision!.toJson();
      json['decision'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_decision'] = fieldJson7['_value'];
      }
    }

    if (decisionMode != null && decisionMode!.isNotEmpty) {
      final fieldJson8 = decisionMode!.map((e) => e.toJson()).toList();
      json['decisionMode'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_decisionMode'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (answer != null && answer!.isNotEmpty) {
      final fieldJson9 = answer!.map((e) => e.toJson()).toList();
      json['answer'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_answer'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (text != null) {
      final fieldJson10 = text!.toJson();
      json['text'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_text'] = fieldJson10['_value'];
      }
    }

    if (linkId != null && linkId!.isNotEmpty) {
      final fieldJson11 = linkId!.map((e) => e.toJson()).toList();
      json['linkId'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_linkId'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      final fieldJson12 = securityLabelNumber!.map((e) => e.toJson()).toList();
      json['securityLabelNumber'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_securityLabelNumber'] =
            fieldJson12.map((e) => e['_value']).toList();
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
      linkId: linkId ?? this.linkId,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ContractParty]
/// Offer Recipient.
class ContractParty extends BackboneElement {
  /// Primary constructor for [ContractParty]

  ContractParty({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractParty.fromJson(Map<String, dynamic> json) {
    return ContractParty(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reference: ensureNonNullList((json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      role: CodeableConcept.fromJson(
        json['role'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ContractParty] from a [String]
  /// or [YamlMap] object
  factory ContractParty.fromYaml(dynamic yaml) => yaml is String
      ? ContractParty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractParty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractParty cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractParty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractParty.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [reference]
  /// Participant in the offer.
  final List<Reference> reference;

  /// [role]
  /// How the party participates in the offer.
  final CodeableConcept role;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = reference.map((e) => e.toJson()).toList();
    json['reference'] = fieldJson3.map((e) => e['value']).toList();
    if (fieldJson3.any((e) => e['_value'] != null)) {
      json['_reference'] = fieldJson3.map((e) => e['_value']).toList();
    }

    final fieldJson4 = role.toJson();
    json['role'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_role'] = fieldJson4['_value'];
    }

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
}

/// [ContractAnswer]
/// Response to offer text.
class ContractAnswer extends BackboneElement {
  /// Primary constructor for [ContractAnswer]

  ContractAnswer({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.valueBoolean,
    this.valueDecimal,
    this.valueInteger,
    this.valueDate,
    this.valueDateTime,
    this.valueTime,
    this.valueString,
    this.valueUri,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAnswer.fromJson(Map<String, dynamic> json) {
    return ContractAnswer(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['valueDecimal'],
              '_value': json['_valueDecimal'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson({
              'value': json['valueDate'],
              '_value': json['_valueDate'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson({
              'value': json['valueTime'],
              '_value': json['_valueTime'],
            })
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueUri: json['valueUri'] != null
          ? FhirUri.fromJson({
              'value': json['valueUri'],
              '_value': json['_valueUri'],
            })
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              json['valueCoding'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ContractAnswer] from a [String]
  /// or [YamlMap] object
  factory ContractAnswer.fromYaml(dynamic yaml) => yaml is String
      ? ContractAnswer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractAnswer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractAnswer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractAnswer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractAnswer.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [valueBoolean]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final FhirBoolean? valueBoolean;

  /// [valueDecimal]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final FhirDecimal? valueDecimal;

  /// [valueInteger]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final FhirInteger? valueInteger;

  /// [valueDate]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final FhirDate? valueDate;

  /// [valueDateTime]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final FhirDateTime? valueDateTime;

  /// [valueTime]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final FhirTime? valueTime;

  /// [valueString]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final FhirString? valueString;

  /// [valueUri]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final FhirUri? valueUri;

  /// [valueAttachment]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final Attachment? valueAttachment;

  /// [valueCoding]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final Coding? valueCoding;

  /// [valueQuantity]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final Quantity? valueQuantity;

  /// [valueReference]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  final Reference? valueReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (valueBoolean != null) {
      final fieldJson3 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_valueBoolean'] = fieldJson3['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson4 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueDecimal'] = fieldJson4['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson5 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueInteger'] = fieldJson5['_value'];
      }
    }

    if (valueDate != null) {
      final fieldJson6 = valueDate!.toJson();
      json['valueDate'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueDate'] = fieldJson6['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson7 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueDateTime'] = fieldJson7['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson8 = valueTime!.toJson();
      json['valueTime'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueTime'] = fieldJson8['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson9 = valueString!.toJson();
      json['valueString'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueString'] = fieldJson9['_value'];
      }
    }

    if (valueUri != null) {
      final fieldJson10 = valueUri!.toJson();
      json['valueUri'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_valueUri'] = fieldJson10['_value'];
      }
    }

    if (valueAttachment != null) {
      final fieldJson11 = valueAttachment!.toJson();
      json['valueAttachment'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_valueAttachment'] = fieldJson11['_value'];
      }
    }

    if (valueCoding != null) {
      final fieldJson12 = valueCoding!.toJson();
      json['valueCoding'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_valueCoding'] = fieldJson12['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson13 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_valueQuantity'] = fieldJson13['_value'];
      }
    }

    if (valueReference != null) {
      final fieldJson14 = valueReference!.toJson();
      json['valueReference'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_valueReference'] = fieldJson14['_value'];
      }
    }

    return json;
  }

  @override
  ContractAnswer clone() => throw UnimplementedError();
  @override
  ContractAnswer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? valueBoolean,
    FhirDecimal? valueDecimal,
    FhirInteger? valueInteger,
    FhirDate? valueDate,
    FhirDateTime? valueDateTime,
    FhirTime? valueTime,
    FhirString? valueString,
    FhirUri? valueUri,
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
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueInteger: valueInteger ?? this.valueInteger,
      valueDate: valueDate ?? this.valueDate,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueTime: valueTime ?? this.valueTime,
      valueString: valueString ?? this.valueString,
      valueUri: valueUri ?? this.valueUri,
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
}

/// [ContractAsset]
/// Contract Term Asset List.
class ContractAsset extends BackboneElement {
  /// Primary constructor for [ContractAsset]

  ContractAsset({
    super.id,
    this.extension_,
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
    this.securityLabelNumber,
    this.valuedItem,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAsset.fromJson(Map<String, dynamic> json) {
    return ContractAsset(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      scope: json['scope'] != null
          ? CodeableConcept.fromJson(
              json['scope'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      typeReference: json['typeReference'] != null
          ? (json['typeReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subtype: json['subtype'] != null
          ? (json['subtype'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relationship: json['relationship'] != null
          ? Coding.fromJson(
              json['relationship'] as Map<String, dynamic>,
            )
          : null,
      context: json['context'] != null
          ? (json['context'] as List<dynamic>)
              .map<ContractContext>(
                (v) => ContractContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: json['condition'] != null
          ? FhirString.fromJson({
              'value': json['condition'],
              '_value': json['_condition'],
            })
          : null,
      periodType: json['periodType'] != null
          ? (json['periodType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      period: json['period'] != null
          ? (json['period'] as List<dynamic>)
              .map<Period>(
                (v) => Period.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      usePeriod: json['usePeriod'] != null
          ? (json['usePeriod'] as List<dynamic>)
              .map<Period>(
                (v) => Period.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      linkId: parsePrimitiveList<FhirString>(
          json['linkId'] as List<dynamic>?, json['_linkId'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      securityLabelNumber: parsePrimitiveList<FhirUnsignedInt>(
          json['securityLabelNumber'] as List<dynamic>?,
          json['_securityLabelNumber'] as List<dynamic>?,
          fromJson: FhirUnsignedInt.fromJson),
      valuedItem: json['valuedItem'] != null
          ? (json['valuedItem'] as List<dynamic>)
              .map<ContractValuedItem>(
                (v) => ContractValuedItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ContractAsset] from a [String]
  /// or [YamlMap] object
  factory ContractAsset.fromYaml(dynamic yaml) => yaml is String
      ? ContractAsset.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractAsset.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractAsset cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractAsset]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractAsset.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [securityLabelNumber]
  /// Security labels that protects the asset.
  final List<FhirUnsignedInt>? securityLabelNumber;

  /// [valuedItem]
  /// Contract Valued Item List.
  final List<ContractValuedItem>? valuedItem;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (scope != null) {
      final fieldJson3 = scope!.toJson();
      json['scope'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_scope'] = fieldJson3['_value'];
      }
    }

    if (type != null && type!.isNotEmpty) {
      final fieldJson4 = type!.map((e) => e.toJson()).toList();
      json['type'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_type'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (typeReference != null && typeReference!.isNotEmpty) {
      final fieldJson5 = typeReference!.map((e) => e.toJson()).toList();
      json['typeReference'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_typeReference'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (subtype != null && subtype!.isNotEmpty) {
      final fieldJson6 = subtype!.map((e) => e.toJson()).toList();
      json['subtype'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_subtype'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (relationship != null) {
      final fieldJson7 = relationship!.toJson();
      json['relationship'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_relationship'] = fieldJson7['_value'];
      }
    }

    if (context != null && context!.isNotEmpty) {
      final fieldJson8 = context!.map((e) => e.toJson()).toList();
      json['context'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_context'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (condition != null) {
      final fieldJson9 = condition!.toJson();
      json['condition'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_condition'] = fieldJson9['_value'];
      }
    }

    if (periodType != null && periodType!.isNotEmpty) {
      final fieldJson10 = periodType!.map((e) => e.toJson()).toList();
      json['periodType'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_periodType'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (period != null && period!.isNotEmpty) {
      final fieldJson11 = period!.map((e) => e.toJson()).toList();
      json['period'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_period'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (usePeriod != null && usePeriod!.isNotEmpty) {
      final fieldJson12 = usePeriod!.map((e) => e.toJson()).toList();
      json['usePeriod'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_usePeriod'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (text != null) {
      final fieldJson13 = text!.toJson();
      json['text'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_text'] = fieldJson13['_value'];
      }
    }

    if (linkId != null && linkId!.isNotEmpty) {
      final fieldJson14 = linkId!.map((e) => e.toJson()).toList();
      json['linkId'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_linkId'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      final fieldJson15 = securityLabelNumber!.map((e) => e.toJson()).toList();
      json['securityLabelNumber'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_securityLabelNumber'] =
            fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (valuedItem != null && valuedItem!.isNotEmpty) {
      final fieldJson16 = valuedItem!.map((e) => e.toJson()).toList();
      json['valuedItem'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_valuedItem'] = fieldJson16.map((e) => e['_value']).toList();
      }
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
    List<FhirUnsignedInt>? securityLabelNumber,
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
      periodType: periodType ?? this.periodType,
      period: period ?? this.period,
      usePeriod: usePeriod ?? this.usePeriod,
      text: text ?? this.text,
      linkId: linkId ?? this.linkId,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      valuedItem: valuedItem ?? this.valuedItem,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ContractContext]
/// Circumstance of the asset.
class ContractContext extends BackboneElement {
  /// Primary constructor for [ContractContext]

  ContractContext({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.reference,
    this.code,
    this.text,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractContext.fromJson(Map<String, dynamic> json) {
    return ContractContext(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reference: json['reference'] != null
          ? Reference.fromJson(
              json['reference'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
    );
  }

  /// Deserialize [ContractContext] from a [String]
  /// or [YamlMap] object
  factory ContractContext.fromYaml(dynamic yaml) => yaml is String
      ? ContractContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractContext cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractContext]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractContext.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (reference != null) {
      final fieldJson3 = reference!.toJson();
      json['reference'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_reference'] = fieldJson3['_value'];
      }
    }

    if (code != null && code!.isNotEmpty) {
      final fieldJson4 = code!.map((e) => e.toJson()).toList();
      json['code'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_code'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (text != null) {
      final fieldJson5 = text!.toJson();
      json['text'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_text'] = fieldJson5['_value'];
      }
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ContractValuedItem]
/// Contract Valued Item List.
class ContractValuedItem extends BackboneElement {
  /// Primary constructor for [ContractValuedItem]

  ContractValuedItem({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.entityCodeableConcept,
    this.entityReference,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractValuedItem.fromJson(Map<String, dynamic> json) {
    return ContractValuedItem(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      entityCodeableConcept: json['entityCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['entityCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      entityReference: json['entityReference'] != null
          ? Reference.fromJson(
              json['entityReference'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      effectiveTime: json['effectiveTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['effectiveTime'],
              '_value': json['_effectiveTime'],
            })
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      points: json['points'] != null
          ? FhirDecimal.fromJson({
              'value': json['points'],
              '_value': json['_points'],
            })
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      payment: json['payment'] != null
          ? FhirString.fromJson({
              'value': json['payment'],
              '_value': json['_payment'],
            })
          : null,
      paymentDate: json['paymentDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['paymentDate'],
              '_value': json['_paymentDate'],
            })
          : null,
      responsible: json['responsible'] != null
          ? Reference.fromJson(
              json['responsible'] as Map<String, dynamic>,
            )
          : null,
      recipient: json['recipient'] != null
          ? Reference.fromJson(
              json['recipient'] as Map<String, dynamic>,
            )
          : null,
      linkId: parsePrimitiveList<FhirString>(
          json['linkId'] as List<dynamic>?, json['_linkId'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      securityLabelNumber: parsePrimitiveList<FhirUnsignedInt>(
          json['securityLabelNumber'] as List<dynamic>?,
          json['_securityLabelNumber'] as List<dynamic>?,
          fromJson: FhirUnsignedInt.fromJson),
    );
  }

  /// Deserialize [ContractValuedItem] from a [String]
  /// or [YamlMap] object
  factory ContractValuedItem.fromYaml(dynamic yaml) => yaml is String
      ? ContractValuedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractValuedItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractValuedItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractValuedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractValuedItem.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [entityCodeableConcept]
  /// Specific type of Contract Valued Item that may be priced.
  final CodeableConcept? entityCodeableConcept;

  /// [entityReference]
  /// Specific type of Contract Valued Item that may be priced.
  final Reference? entityReference;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (entityCodeableConcept != null) {
      final fieldJson3 = entityCodeableConcept!.toJson();
      json['entityCodeableConcept'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_entityCodeableConcept'] = fieldJson3['_value'];
      }
    }

    if (entityReference != null) {
      final fieldJson4 = entityReference!.toJson();
      json['entityReference'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_entityReference'] = fieldJson4['_value'];
      }
    }

    if (identifier != null) {
      final fieldJson5 = identifier!.toJson();
      json['identifier'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_identifier'] = fieldJson5['_value'];
      }
    }

    if (effectiveTime != null) {
      final fieldJson6 = effectiveTime!.toJson();
      json['effectiveTime'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_effectiveTime'] = fieldJson6['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson7 = quantity!.toJson();
      json['quantity'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_quantity'] = fieldJson7['_value'];
      }
    }

    if (unitPrice != null) {
      final fieldJson8 = unitPrice!.toJson();
      json['unitPrice'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_unitPrice'] = fieldJson8['_value'];
      }
    }

    if (factor != null) {
      final fieldJson9 = factor!.toJson();
      json['factor'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_factor'] = fieldJson9['_value'];
      }
    }

    if (points != null) {
      final fieldJson10 = points!.toJson();
      json['points'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_points'] = fieldJson10['_value'];
      }
    }

    if (net != null) {
      final fieldJson11 = net!.toJson();
      json['net'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_net'] = fieldJson11['_value'];
      }
    }

    if (payment != null) {
      final fieldJson12 = payment!.toJson();
      json['payment'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_payment'] = fieldJson12['_value'];
      }
    }

    if (paymentDate != null) {
      final fieldJson13 = paymentDate!.toJson();
      json['paymentDate'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_paymentDate'] = fieldJson13['_value'];
      }
    }

    if (responsible != null) {
      final fieldJson14 = responsible!.toJson();
      json['responsible'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_responsible'] = fieldJson14['_value'];
      }
    }

    if (recipient != null) {
      final fieldJson15 = recipient!.toJson();
      json['recipient'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_recipient'] = fieldJson15['_value'];
      }
    }

    if (linkId != null && linkId!.isNotEmpty) {
      final fieldJson16 = linkId!.map((e) => e.toJson()).toList();
      json['linkId'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_linkId'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      final fieldJson17 = securityLabelNumber!.map((e) => e.toJson()).toList();
      json['securityLabelNumber'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_securityLabelNumber'] =
            fieldJson17.map((e) => e['_value']).toList();
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
    CodeableConcept? entityCodeableConcept,
    Reference? entityReference,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ContractAction]
/// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ContractAction extends BackboneElement {
  /// Primary constructor for [ContractAction]

  ContractAction({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.doNotPerform,
    required this.type,
    this.subject,
    required this.intent,
    this.linkId,
    required this.status,
    this.context,
    this.contextLinkId,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAction.fromJson(Map<String, dynamic> json) {
    return ContractAction(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean.fromJson({
              'value': json['doNotPerform'],
              '_value': json['_doNotPerform'],
            })
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      subject: json['subject'] != null
          ? (json['subject'] as List<dynamic>)
              .map<ContractSubject>(
                (v) => ContractSubject.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      intent: CodeableConcept.fromJson(
        json['intent'] as Map<String, dynamic>,
      ),
      linkId: parsePrimitiveList<FhirString>(
          json['linkId'] as List<dynamic>?, json['_linkId'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      status: CodeableConcept.fromJson(
        json['status'] as Map<String, dynamic>,
      ),
      context: json['context'] != null
          ? Reference.fromJson(
              json['context'] as Map<String, dynamic>,
            )
          : null,
      contextLinkId: parsePrimitiveList<FhirString>(
          json['contextLinkId'] as List<dynamic>?,
          json['_contextLinkId'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurrenceDateTime'],
              '_value': json['_occurrenceDateTime'],
            })
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              json['occurrencePeriod'] as Map<String, dynamic>,
            )
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(
              json['occurrenceTiming'] as Map<String, dynamic>,
            )
          : null,
      requester: json['requester'] != null
          ? (json['requester'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      requesterLinkId: parsePrimitiveList<FhirString>(
          json['requesterLinkId'] as List<dynamic>?,
          json['_requesterLinkId'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      performerType: json['performerType'] != null
          ? (json['performerType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      performerRole: json['performerRole'] != null
          ? CodeableConcept.fromJson(
              json['performerRole'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              json['performer'] as Map<String, dynamic>,
            )
          : null,
      performerLinkId: parsePrimitiveList<FhirString>(
          json['performerLinkId'] as List<dynamic>?,
          json['_performerLinkId'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reason: parsePrimitiveList<FhirString>(
          json['reason'] as List<dynamic>?, json['_reason'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      reasonLinkId: parsePrimitiveList<FhirString>(
          json['reasonLinkId'] as List<dynamic>?,
          json['_reasonLinkId'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      securityLabelNumber: parsePrimitiveList<FhirUnsignedInt>(
          json['securityLabelNumber'] as List<dynamic>?,
          json['_securityLabelNumber'] as List<dynamic>?,
          fromJson: FhirUnsignedInt.fromJson),
    );
  }

  /// Deserialize [ContractAction] from a [String]
  /// or [YamlMap] object
  factory ContractAction.fromYaml(dynamic yaml) => yaml is String
      ? ContractAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractAction cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractAction.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [occurrenceDateTime]
  /// When action happens.
  final FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// When action happens.
  final Period? occurrencePeriod;

  /// [occurrenceTiming]
  /// When action happens.
  final Timing? occurrenceTiming;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (doNotPerform != null) {
      final fieldJson3 = doNotPerform!.toJson();
      json['doNotPerform'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_doNotPerform'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = type.toJson();
    json['type'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_type'] = fieldJson4['_value'];
    }

    if (subject != null && subject!.isNotEmpty) {
      final fieldJson5 = subject!.map((e) => e.toJson()).toList();
      json['subject'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_subject'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    final fieldJson6 = intent.toJson();
    json['intent'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_intent'] = fieldJson6['_value'];
    }

    if (linkId != null && linkId!.isNotEmpty) {
      final fieldJson7 = linkId!.map((e) => e.toJson()).toList();
      json['linkId'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_linkId'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    final fieldJson8 = status.toJson();
    json['status'] = fieldJson8['value'];
    if (fieldJson8['_value'] != null) {
      json['_status'] = fieldJson8['_value'];
    }

    if (context != null) {
      final fieldJson9 = context!.toJson();
      json['context'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_context'] = fieldJson9['_value'];
      }
    }

    if (contextLinkId != null && contextLinkId!.isNotEmpty) {
      final fieldJson10 = contextLinkId!.map((e) => e.toJson()).toList();
      json['contextLinkId'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_contextLinkId'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson11 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson11['_value'];
      }
    }

    if (occurrencePeriod != null) {
      final fieldJson12 = occurrencePeriod!.toJson();
      json['occurrencePeriod'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_occurrencePeriod'] = fieldJson12['_value'];
      }
    }

    if (occurrenceTiming != null) {
      final fieldJson13 = occurrenceTiming!.toJson();
      json['occurrenceTiming'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_occurrenceTiming'] = fieldJson13['_value'];
      }
    }

    if (requester != null && requester!.isNotEmpty) {
      final fieldJson14 = requester!.map((e) => e.toJson()).toList();
      json['requester'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_requester'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (requesterLinkId != null && requesterLinkId!.isNotEmpty) {
      final fieldJson15 = requesterLinkId!.map((e) => e.toJson()).toList();
      json['requesterLinkId'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_requesterLinkId'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (performerType != null && performerType!.isNotEmpty) {
      final fieldJson16 = performerType!.map((e) => e.toJson()).toList();
      json['performerType'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_performerType'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (performerRole != null) {
      final fieldJson17 = performerRole!.toJson();
      json['performerRole'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_performerRole'] = fieldJson17['_value'];
      }
    }

    if (performer != null) {
      final fieldJson18 = performer!.toJson();
      json['performer'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_performer'] = fieldJson18['_value'];
      }
    }

    if (performerLinkId != null && performerLinkId!.isNotEmpty) {
      final fieldJson19 = performerLinkId!.map((e) => e.toJson()).toList();
      json['performerLinkId'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_performerLinkId'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson20 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson21 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (reason != null && reason!.isNotEmpty) {
      final fieldJson22 = reason!.map((e) => e.toJson()).toList();
      json['reason'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_reason'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (reasonLinkId != null && reasonLinkId!.isNotEmpty) {
      final fieldJson23 = reasonLinkId!.map((e) => e.toJson()).toList();
      json['reasonLinkId'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_reasonLinkId'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson24 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (securityLabelNumber != null && securityLabelNumber!.isNotEmpty) {
      final fieldJson25 = securityLabelNumber!.map((e) => e.toJson()).toList();
      json['securityLabelNumber'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_securityLabelNumber'] =
            fieldJson25.map((e) => e['_value']).toList();
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
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ContractSubject]
/// Entity of the action.
class ContractSubject extends BackboneElement {
  /// Primary constructor for [ContractSubject]

  ContractSubject({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSubject.fromJson(Map<String, dynamic> json) {
    return ContractSubject(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reference: ensureNonNullList((json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ContractSubject] from a [String]
  /// or [YamlMap] object
  factory ContractSubject.fromYaml(dynamic yaml) => yaml is String
      ? ContractSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractSubject.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractSubject cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractSubject]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSubject.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [reference]
  /// The entity the action is performed or not performed on or for.
  final List<Reference> reference;

  /// [role]
  /// Role type of agent assigned roles in this Contract.
  final CodeableConcept? role;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = reference.map((e) => e.toJson()).toList();
    json['reference'] = fieldJson3.map((e) => e['value']).toList();
    if (fieldJson3.any((e) => e['_value'] != null)) {
      json['_reference'] = fieldJson3.map((e) => e['_value']).toList();
    }

    if (role != null) {
      final fieldJson4 = role!.toJson();
      json['role'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_role'] = fieldJson4['_value'];
      }
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
}

/// [ContractSigner]
/// Parties with legal standing in the Contract, including the principal
/// parties, the grantor(s) and grantee(s), which are any person or
/// organization bound by the contract, and any ancillary parties, which
/// facilitate the execution of the contract such as a notary or witness.
class ContractSigner extends BackboneElement {
  /// Primary constructor for [ContractSigner]

  ContractSigner({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSigner.fromJson(Map<String, dynamic> json) {
    return ContractSigner(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: Coding.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      party: Reference.fromJson(
        json['party'] as Map<String, dynamic>,
      ),
      signature: ensureNonNullList((json['signature'] as List<dynamic>)
          .map<Signature>(
            (v) => Signature.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
    );
  }

  /// Deserialize [ContractSigner] from a [String]
  /// or [YamlMap] object
  factory ContractSigner.fromYaml(dynamic yaml) => yaml is String
      ? ContractSigner.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractSigner.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractSigner cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractSigner]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSigner.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    final fieldJson4 = party.toJson();
    json['party'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_party'] = fieldJson4['_value'];
    }

    final fieldJson5 = signature.map((e) => e.toJson()).toList();
    json['signature'] = fieldJson5.map((e) => e['value']).toList();
    if (fieldJson5.any((e) => e['_value'] != null)) {
      json['_signature'] = fieldJson5.map((e) => e['_value']).toList();
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
  /// Primary constructor for [ContractFriendly]

  ContractFriendly({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractFriendly.fromJson(Map<String, dynamic> json) {
    return ContractFriendly(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              json['contentAttachment'] as Map<String, dynamic>,
            )
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(
              json['contentReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ContractFriendly] from a [String]
  /// or [YamlMap] object
  factory ContractFriendly.fromYaml(dynamic yaml) => yaml is String
      ? ContractFriendly.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractFriendly.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractFriendly cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractFriendly]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractFriendly.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [contentAttachment]
  /// Human readable rendering of this Contract in a format and
  /// representation intended to enhance comprehension and ensure
  /// understandability.
  final Attachment? contentAttachment;

  /// [contentReference]
  /// Human readable rendering of this Contract in a format and
  /// representation intended to enhance comprehension and ensure
  /// understandability.
  final Reference? contentReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (contentAttachment != null) {
      final fieldJson3 = contentAttachment!.toJson();
      json['contentAttachment'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_contentAttachment'] = fieldJson3['_value'];
      }
    }

    if (contentReference != null) {
      final fieldJson4 = contentReference!.toJson();
      json['contentReference'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_contentReference'] = fieldJson4['_value'];
      }
    }

    return json;
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
}

/// [ContractLegal]
/// List of Legal expressions or representations of this Contract.
class ContractLegal extends BackboneElement {
  /// Primary constructor for [ContractLegal]

  ContractLegal({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractLegal.fromJson(Map<String, dynamic> json) {
    return ContractLegal(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              json['contentAttachment'] as Map<String, dynamic>,
            )
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(
              json['contentReference'] as Map<String, dynamic>,
            )
          : null,
      legallyBindingAttachment: json['legallyBindingAttachment'] != null
          ? Attachment.fromJson(
              json['legallyBindingAttachment'] as Map<String, dynamic>,
            )
          : null,
      legallyBindingReference: json['legallyBindingReference'] != null
          ? Reference.fromJson(
              json['legallyBindingReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ContractLegal] from a [String]
  /// or [YamlMap] object
  factory ContractLegal.fromYaml(dynamic yaml) => yaml is String
      ? ContractLegal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractLegal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractLegal cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractLegal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractLegal.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [contentAttachment]
  /// Contract legal text in human renderable form.
  final Attachment? contentAttachment;

  /// [contentReference]
  /// Contract legal text in human renderable form.
  final Reference? contentReference;

  /// [legallyBindingAttachment]
  /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of
  /// truth" and which would be the basis for legal action related to
  /// enforcement of this Contract.
  final Attachment? legallyBindingAttachment;

  /// [legallyBindingReference]
  /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of
  /// truth" and which would be the basis for legal action related to
  /// enforcement of this Contract.
  final Reference? legallyBindingReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (contentAttachment != null) {
      final fieldJson3 = contentAttachment!.toJson();
      json['contentAttachment'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_contentAttachment'] = fieldJson3['_value'];
      }
    }

    if (contentReference != null) {
      final fieldJson4 = contentReference!.toJson();
      json['contentReference'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_contentReference'] = fieldJson4['_value'];
      }
    }

    if (legallyBindingAttachment != null) {
      final fieldJson5 = legallyBindingAttachment!.toJson();
      json['legallyBindingAttachment'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_legallyBindingAttachment'] = fieldJson5['_value'];
      }
    }

    if (legallyBindingReference != null) {
      final fieldJson6 = legallyBindingReference!.toJson();
      json['legallyBindingReference'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_legallyBindingReference'] = fieldJson6['_value'];
      }
    }

    return json;
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
}

/// [ContractRule]
/// List of Computable Policy Rule Language Representations of this
/// Contract.
class ContractRule extends BackboneElement {
  /// Primary constructor for [ContractRule]

  ContractRule({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractRule.fromJson(Map<String, dynamic> json) {
    return ContractRule(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              json['contentAttachment'] as Map<String, dynamic>,
            )
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(
              json['contentReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ContractRule] from a [String]
  /// or [YamlMap] object
  factory ContractRule.fromYaml(dynamic yaml) => yaml is String
      ? ContractRule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ContractRule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ContractRule cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ContractRule]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractRule.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [contentAttachment]
  /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  final Attachment? contentAttachment;

  /// [contentReference]
  /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  final Reference? contentReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (contentAttachment != null) {
      final fieldJson3 = contentAttachment!.toJson();
      json['contentAttachment'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_contentAttachment'] = fieldJson3['_value'];
      }
    }

    if (contentReference != null) {
      final fieldJson4 = contentReference!.toJson();
      json['contentReference'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_contentReference'] = fieldJson4['_value'];
      }
    }

    return json;
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
}
