import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Contract,
        ContractAction,
        ContractAnswer,
        ContractAsset,
        ContractContentDefinition,
        ContractContext,
        ContractFriendly,
        ContractLegal,
        ContractOffer,
        ContractParty,
        ContractRule,
        ContractSecurityLabel,
        ContractSigner,
        ContractSubject,
        ContractTerm,
        ContractValuedItem,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ContractBuilder]
/// Legally enforceable, formally recorded unilateral or bilateral
/// directive i.e., a policy or agreement.
class ContractBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ContractBuilder]

  ContractBuilder({
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
    TopicXContractBuilder? topicX,
    CodeableConceptBuilder? topicCodeableConcept,
    ReferenceBuilder? topicReference,
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
    LegallyBindingXContractBuilder? legallyBindingX,
    AttachmentBuilder? legallyBindingAttachment,
    ReferenceBuilder? legallyBindingReference,
  })  : topicX = topicX ?? topicCodeableConcept ?? topicReference,
        legallyBindingX = legallyBindingX ??
            legallyBindingAttachment ??
            legallyBindingReference,
        super(
          objectPath: 'Contract',
          resourceType: R4ResourceType.Contract,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractBuilder.empty() => ContractBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract';
    return ContractBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      status: JsonParser.parsePrimitive<ContractResourceStatusCodesBuilder>(
        json,
        'status',
        ContractResourceStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      legalState: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'legalState',
        CodeableConceptBuilder.fromJson,
        '$objectPath.legalState',
      ),
      instantiatesCanonical: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'instantiatesCanonical',
        ReferenceBuilder.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'instantiatesUri',
        FhirUriBuilder.fromJson,
        '$objectPath.instantiatesUri',
      ),
      contentDerivative: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'contentDerivative',
        CodeableConceptBuilder.fromJson,
        '$objectPath.contentDerivative',
      ),
      issued: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'issued',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.issued',
      ),
      applies: JsonParser.parseObject<PeriodBuilder>(
        json,
        'applies',
        PeriodBuilder.fromJson,
        '$objectPath.applies',
      ),
      expirationType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'expirationType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.expirationType',
      ),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      authority: (json['authority'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.authority',
              },
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.domain',
              },
            ),
          )
          .toList(),
      site: (json['site'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.site',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      subtitle: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'subtitle',
        FhirStringBuilder.fromJson,
        '$objectPath.subtitle',
      ),
      alias: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'alias',
        FhirStringBuilder.fromJson,
        '$objectPath.alias',
      ),
      author: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'author',
        ReferenceBuilder.fromJson,
        '$objectPath.author',
      ),
      scope: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'scope',
        CodeableConceptBuilder.fromJson,
        '$objectPath.scope',
      ),
      topicX: JsonParser.parsePolymorphic<TopicXContractBuilder>(
        json,
        {
          'topicCodeableConcept': CodeableConceptBuilder.fromJson,
          'topicReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subType: (json['subType'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subType',
              },
            ),
          )
          .toList(),
      contentDefinition:
          JsonParser.parseObject<ContractContentDefinitionBuilder>(
        json,
        'contentDefinition',
        ContractContentDefinitionBuilder.fromJson,
        '$objectPath.contentDefinition',
      ),
      term: (json['term'] as List<dynamic>?)
          ?.map<ContractTermBuilder>(
            (v) => ContractTermBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.term',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relevantHistory',
              },
            ),
          )
          .toList(),
      signer: (json['signer'] as List<dynamic>?)
          ?.map<ContractSignerBuilder>(
            (v) => ContractSignerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.signer',
              },
            ),
          )
          .toList(),
      friendly: (json['friendly'] as List<dynamic>?)
          ?.map<ContractFriendlyBuilder>(
            (v) => ContractFriendlyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.friendly',
              },
            ),
          )
          .toList(),
      legal: (json['legal'] as List<dynamic>?)
          ?.map<ContractLegalBuilder>(
            (v) => ContractLegalBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.legal',
              },
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map<ContractRuleBuilder>(
            (v) => ContractRuleBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rule',
              },
            ),
          )
          .toList(),
      legallyBindingX:
          JsonParser.parsePolymorphic<LegallyBindingXContractBuilder>(
        json,
        {
          'legallyBindingAttachment': AttachmentBuilder.fromJson,
          'legallyBindingReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ContractBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Contract';

  /// [identifier]
  /// Unique identifier for this Contract or a derivative that references a
  /// Source Contract.
  List<IdentifierBuilder>? identifier;

  /// [url]
  /// Canonical identifier for this contract, represented as a URI (globally
  /// unique).
  FhirUriBuilder? url;

  /// [version]
  /// An edition identifier used for business purposes to label business
  /// significant variants.
  FhirStringBuilder? version;

  /// [status]
  /// The status of the resource instance.
  ContractResourceStatusCodesBuilder? status;

  /// [legalState]
  /// Legal states of the formation of a legal instrument, which is a
  /// formally executed written document that can be formally attributed to
  /// its author, records and formally expresses a legally enforceable act,
  /// process, or contractual duty, obligation, or right, and therefore
  /// evidences that act, process, or agreement.
  CodeableConceptBuilder? legalState;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined Contract Definition that is adhered
  /// to in whole or part by this Contract.
  ReferenceBuilder? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained definition that is adhered
  /// to in whole or in part by this Contract.
  FhirUriBuilder? instantiatesUri;

  /// [contentDerivative]
  /// The minimal content derived from the basal information source at a
  /// specific stage in its lifecycle.
  CodeableConceptBuilder? contentDerivative;

  /// [issued]
  /// When this Contract was issued.
  FhirDateTimeBuilder? issued;

  /// [applies]
  /// Relevant time or time-period when this Contract is applicable.
  PeriodBuilder? applies;

  /// [expirationType]
  /// Event resulting in discontinuation or termination of this Contract
  /// instance by one or more parties to the contract.
  CodeableConceptBuilder? expirationType;

  /// [subject]
  /// The target entity impacted by or of interest to parties to the
  /// agreement.
  List<ReferenceBuilder>? subject;

  /// [authority]
  /// A formally or informally recognized grouping of people, principals,
  /// organizations, or jurisdictions formed for the purpose of achieving
  /// some form of collective action such as the promulgation, administration
  /// and enforcement of contracts and policies.
  List<ReferenceBuilder>? authority;

  /// [domain]
  /// Recognized governance framework or system operating with a
  /// circumscribed scope in accordance with specified principles, policies,
  /// processes or procedures for managing rights, actions, or behaviors of
  /// parties or principals relative to resources.
  List<ReferenceBuilder>? domain;

  /// [site]
  /// Sites in which the contract is complied with, exercised, or in force.
  List<ReferenceBuilder>? site;

  /// [name]
  /// A natural language name identifying this Contract definition,
  /// derivative, or instance in any legal state. Provides additional
  /// information about its content. This name should be usable as an
  /// identifier for the module by machine processing applications such as
  /// code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for this Contract definition,
  /// derivative, or instance in any legal state.t giving additional
  /// information about its content.
  FhirStringBuilder? title;

  /// [subtitle]
  /// An explanatory or alternate user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving
  /// additional information about its content.
  FhirStringBuilder? subtitle;

  /// [alias]
  /// Alternative representation of the title for this Contract definition,
  /// derivative, or instance in any legal state., e.g., a domain specific
  /// contract number related to legislation.
  List<FhirStringBuilder>? alias;

  /// [author]
  /// The individual or organization that authored the Contract definition,
  /// derivative, or instance in any legal state.
  ReferenceBuilder? author;

  /// [scope]
  /// A selector of legal concerns for this Contract definition, derivative,
  /// or instance in any legal state.
  CodeableConceptBuilder? scope;

  /// [topicX]
  /// Narrows the range of legal concerns to focus on the achievement of
  /// specific contractual objectives.
  TopicXContractBuilder? topicX;

  /// Getter for [topicCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get topicCodeableConcept =>
      topicX?.isAs<CodeableConceptBuilder>();

  /// Getter for [topicReference] as a ReferenceBuilder
  ReferenceBuilder? get topicReference => topicX?.isAs<ReferenceBuilder>();

  /// [type]
  /// A high-level category for the legal instrument, whether constructed as
  /// a Contract definition, derivative, or instance in any legal state.
  /// Provides additional information about its content within the context of
  /// the Contract's scope to distinguish the kinds of systems that would be
  /// interested in the contract.
  CodeableConceptBuilder? type;

  /// [subType]
  /// Sub-category for the Contract that distinguishes the kinds of systems
  /// that would be interested in the Contract within the context of the
  /// Contract's scope.
  List<CodeableConceptBuilder>? subType;

  /// [contentDefinition]
  /// Precusory content developed with a focus and intent of supporting the
  /// formation a Contract instance, which may be associated with and
  /// transformable into a Contract.
  ContractContentDefinitionBuilder? contentDefinition;

  /// [term]
  /// One or more Contract Provisions, which may be related and conveyed as a
  /// group, and may contain nested groups.
  List<ContractTermBuilder>? term;

  /// [supportingInfo]
  /// Information that may be needed by/relevant to the performer in their
  /// execution of this term action.
  List<ReferenceBuilder>? supportingInfo;

  /// [relevantHistory]
  /// Links to Provenance records for past versions of this Contract
  /// definition, derivative, or instance, which identify key state
  /// transitions or updates that are likely to be relevant to a user looking
  /// at the current version of the Contract. The Provence.entity indicates
  /// the target that was changed in the update.
  /// http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  List<ReferenceBuilder>? relevantHistory;

  /// [signer]
  /// Parties with legal standing in the Contract, including the principal
  /// parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  /// facilitate the execution of the contract such as a notary or witness.
  List<ContractSignerBuilder>? signer;

  /// [friendly]
  /// The "patient friendly language" versionof the Contract in whole or in
  /// parts. "Patient friendly language" means the representation of the
  /// Contract and Contract Provisions in a manner that is readily accessible
  /// and understandable by a layperson in accordance with best practices for
  /// communication styles that ensure that those agreeing to or signing the
  /// Contract understand the roles, actions, obligations, responsibilities,
  /// and implication of the agreement.
  List<ContractFriendlyBuilder>? friendly;

  /// [legal]
  /// List of Legal expressions or representations of this Contract.
  List<ContractLegalBuilder>? legal;

  /// [rule]
  /// List of Computable Policy Rule Language Representations of this
  /// Contract.
  List<ContractRuleBuilder>? rule;

  /// [legallyBindingX]
  /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of
  /// truth" and which would be the basis for legal action related to
  /// enforcement of this Contract.
  LegallyBindingXContractBuilder? legallyBindingX;

  /// Getter for [legallyBindingAttachment] as a AttachmentBuilder
  AttachmentBuilder? get legallyBindingAttachment =>
      legallyBindingX?.isAs<AttachmentBuilder>();

  /// Getter for [legallyBindingReference] as a ReferenceBuilder
  ReferenceBuilder? get legallyBindingReference =>
      legallyBindingX?.isAs<ReferenceBuilder>();

  /// Converts a [ContractBuilder]
  /// to [Contract]
  @override
  Contract build() => Contract.fromJson(toJson());

  /// Converts a [ContractBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('url', url);
    addField('version', version);
    addField('status', status);
    addField('legalState', legalState);
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('contentDerivative', contentDerivative);
    addField('issued', issued);
    addField('applies', applies);
    addField('expirationType', expirationType);
    addField('subject', subject);
    addField('authority', authority);
    addField('domain', domain);
    addField('site', site);
    addField('name', name);
    addField('title', title);
    addField('subtitle', subtitle);
    addField('alias', alias);
    addField('author', author);
    addField('scope', scope);
    if (topicX != null) {
      final fhirType = topicX!.fhirType;
      addField('topic${fhirType.capitalizeFirstLetter()}', topicX);
    }

    addField('type', type);
    addField('subType', subType);
    addField('contentDefinition', contentDefinition);
    addField('term', term);
    addField('supportingInfo', supportingInfo);
    addField('relevantHistory', relevantHistory);
    addField('signer', signer);
    addField('friendly', friendly);
    addField('legal', legal);
    addField('rule', rule);
    if (legallyBindingX != null) {
      final fhirType = legallyBindingX!.fhirType;
      addField(
          'legallyBinding${fhirType.capitalizeFirstLetter()}', legallyBindingX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'url',
      'version',
      'status',
      'legalState',
      'instantiatesCanonical',
      'instantiatesUri',
      'contentDerivative',
      'issued',
      'applies',
      'expirationType',
      'subject',
      'authority',
      'domain',
      'site',
      'name',
      'title',
      'subtitle',
      'alias',
      'author',
      'scope',
      'topicX',
      'type',
      'subType',
      'contentDefinition',
      'term',
      'supportingInfo',
      'relevantHistory',
      'signer',
      'friendly',
      'legal',
      'rule',
      'legallyBindingX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'legalState':
        if (legalState != null) {
          fields.add(legalState!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.add(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.add(instantiatesUri!);
        }
      case 'contentDerivative':
        if (contentDerivative != null) {
          fields.add(contentDerivative!);
        }
      case 'issued':
        if (issued != null) {
          fields.add(issued!);
        }
      case 'applies':
        if (applies != null) {
          fields.add(applies!);
        }
      case 'expirationType':
        if (expirationType != null) {
          fields.add(expirationType!);
        }
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'authority':
        if (authority != null) {
          fields.addAll(authority!);
        }
      case 'domain':
        if (domain != null) {
          fields.addAll(domain!);
        }
      case 'site':
        if (site != null) {
          fields.addAll(site!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'subtitle':
        if (subtitle != null) {
          fields.add(subtitle!);
        }
      case 'alias':
        if (alias != null) {
          fields.addAll(alias!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'scope':
        if (scope != null) {
          fields.add(scope!);
        }
      case 'topic':
        if (topicX != null) {
          fields.add(topicX!);
        }
      case 'topicX':
        if (topicX != null) {
          fields.add(topicX!);
        }
      case 'topicCodeableConcept':
        if (topicX is CodeableConceptBuilder) {
          fields.add(topicX!);
        }
      case 'topicReference':
        if (topicX is ReferenceBuilder) {
          fields.add(topicX!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subType':
        if (subType != null) {
          fields.addAll(subType!);
        }
      case 'contentDefinition':
        if (contentDefinition != null) {
          fields.add(contentDefinition!);
        }
      case 'term':
        if (term != null) {
          fields.addAll(term!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
        }
      case 'relevantHistory':
        if (relevantHistory != null) {
          fields.addAll(relevantHistory!);
        }
      case 'signer':
        if (signer != null) {
          fields.addAll(signer!);
        }
      case 'friendly':
        if (friendly != null) {
          fields.addAll(friendly!);
        }
      case 'legal':
        if (legal != null) {
          fields.addAll(legal!);
        }
      case 'rule':
        if (rule != null) {
          fields.addAll(rule!);
        }
      case 'legallyBinding':
        if (legallyBindingX != null) {
          fields.add(legallyBindingX!);
        }
      case 'legallyBindingX':
        if (legallyBindingX != null) {
          fields.add(legallyBindingX!);
        }
      case 'legallyBindingAttachment':
        if (legallyBindingX is AttachmentBuilder) {
          fields.add(legallyBindingX!);
        }
      case 'legallyBindingReference':
        if (legallyBindingX is ReferenceBuilder) {
          fields.add(legallyBindingX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is ContractResourceStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ContractResourceStatusCodesBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'legalState':
        {
          if (child is CodeableConceptBuilder) {
            legalState = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instantiatesCanonical':
        {
          if (child is ReferenceBuilder) {
            instantiatesCanonical = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instantiatesUri':
        {
          if (child is FhirUriBuilder) {
            instantiatesUri = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesUri = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentDerivative':
        {
          if (child is CodeableConceptBuilder) {
            contentDerivative = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'issued':
        {
          if (child is FhirDateTimeBuilder) {
            issued = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                issued = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'applies':
        {
          if (child is PeriodBuilder) {
            applies = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expirationType':
        {
          if (child is CodeableConceptBuilder) {
            expirationType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            subject = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            subject = [
              ...(subject ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authority':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            authority = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            authority = [
              ...(authority ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'domain':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            domain = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            domain = [
              ...(domain ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'site':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            site = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            site = [
              ...(site ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subtitle':
        {
          if (child is FhirStringBuilder) {
            subtitle = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                subtitle = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'alias':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            alias = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            alias = [
              ...(alias ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              alias = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                alias = [
                  ...(alias ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is ReferenceBuilder) {
            author = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'scope':
        {
          if (child is CodeableConceptBuilder) {
            scope = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topic':
      case 'topicX':
        {
          if (child is TopicXContractBuilder) {
            topicX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              topicX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              topicX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topicCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            topicX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'topicReference':
        {
          if (child is ReferenceBuilder) {
            topicX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subType':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subType = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subType = [
              ...(subType ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentDefinition':
        {
          if (child is ContractContentDefinitionBuilder) {
            contentDefinition = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'term':
        {
          if (child is List<ContractTermBuilder>) {
            // Replace or create new list
            term = child;
            return;
          } else if (child is ContractTermBuilder) {
            // Add single element to existing list or create new list
            term = [
              ...(term ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportingInfo':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingInfo = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInfo = [
              ...(supportingInfo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relevantHistory':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            relevantHistory = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            relevantHistory = [
              ...(relevantHistory ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'signer':
        {
          if (child is List<ContractSignerBuilder>) {
            // Replace or create new list
            signer = child;
            return;
          } else if (child is ContractSignerBuilder) {
            // Add single element to existing list or create new list
            signer = [
              ...(signer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'friendly':
        {
          if (child is List<ContractFriendlyBuilder>) {
            // Replace or create new list
            friendly = child;
            return;
          } else if (child is ContractFriendlyBuilder) {
            // Add single element to existing list or create new list
            friendly = [
              ...(friendly ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'legal':
        {
          if (child is List<ContractLegalBuilder>) {
            // Replace or create new list
            legal = child;
            return;
          } else if (child is ContractLegalBuilder) {
            // Add single element to existing list or create new list
            legal = [
              ...(legal ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rule':
        {
          if (child is List<ContractRuleBuilder>) {
            // Replace or create new list
            rule = child;
            return;
          } else if (child is ContractRuleBuilder) {
            // Add single element to existing list or create new list
            rule = [
              ...(rule ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'legallyBinding':
      case 'legallyBindingX':
        {
          if (child is LegallyBindingXContractBuilder) {
            legallyBindingX = child;
            return;
          } else {
            if (child is AttachmentBuilder) {
              legallyBindingX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              legallyBindingX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'legallyBindingAttachment':
        {
          if (child is AttachmentBuilder) {
            legallyBindingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'legallyBindingReference':
        {
          if (child is ReferenceBuilder) {
            legallyBindingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'legalState':
        return ['CodeableConceptBuilder'];
      case 'instantiatesCanonical':
        return ['ReferenceBuilder'];
      case 'instantiatesUri':
        return ['FhirUriBuilder'];
      case 'contentDerivative':
        return ['CodeableConceptBuilder'];
      case 'issued':
        return ['FhirDateTimeBuilder'];
      case 'applies':
        return ['PeriodBuilder'];
      case 'expirationType':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'authority':
        return ['ReferenceBuilder'];
      case 'domain':
        return ['ReferenceBuilder'];
      case 'site':
        return ['ReferenceBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'subtitle':
        return ['FhirStringBuilder'];
      case 'alias':
        return ['FhirStringBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      case 'scope':
        return ['CodeableConceptBuilder'];
      case 'topic':
      case 'topicX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'topicCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'topicReference':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'subType':
        return ['CodeableConceptBuilder'];
      case 'contentDefinition':
        return ['ContractContentDefinitionBuilder'];
      case 'term':
        return ['ContractTermBuilder'];
      case 'supportingInfo':
        return ['ReferenceBuilder'];
      case 'relevantHistory':
        return ['ReferenceBuilder'];
      case 'signer':
        return ['ContractSignerBuilder'];
      case 'friendly':
        return ['ContractFriendlyBuilder'];
      case 'legal':
        return ['ContractLegalBuilder'];
      case 'rule':
        return ['ContractRuleBuilder'];
      case 'legallyBinding':
      case 'legallyBindingX':
        return [
          'AttachmentBuilder',
          'ReferenceBuilder',
        ];
      case 'legallyBindingAttachment':
        return ['AttachmentBuilder'];
      case 'legallyBindingReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = ContractResourceStatusCodesBuilder.empty();
          return;
        }
      case 'legalState':
        {
          legalState = CodeableConceptBuilder.empty();
          return;
        }
      case 'instantiatesCanonical':
        {
          instantiatesCanonical = ReferenceBuilder.empty();
          return;
        }
      case 'instantiatesUri':
        {
          instantiatesUri = FhirUriBuilder.empty();
          return;
        }
      case 'contentDerivative':
        {
          contentDerivative = CodeableConceptBuilder.empty();
          return;
        }
      case 'issued':
        {
          issued = FhirDateTimeBuilder.empty();
          return;
        }
      case 'applies':
        {
          applies = PeriodBuilder.empty();
          return;
        }
      case 'expirationType':
        {
          expirationType = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = <ReferenceBuilder>[];
          return;
        }
      case 'authority':
        {
          authority = <ReferenceBuilder>[];
          return;
        }
      case 'domain':
        {
          domain = <ReferenceBuilder>[];
          return;
        }
      case 'site':
        {
          site = <ReferenceBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'subtitle':
        {
          subtitle = FhirStringBuilder.empty();
          return;
        }
      case 'alias':
        {
          alias = <FhirStringBuilder>[];
          return;
        }
      case 'author':
        {
          author = ReferenceBuilder.empty();
          return;
        }
      case 'scope':
        {
          scope = CodeableConceptBuilder.empty();
          return;
        }
      case 'topic':
      case 'topicX':
      case 'topicCodeableConcept':
        {
          topicX = CodeableConceptBuilder.empty();
          return;
        }
      case 'topicReference':
        {
          topicX = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subType':
        {
          subType = <CodeableConceptBuilder>[];
          return;
        }
      case 'contentDefinition':
        {
          contentDefinition = ContractContentDefinitionBuilder.empty();
          return;
        }
      case 'term':
        {
          term = <ContractTermBuilder>[];
          return;
        }
      case 'supportingInfo':
        {
          supportingInfo = <ReferenceBuilder>[];
          return;
        }
      case 'relevantHistory':
        {
          relevantHistory = <ReferenceBuilder>[];
          return;
        }
      case 'signer':
        {
          signer = <ContractSignerBuilder>[];
          return;
        }
      case 'friendly':
        {
          friendly = <ContractFriendlyBuilder>[];
          return;
        }
      case 'legal':
        {
          legal = <ContractLegalBuilder>[];
          return;
        }
      case 'rule':
        {
          rule = <ContractRuleBuilder>[];
          return;
        }
      case 'legallyBinding':
      case 'legallyBindingX':
      case 'legallyBindingAttachment':
        {
          legallyBindingX = AttachmentBuilder.empty();
          return;
        }
      case 'legallyBindingReference':
        {
          legallyBindingX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractBuilder clone() => throw UnimplementedError();
  @override
  ContractBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirUriBuilder? url,
    FhirStringBuilder? version,
    ContractResourceStatusCodesBuilder? status,
    CodeableConceptBuilder? legalState,
    ReferenceBuilder? instantiatesCanonical,
    FhirUriBuilder? instantiatesUri,
    CodeableConceptBuilder? contentDerivative,
    FhirDateTimeBuilder? issued,
    PeriodBuilder? applies,
    CodeableConceptBuilder? expirationType,
    List<ReferenceBuilder>? subject,
    List<ReferenceBuilder>? authority,
    List<ReferenceBuilder>? domain,
    List<ReferenceBuilder>? site,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    FhirStringBuilder? subtitle,
    List<FhirStringBuilder>? alias,
    ReferenceBuilder? author,
    CodeableConceptBuilder? scope,
    TopicXContractBuilder? topicX,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? subType,
    ContractContentDefinitionBuilder? contentDefinition,
    List<ContractTermBuilder>? term,
    List<ReferenceBuilder>? supportingInfo,
    List<ReferenceBuilder>? relevantHistory,
    List<ContractSignerBuilder>? signer,
    List<ContractFriendlyBuilder>? friendly,
    List<ContractLegalBuilder>? legal,
    List<ContractRuleBuilder>? rule,
    LegallyBindingXContractBuilder? legallyBindingX,
    CodeableConceptBuilder? topicCodeableConcept,
    ReferenceBuilder? topicReference,
    AttachmentBuilder? legallyBindingAttachment,
    ReferenceBuilder? legallyBindingReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ContractBuilder(
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
      topicX: topicX ?? topicCodeableConcept ?? topicReference ?? this.topicX,
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
      legallyBindingX: legallyBindingX ??
          legallyBindingAttachment ??
          legallyBindingReference ??
          this.legallyBindingX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      legalState,
      o.legalState,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentDerivative,
      o.contentDerivative,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      applies,
      o.applies,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expirationType,
      o.expirationType,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      domain,
      o.domain,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      site,
      o.site,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subtitle,
      o.subtitle,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      alias,
      o.alias,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scope,
      o.scope,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      topicX,
      o.topicX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subType,
      o.subType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentDefinition,
      o.contentDefinition,
    )) {
      return false;
    }
    if (!listEquals<ContractTermBuilder>(
      term,
      o.term,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      relevantHistory,
      o.relevantHistory,
    )) {
      return false;
    }
    if (!listEquals<ContractSignerBuilder>(
      signer,
      o.signer,
    )) {
      return false;
    }
    if (!listEquals<ContractFriendlyBuilder>(
      friendly,
      o.friendly,
    )) {
      return false;
    }
    if (!listEquals<ContractLegalBuilder>(
      legal,
      o.legal,
    )) {
      return false;
    }
    if (!listEquals<ContractRuleBuilder>(
      rule,
      o.rule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      legallyBindingX,
      o.legallyBindingX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractContentDefinitionBuilder]
/// Precusory content developed with a focus and intent of supporting the
/// formation a Contract instance, which may be associated with and
/// transformable into a Contract.
class ContractContentDefinitionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractContentDefinitionBuilder]

  ContractContentDefinitionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.subType,
    this.publisher,
    this.publicationDate,
    this.publicationStatus,
    this.copyright,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Contract.contentDefinition',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractContentDefinitionBuilder.empty() =>
      ContractContentDefinitionBuilder(
        type: CodeableConceptBuilder.empty(),
        publicationStatus:
            ContractResourcePublicationStatusCodesBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractContentDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.contentDefinition';
    return ContractContentDefinitionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'subType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.subType',
      ),
      publisher: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'publisher',
        ReferenceBuilder.fromJson,
        '$objectPath.publisher',
      ),
      publicationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'publicationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.publicationDate',
      ),
      publicationStatus: JsonParser.parsePrimitive<
          ContractResourcePublicationStatusCodesBuilder>(
        json,
        'publicationStatus',
        ContractResourcePublicationStatusCodesBuilder.fromJson,
        '$objectPath.publicationStatus',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'copyright',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.copyright',
      ),
    );
  }

  /// Deserialize [ContractContentDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractContentDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractContentDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractContentDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractContentDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractContentDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractContentDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractContentDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractContentDefinition';

  /// [type]
  /// Precusory content structure and use, i.e., a boilerplate, template,
  /// application for a contract such as an insurance policy or benefits
  /// under a program, e.g., workers compensation.
  CodeableConceptBuilder? type;

  /// [subType]
  /// Detailed Precusory content type.
  CodeableConceptBuilder? subType;

  /// [publisher]
  /// The individual or organization that published the Contract precursor
  /// content.
  ReferenceBuilder? publisher;

  /// [publicationDate]
  /// The date (and optionally time) when the contract was published. The
  /// date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the contract changes.
  FhirDateTimeBuilder? publicationDate;

  /// [publicationStatus]
  /// amended | appended | cancelled | disputed | entered-in-error |
  /// executable | executed | negotiable | offered | policy | rejected |
  /// renewed | revoked | resolved | terminated.
  ContractResourcePublicationStatusCodesBuilder? publicationStatus;

  /// [copyright]
  /// A copyright statement relating to Contract precursor content. Copyright
  /// statements are generally legal restrictions on the use and publishing
  /// of the Contract precursor content.
  FhirMarkdownBuilder? copyright;

  /// Converts a [ContractContentDefinitionBuilder]
  /// to [ContractContentDefinition]
  @override
  ContractContentDefinition build() =>
      ContractContentDefinition.fromJson(toJson());

  /// Converts a [ContractContentDefinitionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('subType', subType);
    addField('publisher', publisher);
    addField('publicationDate', publicationDate);
    addField('publicationStatus', publicationStatus);
    addField('copyright', copyright);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'subType',
      'publisher',
      'publicationDate',
      'publicationStatus',
      'copyright',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subType':
        if (subType != null) {
          fields.add(subType!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'publicationDate':
        if (publicationDate != null) {
          fields.add(publicationDate!);
        }
      case 'publicationStatus':
        if (publicationStatus != null) {
          fields.add(publicationStatus!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subType':
        {
          if (child is CodeableConceptBuilder) {
            subType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publisher':
        {
          if (child is ReferenceBuilder) {
            publisher = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publicationDate':
        {
          if (child is FhirDateTimeBuilder) {
            publicationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                publicationDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publicationStatus':
        {
          if (child is ContractResourcePublicationStatusCodesBuilder) {
            publicationStatus = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ContractResourcePublicationStatusCodesBuilder(stringValue);
                publicationStatus = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                copyright = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'subType':
        return ['CodeableConceptBuilder'];
      case 'publisher':
        return ['ReferenceBuilder'];
      case 'publicationDate':
        return ['FhirDateTimeBuilder'];
      case 'publicationStatus':
        return ['FhirCodeEnumBuilder'];
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractContentDefinitionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subType':
        {
          subType = CodeableConceptBuilder.empty();
          return;
        }
      case 'publisher':
        {
          publisher = ReferenceBuilder.empty();
          return;
        }
      case 'publicationDate':
        {
          publicationDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'publicationStatus':
        {
          publicationStatus =
              ContractResourcePublicationStatusCodesBuilder.empty();
          return;
        }
      case 'copyright':
        {
          copyright = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractContentDefinitionBuilder clone() => throw UnimplementedError();
  @override
  ContractContentDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? subType,
    ReferenceBuilder? publisher,
    FhirDateTimeBuilder? publicationDate,
    ContractResourcePublicationStatusCodesBuilder? publicationStatus,
    FhirMarkdownBuilder? copyright,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractContentDefinitionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      publisher: publisher ?? this.publisher,
      publicationDate: publicationDate ?? this.publicationDate,
      publicationStatus: publicationStatus ?? this.publicationStatus,
      copyright: copyright ?? this.copyright,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractContentDefinitionBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subType,
      o.subType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publicationDate,
      o.publicationDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publicationStatus,
      o.publicationStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractTermBuilder]
/// One or more Contract Provisions, which may be related and conveyed as a
/// group, and may contain nested groups.
class ContractTermBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractTermBuilder]

  ContractTermBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.issued,
    this.applies,
    TopicXContractTermBuilder? topicX,
    CodeableConceptBuilder? topicCodeableConcept,
    ReferenceBuilder? topicReference,
    this.type,
    this.subType,
    this.text,
    this.securityLabel,
    this.offer,
    this.asset,
    this.action,
    this.group,
    super.disallowExtensions,
  })  : topicX = topicX ?? topicCodeableConcept ?? topicReference,
        super(
          objectPath: 'Contract.term',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractTermBuilder.empty() => ContractTermBuilder(
        offer: ContractOfferBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractTermBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term';
    return ContractTermBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      issued: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'issued',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.issued',
      ),
      applies: JsonParser.parseObject<PeriodBuilder>(
        json,
        'applies',
        PeriodBuilder.fromJson,
        '$objectPath.applies',
      ),
      topicX: JsonParser.parsePolymorphic<TopicXContractTermBuilder>(
        json,
        {
          'topicCodeableConcept': CodeableConceptBuilder.fromJson,
          'topicReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'subType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.subType',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<ContractSecurityLabelBuilder>(
            (v) => ContractSecurityLabelBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      offer: JsonParser.parseObject<ContractOfferBuilder>(
        json,
        'offer',
        ContractOfferBuilder.fromJson,
        '$objectPath.offer',
      ),
      asset: (json['asset'] as List<dynamic>?)
          ?.map<ContractAssetBuilder>(
            (v) => ContractAssetBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.asset',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<ContractActionBuilder>(
            (v) => ContractActionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map<ContractTermBuilder>(
            (v) => ContractTermBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.group',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContractTermBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractTermBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractTermBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractTermBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractTermBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractTermBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractTermBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractTermBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractTerm';

  /// [identifier]
  /// Unique identifier for this particular Contract Provision.
  IdentifierBuilder? identifier;

  /// [issued]
  /// When this Contract Provision was issued.
  FhirDateTimeBuilder? issued;

  /// [applies]
  /// Relevant time or time-period when this Contract Provision is
  /// applicable.
  PeriodBuilder? applies;

  /// [topicX]
  /// The entity that the term applies to.
  TopicXContractTermBuilder? topicX;

  /// Getter for [topicCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get topicCodeableConcept =>
      topicX?.isAs<CodeableConceptBuilder>();

  /// Getter for [topicReference] as a ReferenceBuilder
  ReferenceBuilder? get topicReference => topicX?.isAs<ReferenceBuilder>();

  /// [type]
  /// A legal clause or condition contained within a contract that requires
  /// one or both parties to perform a particular requirement by some
  /// specified time or prevents one or both parties from performing a
  /// particular requirement by some specified time.
  CodeableConceptBuilder? type;

  /// [subType]
  /// A specialized legal clause or condition based on overarching contract
  /// type.
  CodeableConceptBuilder? subType;

  /// [text]
  /// Statement of a provision in a policy or a contract.
  FhirStringBuilder? text;

  /// [securityLabel]
  /// Security labels that protect the handling of information about the term
  /// and its elements, which may be specifically identified..
  List<ContractSecurityLabelBuilder>? securityLabel;

  /// [offer]
  /// The matter of concern in the context of this provision of the agrement.
  ContractOfferBuilder? offer;

  /// [asset]
  /// Contract Term Asset List.
  List<ContractAssetBuilder>? asset;

  /// [action]
  /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  List<ContractActionBuilder>? action;

  /// [group]
  /// Nested group of Contract Provisions.
  List<ContractTermBuilder>? group;

  /// Converts a [ContractTermBuilder]
  /// to [ContractTerm]
  @override
  ContractTerm build() => ContractTerm.fromJson(toJson());

  /// Converts a [ContractTermBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('issued', issued);
    addField('applies', applies);
    if (topicX != null) {
      final fhirType = topicX!.fhirType;
      addField('topic${fhirType.capitalizeFirstLetter()}', topicX);
    }

    addField('type', type);
    addField('subType', subType);
    addField('text', text);
    addField('securityLabel', securityLabel);
    addField('offer', offer);
    addField('asset', asset);
    addField('action', action);
    addField('group', group);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'issued',
      'applies',
      'topicX',
      'type',
      'subType',
      'text',
      'securityLabel',
      'offer',
      'asset',
      'action',
      'group',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'issued':
        if (issued != null) {
          fields.add(issued!);
        }
      case 'applies':
        if (applies != null) {
          fields.add(applies!);
        }
      case 'topic':
        if (topicX != null) {
          fields.add(topicX!);
        }
      case 'topicX':
        if (topicX != null) {
          fields.add(topicX!);
        }
      case 'topicCodeableConcept':
        if (topicX is CodeableConceptBuilder) {
          fields.add(topicX!);
        }
      case 'topicReference':
        if (topicX is ReferenceBuilder) {
          fields.add(topicX!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subType':
        if (subType != null) {
          fields.add(subType!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'securityLabel':
        if (securityLabel != null) {
          fields.addAll(securityLabel!);
        }
      case 'offer':
        if (offer != null) {
          fields.add(offer!);
        }
      case 'asset':
        if (asset != null) {
          fields.addAll(asset!);
        }
      case 'action':
        if (action != null) {
          fields.addAll(action!);
        }
      case 'group':
        if (group != null) {
          fields.addAll(group!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'issued':
        {
          if (child is FhirDateTimeBuilder) {
            issued = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                issued = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'applies':
        {
          if (child is PeriodBuilder) {
            applies = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topic':
      case 'topicX':
        {
          if (child is TopicXContractTermBuilder) {
            topicX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              topicX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              topicX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topicCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            topicX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'topicReference':
        {
          if (child is ReferenceBuilder) {
            topicX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subType':
        {
          if (child is CodeableConceptBuilder) {
            subType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabel':
        {
          if (child is List<ContractSecurityLabelBuilder>) {
            // Replace or create new list
            securityLabel = child;
            return;
          } else if (child is ContractSecurityLabelBuilder) {
            // Add single element to existing list or create new list
            securityLabel = [
              ...(securityLabel ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offer':
        {
          if (child is ContractOfferBuilder) {
            offer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asset':
        {
          if (child is List<ContractAssetBuilder>) {
            // Replace or create new list
            asset = child;
            return;
          } else if (child is ContractAssetBuilder) {
            // Add single element to existing list or create new list
            asset = [
              ...(asset ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<ContractActionBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is ContractActionBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'group':
        {
          if (child is List<ContractTermBuilder>) {
            // Replace or create new list
            group = child;
            return;
          } else if (child is ContractTermBuilder) {
            // Add single element to existing list or create new list
            group = [
              ...(group ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'issued':
        return ['FhirDateTimeBuilder'];
      case 'applies':
        return ['PeriodBuilder'];
      case 'topic':
      case 'topicX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'topicCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'topicReference':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'subType':
        return ['CodeableConceptBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'securityLabel':
        return ['ContractSecurityLabelBuilder'];
      case 'offer':
        return ['ContractOfferBuilder'];
      case 'asset':
        return ['ContractAssetBuilder'];
      case 'action':
        return ['ContractActionBuilder'];
      case 'group':
        return ['ContractTermBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractTermBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'issued':
        {
          issued = FhirDateTimeBuilder.empty();
          return;
        }
      case 'applies':
        {
          applies = PeriodBuilder.empty();
          return;
        }
      case 'topic':
      case 'topicX':
      case 'topicCodeableConcept':
        {
          topicX = CodeableConceptBuilder.empty();
          return;
        }
      case 'topicReference':
        {
          topicX = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subType':
        {
          subType = CodeableConceptBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'securityLabel':
        {
          securityLabel = <ContractSecurityLabelBuilder>[];
          return;
        }
      case 'offer':
        {
          offer = ContractOfferBuilder.empty();
          return;
        }
      case 'asset':
        {
          asset = <ContractAssetBuilder>[];
          return;
        }
      case 'action':
        {
          action = <ContractActionBuilder>[];
          return;
        }
      case 'group':
        {
          group = <ContractTermBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractTermBuilder clone() => throw UnimplementedError();
  @override
  ContractTermBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    FhirDateTimeBuilder? issued,
    PeriodBuilder? applies,
    TopicXContractTermBuilder? topicX,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? subType,
    FhirStringBuilder? text,
    List<ContractSecurityLabelBuilder>? securityLabel,
    ContractOfferBuilder? offer,
    List<ContractAssetBuilder>? asset,
    List<ContractActionBuilder>? action,
    List<ContractTermBuilder>? group,
    CodeableConceptBuilder? topicCodeableConcept,
    ReferenceBuilder? topicReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractTermBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      issued: issued ?? this.issued,
      applies: applies ?? this.applies,
      topicX: topicX ?? topicCodeableConcept ?? topicReference ?? this.topicX,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      text: text ?? this.text,
      securityLabel: securityLabel ?? this.securityLabel,
      offer: offer ?? this.offer,
      asset: asset ?? this.asset,
      action: action ?? this.action,
      group: group ?? this.group,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractTermBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      applies,
      o.applies,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      topicX,
      o.topicX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subType,
      o.subType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ContractSecurityLabelBuilder>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      offer,
      o.offer,
    )) {
      return false;
    }
    if (!listEquals<ContractAssetBuilder>(
      asset,
      o.asset,
    )) {
      return false;
    }
    if (!listEquals<ContractActionBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    if (!listEquals<ContractTermBuilder>(
      group,
      o.group,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractSecurityLabelBuilder]
/// Security labels that protect the handling of information about the term
/// and its elements, which may be specifically identified..
class ContractSecurityLabelBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractSecurityLabelBuilder]

  ContractSecurityLabelBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.classification,
    this.category,
    this.control,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Contract.term.securityLabel',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractSecurityLabelBuilder.empty() => ContractSecurityLabelBuilder(
        classification: CodingBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSecurityLabelBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.securityLabel';
    return ContractSecurityLabelBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      number: JsonParser.parsePrimitiveList<FhirUnsignedIntBuilder>(
        json,
        'number',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.number',
      ),
      classification: JsonParser.parseObject<CodingBuilder>(
        json,
        'classification',
        CodingBuilder.fromJson,
        '$objectPath.classification',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      control: (json['control'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.control',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContractSecurityLabelBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractSecurityLabelBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractSecurityLabelBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractSecurityLabelBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractSecurityLabelBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractSecurityLabelBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSecurityLabelBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractSecurityLabelBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractSecurityLabel';

  /// [number]
  /// Number used to link this term or term element to the applicable
  /// Security Label.
  List<FhirUnsignedIntBuilder>? number;

  /// [classification]
  /// Security label privacy tag that species the level of confidentiality
  /// protection required for this term and/or term elements.
  CodingBuilder? classification;

  /// [category]
  /// Security label privacy tag that species the applicable privacy and
  /// security policies governing this term and/or term elements.
  List<CodingBuilder>? category;

  /// [control]
  /// Security label privacy tag that species the manner in which term and/or
  /// term elements are to be protected.
  List<CodingBuilder>? control;

  /// Converts a [ContractSecurityLabelBuilder]
  /// to [ContractSecurityLabel]
  @override
  ContractSecurityLabel build() => ContractSecurityLabel.fromJson(toJson());

  /// Converts a [ContractSecurityLabelBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('number', number);
    addField('classification', classification);
    addField('category', category);
    addField('control', control);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'number',
      'classification',
      'category',
      'control',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'number':
        if (number != null) {
          fields.addAll(number!);
        }
      case 'classification':
        if (classification != null) {
          fields.add(classification!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'control':
        if (control != null) {
          fields.addAll(control!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'number':
        {
          if (child is List<FhirUnsignedIntBuilder>) {
            // Replace or create new list
            number = child;
            return;
          } else if (child is FhirUnsignedIntBuilder) {
            // Add single element to existing list or create new list
            number = [
              ...(number ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUnsignedIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              number = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  number = [
                    ...(number ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classification':
        {
          if (child is CodingBuilder) {
            classification = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'control':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            control = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            control = [
              ...(control ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'number':
        return ['FhirUnsignedIntBuilder'];
      case 'classification':
        return ['CodingBuilder'];
      case 'category':
        return ['CodingBuilder'];
      case 'control':
        return ['CodingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractSecurityLabelBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'number':
        {
          number = <FhirUnsignedIntBuilder>[];
          return;
        }
      case 'classification':
        {
          classification = CodingBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodingBuilder>[];
          return;
        }
      case 'control':
        {
          control = <CodingBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractSecurityLabelBuilder clone() => throw UnimplementedError();
  @override
  ContractSecurityLabelBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<FhirUnsignedIntBuilder>? number,
    CodingBuilder? classification,
    List<CodingBuilder>? category,
    List<CodingBuilder>? control,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractSecurityLabelBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      classification: classification ?? this.classification,
      category: category ?? this.category,
      control: control ?? this.control,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractSecurityLabelBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedIntBuilder>(
      number,
      o.number,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      control,
      o.control,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractOfferBuilder]
/// The matter of concern in the context of this provision of the agrement.
class ContractOfferBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractOfferBuilder]

  ContractOfferBuilder({
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
  }) : super(
          objectPath: 'Contract.term.offer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractOfferBuilder.empty() => ContractOfferBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractOfferBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.offer';
    return ContractOfferBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      party: (json['party'] as List<dynamic>?)
          ?.map<ContractPartyBuilder>(
            (v) => ContractPartyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.party',
              },
            ),
          )
          .toList(),
      topic: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'topic',
        ReferenceBuilder.fromJson,
        '$objectPath.topic',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      decision: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'decision',
        CodeableConceptBuilder.fromJson,
        '$objectPath.decision',
      ),
      decisionMode: (json['decisionMode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.decisionMode',
              },
            ),
          )
          .toList(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<ContractAnswerBuilder>(
            (v) => ContractAnswerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.answer',
              },
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      linkId: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      securityLabelNumber:
          JsonParser.parsePrimitiveList<FhirUnsignedIntBuilder>(
        json,
        'securityLabelNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.securityLabelNumber',
      ),
    );
  }

  /// Deserialize [ContractOfferBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractOfferBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractOfferBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractOfferBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractOfferBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractOfferBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractOfferBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractOfferBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractOffer';

  /// [identifier]
  /// Unique identifier for this particular Contract Provision.
  List<IdentifierBuilder>? identifier;

  /// [party]
  /// Offer Recipient.
  List<ContractPartyBuilder>? party;

  /// [topic]
  /// The owner of an asset has the residual control rights over the asset:
  /// the right to decide all usages of the asset in any way not inconsistent
  /// with a prior contract, custom, or law (Hart, 1995, p. 30).
  ReferenceBuilder? topic;

  /// [type]
  /// Type of Contract Provision such as specific requirements, purposes for
  /// actions, obligations, prohibitions, e.g. life time maximum benefit.
  CodeableConceptBuilder? type;

  /// [decision]
  /// Type of choice made by accepting party with respect to an offer made by
  /// an offeror/ grantee.
  CodeableConceptBuilder? decision;

  /// [decisionMode]
  /// How the decision about a Contract was conveyed.
  List<CodeableConceptBuilder>? decisionMode;

  /// [answer]
  /// Response to offer text.
  List<ContractAnswerBuilder>? answer;

  /// [text]
  /// Human readable form of this Contract Offer.
  FhirStringBuilder? text;

  /// [linkId]
  /// The id of the clause or question text of the offer in the referenced
  /// questionnaire/response.
  List<FhirStringBuilder>? linkId;

  /// [securityLabelNumber]
  /// Security labels that protects the offer.
  List<FhirUnsignedIntBuilder>? securityLabelNumber;

  /// Converts a [ContractOfferBuilder]
  /// to [ContractOffer]
  @override
  ContractOffer build() => ContractOffer.fromJson(toJson());

  /// Converts a [ContractOfferBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('party', party);
    addField('topic', topic);
    addField('type', type);
    addField('decision', decision);
    addField('decisionMode', decisionMode);
    addField('answer', answer);
    addField('text', text);
    addField('linkId', linkId);
    addField('securityLabelNumber', securityLabelNumber);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'party',
      'topic',
      'type',
      'decision',
      'decisionMode',
      'answer',
      'text',
      'linkId',
      'securityLabelNumber',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'party':
        if (party != null) {
          fields.addAll(party!);
        }
      case 'topic':
        if (topic != null) {
          fields.add(topic!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'decision':
        if (decision != null) {
          fields.add(decision!);
        }
      case 'decisionMode':
        if (decisionMode != null) {
          fields.addAll(decisionMode!);
        }
      case 'answer':
        if (answer != null) {
          fields.addAll(answer!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'linkId':
        if (linkId != null) {
          fields.addAll(linkId!);
        }
      case 'securityLabelNumber':
        if (securityLabelNumber != null) {
          fields.addAll(securityLabelNumber!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'party':
        {
          if (child is List<ContractPartyBuilder>) {
            // Replace or create new list
            party = child;
            return;
          } else if (child is ContractPartyBuilder) {
            // Add single element to existing list or create new list
            party = [
              ...(party ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topic':
        {
          if (child is ReferenceBuilder) {
            topic = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'decision':
        {
          if (child is CodeableConceptBuilder) {
            decision = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'decisionMode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            decisionMode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            decisionMode = [
              ...(decisionMode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'answer':
        {
          if (child is List<ContractAnswerBuilder>) {
            // Replace or create new list
            answer = child;
            return;
          } else if (child is ContractAnswerBuilder) {
            // Add single element to existing list or create new list
            answer = [
              ...(answer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'linkId':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            linkId = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            linkId = [
              ...(linkId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              linkId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = [
                  ...(linkId ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabelNumber':
        {
          if (child is List<FhirUnsignedIntBuilder>) {
            // Replace or create new list
            securityLabelNumber = child;
            return;
          } else if (child is FhirUnsignedIntBuilder) {
            // Add single element to existing list or create new list
            securityLabelNumber = [
              ...(securityLabelNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUnsignedIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              securityLabelNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  securityLabelNumber = [
                    ...(securityLabelNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'party':
        return ['ContractPartyBuilder'];
      case 'topic':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'decision':
        return ['CodeableConceptBuilder'];
      case 'decisionMode':
        return ['CodeableConceptBuilder'];
      case 'answer':
        return ['ContractAnswerBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'securityLabelNumber':
        return ['FhirUnsignedIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractOfferBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'party':
        {
          party = <ContractPartyBuilder>[];
          return;
        }
      case 'topic':
        {
          topic = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'decision':
        {
          decision = CodeableConceptBuilder.empty();
          return;
        }
      case 'decisionMode':
        {
          decisionMode = <CodeableConceptBuilder>[];
          return;
        }
      case 'answer':
        {
          answer = <ContractAnswerBuilder>[];
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'linkId':
        {
          linkId = <FhirStringBuilder>[];
          return;
        }
      case 'securityLabelNumber':
        {
          securityLabelNumber = <FhirUnsignedIntBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractOfferBuilder clone() => throw UnimplementedError();
  @override
  ContractOfferBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ContractPartyBuilder>? party,
    ReferenceBuilder? topic,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? decision,
    List<CodeableConceptBuilder>? decisionMode,
    List<ContractAnswerBuilder>? answer,
    FhirStringBuilder? text,
    List<FhirStringBuilder>? linkId,
    List<FhirUnsignedIntBuilder>? securityLabelNumber,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractOfferBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractOfferBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<ContractPartyBuilder>(
      party,
      o.party,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      topic,
      o.topic,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      decision,
      o.decision,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      decisionMode,
      o.decisionMode,
    )) {
      return false;
    }
    if (!listEquals<ContractAnswerBuilder>(
      answer,
      o.answer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedIntBuilder>(
      securityLabelNumber,
      o.securityLabelNumber,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractPartyBuilder]
/// Offer Recipient.
class ContractPartyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractPartyBuilder]

  ContractPartyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.role,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Contract.term.offer.party',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractPartyBuilder.empty() => ContractPartyBuilder(
        reference: <ReferenceBuilder>[],
        role: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractPartyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.offer.party';
    return ContractPartyBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reference',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
    );
  }

  /// Deserialize [ContractPartyBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractPartyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractPartyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractPartyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractPartyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractPartyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractPartyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractPartyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractParty';

  /// [reference]
  /// Participant in the offer.
  List<ReferenceBuilder>? reference;

  /// [role]
  /// How the party participates in the offer.
  CodeableConceptBuilder? role;

  /// Converts a [ContractPartyBuilder]
  /// to [ContractParty]
  @override
  ContractParty build() => ContractParty.fromJson(toJson());

  /// Converts a [ContractPartyBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('reference', reference);
    addField('role', role);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'reference',
      'role',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'reference':
        if (reference != null) {
          fields.addAll(reference!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reference = [
              ...(reference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'reference':
        return ['ReferenceBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractPartyBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'reference':
        {
          reference = <ReferenceBuilder>[];
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractPartyBuilder clone() => throw UnimplementedError();
  @override
  ContractPartyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<ReferenceBuilder>? reference,
    CodeableConceptBuilder? role,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractPartyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractPartyBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractAnswerBuilder]
/// Response to offer text.
class ContractAnswerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractAnswerBuilder]

  ContractAnswerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ValueXContractAnswerBuilder? valueX,
    FhirBooleanBuilder? valueBoolean,
    FhirDecimalBuilder? valueDecimal,
    FhirIntegerBuilder? valueInteger,
    FhirDateBuilder? valueDate,
    FhirDateTimeBuilder? valueDateTime,
    FhirTimeBuilder? valueTime,
    FhirStringBuilder? valueString,
    FhirUriBuilder? valueUri,
    AttachmentBuilder? valueAttachment,
    CodingBuilder? valueCoding,
    QuantityBuilder? valueQuantity,
    ReferenceBuilder? valueReference,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueBoolean ??
            valueDecimal ??
            valueInteger ??
            valueDate ??
            valueDateTime ??
            valueTime ??
            valueString ??
            valueUri ??
            valueAttachment ??
            valueCoding ??
            valueQuantity ??
            valueReference,
        super(
          objectPath: 'Contract.term.offer.answer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractAnswerBuilder.empty() => ContractAnswerBuilder(
        valueX: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAnswerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.offer.answer';
    return ContractAnswerBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXContractAnswerBuilder>(
        json,
        {
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ContractAnswerBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractAnswerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractAnswerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractAnswerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractAnswerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractAnswerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractAnswerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractAnswerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractAnswer';

  /// [valueX]
  /// Response to an offer clause or question text, which enables selection
  /// of values to be agreed to, e.g., the period of participation, the date
  /// of occupancy of a rental, warrently duration, or whether biospecimen
  /// may be used for further research.
  ValueXContractAnswerBuilder? valueX;

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Converts a [ContractAnswerBuilder]
  /// to [ContractAnswer]
  @override
  ContractAnswer build() => ContractAnswer.fromJson(toJson());

  /// Converts a [ContractAnswerBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXContractAnswerBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirBooleanBuilder',
          'FhirDecimalBuilder',
          'FhirIntegerBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirTimeBuilder',
          'FhirStringBuilder',
          'FhirUriBuilder',
          'AttachmentBuilder',
          'CodingBuilder',
          'QuantityBuilder',
          'ReferenceBuilder',
        ];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractAnswerBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractAnswerBuilder clone() => throw UnimplementedError();
  @override
  ContractAnswerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ValueXContractAnswerBuilder? valueX,
    FhirBooleanBuilder? valueBoolean,
    FhirDecimalBuilder? valueDecimal,
    FhirIntegerBuilder? valueInteger,
    FhirDateBuilder? valueDate,
    FhirDateTimeBuilder? valueDateTime,
    FhirTimeBuilder? valueTime,
    FhirStringBuilder? valueString,
    FhirUriBuilder? valueUri,
    AttachmentBuilder? valueAttachment,
    CodingBuilder? valueCoding,
    QuantityBuilder? valueQuantity,
    ReferenceBuilder? valueReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractAnswerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ??
          valueBoolean ??
          valueDecimal ??
          valueInteger ??
          valueDate ??
          valueDateTime ??
          valueTime ??
          valueString ??
          valueUri ??
          valueAttachment ??
          valueCoding ??
          valueQuantity ??
          valueReference ??
          this.valueX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractAnswerBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractAssetBuilder]
/// Contract Term Asset List.
class ContractAssetBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractAssetBuilder]

  ContractAssetBuilder({
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
  }) : super(
          objectPath: 'Contract.term.asset',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractAssetBuilder.empty() => ContractAssetBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAssetBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.asset';
    return ContractAssetBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      scope: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'scope',
        CodeableConceptBuilder.fromJson,
        '$objectPath.scope',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      typeReference: (json['typeReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.typeReference',
              },
            ),
          )
          .toList(),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subtype',
              },
            ),
          )
          .toList(),
      relationship: JsonParser.parseObject<CodingBuilder>(
        json,
        'relationship',
        CodingBuilder.fromJson,
        '$objectPath.relationship',
      ),
      context: (json['context'] as List<dynamic>?)
          ?.map<ContractContextBuilder>(
            (v) => ContractContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.context',
              },
            ),
          )
          .toList(),
      condition: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'condition',
        FhirStringBuilder.fromJson,
        '$objectPath.condition',
      ),
      periodType: (json['periodType'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.periodType',
              },
            ),
          )
          .toList(),
      period: (json['period'] as List<dynamic>?)
          ?.map<PeriodBuilder>(
            (v) => PeriodBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.period',
              },
            ),
          )
          .toList(),
      usePeriod: (json['usePeriod'] as List<dynamic>?)
          ?.map<PeriodBuilder>(
            (v) => PeriodBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.usePeriod',
              },
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      linkId: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<ContractAnswerBuilder>(
            (v) => ContractAnswerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.answer',
              },
            ),
          )
          .toList(),
      securityLabelNumber:
          JsonParser.parsePrimitiveList<FhirUnsignedIntBuilder>(
        json,
        'securityLabelNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.securityLabelNumber',
      ),
      valuedItem: (json['valuedItem'] as List<dynamic>?)
          ?.map<ContractValuedItemBuilder>(
            (v) => ContractValuedItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valuedItem',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContractAssetBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractAssetBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractAssetBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractAssetBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractAssetBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractAssetBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractAssetBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractAssetBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractAsset';

  /// [scope]
  /// Differentiates the kind of the asset .
  CodeableConceptBuilder? scope;

  /// [type]
  /// Target entity type about which the term may be concerned.
  List<CodeableConceptBuilder>? type;

  /// [typeReference]
  /// Associated entities.
  List<ReferenceBuilder>? typeReference;

  /// [subtype]
  /// May be a subtype or part of an offered asset.
  List<CodeableConceptBuilder>? subtype;

  /// [relationship]
  /// Specifies the applicability of the term to an asset resource instance,
  /// and instances it refers to orinstances that refer to it, and/or are
  /// owned by the offeree.
  CodingBuilder? relationship;

  /// [context]
  /// Circumstance of the asset.
  List<ContractContextBuilder>? context;

  /// [condition]
  /// Description of the quality and completeness of the asset that imay be a
  /// factor in its valuation.
  FhirStringBuilder? condition;

  /// [periodType]
  /// Type of Asset availability for use or ownership.
  List<CodeableConceptBuilder>? periodType;

  /// [period]
  /// Asset relevant contractual time period.
  List<PeriodBuilder>? period;

  /// [usePeriod]
  /// Time period of asset use.
  List<PeriodBuilder>? usePeriod;

  /// [text]
  /// Clause or question text (Prose Object) concerning the asset in a linked
  /// form, such as a QuestionnaireResponse used in the formation of the
  /// contract.
  FhirStringBuilder? text;

  /// [linkId]
  /// Id [identifier??] of the clause or question text about the asset in the
  /// referenced form or QuestionnaireResponse.
  List<FhirStringBuilder>? linkId;

  /// [answer]
  /// Response to assets.
  List<ContractAnswerBuilder>? answer;

  /// [securityLabelNumber]
  /// Security labels that protects the asset.
  List<FhirUnsignedIntBuilder>? securityLabelNumber;

  /// [valuedItem]
  /// Contract Valued Item List.
  List<ContractValuedItemBuilder>? valuedItem;

  /// Converts a [ContractAssetBuilder]
  /// to [ContractAsset]
  @override
  ContractAsset build() => ContractAsset.fromJson(toJson());

  /// Converts a [ContractAssetBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('scope', scope);
    addField('type', type);
    addField('typeReference', typeReference);
    addField('subtype', subtype);
    addField('relationship', relationship);
    addField('context', context);
    addField('condition', condition);
    addField('periodType', periodType);
    addField('period', period);
    addField('usePeriod', usePeriod);
    addField('text', text);
    addField('linkId', linkId);
    addField('answer', answer);
    addField('securityLabelNumber', securityLabelNumber);
    addField('valuedItem', valuedItem);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'scope',
      'type',
      'typeReference',
      'subtype',
      'relationship',
      'context',
      'condition',
      'periodType',
      'period',
      'usePeriod',
      'text',
      'linkId',
      'answer',
      'securityLabelNumber',
      'valuedItem',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'scope':
        if (scope != null) {
          fields.add(scope!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'typeReference':
        if (typeReference != null) {
          fields.addAll(typeReference!);
        }
      case 'subtype':
        if (subtype != null) {
          fields.addAll(subtype!);
        }
      case 'relationship':
        if (relationship != null) {
          fields.add(relationship!);
        }
      case 'context':
        if (context != null) {
          fields.addAll(context!);
        }
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
        }
      case 'periodType':
        if (periodType != null) {
          fields.addAll(periodType!);
        }
      case 'period':
        if (period != null) {
          fields.addAll(period!);
        }
      case 'usePeriod':
        if (usePeriod != null) {
          fields.addAll(usePeriod!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'linkId':
        if (linkId != null) {
          fields.addAll(linkId!);
        }
      case 'answer':
        if (answer != null) {
          fields.addAll(answer!);
        }
      case 'securityLabelNumber':
        if (securityLabelNumber != null) {
          fields.addAll(securityLabelNumber!);
        }
      case 'valuedItem':
        if (valuedItem != null) {
          fields.addAll(valuedItem!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'scope':
        {
          if (child is CodeableConceptBuilder) {
            scope = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'typeReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            typeReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            typeReference = [
              ...(typeReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subtype':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subtype = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subtype = [
              ...(subtype ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relationship':
        {
          if (child is CodingBuilder) {
            relationship = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'context':
        {
          if (child is List<ContractContextBuilder>) {
            // Replace or create new list
            context = child;
            return;
          } else if (child is ContractContextBuilder) {
            // Add single element to existing list or create new list
            context = [
              ...(context ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is FhirStringBuilder) {
            condition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                condition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'periodType':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            periodType = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            periodType = [
              ...(periodType ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is List<PeriodBuilder>) {
            // Replace or create new list
            period = child;
            return;
          } else if (child is PeriodBuilder) {
            // Add single element to existing list or create new list
            period = [
              ...(period ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usePeriod':
        {
          if (child is List<PeriodBuilder>) {
            // Replace or create new list
            usePeriod = child;
            return;
          } else if (child is PeriodBuilder) {
            // Add single element to existing list or create new list
            usePeriod = [
              ...(usePeriod ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'linkId':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            linkId = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            linkId = [
              ...(linkId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              linkId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = [
                  ...(linkId ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'answer':
        {
          if (child is List<ContractAnswerBuilder>) {
            // Replace or create new list
            answer = child;
            return;
          } else if (child is ContractAnswerBuilder) {
            // Add single element to existing list or create new list
            answer = [
              ...(answer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabelNumber':
        {
          if (child is List<FhirUnsignedIntBuilder>) {
            // Replace or create new list
            securityLabelNumber = child;
            return;
          } else if (child is FhirUnsignedIntBuilder) {
            // Add single element to existing list or create new list
            securityLabelNumber = [
              ...(securityLabelNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUnsignedIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              securityLabelNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  securityLabelNumber = [
                    ...(securityLabelNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valuedItem':
        {
          if (child is List<ContractValuedItemBuilder>) {
            // Replace or create new list
            valuedItem = child;
            return;
          } else if (child is ContractValuedItemBuilder) {
            // Add single element to existing list or create new list
            valuedItem = [
              ...(valuedItem ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'scope':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'typeReference':
        return ['ReferenceBuilder'];
      case 'subtype':
        return ['CodeableConceptBuilder'];
      case 'relationship':
        return ['CodingBuilder'];
      case 'context':
        return ['ContractContextBuilder'];
      case 'condition':
        return ['FhirStringBuilder'];
      case 'periodType':
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'usePeriod':
        return ['PeriodBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'answer':
        return ['ContractAnswerBuilder'];
      case 'securityLabelNumber':
        return ['FhirUnsignedIntBuilder'];
      case 'valuedItem':
        return ['ContractValuedItemBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractAssetBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'scope':
        {
          scope = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'typeReference':
        {
          typeReference = <ReferenceBuilder>[];
          return;
        }
      case 'subtype':
        {
          subtype = <CodeableConceptBuilder>[];
          return;
        }
      case 'relationship':
        {
          relationship = CodingBuilder.empty();
          return;
        }
      case 'context':
        {
          context = <ContractContextBuilder>[];
          return;
        }
      case 'condition':
        {
          condition = FhirStringBuilder.empty();
          return;
        }
      case 'periodType':
        {
          periodType = <CodeableConceptBuilder>[];
          return;
        }
      case 'period':
        {
          period = <PeriodBuilder>[];
          return;
        }
      case 'usePeriod':
        {
          usePeriod = <PeriodBuilder>[];
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'linkId':
        {
          linkId = <FhirStringBuilder>[];
          return;
        }
      case 'answer':
        {
          answer = <ContractAnswerBuilder>[];
          return;
        }
      case 'securityLabelNumber':
        {
          securityLabelNumber = <FhirUnsignedIntBuilder>[];
          return;
        }
      case 'valuedItem':
        {
          valuedItem = <ContractValuedItemBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractAssetBuilder clone() => throw UnimplementedError();
  @override
  ContractAssetBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? scope,
    List<CodeableConceptBuilder>? type,
    List<ReferenceBuilder>? typeReference,
    List<CodeableConceptBuilder>? subtype,
    CodingBuilder? relationship,
    List<ContractContextBuilder>? context,
    FhirStringBuilder? condition,
    List<CodeableConceptBuilder>? periodType,
    List<PeriodBuilder>? period,
    List<PeriodBuilder>? usePeriod,
    FhirStringBuilder? text,
    List<FhirStringBuilder>? linkId,
    List<ContractAnswerBuilder>? answer,
    List<FhirUnsignedIntBuilder>? securityLabelNumber,
    List<ContractValuedItemBuilder>? valuedItem,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractAssetBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractAssetBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scope,
      o.scope,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      typeReference,
      o.typeReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subtype,
      o.subtype,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!listEquals<ContractContextBuilder>(
      context,
      o.context,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      periodType,
      o.periodType,
    )) {
      return false;
    }
    if (!listEquals<PeriodBuilder>(
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<PeriodBuilder>(
      usePeriod,
      o.usePeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!listEquals<ContractAnswerBuilder>(
      answer,
      o.answer,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedIntBuilder>(
      securityLabelNumber,
      o.securityLabelNumber,
    )) {
      return false;
    }
    if (!listEquals<ContractValuedItemBuilder>(
      valuedItem,
      o.valuedItem,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractContextBuilder]
/// Circumstance of the asset.
class ContractContextBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractContextBuilder]

  ContractContextBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.code,
    this.text,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Contract.term.asset.context',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractContextBuilder.empty() => ContractContextBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractContextBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.asset.context';
    return ContractContextBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      reference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reference',
        ReferenceBuilder.fromJson,
        '$objectPath.reference',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
    );
  }

  /// Deserialize [ContractContextBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractContextBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractContextBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractContextBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractContextBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractContextBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractContextBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractContextBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractContext';

  /// [reference]
  /// Asset context reference may include the creator, custodian, or owning
  /// Person or Organization (e.g., bank, repository), location held, e.g.,
  /// building, jurisdiction.
  ReferenceBuilder? reference;

  /// [code]
  /// Coded representation of the context generally or of the Referenced
  /// entity, such as the asset holder type or location.
  List<CodeableConceptBuilder>? code;

  /// [text]
  /// Context description.
  FhirStringBuilder? text;

  /// Converts a [ContractContextBuilder]
  /// to [ContractContext]
  @override
  ContractContext build() => ContractContext.fromJson(toJson());

  /// Converts a [ContractContextBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('reference', reference);
    addField('code', code);
    addField('text', text);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'reference',
      'code',
      'text',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is ReferenceBuilder) {
            reference = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'reference':
        return ['ReferenceBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractContextBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'reference':
        {
          reference = ReferenceBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractContextBuilder clone() => throw UnimplementedError();
  @override
  ContractContextBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? reference,
    List<CodeableConceptBuilder>? code,
    FhirStringBuilder? text,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractContextBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      code: code ?? this.code,
      text: text ?? this.text,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractContextBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractValuedItemBuilder]
/// Contract Valued Item List.
class ContractValuedItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractValuedItemBuilder]

  ContractValuedItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    EntityXContractValuedItemBuilder? entityX,
    CodeableConceptBuilder? entityCodeableConcept,
    ReferenceBuilder? entityReference,
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
  })  : entityX = entityX ?? entityCodeableConcept ?? entityReference,
        super(
          objectPath: 'Contract.term.asset.valuedItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractValuedItemBuilder.empty() => ContractValuedItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractValuedItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.asset.valuedItem';
    return ContractValuedItemBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      entityX: JsonParser.parsePolymorphic<EntityXContractValuedItemBuilder>(
        json,
        {
          'entityCodeableConcept': CodeableConceptBuilder.fromJson,
          'entityReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      effectiveTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'effectiveTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.effectiveTime',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      points: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'points',
        FhirDecimalBuilder.fromJson,
        '$objectPath.points',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      payment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'payment',
        FhirStringBuilder.fromJson,
        '$objectPath.payment',
      ),
      paymentDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'paymentDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.paymentDate',
      ),
      responsible: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'responsible',
        ReferenceBuilder.fromJson,
        '$objectPath.responsible',
      ),
      recipient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'recipient',
        ReferenceBuilder.fromJson,
        '$objectPath.recipient',
      ),
      linkId: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      securityLabelNumber:
          JsonParser.parsePrimitiveList<FhirUnsignedIntBuilder>(
        json,
        'securityLabelNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.securityLabelNumber',
      ),
    );
  }

  /// Deserialize [ContractValuedItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractValuedItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractValuedItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractValuedItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractValuedItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractValuedItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractValuedItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractValuedItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractValuedItem';

  /// [entityX]
  /// Specific type of Contract Valued Item that may be priced.
  EntityXContractValuedItemBuilder? entityX;

  /// Getter for [entityCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get entityCodeableConcept =>
      entityX?.isAs<CodeableConceptBuilder>();

  /// Getter for [entityReference] as a ReferenceBuilder
  ReferenceBuilder? get entityReference => entityX?.isAs<ReferenceBuilder>();

  /// [identifier]
  /// Identifies a Contract Valued Item instance.
  IdentifierBuilder? identifier;

  /// [effectiveTime]
  /// Indicates the time during which this Contract ValuedItem information is
  /// effective.
  FhirDateTimeBuilder? effectiveTime;

  /// [quantity]
  /// Specifies the units by which the Contract Valued Item is measured or
  /// counted, and quantifies the countable or measurable Contract Valued
  /// Item instances.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// A Contract Valued Item unit valuation measure.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of the Contract Valued Item delivered. The concept of a
  /// Factor allows for a discount or surcharge multiplier to be applied to a
  /// monetary amount.
  FhirDecimalBuilder? factor;

  /// [points]
  /// An amount that expresses the weighting (based on difficulty, cost
  /// and/or resource intensiveness) associated with the Contract Valued Item
  /// delivered. The concept of Points allows for assignment of point values
  /// for a Contract Valued Item, such that a monetary amount can be assigned
  /// to each point.
  FhirDecimalBuilder? points;

  /// [net]
  /// Expresses the product of the Contract Valued Item unitQuantity and the
  /// unitPriceAmt. For example, the formula: unit Quantity * unit Price
  /// (Cost per Point) * factor Number * points = net Amount. Quantity,
  /// factor and points are assumed to be 1 if not supplied.
  MoneyBuilder? net;

  /// [payment]
  /// Terms of valuation.
  FhirStringBuilder? payment;

  /// [paymentDate]
  /// When payment is due.
  FhirDateTimeBuilder? paymentDate;

  /// [responsible]
  /// Who will make payment.
  ReferenceBuilder? responsible;

  /// [recipient]
  /// Who will receive payment.
  ReferenceBuilder? recipient;

  /// [linkId]
  /// Id of the clause or question text related to the context of this
  /// valuedItem in the referenced form or QuestionnaireResponse.
  List<FhirStringBuilder>? linkId;

  /// [securityLabelNumber]
  /// A set of security labels that define which terms are controlled by this
  /// condition.
  List<FhirUnsignedIntBuilder>? securityLabelNumber;

  /// Converts a [ContractValuedItemBuilder]
  /// to [ContractValuedItem]
  @override
  ContractValuedItem build() => ContractValuedItem.fromJson(toJson());

  /// Converts a [ContractValuedItemBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (entityX != null) {
      final fhirType = entityX!.fhirType;
      addField('entity${fhirType.capitalizeFirstLetter()}', entityX);
    }

    addField('identifier', identifier);
    addField('effectiveTime', effectiveTime);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('points', points);
    addField('net', net);
    addField('payment', payment);
    addField('paymentDate', paymentDate);
    addField('responsible', responsible);
    addField('recipient', recipient);
    addField('linkId', linkId);
    addField('securityLabelNumber', securityLabelNumber);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'entityX',
      'identifier',
      'effectiveTime',
      'quantity',
      'unitPrice',
      'factor',
      'points',
      'net',
      'payment',
      'paymentDate',
      'responsible',
      'recipient',
      'linkId',
      'securityLabelNumber',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'entity':
        if (entityX != null) {
          fields.add(entityX!);
        }
      case 'entityX':
        if (entityX != null) {
          fields.add(entityX!);
        }
      case 'entityCodeableConcept':
        if (entityX is CodeableConceptBuilder) {
          fields.add(entityX!);
        }
      case 'entityReference':
        if (entityX is ReferenceBuilder) {
          fields.add(entityX!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'effectiveTime':
        if (effectiveTime != null) {
          fields.add(effectiveTime!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'points':
        if (points != null) {
          fields.add(points!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'payment':
        if (payment != null) {
          fields.add(payment!);
        }
      case 'paymentDate':
        if (paymentDate != null) {
          fields.add(paymentDate!);
        }
      case 'responsible':
        if (responsible != null) {
          fields.add(responsible!);
        }
      case 'recipient':
        if (recipient != null) {
          fields.add(recipient!);
        }
      case 'linkId':
        if (linkId != null) {
          fields.addAll(linkId!);
        }
      case 'securityLabelNumber':
        if (securityLabelNumber != null) {
          fields.addAll(securityLabelNumber!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entity':
      case 'entityX':
        {
          if (child is EntityXContractValuedItemBuilder) {
            entityX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              entityX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              entityX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entityCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            entityX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'entityReference':
        {
          if (child is ReferenceBuilder) {
            entityX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveTime':
        {
          if (child is FhirDateTimeBuilder) {
            effectiveTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                effectiveTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  factor = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'points':
        {
          if (child is FhirDecimalBuilder) {
            points = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  points = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'payment':
        {
          if (child is FhirStringBuilder) {
            payment = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                payment = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paymentDate':
        {
          if (child is FhirDateTimeBuilder) {
            paymentDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                paymentDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'responsible':
        {
          if (child is ReferenceBuilder) {
            responsible = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recipient':
        {
          if (child is ReferenceBuilder) {
            recipient = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'linkId':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            linkId = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            linkId = [
              ...(linkId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              linkId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = [
                  ...(linkId ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabelNumber':
        {
          if (child is List<FhirUnsignedIntBuilder>) {
            // Replace or create new list
            securityLabelNumber = child;
            return;
          } else if (child is FhirUnsignedIntBuilder) {
            // Add single element to existing list or create new list
            securityLabelNumber = [
              ...(securityLabelNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUnsignedIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              securityLabelNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  securityLabelNumber = [
                    ...(securityLabelNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'entity':
      case 'entityX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'entityCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'entityReference':
        return ['ReferenceBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'effectiveTime':
        return ['FhirDateTimeBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'points':
        return ['FhirDecimalBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'payment':
        return ['FhirStringBuilder'];
      case 'paymentDate':
        return ['FhirDateTimeBuilder'];
      case 'responsible':
        return ['ReferenceBuilder'];
      case 'recipient':
        return ['ReferenceBuilder'];
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'securityLabelNumber':
        return ['FhirUnsignedIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractValuedItemBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'entity':
      case 'entityX':
      case 'entityCodeableConcept':
        {
          entityX = CodeableConceptBuilder.empty();
          return;
        }
      case 'entityReference':
        {
          entityX = ReferenceBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'effectiveTime':
        {
          effectiveTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'points':
        {
          points = FhirDecimalBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'payment':
        {
          payment = FhirStringBuilder.empty();
          return;
        }
      case 'paymentDate':
        {
          paymentDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'responsible':
        {
          responsible = ReferenceBuilder.empty();
          return;
        }
      case 'recipient':
        {
          recipient = ReferenceBuilder.empty();
          return;
        }
      case 'linkId':
        {
          linkId = <FhirStringBuilder>[];
          return;
        }
      case 'securityLabelNumber':
        {
          securityLabelNumber = <FhirUnsignedIntBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractValuedItemBuilder clone() => throw UnimplementedError();
  @override
  ContractValuedItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    EntityXContractValuedItemBuilder? entityX,
    IdentifierBuilder? identifier,
    FhirDateTimeBuilder? effectiveTime,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    FhirDecimalBuilder? points,
    MoneyBuilder? net,
    FhirStringBuilder? payment,
    FhirDateTimeBuilder? paymentDate,
    ReferenceBuilder? responsible,
    ReferenceBuilder? recipient,
    List<FhirStringBuilder>? linkId,
    List<FhirUnsignedIntBuilder>? securityLabelNumber,
    CodeableConceptBuilder? entityCodeableConcept,
    ReferenceBuilder? entityReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractValuedItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      entityX:
          entityX ?? entityCodeableConcept ?? entityReference ?? this.entityX,
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractValuedItemBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      entityX,
      o.entityX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectiveTime,
      o.effectiveTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      points,
      o.points,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payment,
      o.payment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentDate,
      o.paymentDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responsible,
      o.responsible,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recipient,
      o.recipient,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedIntBuilder>(
      securityLabelNumber,
      o.securityLabelNumber,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractActionBuilder]
/// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ContractActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractActionBuilder]

  ContractActionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.doNotPerform,
    this.type,
    this.subject,
    this.intent,
    this.linkId,
    this.status,
    this.context,
    this.contextLinkId,
    OccurrenceXContractActionBuilder? occurrenceX,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    TimingBuilder? occurrenceTiming,
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
  })  : occurrenceX = occurrenceX ??
            occurrenceDateTime ??
            occurrencePeriod ??
            occurrenceTiming,
        super(
          objectPath: 'Contract.term.action',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractActionBuilder.empty() => ContractActionBuilder(
        type: CodeableConceptBuilder.empty(),
        intent: CodeableConceptBuilder.empty(),
        status: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.action';
    return ContractActionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      doNotPerform: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'doNotPerform',
        FhirBooleanBuilder.fromJson,
        '$objectPath.doNotPerform',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<ContractSubjectBuilder>(
            (v) => ContractSubjectBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      intent: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'intent',
        CodeableConceptBuilder.fromJson,
        '$objectPath.intent',
      ),
      linkId: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      context: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'context',
        ReferenceBuilder.fromJson,
        '$objectPath.context',
      ),
      contextLinkId: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'contextLinkId',
        FhirStringBuilder.fromJson,
        '$objectPath.contextLinkId',
      ),
      occurrenceX:
          JsonParser.parsePolymorphic<OccurrenceXContractActionBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrencePeriod': PeriodBuilder.fromJson,
          'occurrenceTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      requester: (json['requester'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.requester',
              },
            ),
          )
          .toList(),
      requesterLinkId: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'requesterLinkId',
        FhirStringBuilder.fromJson,
        '$objectPath.requesterLinkId',
      ),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performerType',
              },
            ),
          )
          .toList(),
      performerRole: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'performerRole',
        CodeableConceptBuilder.fromJson,
        '$objectPath.performerRole',
      ),
      performer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'performer',
        ReferenceBuilder.fromJson,
        '$objectPath.performer',
      ),
      performerLinkId: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'performerLinkId',
        FhirStringBuilder.fromJson,
        '$objectPath.performerLinkId',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      reason: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'reason',
        FhirStringBuilder.fromJson,
        '$objectPath.reason',
      ),
      reasonLinkId: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'reasonLinkId',
        FhirStringBuilder.fromJson,
        '$objectPath.reasonLinkId',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      securityLabelNumber:
          JsonParser.parsePrimitiveList<FhirUnsignedIntBuilder>(
        json,
        'securityLabelNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.securityLabelNumber',
      ),
    );
  }

  /// Deserialize [ContractActionBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractActionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractAction';

  /// [doNotPerform]
  /// True if the term prohibits the action.
  FhirBooleanBuilder? doNotPerform;

  /// [type]
  /// Activity or service obligation to be done or not done, performed or not
  /// performed, effectuated or not by this Contract term.
  CodeableConceptBuilder? type;

  /// [subject]
  /// Entity of the action.
  List<ContractSubjectBuilder>? subject;

  /// [intent]
  /// Reason or purpose for the action stipulated by this Contract Provision.
  CodeableConceptBuilder? intent;

  /// [linkId]
  /// Id [identifier??] of the clause or question text related to this action
  /// in the referenced form or QuestionnaireResponse.
  List<FhirStringBuilder>? linkId;

  /// [status]
  /// Current state of the term action.
  CodeableConceptBuilder? status;

  /// [context]
  /// Encounter or Episode with primary association to specified term
  /// activity.
  ReferenceBuilder? context;

  /// [contextLinkId]
  /// Id [identifier??] of the clause or question text related to the
  /// requester of this action in the referenced form or
  /// QuestionnaireResponse.
  List<FhirStringBuilder>? contextLinkId;

  /// [occurrenceX]
  /// When action happens.
  OccurrenceXContractActionBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrencePeriod] as a PeriodBuilder
  PeriodBuilder? get occurrencePeriod => occurrenceX?.isAs<PeriodBuilder>();

  /// Getter for [occurrenceTiming] as a TimingBuilder
  TimingBuilder? get occurrenceTiming => occurrenceX?.isAs<TimingBuilder>();

  /// [requester]
  /// Who or what initiated the action and has responsibility for its
  /// activation.
  List<ReferenceBuilder>? requester;

  /// [requesterLinkId]
  /// Id [identifier??] of the clause or question text related to the
  /// requester of this action in the referenced form or
  /// QuestionnaireResponse.
  List<FhirStringBuilder>? requesterLinkId;

  /// [performerType]
  /// The type of individual that is desired or required to perform or not
  /// perform the action.
  List<CodeableConceptBuilder>? performerType;

  /// [performerRole]
  /// The type of role or competency of an individual desired or required to
  /// perform or not perform the action.
  CodeableConceptBuilder? performerRole;

  /// [performer]
  /// Indicates who or what is being asked to perform (or not perform) the
  /// ction.
  ReferenceBuilder? performer;

  /// [performerLinkId]
  /// Id [identifier??] of the clause or question text related to the reason
  /// type or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  List<FhirStringBuilder>? performerLinkId;

  /// [reasonCode]
  /// Rationale for the action to be performed or not performed. Describes
  /// why the action is permitted or prohibited.
  List<CodeableConceptBuilder>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource whose existence justifies permitting or not
  /// permitting this action.
  List<ReferenceBuilder>? reasonReference;

  /// [reason]
  /// Describes why the action is to be performed or not performed in textual
  /// form.
  List<FhirStringBuilder>? reason;

  /// [reasonLinkId]
  /// Id [identifier??] of the clause or question text related to the reason
  /// type or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  List<FhirStringBuilder>? reasonLinkId;

  /// [note]
  /// Comments made about the term action made by the requester, performer,
  /// subject or other participants.
  List<AnnotationBuilder>? note;

  /// [securityLabelNumber]
  /// Security labels that protects the action.
  List<FhirUnsignedIntBuilder>? securityLabelNumber;

  /// Converts a [ContractActionBuilder]
  /// to [ContractAction]
  @override
  ContractAction build() => ContractAction.fromJson(toJson());

  /// Converts a [ContractActionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('doNotPerform', doNotPerform);
    addField('type', type);
    addField('subject', subject);
    addField('intent', intent);
    addField('linkId', linkId);
    addField('status', status);
    addField('context', context);
    addField('contextLinkId', contextLinkId);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalizeFirstLetter()}', occurrenceX);
    }

    addField('requester', requester);
    addField('requesterLinkId', requesterLinkId);
    addField('performerType', performerType);
    addField('performerRole', performerRole);
    addField('performer', performer);
    addField('performerLinkId', performerLinkId);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('reason', reason);
    addField('reasonLinkId', reasonLinkId);
    addField('note', note);
    addField('securityLabelNumber', securityLabelNumber);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'doNotPerform',
      'type',
      'subject',
      'intent',
      'linkId',
      'status',
      'context',
      'contextLinkId',
      'occurrenceX',
      'requester',
      'requesterLinkId',
      'performerType',
      'performerRole',
      'performer',
      'performerLinkId',
      'reasonCode',
      'reasonReference',
      'reason',
      'reasonLinkId',
      'note',
      'securityLabelNumber',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'intent':
        if (intent != null) {
          fields.add(intent!);
        }
      case 'linkId':
        if (linkId != null) {
          fields.addAll(linkId!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'contextLinkId':
        if (contextLinkId != null) {
          fields.addAll(contextLinkId!);
        }
      case 'occurrence':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceX':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTimeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is PeriodBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is TimingBuilder) {
          fields.add(occurrenceX!);
        }
      case 'requester':
        if (requester != null) {
          fields.addAll(requester!);
        }
      case 'requesterLinkId':
        if (requesterLinkId != null) {
          fields.addAll(requesterLinkId!);
        }
      case 'performerType':
        if (performerType != null) {
          fields.addAll(performerType!);
        }
      case 'performerRole':
        if (performerRole != null) {
          fields.add(performerRole!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
        }
      case 'performerLinkId':
        if (performerLinkId != null) {
          fields.addAll(performerLinkId!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'reasonLinkId':
        if (reasonLinkId != null) {
          fields.addAll(reasonLinkId!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'securityLabelNumber':
        if (securityLabelNumber != null) {
          fields.addAll(securityLabelNumber!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doNotPerform':
        {
          if (child is FhirBooleanBuilder) {
            doNotPerform = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                doNotPerform = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is List<ContractSubjectBuilder>) {
            // Replace or create new list
            subject = child;
            return;
          } else if (child is ContractSubjectBuilder) {
            // Add single element to existing list or create new list
            subject = [
              ...(subject ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intent':
        {
          if (child is CodeableConceptBuilder) {
            intent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'linkId':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            linkId = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            linkId = [
              ...(linkId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              linkId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = [
                  ...(linkId ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'context':
        {
          if (child is ReferenceBuilder) {
            context = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contextLinkId':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            contextLinkId = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            contextLinkId = [
              ...(contextLinkId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              contextLinkId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                contextLinkId = [
                  ...(contextLinkId ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrence':
      case 'occurrenceX':
        {
          if (child is OccurrenceXContractActionBuilder) {
            occurrenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is PeriodBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is TimingBuilder) {
              occurrenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is PeriodBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceTiming':
        {
          if (child is TimingBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requester':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            requester = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            requester = [
              ...(requester ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requesterLinkId':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            requesterLinkId = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            requesterLinkId = [
              ...(requesterLinkId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              requesterLinkId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                requesterLinkId = [
                  ...(requesterLinkId ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performerType':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            performerType = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            performerType = [
              ...(performerType ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performerRole':
        {
          if (child is CodeableConceptBuilder) {
            performerRole = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is ReferenceBuilder) {
            performer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performerLinkId':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            performerLinkId = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            performerLinkId = [
              ...(performerLinkId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              performerLinkId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                performerLinkId = [
                  ...(performerLinkId ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reasonCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reasonCode = [
              ...(reasonCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reasonReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reasonReference = [
              ...(reasonReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              reason = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                reason = [
                  ...(reason ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonLinkId':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            reasonLinkId = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            reasonLinkId = [
              ...(reasonLinkId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              reasonLinkId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                reasonLinkId = [
                  ...(reasonLinkId ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabelNumber':
        {
          if (child is List<FhirUnsignedIntBuilder>) {
            // Replace or create new list
            securityLabelNumber = child;
            return;
          } else if (child is FhirUnsignedIntBuilder) {
            // Add single element to existing list or create new list
            securityLabelNumber = [
              ...(securityLabelNumber ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUnsignedIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              securityLabelNumber = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  securityLabelNumber = [
                    ...(securityLabelNumber ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'doNotPerform':
        return ['FhirBooleanBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ContractSubjectBuilder'];
      case 'intent':
        return ['CodeableConceptBuilder'];
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'context':
        return ['ReferenceBuilder'];
      case 'contextLinkId':
        return ['FhirStringBuilder'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'TimingBuilder',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurrencePeriod':
        return ['PeriodBuilder'];
      case 'occurrenceTiming':
        return ['TimingBuilder'];
      case 'requester':
        return ['ReferenceBuilder'];
      case 'requesterLinkId':
        return ['FhirStringBuilder'];
      case 'performerType':
        return ['CodeableConceptBuilder'];
      case 'performerRole':
        return ['CodeableConceptBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'performerLinkId':
        return ['FhirStringBuilder'];
      case 'reasonCode':
        return ['CodeableConceptBuilder'];
      case 'reasonReference':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['FhirStringBuilder'];
      case 'reasonLinkId':
        return ['FhirStringBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'securityLabelNumber':
        return ['FhirUnsignedIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractActionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'doNotPerform':
        {
          doNotPerform = FhirBooleanBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = <ContractSubjectBuilder>[];
          return;
        }
      case 'intent':
        {
          intent = CodeableConceptBuilder.empty();
          return;
        }
      case 'linkId':
        {
          linkId = <FhirStringBuilder>[];
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'context':
        {
          context = ReferenceBuilder.empty();
          return;
        }
      case 'contextLinkId':
        {
          contextLinkId = <FhirStringBuilder>[];
          return;
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          occurrenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurrencePeriod':
        {
          occurrenceX = PeriodBuilder.empty();
          return;
        }
      case 'occurrenceTiming':
        {
          occurrenceX = TimingBuilder.empty();
          return;
        }
      case 'requester':
        {
          requester = <ReferenceBuilder>[];
          return;
        }
      case 'requesterLinkId':
        {
          requesterLinkId = <FhirStringBuilder>[];
          return;
        }
      case 'performerType':
        {
          performerType = <CodeableConceptBuilder>[];
          return;
        }
      case 'performerRole':
        {
          performerRole = CodeableConceptBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = ReferenceBuilder.empty();
          return;
        }
      case 'performerLinkId':
        {
          performerLinkId = <FhirStringBuilder>[];
          return;
        }
      case 'reasonCode':
        {
          reasonCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'reasonReference':
        {
          reasonReference = <ReferenceBuilder>[];
          return;
        }
      case 'reason':
        {
          reason = <FhirStringBuilder>[];
          return;
        }
      case 'reasonLinkId':
        {
          reasonLinkId = <FhirStringBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'securityLabelNumber':
        {
          securityLabelNumber = <FhirUnsignedIntBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractActionBuilder clone() => throw UnimplementedError();
  @override
  ContractActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? doNotPerform,
    CodeableConceptBuilder? type,
    List<ContractSubjectBuilder>? subject,
    CodeableConceptBuilder? intent,
    List<FhirStringBuilder>? linkId,
    CodeableConceptBuilder? status,
    ReferenceBuilder? context,
    List<FhirStringBuilder>? contextLinkId,
    OccurrenceXContractActionBuilder? occurrenceX,
    List<ReferenceBuilder>? requester,
    List<FhirStringBuilder>? requesterLinkId,
    List<CodeableConceptBuilder>? performerType,
    CodeableConceptBuilder? performerRole,
    ReferenceBuilder? performer,
    List<FhirStringBuilder>? performerLinkId,
    List<CodeableConceptBuilder>? reasonCode,
    List<ReferenceBuilder>? reasonReference,
    List<FhirStringBuilder>? reason,
    List<FhirStringBuilder>? reasonLinkId,
    List<AnnotationBuilder>? note,
    List<FhirUnsignedIntBuilder>? securityLabelNumber,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    TimingBuilder? occurrenceTiming,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractActionBuilder(
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
      occurrenceX: occurrenceX ??
          occurrenceDateTime ??
          occurrencePeriod ??
          occurrenceTiming ??
          this.occurrenceX,
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractActionBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doNotPerform,
      o.doNotPerform,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<ContractSubjectBuilder>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      context,
      o.context,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      contextLinkId,
      o.contextLinkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      requester,
      o.requester,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      requesterLinkId,
      o.requesterLinkId,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      performerType,
      o.performerType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performerRole,
      o.performerRole,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      performerLinkId,
      o.performerLinkId,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      reasonLinkId,
      o.reasonLinkId,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedIntBuilder>(
      securityLabelNumber,
      o.securityLabelNumber,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractSubjectBuilder]
/// Entity of the action.
class ContractSubjectBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractSubjectBuilder]

  ContractSubjectBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.role,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Contract.term.action.subject',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractSubjectBuilder.empty() => ContractSubjectBuilder(
        reference: <ReferenceBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSubjectBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.action.subject';
    return ContractSubjectBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reference',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
    );
  }

  /// Deserialize [ContractSubjectBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractSubjectBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractSubjectBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractSubjectBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractSubjectBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractSubjectBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSubjectBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractSubjectBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractSubject';

  /// [reference]
  /// The entity the action is performed or not performed on or for.
  List<ReferenceBuilder>? reference;

  /// [role]
  /// Role type of agent assigned roles in this Contract.
  CodeableConceptBuilder? role;

  /// Converts a [ContractSubjectBuilder]
  /// to [ContractSubject]
  @override
  ContractSubject build() => ContractSubject.fromJson(toJson());

  /// Converts a [ContractSubjectBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('reference', reference);
    addField('role', role);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'reference',
      'role',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'reference':
        if (reference != null) {
          fields.addAll(reference!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reference = [
              ...(reference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'reference':
        return ['ReferenceBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractSubjectBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'reference':
        {
          reference = <ReferenceBuilder>[];
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractSubjectBuilder clone() => throw UnimplementedError();
  @override
  ContractSubjectBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<ReferenceBuilder>? reference,
    CodeableConceptBuilder? role,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractSubjectBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractSubjectBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractSignerBuilder]
/// Parties with legal standing in the Contract, including the principal
/// parties, the grantor(s) and grantee(s), which are any person or
/// organization bound by the contract, and any ancillary parties, which
/// facilitate the execution of the contract such as a notary or witness.
class ContractSignerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractSignerBuilder]

  ContractSignerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
    this.signature,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Contract.signer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractSignerBuilder.empty() => ContractSignerBuilder(
        type: CodingBuilder.empty(),
        party: ReferenceBuilder.empty(),
        signature: <SignatureBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSignerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.signer';
    return ContractSignerBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodingBuilder>(
        json,
        'type',
        CodingBuilder.fromJson,
        '$objectPath.type',
      ),
      party: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'party',
        ReferenceBuilder.fromJson,
        '$objectPath.party',
      ),
      signature: (json['signature'] as List<dynamic>?)
          ?.map<SignatureBuilder>(
            (v) => SignatureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.signature',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ContractSignerBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractSignerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractSignerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractSignerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractSignerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractSignerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractSignerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractSignerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractSigner';

  /// [type]
  /// Role of this Contract signer, e.g. notary, grantee.
  CodingBuilder? type;

  /// [party]
  /// Party which is a signator to this Contract.
  ReferenceBuilder? party;

  /// [signature]
  /// Legally binding Contract DSIG signature contents in Base64.
  List<SignatureBuilder>? signature;

  /// Converts a [ContractSignerBuilder]
  /// to [ContractSigner]
  @override
  ContractSigner build() => ContractSigner.fromJson(toJson());

  /// Converts a [ContractSignerBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('party', party);
    addField('signature', signature);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'party',
      'signature',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'party':
        if (party != null) {
          fields.add(party!);
        }
      case 'signature':
        if (signature != null) {
          fields.addAll(signature!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodingBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'party':
        {
          if (child is ReferenceBuilder) {
            party = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'signature':
        {
          if (child is List<SignatureBuilder>) {
            // Replace or create new list
            signature = child;
            return;
          } else if (child is SignatureBuilder) {
            // Add single element to existing list or create new list
            signature = [
              ...(signature ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodingBuilder'];
      case 'party':
        return ['ReferenceBuilder'];
      case 'signature':
        return ['SignatureBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractSignerBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodingBuilder.empty();
          return;
        }
      case 'party':
        {
          party = ReferenceBuilder.empty();
          return;
        }
      case 'signature':
        {
          signature = <SignatureBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractSignerBuilder clone() => throw UnimplementedError();
  @override
  ContractSignerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? type,
    ReferenceBuilder? party,
    List<SignatureBuilder>? signature,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractSignerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
      signature: signature ?? this.signature,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractSignerBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      party,
      o.party,
    )) {
      return false;
    }
    if (!listEquals<SignatureBuilder>(
      signature,
      o.signature,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractFriendlyBuilder]
/// The "patient friendly language" versionof the Contract in whole or in
/// parts. "Patient friendly language" means the representation of the
/// Contract and Contract Provisions in a manner that is readily accessible
/// and understandable by a layperson in accordance with best practices for
/// communication styles that ensure that those agreeing to or signing the
/// Contract understand the roles, actions, obligations, responsibilities,
/// and implication of the agreement.
class ContractFriendlyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractFriendlyBuilder]

  ContractFriendlyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ContentXContractFriendlyBuilder? contentX,
    AttachmentBuilder? contentAttachment,
    ReferenceBuilder? contentReference,
    super.disallowExtensions,
  })  : contentX = contentX ?? contentAttachment ?? contentReference,
        super(
          objectPath: 'Contract.friendly',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractFriendlyBuilder.empty() => ContractFriendlyBuilder(
        contentX: AttachmentBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractFriendlyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.friendly';
    return ContractFriendlyBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractFriendlyBuilder>(
        json,
        {
          'contentAttachment': AttachmentBuilder.fromJson,
          'contentReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ContractFriendlyBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractFriendlyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractFriendlyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractFriendlyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractFriendlyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractFriendlyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractFriendlyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractFriendlyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractFriendly';

  /// [contentX]
  /// Human readable rendering of this Contract in a format and
  /// representation intended to enhance comprehension and ensure
  /// understandability.
  ContentXContractFriendlyBuilder? contentX;

  /// Getter for [contentAttachment] as a AttachmentBuilder
  AttachmentBuilder? get contentAttachment =>
      contentX?.isAs<AttachmentBuilder>();

  /// Getter for [contentReference] as a ReferenceBuilder
  ReferenceBuilder? get contentReference => contentX?.isAs<ReferenceBuilder>();

  /// Converts a [ContractFriendlyBuilder]
  /// to [ContractFriendly]
  @override
  ContractFriendly build() => ContractFriendly.fromJson(toJson());

  /// Converts a [ContractFriendlyBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (contentX != null) {
      final fhirType = contentX!.fhirType;
      addField('content${fhirType.capitalizeFirstLetter()}', contentX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'contentX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'content':
        if (contentX != null) {
          fields.add(contentX!);
        }
      case 'contentX':
        if (contentX != null) {
          fields.add(contentX!);
        }
      case 'contentAttachment':
        if (contentX is AttachmentBuilder) {
          fields.add(contentX!);
        }
      case 'contentReference':
        if (contentX is ReferenceBuilder) {
          fields.add(contentX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'content':
      case 'contentX':
        {
          if (child is ContentXContractFriendlyBuilder) {
            contentX = child;
            return;
          } else {
            if (child is AttachmentBuilder) {
              contentX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              contentX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentAttachment':
        {
          if (child is AttachmentBuilder) {
            contentX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentReference':
        {
          if (child is ReferenceBuilder) {
            contentX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'content':
      case 'contentX':
        return [
          'AttachmentBuilder',
          'ReferenceBuilder',
        ];
      case 'contentAttachment':
        return ['AttachmentBuilder'];
      case 'contentReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractFriendlyBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'content':
      case 'contentX':
      case 'contentAttachment':
        {
          contentX = AttachmentBuilder.empty();
          return;
        }
      case 'contentReference':
        {
          contentX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractFriendlyBuilder clone() => throw UnimplementedError();
  @override
  ContractFriendlyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ContentXContractFriendlyBuilder? contentX,
    AttachmentBuilder? contentAttachment,
    ReferenceBuilder? contentReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractFriendlyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentX:
          contentX ?? contentAttachment ?? contentReference ?? this.contentX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractFriendlyBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentX,
      o.contentX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractLegalBuilder]
/// List of Legal expressions or representations of this Contract.
class ContractLegalBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractLegalBuilder]

  ContractLegalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ContentXContractLegalBuilder? contentX,
    AttachmentBuilder? contentAttachment,
    ReferenceBuilder? contentReference,
    super.disallowExtensions,
  })  : contentX = contentX ?? contentAttachment ?? contentReference,
        super(
          objectPath: 'Contract.legal',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractLegalBuilder.empty() => ContractLegalBuilder(
        contentX: AttachmentBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractLegalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.legal';
    return ContractLegalBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractLegalBuilder>(
        json,
        {
          'contentAttachment': AttachmentBuilder.fromJson,
          'contentReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ContractLegalBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractLegalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractLegalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractLegalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractLegalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractLegalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractLegalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractLegalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractLegal';

  /// [contentX]
  /// Contract legal text in human renderable form.
  ContentXContractLegalBuilder? contentX;

  /// Getter for [contentAttachment] as a AttachmentBuilder
  AttachmentBuilder? get contentAttachment =>
      contentX?.isAs<AttachmentBuilder>();

  /// Getter for [contentReference] as a ReferenceBuilder
  ReferenceBuilder? get contentReference => contentX?.isAs<ReferenceBuilder>();

  /// Converts a [ContractLegalBuilder]
  /// to [ContractLegal]
  @override
  ContractLegal build() => ContractLegal.fromJson(toJson());

  /// Converts a [ContractLegalBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (contentX != null) {
      final fhirType = contentX!.fhirType;
      addField('content${fhirType.capitalizeFirstLetter()}', contentX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'contentX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'content':
        if (contentX != null) {
          fields.add(contentX!);
        }
      case 'contentX':
        if (contentX != null) {
          fields.add(contentX!);
        }
      case 'contentAttachment':
        if (contentX is AttachmentBuilder) {
          fields.add(contentX!);
        }
      case 'contentReference':
        if (contentX is ReferenceBuilder) {
          fields.add(contentX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'content':
      case 'contentX':
        {
          if (child is ContentXContractLegalBuilder) {
            contentX = child;
            return;
          } else {
            if (child is AttachmentBuilder) {
              contentX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              contentX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentAttachment':
        {
          if (child is AttachmentBuilder) {
            contentX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentReference':
        {
          if (child is ReferenceBuilder) {
            contentX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'content':
      case 'contentX':
        return [
          'AttachmentBuilder',
          'ReferenceBuilder',
        ];
      case 'contentAttachment':
        return ['AttachmentBuilder'];
      case 'contentReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractLegalBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'content':
      case 'contentX':
      case 'contentAttachment':
        {
          contentX = AttachmentBuilder.empty();
          return;
        }
      case 'contentReference':
        {
          contentX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractLegalBuilder clone() => throw UnimplementedError();
  @override
  ContractLegalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ContentXContractLegalBuilder? contentX,
    AttachmentBuilder? contentAttachment,
    ReferenceBuilder? contentReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractLegalBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentX:
          contentX ?? contentAttachment ?? contentReference ?? this.contentX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractLegalBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentX,
      o.contentX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ContractRuleBuilder]
/// List of Computable Policy Rule Language Representations of this
/// Contract.
class ContractRuleBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ContractRuleBuilder]

  ContractRuleBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ContentXContractRuleBuilder? contentX,
    AttachmentBuilder? contentAttachment,
    ReferenceBuilder? contentReference,
    super.disallowExtensions,
  })  : contentX = contentX ?? contentAttachment ?? contentReference,
        super(
          objectPath: 'Contract.rule',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ContractRuleBuilder.empty() => ContractRuleBuilder(
        contentX: AttachmentBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractRuleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.rule';
    return ContractRuleBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractRuleBuilder>(
        json,
        {
          'contentAttachment': AttachmentBuilder.fromJson,
          'contentReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ContractRuleBuilder]
  /// from a [String] or [YamlMap] object
  factory ContractRuleBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ContractRuleBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ContractRuleBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ContractRuleBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ContractRuleBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ContractRuleBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ContractRuleBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractRule';

  /// [contentX]
  /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  ContentXContractRuleBuilder? contentX;

  /// Getter for [contentAttachment] as a AttachmentBuilder
  AttachmentBuilder? get contentAttachment =>
      contentX?.isAs<AttachmentBuilder>();

  /// Getter for [contentReference] as a ReferenceBuilder
  ReferenceBuilder? get contentReference => contentX?.isAs<ReferenceBuilder>();

  /// Converts a [ContractRuleBuilder]
  /// to [ContractRule]
  @override
  ContractRule build() => ContractRule.fromJson(toJson());

  /// Converts a [ContractRuleBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (contentX != null) {
      final fhirType = contentX!.fhirType;
      addField('content${fhirType.capitalizeFirstLetter()}', contentX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'contentX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'content':
        if (contentX != null) {
          fields.add(contentX!);
        }
      case 'contentX':
        if (contentX != null) {
          fields.add(contentX!);
        }
      case 'contentAttachment':
        if (contentX is AttachmentBuilder) {
          fields.add(contentX!);
        }
      case 'contentReference':
        if (contentX is ReferenceBuilder) {
          fields.add(contentX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'content':
      case 'contentX':
        {
          if (child is ContentXContractRuleBuilder) {
            contentX = child;
            return;
          } else {
            if (child is AttachmentBuilder) {
              contentX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              contentX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentAttachment':
        {
          if (child is AttachmentBuilder) {
            contentX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentReference':
        {
          if (child is ReferenceBuilder) {
            contentX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'content':
      case 'contentX':
        return [
          'AttachmentBuilder',
          'ReferenceBuilder',
        ];
      case 'contentAttachment':
        return ['AttachmentBuilder'];
      case 'contentReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractRuleBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'content':
      case 'contentX':
      case 'contentAttachment':
        {
          contentX = AttachmentBuilder.empty();
          return;
        }
      case 'contentReference':
        {
          contentX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ContractRuleBuilder clone() => throw UnimplementedError();
  @override
  ContractRuleBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ContentXContractRuleBuilder? contentX,
    AttachmentBuilder? contentAttachment,
    ReferenceBuilder? contentReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ContractRuleBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentX:
          contentX ?? contentAttachment ?? contentReference ?? this.contentX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ContractRuleBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentX,
      o.contentX,
    )) {
      return false;
    }
    return true;
  }
}
