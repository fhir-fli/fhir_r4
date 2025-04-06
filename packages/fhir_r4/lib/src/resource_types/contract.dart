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
          objectPath: 'Contract',
          resourceType: R4ResourceType.Contract,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Contract.empty() => const Contract();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Contract.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract';
    return Contract(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      status: JsonParser.parsePrimitive<ContractResourceStatusCodes>(
        json,
        'status',
        ContractResourceStatusCodes.fromJson,
        '$objectPath.status',
      ),
      legalState: JsonParser.parseObject<CodeableConcept>(
        json,
        'legalState',
        CodeableConcept.fromJson,
        '$objectPath.legalState',
      ),
      instantiatesCanonical: JsonParser.parseObject<Reference>(
        json,
        'instantiatesCanonical',
        Reference.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitive<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      contentDerivative: JsonParser.parseObject<CodeableConcept>(
        json,
        'contentDerivative',
        CodeableConcept.fromJson,
        '$objectPath.contentDerivative',
      ),
      issued: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'issued',
        FhirDateTime.fromJson,
        '$objectPath.issued',
      ),
      applies: JsonParser.parseObject<Period>(
        json,
        'applies',
        Period.fromJson,
        '$objectPath.applies',
      ),
      expirationType: JsonParser.parseObject<CodeableConcept>(
        json,
        'expirationType',
        CodeableConcept.fromJson,
        '$objectPath.expirationType',
      ),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      authority: (json['authority'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.authority',
              },
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.domain',
              },
            ),
          )
          .toList(),
      site: (json['site'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.site',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
        FhirString.fromJson,
        '$objectPath.subtitle',
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
        '$objectPath.alias',
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
      scope: JsonParser.parseObject<CodeableConcept>(
        json,
        'scope',
        CodeableConcept.fromJson,
        '$objectPath.scope',
      ),
      topicX: JsonParser.parsePolymorphic<TopicXContract>(
        json,
        {
          'topicCodeableConcept': CodeableConcept.fromJson,
          'topicReference': Reference.fromJson,
        },
        objectPath,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      subType: (json['subType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subType',
              },
            ),
          )
          .toList(),
      contentDefinition: JsonParser.parseObject<ContractContentDefinition>(
        json,
        'contentDefinition',
        ContractContentDefinition.fromJson,
        '$objectPath.contentDefinition',
      ),
      term: (json['term'] as List<dynamic>?)
          ?.map<ContractTerm>(
            (v) => ContractTerm.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.term',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relevantHistory',
              },
            ),
          )
          .toList(),
      signer: (json['signer'] as List<dynamic>?)
          ?.map<ContractSigner>(
            (v) => ContractSigner.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.signer',
              },
            ),
          )
          .toList(),
      friendly: (json['friendly'] as List<dynamic>?)
          ?.map<ContractFriendly>(
            (v) => ContractFriendly.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.friendly',
              },
            ),
          )
          .toList(),
      legal: (json['legal'] as List<dynamic>?)
          ?.map<ContractLegal>(
            (v) => ContractLegal.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.legal',
              },
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map<ContractRule>(
            (v) => ContractRule.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rule',
              },
            ),
          )
          .toList(),
      legallyBindingX: JsonParser.parsePolymorphic<LegallyBindingXContract>(
        json,
        {
          'legallyBindingAttachment': Attachment.fromJson,
          'legallyBindingReference': Reference.fromJson,
        },
        objectPath,
      ),
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
    if (json is Map<String, dynamic>) {
      return Contract.fromJson(json);
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

  /// Getter for [topicCodeableConcept] as a CodeableConcept
  CodeableConcept? get topicCodeableConcept => topicX?.isAs<CodeableConcept>();

  /// Getter for [topicReference] as a Reference
  Reference? get topicReference => topicX?.isAs<Reference>();

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

  /// Getter for [legallyBindingAttachment] as a Attachment
  Attachment? get legallyBindingAttachment =>
      legallyBindingX?.isAs<Attachment>();

  /// Getter for [legallyBindingReference] as a Reference
  Reference? get legallyBindingReference => legallyBindingX?.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'url',
      url,
    );
    addField(
      'version',
      version,
    );
    addField(
      'status',
      status,
    );
    addField(
      'legalState',
      legalState,
    );
    addField(
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'contentDerivative',
      contentDerivative,
    );
    addField(
      'issued',
      issued,
    );
    addField(
      'applies',
      applies,
    );
    addField(
      'expirationType',
      expirationType,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'authority',
      authority,
    );
    addField(
      'domain',
      domain,
    );
    addField(
      'site',
      site,
    );
    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'subtitle',
      subtitle,
    );
    addField(
      'alias',
      alias,
    );
    addField(
      'author',
      author,
    );
    addField(
      'scope',
      scope,
    );
    if (topicX != null) {
      final fhirType = topicX!.fhirType;
      addField(
        'topic${fhirType.capitalize()}',
        topicX,
      );
    }

    addField(
      'type',
      type,
    );
    addField(
      'subType',
      subType,
    );
    addField(
      'contentDefinition',
      contentDefinition,
    );
    addField(
      'term',
      term,
    );
    addField(
      'supportingInfo',
      supportingInfo,
    );
    addField(
      'relevantHistory',
      relevantHistory,
    );
    addField(
      'signer',
      signer,
    );
    addField(
      'friendly',
      friendly,
    );
    addField(
      'legal',
      legal,
    );
    addField(
      'rule',
      rule,
    );
    if (legallyBindingX != null) {
      final fhirType = legallyBindingX!.fhirType;
      addField(
        'legallyBinding${fhirType.capitalize()}',
        legallyBindingX,
      );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(topicX!);
      case 'topicX':
        fields.add(topicX!);
      case 'topicCodeableConcept':
        if (topicX is CodeableConcept) {
          fields.add(topicX!);
        }
      case 'topicReference':
        if (topicX is Reference) {
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
        fields.add(legallyBindingX!);
      case 'legallyBindingX':
        fields.add(legallyBindingX!);
      case 'legallyBindingAttachment':
        if (legallyBindingX is Attachment) {
          fields.add(legallyBindingX!);
        }
      case 'legallyBindingReference':
        if (legallyBindingX is Reference) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is ContractResourceStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'legalState':
        {
          if (child is CodeableConcept) {
            return copyWith(legalState: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instantiatesCanonical':
        {
          if (child is Reference) {
            return copyWith(instantiatesCanonical: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instantiatesUri':
        {
          if (child is FhirUri) {
            return copyWith(instantiatesUri: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentDerivative':
        {
          if (child is CodeableConcept) {
            return copyWith(contentDerivative: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'issued':
        {
          if (child is FhirDateTime) {
            return copyWith(issued: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'applies':
        {
          if (child is Period) {
            return copyWith(applies: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expirationType':
        {
          if (child is CodeableConcept) {
            return copyWith(expirationType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?subject, ...child];
            return copyWith(subject: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subject,
              child,
            ];
            return copyWith(subject: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'authority':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?authority, ...child];
            return copyWith(authority: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?authority,
              child,
            ];
            return copyWith(authority: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'domain':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?domain, ...child];
            return copyWith(domain: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?domain,
              child,
            ];
            return copyWith(domain: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'site':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?site, ...child];
            return copyWith(site: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?site,
              child,
            ];
            return copyWith(site: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subtitle':
        {
          if (child is FhirString) {
            return copyWith(subtitle: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'alias':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?alias, ...child];
            return copyWith(alias: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?alias,
              child,
            ];
            return copyWith(alias: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'author':
        {
          if (child is Reference) {
            return copyWith(author: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'scope':
        {
          if (child is CodeableConcept) {
            return copyWith(scope: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'topic':
      case 'topicX':
        {
          if (child is TopicXContract) {
            return copyWith(topicX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(topicX: child);
            }
            if (child is Reference) {
              return copyWith(topicX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topicCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(topicX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'topicReference':
        {
          if (child is Reference) {
            return copyWith(topicX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subType':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?subType, ...child];
            return copyWith(subType: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subType,
              child,
            ];
            return copyWith(subType: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentDefinition':
        {
          if (child is ContractContentDefinition) {
            return copyWith(contentDefinition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'term':
        {
          if (child is List<ContractTerm>) {
            // Add all elements from passed list
            final newList = [...?term, ...child];
            return copyWith(term: newList);
          } else if (child is ContractTerm) {
            // Add single element to existing list or create new list
            final newList = [
              ...?term,
              child,
            ];
            return copyWith(term: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInfo':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?supportingInfo, ...child];
            return copyWith(supportingInfo: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?supportingInfo,
              child,
            ];
            return copyWith(supportingInfo: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relevantHistory':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?relevantHistory, ...child];
            return copyWith(relevantHistory: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?relevantHistory,
              child,
            ];
            return copyWith(relevantHistory: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'signer':
        {
          if (child is List<ContractSigner>) {
            // Add all elements from passed list
            final newList = [...?signer, ...child];
            return copyWith(signer: newList);
          } else if (child is ContractSigner) {
            // Add single element to existing list or create new list
            final newList = [
              ...?signer,
              child,
            ];
            return copyWith(signer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'friendly':
        {
          if (child is List<ContractFriendly>) {
            // Add all elements from passed list
            final newList = [...?friendly, ...child];
            return copyWith(friendly: newList);
          } else if (child is ContractFriendly) {
            // Add single element to existing list or create new list
            final newList = [
              ...?friendly,
              child,
            ];
            return copyWith(friendly: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'legal':
        {
          if (child is List<ContractLegal>) {
            // Add all elements from passed list
            final newList = [...?legal, ...child];
            return copyWith(legal: newList);
          } else if (child is ContractLegal) {
            // Add single element to existing list or create new list
            final newList = [
              ...?legal,
              child,
            ];
            return copyWith(legal: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rule':
        {
          if (child is List<ContractRule>) {
            // Add all elements from passed list
            final newList = [...?rule, ...child];
            return copyWith(rule: newList);
          } else if (child is ContractRule) {
            // Add single element to existing list or create new list
            final newList = [
              ...?rule,
              child,
            ];
            return copyWith(rule: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'legallyBinding':
      case 'legallyBindingX':
        {
          if (child is LegallyBindingXContract) {
            return copyWith(legallyBindingX: child);
          } else {
            if (child is Attachment) {
              return copyWith(legallyBindingX: child);
            }
            if (child is Reference) {
              return copyWith(legallyBindingX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'legallyBindingAttachment':
        {
          if (child is Attachment) {
            return copyWith(legallyBindingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'legallyBindingReference':
        {
          if (child is Reference) {
            return copyWith(legallyBindingX: child);
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
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'url':
        return ['FhirUri'];
      case 'version':
        return ['FhirString'];
      case 'status':
        return ['FhirCode'];
      case 'legalState':
        return ['CodeableConcept'];
      case 'instantiatesCanonical':
        return ['Reference'];
      case 'instantiatesUri':
        return ['FhirUri'];
      case 'contentDerivative':
        return ['CodeableConcept'];
      case 'issued':
        return ['FhirDateTime'];
      case 'applies':
        return ['Period'];
      case 'expirationType':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'authority':
        return ['Reference'];
      case 'domain':
        return ['Reference'];
      case 'site':
        return ['Reference'];
      case 'name':
        return ['FhirString'];
      case 'title':
        return ['FhirString'];
      case 'subtitle':
        return ['FhirString'];
      case 'alias':
        return ['FhirString'];
      case 'author':
        return ['Reference'];
      case 'scope':
        return ['CodeableConcept'];
      case 'topic':
      case 'topicX':
        return [
          'CodeableConcept',
          'Reference',
        ];
      case 'topicCodeableConcept':
        return ['CodeableConcept'];
      case 'topicReference':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      case 'subType':
        return ['CodeableConcept'];
      case 'contentDefinition':
        return ['ContractContentDefinition'];
      case 'term':
        return ['ContractTerm'];
      case 'supportingInfo':
        return ['Reference'];
      case 'relevantHistory':
        return ['Reference'];
      case 'signer':
        return ['ContractSigner'];
      case 'friendly':
        return ['ContractFriendly'];
      case 'legal':
        return ['ContractLegal'];
      case 'rule':
        return ['ContractRule'];
      case 'legallyBinding':
      case 'legallyBindingX':
        return [
          'Attachment',
          'Reference',
        ];
      case 'legallyBindingAttachment':
        return ['Attachment'];
      case 'legallyBindingReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Contract]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Contract createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: ContractResourceStatusCodes.empty(),
          );
        }
      case 'legalState':
        {
          return copyWith(
            legalState: CodeableConcept.empty(),
          );
        }
      case 'instantiatesCanonical':
        {
          return copyWith(
            instantiatesCanonical: Reference.empty(),
          );
        }
      case 'instantiatesUri':
        {
          return copyWith(
            instantiatesUri: FhirUri.empty(),
          );
        }
      case 'contentDerivative':
        {
          return copyWith(
            contentDerivative: CodeableConcept.empty(),
          );
        }
      case 'issued':
        {
          return copyWith(
            issued: FhirDateTime.empty(),
          );
        }
      case 'applies':
        {
          return copyWith(
            applies: Period.empty(),
          );
        }
      case 'expirationType':
        {
          return copyWith(
            expirationType: CodeableConcept.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: <Reference>[],
          );
        }
      case 'authority':
        {
          return copyWith(
            authority: <Reference>[],
          );
        }
      case 'domain':
        {
          return copyWith(
            domain: <Reference>[],
          );
        }
      case 'site':
        {
          return copyWith(
            site: <Reference>[],
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'subtitle':
        {
          return copyWith(
            subtitle: FhirString.empty(),
          );
        }
      case 'alias':
        {
          return copyWith(
            alias: <FhirString>[],
          );
        }
      case 'author':
        {
          return copyWith(
            author: Reference.empty(),
          );
        }
      case 'scope':
        {
          return copyWith(
            scope: CodeableConcept.empty(),
          );
        }
      case 'topic':
      case 'topicX':
      case 'topicCodeableConcept':
        {
          return copyWith(
            topicX: CodeableConcept.empty(),
          );
        }
      case 'topicReference':
        {
          return copyWith(
            topicX: Reference.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'subType':
        {
          return copyWith(
            subType: <CodeableConcept>[],
          );
        }
      case 'contentDefinition':
        {
          return copyWith(
            contentDefinition: ContractContentDefinition.empty(),
          );
        }
      case 'term':
        {
          return copyWith(
            term: <ContractTerm>[],
          );
        }
      case 'supportingInfo':
        {
          return copyWith(
            supportingInfo: <Reference>[],
          );
        }
      case 'relevantHistory':
        {
          return copyWith(
            relevantHistory: <Reference>[],
          );
        }
      case 'signer':
        {
          return copyWith(
            signer: <ContractSigner>[],
          );
        }
      case 'friendly':
        {
          return copyWith(
            friendly: <ContractFriendly>[],
          );
        }
      case 'legal':
        {
          return copyWith(
            legal: <ContractLegal>[],
          );
        }
      case 'rule':
        {
          return copyWith(
            rule: <ContractRule>[],
          );
        }
      case 'legallyBinding':
      case 'legallyBindingX':
      case 'legallyBindingAttachment':
        {
          return copyWith(
            legallyBindingX: Attachment.empty(),
          );
        }
      case 'legallyBindingReference':
        {
          return copyWith(
            legallyBindingX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Contract clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool url = false,
    bool version = false,
    bool status = false,
    bool legalState = false,
    bool instantiatesCanonical = false,
    bool instantiatesUri = false,
    bool contentDerivative = false,
    bool issued = false,
    bool applies = false,
    bool expirationType = false,
    bool subject = false,
    bool authority = false,
    bool domain = false,
    bool site = false,
    bool name = false,
    bool title = false,
    bool subtitle = false,
    bool alias = false,
    bool author = false,
    bool scope = false,
    bool topic = false,
    bool type = false,
    bool subType = false,
    bool contentDefinition = false,
    bool term = false,
    bool supportingInfo = false,
    bool relevantHistory = false,
    bool signer = false,
    bool friendly = false,
    bool legal = false,
    bool rule = false,
    bool legallyBinding = false,
  }) {
    return Contract(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      url: url ? null : this.url,
      version: version ? null : this.version,
      status: status ? null : this.status,
      legalState: legalState ? null : this.legalState,
      instantiatesCanonical:
          instantiatesCanonical ? null : this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ? null : this.instantiatesUri,
      contentDerivative: contentDerivative ? null : this.contentDerivative,
      issued: issued ? null : this.issued,
      applies: applies ? null : this.applies,
      expirationType: expirationType ? null : this.expirationType,
      subject: subject ? null : this.subject,
      authority: authority ? null : this.authority,
      domain: domain ? null : this.domain,
      site: site ? null : this.site,
      name: name ? null : this.name,
      title: title ? null : this.title,
      subtitle: subtitle ? null : this.subtitle,
      alias: alias ? null : this.alias,
      author: author ? null : this.author,
      scope: scope ? null : this.scope,
      topicX: topic ? null : topicX,
      type: type ? null : this.type,
      subType: subType ? null : this.subType,
      contentDefinition: contentDefinition ? null : this.contentDefinition,
      term: term ? null : this.term,
      supportingInfo: supportingInfo ? null : this.supportingInfo,
      relevantHistory: relevantHistory ? null : this.relevantHistory,
      signer: signer ? null : this.signer,
      friendly: friendly ? null : this.friendly,
      legal: legal ? null : this.legal,
      rule: rule ? null : this.rule,
      legallyBindingX: legallyBinding ? null : legallyBindingX,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Contract(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      legalState: legalState?.copyWith(
            objectPath: '$newObjectPath.legalState',
          ) ??
          this.legalState,
      instantiatesCanonical: instantiatesCanonical?.copyWith(
            objectPath: '$newObjectPath.instantiatesCanonical',
          ) ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri?.copyWith(
            objectPath: '$newObjectPath.instantiatesUri',
          ) ??
          this.instantiatesUri,
      contentDerivative: contentDerivative?.copyWith(
            objectPath: '$newObjectPath.contentDerivative',
          ) ??
          this.contentDerivative,
      issued: issued?.copyWith(
            objectPath: '$newObjectPath.issued',
          ) ??
          this.issued,
      applies: applies?.copyWith(
            objectPath: '$newObjectPath.applies',
          ) ??
          this.applies,
      expirationType: expirationType?.copyWith(
            objectPath: '$newObjectPath.expirationType',
          ) ??
          this.expirationType,
      subject: subject
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subject',
                ),
              )
              .toList() ??
          this.subject,
      authority: authority
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.authority',
                ),
              )
              .toList() ??
          this.authority,
      domain: domain
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.domain',
                ),
              )
              .toList() ??
          this.domain,
      site: site
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.site',
                ),
              )
              .toList() ??
          this.site,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      subtitle: subtitle?.copyWith(
            objectPath: '$newObjectPath.subtitle',
          ) ??
          this.subtitle,
      alias: alias
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.alias',
                ),
              )
              .toList() ??
          this.alias,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
      scope: scope?.copyWith(
            objectPath: '$newObjectPath.scope',
          ) ??
          this.scope,
      topicX: topicX?.copyWith(
            objectPath: '$newObjectPath.topicX',
          ) as TopicXContract? ??
          this.topicX,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subType: subType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subType',
                ),
              )
              .toList() ??
          this.subType,
      contentDefinition: contentDefinition?.copyWith(
            objectPath: '$newObjectPath.contentDefinition',
          ) ??
          this.contentDefinition,
      term: term
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.term',
                ),
              )
              .toList() ??
          this.term,
      supportingInfo: supportingInfo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInfo',
                ),
              )
              .toList() ??
          this.supportingInfo,
      relevantHistory: relevantHistory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relevantHistory',
                ),
              )
              .toList() ??
          this.relevantHistory,
      signer: signer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.signer',
                ),
              )
              .toList() ??
          this.signer,
      friendly: friendly
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.friendly',
                ),
              )
              .toList() ??
          this.friendly,
      legal: legal
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.legal',
                ),
              )
              .toList() ??
          this.legal,
      rule: rule
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.rule',
                ),
              )
              .toList() ??
          this.rule,
      legallyBindingX: legallyBindingX?.copyWith(
            objectPath: '$newObjectPath.legallyBindingX',
          ) as LegallyBindingXContract? ??
          this.legallyBindingX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Contract) {
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
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
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
    if (!listEquals<Reference>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      domain,
      o.domain,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<FhirString>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<ContractTerm>(
      term,
      o.term,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      relevantHistory,
      o.relevantHistory,
    )) {
      return false;
    }
    if (!listEquals<ContractSigner>(
      signer,
      o.signer,
    )) {
      return false;
    }
    if (!listEquals<ContractFriendly>(
      friendly,
      o.friendly,
    )) {
      return false;
    }
    if (!listEquals<ContractLegal>(
      legal,
      o.legal,
    )) {
      return false;
    }
    if (!listEquals<ContractRule>(
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
  }) : super(
          objectPath: 'Contract.contentDefinition',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractContentDefinition.empty() => ContractContentDefinition(
        type: CodeableConcept.empty(),
        publicationStatus: ContractResourcePublicationStatusCodes.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractContentDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.contentDefinition';
    return ContractContentDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      subType: JsonParser.parseObject<CodeableConcept>(
        json,
        'subType',
        CodeableConcept.fromJson,
        '$objectPath.subType',
      ),
      publisher: JsonParser.parseObject<Reference>(
        json,
        'publisher',
        Reference.fromJson,
        '$objectPath.publisher',
      ),
      publicationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'publicationDate',
        FhirDateTime.fromJson,
        '$objectPath.publicationDate',
      ),
      publicationStatus:
          JsonParser.parsePrimitive<ContractResourcePublicationStatusCodes>(
        json,
        'publicationStatus',
        ContractResourcePublicationStatusCodes.fromJson,
        '$objectPath.publicationStatus',
      )!,
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
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
    if (json is Map<String, dynamic>) {
      return ContractContentDefinition.fromJson(json);
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'subType',
      subType,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'publicationDate',
      publicationDate,
    );
    addField(
      'publicationStatus',
      publicationStatus,
    );
    addField(
      'copyright',
      copyright,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(type);
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
        fields.add(publicationStatus);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subType':
        {
          if (child is CodeableConcept) {
            return copyWith(subType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is Reference) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publicationDate':
        {
          if (child is FhirDateTime) {
            return copyWith(publicationDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publicationStatus':
        {
          if (child is ContractResourcePublicationStatusCodes) {
            return copyWith(publicationStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'subType':
        return ['CodeableConcept'];
      case 'publisher':
        return ['Reference'];
      case 'publicationDate':
        return ['FhirDateTime'];
      case 'publicationStatus':
        return ['FhirCode'];
      case 'copyright':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractContentDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractContentDefinition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'subType':
        {
          return copyWith(
            subType: CodeableConcept.empty(),
          );
        }
      case 'publisher':
        {
          return copyWith(
            publisher: Reference.empty(),
          );
        }
      case 'publicationDate':
        {
          return copyWith(
            publicationDate: FhirDateTime.empty(),
          );
        }
      case 'publicationStatus':
        {
          return copyWith(
            publicationStatus: ContractResourcePublicationStatusCodes.empty(),
          );
        }
      case 'copyright':
        {
          return copyWith(
            copyright: FhirMarkdown.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractContentDefinition clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool subType = false,
    bool publisher = false,
    bool publicationDate = false,
    bool copyright = false,
  }) {
    return ContractContentDefinition(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      subType: subType ? null : this.subType,
      publisher: publisher ? null : this.publisher,
      publicationDate: publicationDate ? null : this.publicationDate,
      publicationStatus: publicationStatus,
      copyright: copyright ? null : this.copyright,
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
    ContractResourcePublicationStatusCodes? publicationStatus,
    FhirMarkdown? copyright,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractContentDefinition(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subType: subType?.copyWith(
            objectPath: '$newObjectPath.subType',
          ) ??
          this.subType,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      publicationDate: publicationDate?.copyWith(
            objectPath: '$newObjectPath.publicationDate',
          ) ??
          this.publicationDate,
      publicationStatus: publicationStatus?.copyWith(
            objectPath: '$newObjectPath.publicationStatus',
          ) ??
          this.publicationStatus,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractContentDefinition) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'Contract.term',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractTerm.empty() => ContractTerm(
        offer: ContractOffer.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractTerm.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term';
    return ContractTerm(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      issued: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'issued',
        FhirDateTime.fromJson,
        '$objectPath.issued',
      ),
      applies: JsonParser.parseObject<Period>(
        json,
        'applies',
        Period.fromJson,
        '$objectPath.applies',
      ),
      topicX: JsonParser.parsePolymorphic<TopicXContractTerm>(
        json,
        {
          'topicCodeableConcept': CodeableConcept.fromJson,
          'topicReference': Reference.fromJson,
        },
        objectPath,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      subType: JsonParser.parseObject<CodeableConcept>(
        json,
        'subType',
        CodeableConcept.fromJson,
        '$objectPath.subType',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<ContractSecurityLabel>(
            (v) => ContractSecurityLabel.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      offer: JsonParser.parseObject<ContractOffer>(
        json,
        'offer',
        ContractOffer.fromJson,
        '$objectPath.offer',
      )!,
      asset: (json['asset'] as List<dynamic>?)
          ?.map<ContractAsset>(
            (v) => ContractAsset.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.asset',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<ContractAction>(
            (v) => ContractAction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map<ContractTerm>(
            (v) => ContractTerm.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.group',
              },
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
    if (json is Map<String, dynamic>) {
      return ContractTerm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [topicCodeableConcept] as a CodeableConcept
  CodeableConcept? get topicCodeableConcept => topicX?.isAs<CodeableConcept>();

  /// Getter for [topicReference] as a Reference
  Reference? get topicReference => topicX?.isAs<Reference>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'issued',
      issued,
    );
    addField(
      'applies',
      applies,
    );
    if (topicX != null) {
      final fhirType = topicX!.fhirType;
      addField(
        'topic${fhirType.capitalize()}',
        topicX,
      );
    }

    addField(
      'type',
      type,
    );
    addField(
      'subType',
      subType,
    );
    addField(
      'text',
      text,
    );
    addField(
      'securityLabel',
      securityLabel,
    );
    addField(
      'offer',
      offer,
    );
    addField(
      'asset',
      asset,
    );
    addField(
      'action',
      action,
    );
    addField(
      'group',
      group,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(topicX!);
      case 'topicX':
        fields.add(topicX!);
      case 'topicCodeableConcept':
        if (topicX is CodeableConcept) {
          fields.add(topicX!);
        }
      case 'topicReference':
        if (topicX is Reference) {
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
        fields.add(offer);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'issued':
        {
          if (child is FhirDateTime) {
            return copyWith(issued: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'applies':
        {
          if (child is Period) {
            return copyWith(applies: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'topic':
      case 'topicX':
        {
          if (child is TopicXContractTerm) {
            return copyWith(topicX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(topicX: child);
            }
            if (child is Reference) {
              return copyWith(topicX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topicCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(topicX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'topicReference':
        {
          if (child is Reference) {
            return copyWith(topicX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subType':
        {
          if (child is CodeableConcept) {
            return copyWith(subType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'securityLabel':
        {
          if (child is List<ContractSecurityLabel>) {
            // Add all elements from passed list
            final newList = [...?securityLabel, ...child];
            return copyWith(securityLabel: newList);
          } else if (child is ContractSecurityLabel) {
            // Add single element to existing list or create new list
            final newList = [
              ...?securityLabel,
              child,
            ];
            return copyWith(securityLabel: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'offer':
        {
          if (child is ContractOffer) {
            return copyWith(offer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'asset':
        {
          if (child is List<ContractAsset>) {
            // Add all elements from passed list
            final newList = [...?asset, ...child];
            return copyWith(asset: newList);
          } else if (child is ContractAsset) {
            // Add single element to existing list or create new list
            final newList = [
              ...?asset,
              child,
            ];
            return copyWith(asset: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'action':
        {
          if (child is List<ContractAction>) {
            // Add all elements from passed list
            final newList = [...?action, ...child];
            return copyWith(action: newList);
          } else if (child is ContractAction) {
            // Add single element to existing list or create new list
            final newList = [
              ...?action,
              child,
            ];
            return copyWith(action: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'group':
        {
          if (child is List<ContractTerm>) {
            // Add all elements from passed list
            final newList = [...?group, ...child];
            return copyWith(group: newList);
          } else if (child is ContractTerm) {
            // Add single element to existing list or create new list
            final newList = [
              ...?group,
              child,
            ];
            return copyWith(group: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'issued':
        return ['FhirDateTime'];
      case 'applies':
        return ['Period'];
      case 'topic':
      case 'topicX':
        return [
          'CodeableConcept',
          'Reference',
        ];
      case 'topicCodeableConcept':
        return ['CodeableConcept'];
      case 'topicReference':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      case 'subType':
        return ['CodeableConcept'];
      case 'text':
        return ['FhirString'];
      case 'securityLabel':
        return ['ContractSecurityLabel'];
      case 'offer':
        return ['ContractOffer'];
      case 'asset':
        return ['ContractAsset'];
      case 'action':
        return ['ContractAction'];
      case 'group':
        return ['ContractTerm'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractTerm]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractTerm createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: Identifier.empty(),
          );
        }
      case 'issued':
        {
          return copyWith(
            issued: FhirDateTime.empty(),
          );
        }
      case 'applies':
        {
          return copyWith(
            applies: Period.empty(),
          );
        }
      case 'topic':
      case 'topicX':
      case 'topicCodeableConcept':
        {
          return copyWith(
            topicX: CodeableConcept.empty(),
          );
        }
      case 'topicReference':
        {
          return copyWith(
            topicX: Reference.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'subType':
        {
          return copyWith(
            subType: CodeableConcept.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      case 'securityLabel':
        {
          return copyWith(
            securityLabel: <ContractSecurityLabel>[],
          );
        }
      case 'offer':
        {
          return copyWith(
            offer: ContractOffer.empty(),
          );
        }
      case 'asset':
        {
          return copyWith(
            asset: <ContractAsset>[],
          );
        }
      case 'action':
        {
          return copyWith(
            action: <ContractAction>[],
          );
        }
      case 'group':
        {
          return copyWith(
            group: <ContractTerm>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractTerm clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool issued = false,
    bool applies = false,
    bool topic = false,
    bool type = false,
    bool subType = false,
    bool text = false,
    bool securityLabel = false,
    bool asset = false,
    bool action = false,
    bool group = false,
  }) {
    return ContractTerm(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      issued: issued ? null : this.issued,
      applies: applies ? null : this.applies,
      topicX: topic ? null : topicX,
      type: type ? null : this.type,
      subType: subType ? null : this.subType,
      text: text ? null : this.text,
      securityLabel: securityLabel ? null : this.securityLabel,
      offer: offer,
      asset: asset ? null : this.asset,
      action: action ? null : this.action,
      group: group ? null : this.group,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractTerm(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      issued: issued?.copyWith(
            objectPath: '$newObjectPath.issued',
          ) ??
          this.issued,
      applies: applies?.copyWith(
            objectPath: '$newObjectPath.applies',
          ) ??
          this.applies,
      topicX: topicX?.copyWith(
            objectPath: '$newObjectPath.topicX',
          ) as TopicXContractTerm? ??
          this.topicX,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subType: subType?.copyWith(
            objectPath: '$newObjectPath.subType',
          ) ??
          this.subType,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      securityLabel: securityLabel
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.securityLabel',
                ),
              )
              .toList() ??
          this.securityLabel,
      offer: offer?.copyWith(
            objectPath: '$newObjectPath.offer',
          ) ??
          this.offer,
      asset: asset
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.asset',
                ),
              )
              .toList() ??
          this.asset,
      action: action
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.action',
                ),
              )
              .toList() ??
          this.action,
      group: group
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.group',
                ),
              )
              .toList() ??
          this.group,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractTerm) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<ContractSecurityLabel>(
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
    if (!listEquals<ContractAsset>(
      asset,
      o.asset,
    )) {
      return false;
    }
    if (!listEquals<ContractAction>(
      action,
      o.action,
    )) {
      return false;
    }
    if (!listEquals<ContractTerm>(
      group,
      o.group,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Contract.term.securityLabel',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractSecurityLabel.empty() => ContractSecurityLabel(
        classification: Coding.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSecurityLabel.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.securityLabel';
    return ContractSecurityLabel(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      number: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'number',
        FhirUnsignedInt.fromJson,
        '$objectPath.number',
      ),
      classification: JsonParser.parseObject<Coding>(
        json,
        'classification',
        Coding.fromJson,
        '$objectPath.classification',
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      control: (json['control'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.control',
              },
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
    if (json is Map<String, dynamic>) {
      return ContractSecurityLabel.fromJson(json);
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'number',
      number,
    );
    addField(
      'classification',
      classification,
    );
    addField(
      'category',
      category,
    );
    addField(
      'control',
      control,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(classification);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'number':
        {
          if (child is List<FhirUnsignedInt>) {
            // Add all elements from passed list
            final newList = [...?number, ...child];
            return copyWith(number: newList);
          } else if (child is FhirUnsignedInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?number,
              child,
            ];
            return copyWith(number: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'classification':
        {
          if (child is Coding) {
            return copyWith(classification: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<Coding>) {
            // Add all elements from passed list
            final newList = [...?category, ...child];
            return copyWith(category: newList);
          } else if (child is Coding) {
            // Add single element to existing list or create new list
            final newList = [
              ...?category,
              child,
            ];
            return copyWith(category: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'control':
        {
          if (child is List<Coding>) {
            // Add all elements from passed list
            final newList = [...?control, ...child];
            return copyWith(control: newList);
          } else if (child is Coding) {
            // Add single element to existing list or create new list
            final newList = [
              ...?control,
              child,
            ];
            return copyWith(control: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'number':
        return ['FhirUnsignedInt'];
      case 'classification':
        return ['Coding'];
      case 'category':
        return ['Coding'];
      case 'control':
        return ['Coding'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractSecurityLabel]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractSecurityLabel createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'number':
        {
          return copyWith(
            number: <FhirUnsignedInt>[],
          );
        }
      case 'classification':
        {
          return copyWith(
            classification: Coding.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: <Coding>[],
          );
        }
      case 'control':
        {
          return copyWith(
            control: <Coding>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractSecurityLabel clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool number = false,
    bool category = false,
    bool control = false,
  }) {
    return ContractSecurityLabel(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      number: number ? null : this.number,
      classification: classification,
      category: category ? null : this.category,
      control: control ? null : this.control,
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
    Coding? classification,
    List<Coding>? category,
    List<Coding>? control,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractSecurityLabel(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      number: number
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.number',
                ),
              )
              .toList() ??
          this.number,
      classification: classification?.copyWith(
            objectPath: '$newObjectPath.classification',
          ) ??
          this.classification,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      control: control
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.control',
                ),
              )
              .toList() ??
          this.control,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractSecurityLabel) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedInt>(
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
    if (!listEquals<Coding>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      control,
      o.control,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Contract.term.offer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractOffer.empty() => const ContractOffer();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractOffer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.offer';
    return ContractOffer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      party: (json['party'] as List<dynamic>?)
          ?.map<ContractParty>(
            (v) => ContractParty.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.party',
              },
            ),
          )
          .toList(),
      topic: JsonParser.parseObject<Reference>(
        json,
        'topic',
        Reference.fromJson,
        '$objectPath.topic',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      decision: JsonParser.parseObject<CodeableConcept>(
        json,
        'decision',
        CodeableConcept.fromJson,
        '$objectPath.decision',
      ),
      decisionMode: (json['decisionMode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.decisionMode',
              },
            ),
          )
          .toList(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<ContractAnswer>(
            (v) => ContractAnswer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.answer',
              },
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      linkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
        '$objectPath.linkId',
      ),
      securityLabelNumber: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'securityLabelNumber',
        FhirUnsignedInt.fromJson,
        '$objectPath.securityLabelNumber',
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
    if (json is Map<String, dynamic>) {
      return ContractOffer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'party',
      party,
    );
    addField(
      'topic',
      topic,
    );
    addField(
      'type',
      type,
    );
    addField(
      'decision',
      decision,
    );
    addField(
      'decisionMode',
      decisionMode,
    );
    addField(
      'answer',
      answer,
    );
    addField(
      'text',
      text,
    );
    addField(
      'linkId',
      linkId,
    );
    addField(
      'securityLabelNumber',
      securityLabelNumber,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'party':
        {
          if (child is List<ContractParty>) {
            // Add all elements from passed list
            final newList = [...?party, ...child];
            return copyWith(party: newList);
          } else if (child is ContractParty) {
            // Add single element to existing list or create new list
            final newList = [
              ...?party,
              child,
            ];
            return copyWith(party: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'topic':
        {
          if (child is Reference) {
            return copyWith(topic: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'decision':
        {
          if (child is CodeableConcept) {
            return copyWith(decision: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'decisionMode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?decisionMode, ...child];
            return copyWith(decisionMode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?decisionMode,
              child,
            ];
            return copyWith(decisionMode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answer':
        {
          if (child is List<ContractAnswer>) {
            // Add all elements from passed list
            final newList = [...?answer, ...child];
            return copyWith(answer: newList);
          } else if (child is ContractAnswer) {
            // Add single element to existing list or create new list
            final newList = [
              ...?answer,
              child,
            ];
            return copyWith(answer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'linkId':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?linkId, ...child];
            return copyWith(linkId: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?linkId,
              child,
            ];
            return copyWith(linkId: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'securityLabelNumber':
        {
          if (child is List<FhirUnsignedInt>) {
            // Add all elements from passed list
            final newList = [...?securityLabelNumber, ...child];
            return copyWith(securityLabelNumber: newList);
          } else if (child is FhirUnsignedInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?securityLabelNumber,
              child,
            ];
            return copyWith(securityLabelNumber: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'party':
        return ['ContractParty'];
      case 'topic':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      case 'decision':
        return ['CodeableConcept'];
      case 'decisionMode':
        return ['CodeableConcept'];
      case 'answer':
        return ['ContractAnswer'];
      case 'text':
        return ['FhirString'];
      case 'linkId':
        return ['FhirString'];
      case 'securityLabelNumber':
        return ['FhirUnsignedInt'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractOffer]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractOffer createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'party':
        {
          return copyWith(
            party: <ContractParty>[],
          );
        }
      case 'topic':
        {
          return copyWith(
            topic: Reference.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'decision':
        {
          return copyWith(
            decision: CodeableConcept.empty(),
          );
        }
      case 'decisionMode':
        {
          return copyWith(
            decisionMode: <CodeableConcept>[],
          );
        }
      case 'answer':
        {
          return copyWith(
            answer: <ContractAnswer>[],
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      case 'linkId':
        {
          return copyWith(
            linkId: <FhirString>[],
          );
        }
      case 'securityLabelNumber':
        {
          return copyWith(
            securityLabelNumber: <FhirUnsignedInt>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractOffer clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool party = false,
    bool topic = false,
    bool type = false,
    bool decision = false,
    bool decisionMode = false,
    bool answer = false,
    bool text = false,
    bool linkId = false,
    bool securityLabelNumber = false,
  }) {
    return ContractOffer(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      party: party ? null : this.party,
      topic: topic ? null : this.topic,
      type: type ? null : this.type,
      decision: decision ? null : this.decision,
      decisionMode: decisionMode ? null : this.decisionMode,
      answer: answer ? null : this.answer,
      text: text ? null : this.text,
      linkId: linkId ? null : this.linkId,
      securityLabelNumber:
          securityLabelNumber ? null : this.securityLabelNumber,
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
    List<FhirString>? linkId,
    List<FhirUnsignedInt>? securityLabelNumber,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractOffer(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      party: party
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.party',
                ),
              )
              .toList() ??
          this.party,
      topic: topic?.copyWith(
            objectPath: '$newObjectPath.topic',
          ) ??
          this.topic,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      decision: decision?.copyWith(
            objectPath: '$newObjectPath.decision',
          ) ??
          this.decision,
      decisionMode: decisionMode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.decisionMode',
                ),
              )
              .toList() ??
          this.decisionMode,
      answer: answer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.answer',
                ),
              )
              .toList() ??
          this.answer,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      linkId: linkId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.linkId',
                ),
              )
              .toList() ??
          this.linkId,
      securityLabelNumber: securityLabelNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.securityLabelNumber',
                ),
              )
              .toList() ??
          this.securityLabelNumber,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractOffer) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<ContractParty>(
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
    if (!listEquals<CodeableConcept>(
      decisionMode,
      o.decisionMode,
    )) {
      return false;
    }
    if (!listEquals<ContractAnswer>(
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
    if (!listEquals<FhirString>(
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedInt>(
      securityLabelNumber,
      o.securityLabelNumber,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Contract.term.offer.party',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractParty.empty() => ContractParty(
        reference: <Reference>[],
        role: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractParty.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.offer.party';
    return ContractParty(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reference',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
        '$objectPath.role',
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
    if (json is Map<String, dynamic>) {
      return ContractParty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'reference',
      reference,
    );
    addField(
      'role',
      role,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.addAll(reference);
      case 'role':
        fields.add(role);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...reference, ...child];
            return copyWith(reference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...reference,
              child,
            ];
            return copyWith(reference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'role':
        {
          if (child is CodeableConcept) {
            return copyWith(role: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'reference':
        return ['Reference'];
      case 'role':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractParty]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractParty createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'reference':
        {
          return copyWith(
            reference: <Reference>[],
          );
        }
      case 'role':
        {
          return copyWith(
            role: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractParty clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ContractParty(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      reference: reference,
      role: role,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractParty(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      reference: reference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reference',
                ),
              )
              .toList() ??
          this.reference,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractParty) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
  }) : super(
          objectPath: 'Contract.term.offer.answer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractAnswer.empty() => ContractAnswer(
        valueX: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAnswer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.offer.answer';
    return ContractAnswer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXContractAnswer>(
        json,
        {
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
        },
        objectPath,
      )!,
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
    if (json is Map<String, dynamic>) {
      return ContractAnswer.fromJson(json);
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
  final ValueXContractAnswer valueX;

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX.isAs<FhirDecimal>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX.isAs<FhirDate>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX.isAs<Attachment>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
    );

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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXContractAnswer) {
            return copyWith(valueX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(valueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(valueX: child);
            }
            if (child is FhirDate) {
              return copyWith(valueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is FhirUri) {
              return copyWith(valueX: child);
            }
            if (child is Attachment) {
              return copyWith(valueX: child);
            }
            if (child is Coding) {
              return copyWith(valueX: child);
            }
            if (child is Quantity) {
              return copyWith(valueX: child);
            }
            if (child is Reference) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is Attachment) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is Coding) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'value':
      case 'valueX':
        return [
          'FhirBoolean',
          'FhirDecimal',
          'FhirInteger',
          'FhirDate',
          'FhirDateTime',
          'FhirTime',
          'FhirString',
          'FhirUri',
          'Attachment',
          'Coding',
          'Quantity',
          'Reference',
        ];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueDecimal':
        return ['FhirDecimal'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueDate':
        return ['FhirDate'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueString':
        return ['FhirString'];
      case 'valueUri':
        return ['FhirUri'];
      case 'valueAttachment':
        return ['Attachment'];
      case 'valueCoding':
        return ['Coding'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractAnswer]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractAnswer createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'value':
      case 'valueX':
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueDecimal':
        {
          return copyWith(
            valueX: FhirDecimal.empty(),
          );
        }
      case 'valueInteger':
        {
          return copyWith(
            valueX: FhirInteger.empty(),
          );
        }
      case 'valueDate':
        {
          return copyWith(
            valueX: FhirDate.empty(),
          );
        }
      case 'valueDateTime':
        {
          return copyWith(
            valueX: FhirDateTime.empty(),
          );
        }
      case 'valueTime':
        {
          return copyWith(
            valueX: FhirTime.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueUri':
        {
          return copyWith(
            valueX: FhirUri.empty(),
          );
        }
      case 'valueAttachment':
        {
          return copyWith(
            valueX: Attachment.empty(),
          );
        }
      case 'valueCoding':
        {
          return copyWith(
            valueX: Coding.empty(),
          );
        }
      case 'valueQuantity':
        {
          return copyWith(
            valueX: Quantity.empty(),
          );
        }
      case 'valueReference':
        {
          return copyWith(
            valueX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractAnswer clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ContractAnswer(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      valueX: valueX,
    );
  }

  @override
  ContractAnswer clone() => throw UnimplementedError();
  @override
  ContractAnswer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXContractAnswer? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractAnswer(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXContractAnswer? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractAnswer) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'Contract.term.asset',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractAsset.empty() => const ContractAsset();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAsset.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.asset';
    return ContractAsset(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      scope: JsonParser.parseObject<CodeableConcept>(
        json,
        'scope',
        CodeableConcept.fromJson,
        '$objectPath.scope',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      typeReference: (json['typeReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.typeReference',
              },
            ),
          )
          .toList(),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subtype',
              },
            ),
          )
          .toList(),
      relationship: JsonParser.parseObject<Coding>(
        json,
        'relationship',
        Coding.fromJson,
        '$objectPath.relationship',
      ),
      context: (json['context'] as List<dynamic>?)
          ?.map<ContractContext>(
            (v) => ContractContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.context',
              },
            ),
          )
          .toList(),
      condition: JsonParser.parsePrimitive<FhirString>(
        json,
        'condition',
        FhirString.fromJson,
        '$objectPath.condition',
      ),
      periodType: (json['periodType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.periodType',
              },
            ),
          )
          .toList(),
      period: (json['period'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.period',
              },
            ),
          )
          .toList(),
      usePeriod: (json['usePeriod'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.usePeriod',
              },
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      linkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
        '$objectPath.linkId',
      ),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<ContractAnswer>(
            (v) => ContractAnswer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.answer',
              },
            ),
          )
          .toList(),
      securityLabelNumber: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'securityLabelNumber',
        FhirUnsignedInt.fromJson,
        '$objectPath.securityLabelNumber',
      ),
      valuedItem: (json['valuedItem'] as List<dynamic>?)
          ?.map<ContractValuedItem>(
            (v) => ContractValuedItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valuedItem',
              },
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
    if (json is Map<String, dynamic>) {
      return ContractAsset.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'scope',
      scope,
    );
    addField(
      'type',
      type,
    );
    addField(
      'typeReference',
      typeReference,
    );
    addField(
      'subtype',
      subtype,
    );
    addField(
      'relationship',
      relationship,
    );
    addField(
      'context',
      context,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'periodType',
      periodType,
    );
    addField(
      'period',
      period,
    );
    addField(
      'usePeriod',
      usePeriod,
    );
    addField(
      'text',
      text,
    );
    addField(
      'linkId',
      linkId,
    );
    addField(
      'answer',
      answer,
    );
    addField(
      'securityLabelNumber',
      securityLabelNumber,
    );
    addField(
      'valuedItem',
      valuedItem,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'scope':
        {
          if (child is CodeableConcept) {
            return copyWith(scope: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?type, ...child];
            return copyWith(type: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?type,
              child,
            ];
            return copyWith(type: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'typeReference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?typeReference, ...child];
            return copyWith(typeReference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?typeReference,
              child,
            ];
            return copyWith(typeReference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subtype':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?subtype, ...child];
            return copyWith(subtype: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subtype,
              child,
            ];
            return copyWith(subtype: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relationship':
        {
          if (child is Coding) {
            return copyWith(relationship: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'context':
        {
          if (child is List<ContractContext>) {
            // Add all elements from passed list
            final newList = [...?context, ...child];
            return copyWith(context: newList);
          } else if (child is ContractContext) {
            // Add single element to existing list or create new list
            final newList = [
              ...?context,
              child,
            ];
            return copyWith(context: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'condition':
        {
          if (child is FhirString) {
            return copyWith(condition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'periodType':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?periodType, ...child];
            return copyWith(periodType: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?periodType,
              child,
            ];
            return copyWith(periodType: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is List<Period>) {
            // Add all elements from passed list
            final newList = [...?period, ...child];
            return copyWith(period: newList);
          } else if (child is Period) {
            // Add single element to existing list or create new list
            final newList = [
              ...?period,
              child,
            ];
            return copyWith(period: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usePeriod':
        {
          if (child is List<Period>) {
            // Add all elements from passed list
            final newList = [...?usePeriod, ...child];
            return copyWith(usePeriod: newList);
          } else if (child is Period) {
            // Add single element to existing list or create new list
            final newList = [
              ...?usePeriod,
              child,
            ];
            return copyWith(usePeriod: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'linkId':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?linkId, ...child];
            return copyWith(linkId: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?linkId,
              child,
            ];
            return copyWith(linkId: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answer':
        {
          if (child is List<ContractAnswer>) {
            // Add all elements from passed list
            final newList = [...?answer, ...child];
            return copyWith(answer: newList);
          } else if (child is ContractAnswer) {
            // Add single element to existing list or create new list
            final newList = [
              ...?answer,
              child,
            ];
            return copyWith(answer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'securityLabelNumber':
        {
          if (child is List<FhirUnsignedInt>) {
            // Add all elements from passed list
            final newList = [...?securityLabelNumber, ...child];
            return copyWith(securityLabelNumber: newList);
          } else if (child is FhirUnsignedInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?securityLabelNumber,
              child,
            ];
            return copyWith(securityLabelNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuedItem':
        {
          if (child is List<ContractValuedItem>) {
            // Add all elements from passed list
            final newList = [...?valuedItem, ...child];
            return copyWith(valuedItem: newList);
          } else if (child is ContractValuedItem) {
            // Add single element to existing list or create new list
            final newList = [
              ...?valuedItem,
              child,
            ];
            return copyWith(valuedItem: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'scope':
        return ['CodeableConcept'];
      case 'type':
        return ['CodeableConcept'];
      case 'typeReference':
        return ['Reference'];
      case 'subtype':
        return ['CodeableConcept'];
      case 'relationship':
        return ['Coding'];
      case 'context':
        return ['ContractContext'];
      case 'condition':
        return ['FhirString'];
      case 'periodType':
        return ['CodeableConcept'];
      case 'period':
        return ['Period'];
      case 'usePeriod':
        return ['Period'];
      case 'text':
        return ['FhirString'];
      case 'linkId':
        return ['FhirString'];
      case 'answer':
        return ['ContractAnswer'];
      case 'securityLabelNumber':
        return ['FhirUnsignedInt'];
      case 'valuedItem':
        return ['ContractValuedItem'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractAsset]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractAsset createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'scope':
        {
          return copyWith(
            scope: CodeableConcept.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: <CodeableConcept>[],
          );
        }
      case 'typeReference':
        {
          return copyWith(
            typeReference: <Reference>[],
          );
        }
      case 'subtype':
        {
          return copyWith(
            subtype: <CodeableConcept>[],
          );
        }
      case 'relationship':
        {
          return copyWith(
            relationship: Coding.empty(),
          );
        }
      case 'context':
        {
          return copyWith(
            context: <ContractContext>[],
          );
        }
      case 'condition':
        {
          return copyWith(
            condition: FhirString.empty(),
          );
        }
      case 'periodType':
        {
          return copyWith(
            periodType: <CodeableConcept>[],
          );
        }
      case 'period':
        {
          return copyWith(
            period: <Period>[],
          );
        }
      case 'usePeriod':
        {
          return copyWith(
            usePeriod: <Period>[],
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      case 'linkId':
        {
          return copyWith(
            linkId: <FhirString>[],
          );
        }
      case 'answer':
        {
          return copyWith(
            answer: <ContractAnswer>[],
          );
        }
      case 'securityLabelNumber':
        {
          return copyWith(
            securityLabelNumber: <FhirUnsignedInt>[],
          );
        }
      case 'valuedItem':
        {
          return copyWith(
            valuedItem: <ContractValuedItem>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractAsset clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool scope = false,
    bool type = false,
    bool typeReference = false,
    bool subtype = false,
    bool relationship = false,
    bool context = false,
    bool condition = false,
    bool periodType = false,
    bool period = false,
    bool usePeriod = false,
    bool text = false,
    bool linkId = false,
    bool answer = false,
    bool securityLabelNumber = false,
    bool valuedItem = false,
  }) {
    return ContractAsset(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      scope: scope ? null : this.scope,
      type: type ? null : this.type,
      typeReference: typeReference ? null : this.typeReference,
      subtype: subtype ? null : this.subtype,
      relationship: relationship ? null : this.relationship,
      context: context ? null : this.context,
      condition: condition ? null : this.condition,
      periodType: periodType ? null : this.periodType,
      period: period ? null : this.period,
      usePeriod: usePeriod ? null : this.usePeriod,
      text: text ? null : this.text,
      linkId: linkId ? null : this.linkId,
      answer: answer ? null : this.answer,
      securityLabelNumber:
          securityLabelNumber ? null : this.securityLabelNumber,
      valuedItem: valuedItem ? null : this.valuedItem,
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
    List<CodeableConcept>? periodType,
    List<Period>? period,
    List<Period>? usePeriod,
    FhirString? text,
    List<FhirString>? linkId,
    List<ContractAnswer>? answer,
    List<FhirUnsignedInt>? securityLabelNumber,
    List<ContractValuedItem>? valuedItem,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractAsset(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      scope: scope?.copyWith(
            objectPath: '$newObjectPath.scope',
          ) ??
          this.scope,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      typeReference: typeReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.typeReference',
                ),
              )
              .toList() ??
          this.typeReference,
      subtype: subtype
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subtype',
                ),
              )
              .toList() ??
          this.subtype,
      relationship: relationship?.copyWith(
            objectPath: '$newObjectPath.relationship',
          ) ??
          this.relationship,
      context: context
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.context',
                ),
              )
              .toList() ??
          this.context,
      condition: condition?.copyWith(
            objectPath: '$newObjectPath.condition',
          ) ??
          this.condition,
      periodType: periodType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.periodType',
                ),
              )
              .toList() ??
          this.periodType,
      period: period
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.period',
                ),
              )
              .toList() ??
          this.period,
      usePeriod: usePeriod
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.usePeriod',
                ),
              )
              .toList() ??
          this.usePeriod,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      linkId: linkId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.linkId',
                ),
              )
              .toList() ??
          this.linkId,
      answer: answer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.answer',
                ),
              )
              .toList() ??
          this.answer,
      securityLabelNumber: securityLabelNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.securityLabelNumber',
                ),
              )
              .toList() ??
          this.securityLabelNumber,
      valuedItem: valuedItem
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.valuedItem',
                ),
              )
              .toList() ??
          this.valuedItem,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractAsset) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      typeReference,
      o.typeReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<ContractContext>(
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
    if (!listEquals<CodeableConcept>(
      periodType,
      o.periodType,
    )) {
      return false;
    }
    if (!listEquals<Period>(
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<Period>(
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
    if (!listEquals<FhirString>(
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!listEquals<ContractAnswer>(
      answer,
      o.answer,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedInt>(
      securityLabelNumber,
      o.securityLabelNumber,
    )) {
      return false;
    }
    if (!listEquals<ContractValuedItem>(
      valuedItem,
      o.valuedItem,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Contract.term.asset.context',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractContext.empty() => const ContractContext();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractContext.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.asset.context';
    return ContractContext(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
        '$objectPath.reference',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
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
    if (json is Map<String, dynamic>) {
      return ContractContext.fromJson(json);
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'reference',
      reference,
    );
    addField(
      'code',
      code,
    );
    addField(
      'text',
      text,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is Reference) {
            return copyWith(reference: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?code, ...child];
            return copyWith(code: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?code,
              child,
            ];
            return copyWith(code: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'reference':
        return ['Reference'];
      case 'code':
        return ['CodeableConcept'];
      case 'text':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractContext]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractContext createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'reference':
        {
          return copyWith(
            reference: Reference.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: <CodeableConcept>[],
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractContext clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool reference = false,
    bool code = false,
    bool text = false,
  }) {
    return ContractContext(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      reference: reference ? null : this.reference,
      code: code ? null : this.code,
      text: text ? null : this.text,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractContext(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractContext) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
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
  }) : super(
          objectPath: 'Contract.term.asset.valuedItem',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractValuedItem.empty() => const ContractValuedItem();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractValuedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.asset.valuedItem';
    return ContractValuedItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      entityX: JsonParser.parsePolymorphic<EntityXContractValuedItem>(
        json,
        {
          'entityCodeableConcept': CodeableConcept.fromJson,
          'entityReference': Reference.fromJson,
        },
        objectPath,
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      effectiveTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'effectiveTime',
        FhirDateTime.fromJson,
        '$objectPath.effectiveTime',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      points: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'points',
        FhirDecimal.fromJson,
        '$objectPath.points',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      payment: JsonParser.parsePrimitive<FhirString>(
        json,
        'payment',
        FhirString.fromJson,
        '$objectPath.payment',
      ),
      paymentDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'paymentDate',
        FhirDateTime.fromJson,
        '$objectPath.paymentDate',
      ),
      responsible: JsonParser.parseObject<Reference>(
        json,
        'responsible',
        Reference.fromJson,
        '$objectPath.responsible',
      ),
      recipient: JsonParser.parseObject<Reference>(
        json,
        'recipient',
        Reference.fromJson,
        '$objectPath.recipient',
      ),
      linkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
        '$objectPath.linkId',
      ),
      securityLabelNumber: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'securityLabelNumber',
        FhirUnsignedInt.fromJson,
        '$objectPath.securityLabelNumber',
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
    if (json is Map<String, dynamic>) {
      return ContractValuedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractValuedItem';

  /// [entityX]
  /// Specific type of Contract Valued Item that may be priced.
  final EntityXContractValuedItem? entityX;

  /// Getter for [entityCodeableConcept] as a CodeableConcept
  CodeableConcept? get entityCodeableConcept =>
      entityX?.isAs<CodeableConcept>();

  /// Getter for [entityReference] as a Reference
  Reference? get entityReference => entityX?.isAs<Reference>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    if (entityX != null) {
      final fhirType = entityX!.fhirType;
      addField(
        'entity${fhirType.capitalize()}',
        entityX,
      );
    }

    addField(
      'identifier',
      identifier,
    );
    addField(
      'effectiveTime',
      effectiveTime,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'points',
      points,
    );
    addField(
      'net',
      net,
    );
    addField(
      'payment',
      payment,
    );
    addField(
      'paymentDate',
      paymentDate,
    );
    addField(
      'responsible',
      responsible,
    );
    addField(
      'recipient',
      recipient,
    );
    addField(
      'linkId',
      linkId,
    );
    addField(
      'securityLabelNumber',
      securityLabelNumber,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(entityX!);
      case 'entityX':
        fields.add(entityX!);
      case 'entityCodeableConcept':
        if (entityX is CodeableConcept) {
          fields.add(entityX!);
        }
      case 'entityReference':
        if (entityX is Reference) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'entity':
      case 'entityX':
        {
          if (child is EntityXContractValuedItem) {
            return copyWith(entityX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(entityX: child);
            }
            if (child is Reference) {
              return copyWith(entityX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entityCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(entityX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'entityReference':
        {
          if (child is Reference) {
            return copyWith(entityX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectiveTime':
        {
          if (child is FhirDateTime) {
            return copyWith(effectiveTime: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'points':
        {
          if (child is FhirDecimal) {
            return copyWith(points: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'payment':
        {
          if (child is FhirString) {
            return copyWith(payment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'paymentDate':
        {
          if (child is FhirDateTime) {
            return copyWith(paymentDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responsible':
        {
          if (child is Reference) {
            return copyWith(responsible: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recipient':
        {
          if (child is Reference) {
            return copyWith(recipient: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'linkId':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?linkId, ...child];
            return copyWith(linkId: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?linkId,
              child,
            ];
            return copyWith(linkId: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'securityLabelNumber':
        {
          if (child is List<FhirUnsignedInt>) {
            // Add all elements from passed list
            final newList = [...?securityLabelNumber, ...child];
            return copyWith(securityLabelNumber: newList);
          } else if (child is FhirUnsignedInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?securityLabelNumber,
              child,
            ];
            return copyWith(securityLabelNumber: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'entity':
      case 'entityX':
        return [
          'CodeableConcept',
          'Reference',
        ];
      case 'entityCodeableConcept':
        return ['CodeableConcept'];
      case 'entityReference':
        return ['Reference'];
      case 'identifier':
        return ['Identifier'];
      case 'effectiveTime':
        return ['FhirDateTime'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'points':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'payment':
        return ['FhirString'];
      case 'paymentDate':
        return ['FhirDateTime'];
      case 'responsible':
        return ['Reference'];
      case 'recipient':
        return ['Reference'];
      case 'linkId':
        return ['FhirString'];
      case 'securityLabelNumber':
        return ['FhirUnsignedInt'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractValuedItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractValuedItem createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'entity':
      case 'entityX':
      case 'entityCodeableConcept':
        {
          return copyWith(
            entityX: CodeableConcept.empty(),
          );
        }
      case 'entityReference':
        {
          return copyWith(
            entityX: Reference.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: Identifier.empty(),
          );
        }
      case 'effectiveTime':
        {
          return copyWith(
            effectiveTime: FhirDateTime.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'points':
        {
          return copyWith(
            points: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'payment':
        {
          return copyWith(
            payment: FhirString.empty(),
          );
        }
      case 'paymentDate':
        {
          return copyWith(
            paymentDate: FhirDateTime.empty(),
          );
        }
      case 'responsible':
        {
          return copyWith(
            responsible: Reference.empty(),
          );
        }
      case 'recipient':
        {
          return copyWith(
            recipient: Reference.empty(),
          );
        }
      case 'linkId':
        {
          return copyWith(
            linkId: <FhirString>[],
          );
        }
      case 'securityLabelNumber':
        {
          return copyWith(
            securityLabelNumber: <FhirUnsignedInt>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractValuedItem clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool entity = false,
    bool identifier = false,
    bool effectiveTime = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool points = false,
    bool net = false,
    bool payment = false,
    bool paymentDate = false,
    bool responsible = false,
    bool recipient = false,
    bool linkId = false,
    bool securityLabelNumber = false,
  }) {
    return ContractValuedItem(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      entityX: entity ? null : entityX,
      identifier: identifier ? null : this.identifier,
      effectiveTime: effectiveTime ? null : this.effectiveTime,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      points: points ? null : this.points,
      net: net ? null : this.net,
      payment: payment ? null : this.payment,
      paymentDate: paymentDate ? null : this.paymentDate,
      responsible: responsible ? null : this.responsible,
      recipient: recipient ? null : this.recipient,
      linkId: linkId ? null : this.linkId,
      securityLabelNumber:
          securityLabelNumber ? null : this.securityLabelNumber,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractValuedItem(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      entityX: entityX?.copyWith(
            objectPath: '$newObjectPath.entityX',
          ) as EntityXContractValuedItem? ??
          this.entityX,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      effectiveTime: effectiveTime?.copyWith(
            objectPath: '$newObjectPath.effectiveTime',
          ) ??
          this.effectiveTime,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      points: points?.copyWith(
            objectPath: '$newObjectPath.points',
          ) ??
          this.points,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      payment: payment?.copyWith(
            objectPath: '$newObjectPath.payment',
          ) ??
          this.payment,
      paymentDate: paymentDate?.copyWith(
            objectPath: '$newObjectPath.paymentDate',
          ) ??
          this.paymentDate,
      responsible: responsible?.copyWith(
            objectPath: '$newObjectPath.responsible',
          ) ??
          this.responsible,
      recipient: recipient?.copyWith(
            objectPath: '$newObjectPath.recipient',
          ) ??
          this.recipient,
      linkId: linkId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.linkId',
                ),
              )
              .toList() ??
          this.linkId,
      securityLabelNumber: securityLabelNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.securityLabelNumber',
                ),
              )
              .toList() ??
          this.securityLabelNumber,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractValuedItem) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<FhirString>(
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedInt>(
      securityLabelNumber,
      o.securityLabelNumber,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Contract.term.action',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractAction.empty() => ContractAction(
        type: CodeableConcept.empty(),
        intent: CodeableConcept.empty(),
        status: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractAction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.action';
    return ContractAction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
        '$objectPath.doNotPerform',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      subject: (json['subject'] as List<dynamic>?)
          ?.map<ContractSubject>(
            (v) => ContractSubject.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      intent: JsonParser.parseObject<CodeableConcept>(
        json,
        'intent',
        CodeableConcept.fromJson,
        '$objectPath.intent',
      )!,
      linkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
        '$objectPath.linkId',
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      )!,
      context: JsonParser.parseObject<Reference>(
        json,
        'context',
        Reference.fromJson,
        '$objectPath.context',
      ),
      contextLinkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'contextLinkId',
        FhirString.fromJson,
        '$objectPath.contextLinkId',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXContractAction>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
        objectPath,
      ),
      requester: (json['requester'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.requester',
              },
            ),
          )
          .toList(),
      requesterLinkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'requesterLinkId',
        FhirString.fromJson,
        '$objectPath.requesterLinkId',
      ),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performerType',
              },
            ),
          )
          .toList(),
      performerRole: JsonParser.parseObject<CodeableConcept>(
        json,
        'performerRole',
        CodeableConcept.fromJson,
        '$objectPath.performerRole',
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
        '$objectPath.performer',
      ),
      performerLinkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'performerLinkId',
        FhirString.fromJson,
        '$objectPath.performerLinkId',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      reason: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'reason',
        FhirString.fromJson,
        '$objectPath.reason',
      ),
      reasonLinkId: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'reasonLinkId',
        FhirString.fromJson,
        '$objectPath.reasonLinkId',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      securityLabelNumber: JsonParser.parsePrimitiveList<FhirUnsignedInt>(
        json,
        'securityLabelNumber',
        FhirUnsignedInt.fromJson,
        '$objectPath.securityLabelNumber',
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
    if (json is Map<String, dynamic>) {
      return ContractAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'doNotPerform',
      doNotPerform,
    );
    addField(
      'type',
      type,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'linkId',
      linkId,
    );
    addField(
      'status',
      status,
    );
    addField(
      'context',
      context,
    );
    addField(
      'contextLinkId',
      contextLinkId,
    );
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField(
        'occurrence${fhirType.capitalize()}',
        occurrenceX,
      );
    }

    addField(
      'requester',
      requester,
    );
    addField(
      'requesterLinkId',
      requesterLinkId,
    );
    addField(
      'performerType',
      performerType,
    );
    addField(
      'performerRole',
      performerRole,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'performerLinkId',
      performerLinkId,
    );
    addField(
      'reasonCode',
      reasonCode,
    );
    addField(
      'reasonReference',
      reasonReference,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'reasonLinkId',
      reasonLinkId,
    );
    addField(
      'note',
      note,
    );
    addField(
      'securityLabelNumber',
      securityLabelNumber,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(type);
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'intent':
        fields.add(intent);
      case 'linkId':
        if (linkId != null) {
          fields.addAll(linkId!);
        }
      case 'status':
        fields.add(status);
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'contextLinkId':
        if (contextLinkId != null) {
          fields.addAll(contextLinkId!);
        }
      case 'occurrence':
        fields.add(occurrenceX!);
      case 'occurrenceX':
        fields.add(occurrenceX!);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is Timing) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doNotPerform':
        {
          if (child is FhirBoolean) {
            return copyWith(doNotPerform: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is List<ContractSubject>) {
            // Add all elements from passed list
            final newList = [...?subject, ...child];
            return copyWith(subject: newList);
          } else if (child is ContractSubject) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subject,
              child,
            ];
            return copyWith(subject: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'intent':
        {
          if (child is CodeableConcept) {
            return copyWith(intent: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'linkId':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?linkId, ...child];
            return copyWith(linkId: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?linkId,
              child,
            ];
            return copyWith(linkId: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is CodeableConcept) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'context':
        {
          if (child is Reference) {
            return copyWith(context: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contextLinkId':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?contextLinkId, ...child];
            return copyWith(contextLinkId: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contextLinkId,
              child,
            ];
            return copyWith(contextLinkId: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrence':
      case 'occurrenceX':
        {
          if (child is OccurrenceXContractAction) {
            return copyWith(occurrenceX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(occurrenceX: child);
            }
            if (child is Period) {
              return copyWith(occurrenceX: child);
            }
            if (child is Timing) {
              return copyWith(occurrenceX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is Period) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceTiming':
        {
          if (child is Timing) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requester':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?requester, ...child];
            return copyWith(requester: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?requester,
              child,
            ];
            return copyWith(requester: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requesterLinkId':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?requesterLinkId, ...child];
            return copyWith(requesterLinkId: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?requesterLinkId,
              child,
            ];
            return copyWith(requesterLinkId: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performerType':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?performerType, ...child];
            return copyWith(performerType: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?performerType,
              child,
            ];
            return copyWith(performerType: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performerRole':
        {
          if (child is CodeableConcept) {
            return copyWith(performerRole: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is Reference) {
            return copyWith(performer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performerLinkId':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?performerLinkId, ...child];
            return copyWith(performerLinkId: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?performerLinkId,
              child,
            ];
            return copyWith(performerLinkId: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?reasonCode, ...child];
            return copyWith(reasonCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonCode,
              child,
            ];
            return copyWith(reasonCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?reasonReference, ...child];
            return copyWith(reasonReference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonReference,
              child,
            ];
            return copyWith(reasonReference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?reason, ...child];
            return copyWith(reason: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reason,
              child,
            ];
            return copyWith(reason: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonLinkId':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?reasonLinkId, ...child];
            return copyWith(reasonLinkId: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonLinkId,
              child,
            ];
            return copyWith(reasonLinkId: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [
              ...?note,
              child,
            ];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'securityLabelNumber':
        {
          if (child is List<FhirUnsignedInt>) {
            // Add all elements from passed list
            final newList = [...?securityLabelNumber, ...child];
            return copyWith(securityLabelNumber: newList);
          } else if (child is FhirUnsignedInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?securityLabelNumber,
              child,
            ];
            return copyWith(securityLabelNumber: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'doNotPerform':
        return ['FhirBoolean'];
      case 'type':
        return ['CodeableConcept'];
      case 'subject':
        return ['ContractSubject'];
      case 'intent':
        return ['CodeableConcept'];
      case 'linkId':
        return ['FhirString'];
      case 'status':
        return ['CodeableConcept'];
      case 'context':
        return ['Reference'];
      case 'contextLinkId':
        return ['FhirString'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTime',
          'Period',
          'Timing',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTime'];
      case 'occurrencePeriod':
        return ['Period'];
      case 'occurrenceTiming':
        return ['Timing'];
      case 'requester':
        return ['Reference'];
      case 'requesterLinkId':
        return ['FhirString'];
      case 'performerType':
        return ['CodeableConcept'];
      case 'performerRole':
        return ['CodeableConcept'];
      case 'performer':
        return ['Reference'];
      case 'performerLinkId':
        return ['FhirString'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'reason':
        return ['FhirString'];
      case 'reasonLinkId':
        return ['FhirString'];
      case 'note':
        return ['Annotation'];
      case 'securityLabelNumber':
        return ['FhirUnsignedInt'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractAction]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractAction createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'doNotPerform':
        {
          return copyWith(
            doNotPerform: FhirBoolean.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: <ContractSubject>[],
          );
        }
      case 'intent':
        {
          return copyWith(
            intent: CodeableConcept.empty(),
          );
        }
      case 'linkId':
        {
          return copyWith(
            linkId: <FhirString>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: CodeableConcept.empty(),
          );
        }
      case 'context':
        {
          return copyWith(
            context: Reference.empty(),
          );
        }
      case 'contextLinkId':
        {
          return copyWith(
            contextLinkId: <FhirString>[],
          );
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          return copyWith(
            occurrenceX: FhirDateTime.empty(),
          );
        }
      case 'occurrencePeriod':
        {
          return copyWith(
            occurrenceX: Period.empty(),
          );
        }
      case 'occurrenceTiming':
        {
          return copyWith(
            occurrenceX: Timing.empty(),
          );
        }
      case 'requester':
        {
          return copyWith(
            requester: <Reference>[],
          );
        }
      case 'requesterLinkId':
        {
          return copyWith(
            requesterLinkId: <FhirString>[],
          );
        }
      case 'performerType':
        {
          return copyWith(
            performerType: <CodeableConcept>[],
          );
        }
      case 'performerRole':
        {
          return copyWith(
            performerRole: CodeableConcept.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: Reference.empty(),
          );
        }
      case 'performerLinkId':
        {
          return copyWith(
            performerLinkId: <FhirString>[],
          );
        }
      case 'reasonCode':
        {
          return copyWith(
            reasonCode: <CodeableConcept>[],
          );
        }
      case 'reasonReference':
        {
          return copyWith(
            reasonReference: <Reference>[],
          );
        }
      case 'reason':
        {
          return copyWith(
            reason: <FhirString>[],
          );
        }
      case 'reasonLinkId':
        {
          return copyWith(
            reasonLinkId: <FhirString>[],
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'securityLabelNumber':
        {
          return copyWith(
            securityLabelNumber: <FhirUnsignedInt>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractAction clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool doNotPerform = false,
    bool subject = false,
    bool linkId = false,
    bool context = false,
    bool contextLinkId = false,
    bool occurrence = false,
    bool requester = false,
    bool requesterLinkId = false,
    bool performerType = false,
    bool performerRole = false,
    bool performer = false,
    bool performerLinkId = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool reason = false,
    bool reasonLinkId = false,
    bool note = false,
    bool securityLabelNumber = false,
  }) {
    return ContractAction(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      doNotPerform: doNotPerform ? null : this.doNotPerform,
      type: type,
      subject: subject ? null : this.subject,
      intent: intent,
      linkId: linkId ? null : this.linkId,
      status: status,
      context: context ? null : this.context,
      contextLinkId: contextLinkId ? null : this.contextLinkId,
      occurrenceX: occurrence ? null : occurrenceX,
      requester: requester ? null : this.requester,
      requesterLinkId: requesterLinkId ? null : this.requesterLinkId,
      performerType: performerType ? null : this.performerType,
      performerRole: performerRole ? null : this.performerRole,
      performer: performer ? null : this.performer,
      performerLinkId: performerLinkId ? null : this.performerLinkId,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      reason: reason ? null : this.reason,
      reasonLinkId: reasonLinkId ? null : this.reasonLinkId,
      note: note ? null : this.note,
      securityLabelNumber:
          securityLabelNumber ? null : this.securityLabelNumber,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractAction(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      doNotPerform: doNotPerform?.copyWith(
            objectPath: '$newObjectPath.doNotPerform',
          ) ??
          this.doNotPerform,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subject: subject
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subject',
                ),
              )
              .toList() ??
          this.subject,
      intent: intent?.copyWith(
            objectPath: '$newObjectPath.intent',
          ) ??
          this.intent,
      linkId: linkId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.linkId',
                ),
              )
              .toList() ??
          this.linkId,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
      contextLinkId: contextLinkId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contextLinkId',
                ),
              )
              .toList() ??
          this.contextLinkId,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXContractAction? ??
          this.occurrenceX,
      requester: requester
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.requester',
                ),
              )
              .toList() ??
          this.requester,
      requesterLinkId: requesterLinkId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.requesterLinkId',
                ),
              )
              .toList() ??
          this.requesterLinkId,
      performerType: performerType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performerType',
                ),
              )
              .toList() ??
          this.performerType,
      performerRole: performerRole?.copyWith(
            objectPath: '$newObjectPath.performerRole',
          ) ??
          this.performerRole,
      performer: performer?.copyWith(
            objectPath: '$newObjectPath.performer',
          ) ??
          this.performer,
      performerLinkId: performerLinkId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performerLinkId',
                ),
              )
              .toList() ??
          this.performerLinkId,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      reason: reason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reason',
                ),
              )
              .toList() ??
          this.reason,
      reasonLinkId: reasonLinkId
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonLinkId',
                ),
              )
              .toList() ??
          this.reasonLinkId,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      securityLabelNumber: securityLabelNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.securityLabelNumber',
                ),
              )
              .toList() ??
          this.securityLabelNumber,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractAction) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<ContractSubject>(
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
    if (!listEquals<FhirString>(
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
    if (!listEquals<FhirString>(
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
    if (!listEquals<Reference>(
      requester,
      o.requester,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      requesterLinkId,
      o.requesterLinkId,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<FhirString>(
      performerLinkId,
      o.performerLinkId,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      reasonLinkId,
      o.reasonLinkId,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<FhirUnsignedInt>(
      securityLabelNumber,
      o.securityLabelNumber,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Contract.term.action.subject',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractSubject.empty() => const ContractSubject(
        reference: <Reference>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSubject.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.term.action.subject';
    return ContractSubject(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reference',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
        '$objectPath.role',
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
    if (json is Map<String, dynamic>) {
      return ContractSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'reference',
      reference,
    );
    addField(
      'role',
      role,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.addAll(reference);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...reference, ...child];
            return copyWith(reference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...reference,
              child,
            ];
            return copyWith(reference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'role':
        {
          if (child is CodeableConcept) {
            return copyWith(role: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'reference':
        return ['Reference'];
      case 'role':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractSubject]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractSubject createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'reference':
        {
          return copyWith(
            reference: <Reference>[],
          );
        }
      case 'role':
        {
          return copyWith(
            role: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractSubject clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool role = false,
  }) {
    return ContractSubject(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      reference: reference,
      role: role ? null : this.role,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractSubject(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      reference: reference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reference',
                ),
              )
              .toList() ??
          this.reference,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractSubject) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
  }) : super(
          objectPath: 'Contract.signer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractSigner.empty() => ContractSigner(
        type: Coding.empty(),
        party: Reference.empty(),
        signature: <Signature>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractSigner.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.signer';
    return ContractSigner(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<Coding>(
        json,
        'type',
        Coding.fromJson,
        '$objectPath.type',
      )!,
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
        '$objectPath.party',
      )!,
      signature: (json['signature'] as List<dynamic>)
          .map<Signature>(
            (v) => Signature.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.signature',
              },
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
    if (json is Map<String, dynamic>) {
      return ContractSigner.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'party',
      party,
    );
    addField(
      'signature',
      signature,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(type);
      case 'party':
        fields.add(party);
      case 'signature':
        fields.addAll(signature);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is Coding) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'party':
        {
          if (child is Reference) {
            return copyWith(party: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'signature':
        {
          if (child is List<Signature>) {
            // Add all elements from passed list
            final newList = [...signature, ...child];
            return copyWith(signature: newList);
          } else if (child is Signature) {
            // Add single element to existing list or create new list
            final newList = [
              ...signature,
              child,
            ];
            return copyWith(signature: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['Coding'];
      case 'party':
        return ['Reference'];
      case 'signature':
        return ['Signature'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractSigner]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractSigner createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: Coding.empty(),
          );
        }
      case 'party':
        {
          return copyWith(
            party: Reference.empty(),
          );
        }
      case 'signature':
        {
          return copyWith(
            signature: <Signature>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractSigner clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ContractSigner(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      party: party,
      signature: signature,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractSigner(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      party: party?.copyWith(
            objectPath: '$newObjectPath.party',
          ) ??
          this.party,
      signature: signature
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.signature',
                ),
              )
              .toList() ??
          this.signature,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractSigner) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<Signature>(
      signature,
      o.signature,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Contract.friendly',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractFriendly.empty() => ContractFriendly(
        contentX: Attachment.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractFriendly.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.friendly';
    return ContractFriendly(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractFriendly>(
        json,
        {
          'contentAttachment': Attachment.fromJson,
          'contentReference': Reference.fromJson,
        },
        objectPath,
      )!,
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
    if (json is Map<String, dynamic>) {
      return ContractFriendly.fromJson(json);
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
  final ContentXContractFriendly contentX;

  /// Getter for [contentAttachment] as a Attachment
  Attachment? get contentAttachment => contentX.isAs<Attachment>();

  /// Getter for [contentReference] as a Reference
  Reference? get contentReference => contentX.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    final contentXFhirType = contentX.fhirType;
    addField(
      'content${contentXFhirType.capitalize()}',
      contentX,
    );

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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(contentX);
      case 'contentX':
        fields.add(contentX);
      case 'contentAttachment':
        if (contentX is Attachment) {
          fields.add(contentX);
        }
      case 'contentReference':
        if (contentX is Reference) {
          fields.add(contentX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'content':
      case 'contentX':
        {
          if (child is ContentXContractFriendly) {
            return copyWith(contentX: child);
          } else {
            if (child is Attachment) {
              return copyWith(contentX: child);
            }
            if (child is Reference) {
              return copyWith(contentX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentAttachment':
        {
          if (child is Attachment) {
            return copyWith(contentX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentReference':
        {
          if (child is Reference) {
            return copyWith(contentX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'content':
      case 'contentX':
        return [
          'Attachment',
          'Reference',
        ];
      case 'contentAttachment':
        return ['Attachment'];
      case 'contentReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractFriendly]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractFriendly createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'content':
      case 'contentX':
      case 'contentAttachment':
        {
          return copyWith(
            contentX: Attachment.empty(),
          );
        }
      case 'contentReference':
        {
          return copyWith(
            contentX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractFriendly clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ContractFriendly(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      contentX: contentX,
    );
  }

  @override
  ContractFriendly clone() => throw UnimplementedError();
  @override
  ContractFriendly copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractFriendly? contentX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractFriendly(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      contentX: contentX?.copyWith(
            objectPath: '$newObjectPath.contentX',
          ) as ContentXContractFriendly? ??
          this.contentX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractFriendly) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'Contract.legal',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractLegal.empty() => ContractLegal(
        contentX: Attachment.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractLegal.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.legal';
    return ContractLegal(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractLegal>(
        json,
        {
          'contentAttachment': Attachment.fromJson,
          'contentReference': Reference.fromJson,
        },
        objectPath,
      )!,
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
    if (json is Map<String, dynamic>) {
      return ContractLegal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ContractLegal';

  /// [contentX]
  /// Contract legal text in human renderable form.
  final ContentXContractLegal contentX;

  /// Getter for [contentAttachment] as a Attachment
  Attachment? get contentAttachment => contentX.isAs<Attachment>();

  /// Getter for [contentReference] as a Reference
  Reference? get contentReference => contentX.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    final contentXFhirType = contentX.fhirType;
    addField(
      'content${contentXFhirType.capitalize()}',
      contentX,
    );

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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(contentX);
      case 'contentX':
        fields.add(contentX);
      case 'contentAttachment':
        if (contentX is Attachment) {
          fields.add(contentX);
        }
      case 'contentReference':
        if (contentX is Reference) {
          fields.add(contentX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'content':
      case 'contentX':
        {
          if (child is ContentXContractLegal) {
            return copyWith(contentX: child);
          } else {
            if (child is Attachment) {
              return copyWith(contentX: child);
            }
            if (child is Reference) {
              return copyWith(contentX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentAttachment':
        {
          if (child is Attachment) {
            return copyWith(contentX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentReference':
        {
          if (child is Reference) {
            return copyWith(contentX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'content':
      case 'contentX':
        return [
          'Attachment',
          'Reference',
        ];
      case 'contentAttachment':
        return ['Attachment'];
      case 'contentReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractLegal]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractLegal createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'content':
      case 'contentX':
      case 'contentAttachment':
        {
          return copyWith(
            contentX: Attachment.empty(),
          );
        }
      case 'contentReference':
        {
          return copyWith(
            contentX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractLegal clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ContractLegal(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      contentX: contentX,
    );
  }

  @override
  ContractLegal clone() => throw UnimplementedError();
  @override
  ContractLegal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractLegal? contentX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractLegal(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      contentX: contentX?.copyWith(
            objectPath: '$newObjectPath.contentX',
          ) as ContentXContractLegal? ??
          this.contentX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractLegal) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'Contract.rule',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ContractRule.empty() => ContractRule(
        contentX: Attachment.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ContractRule.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Contract.rule';
    return ContractRule(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractRule>(
        json,
        {
          'contentAttachment': Attachment.fromJson,
          'contentReference': Reference.fromJson,
        },
        objectPath,
      )!,
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
    if (json is Map<String, dynamic>) {
      return ContractRule.fromJson(json);
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
  final ContentXContractRule contentX;

  /// Getter for [contentAttachment] as a Attachment
  Attachment? get contentAttachment => contentX.isAs<Attachment>();

  /// Getter for [contentReference] as a Reference
  Reference? get contentReference => contentX.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    final contentXFhirType = contentX.fhirType;
    addField(
      'content${contentXFhirType.capitalize()}',
      contentX,
    );

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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(contentX);
      case 'contentX':
        fields.add(contentX);
      case 'contentAttachment':
        if (contentX is Attachment) {
          fields.add(contentX);
        }
      case 'contentReference':
        if (contentX is Reference) {
          fields.add(contentX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'content':
      case 'contentX':
        {
          if (child is ContentXContractRule) {
            return copyWith(contentX: child);
          } else {
            if (child is Attachment) {
              return copyWith(contentX: child);
            }
            if (child is Reference) {
              return copyWith(contentX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentAttachment':
        {
          if (child is Attachment) {
            return copyWith(contentX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentReference':
        {
          if (child is Reference) {
            return copyWith(contentX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'content':
      case 'contentX':
        return [
          'Attachment',
          'Reference',
        ];
      case 'contentAttachment':
        return ['Attachment'];
      case 'contentReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ContractRule]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ContractRule createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'content':
      case 'contentX':
      case 'contentAttachment':
        {
          return copyWith(
            contentX: Attachment.empty(),
          );
        }
      case 'contentReference':
        {
          return copyWith(
            contentX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ContractRule clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ContractRule(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      contentX: contentX,
    );
  }

  @override
  ContractRule clone() => throw UnimplementedError();
  @override
  ContractRule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractRule? contentX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ContractRule(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      contentX: contentX?.copyWith(
            objectPath: '$newObjectPath.contentX',
          ) as ContentXContractRule? ??
          this.contentX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ContractRule) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
