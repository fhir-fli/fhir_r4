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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.contained',
                  },
                ),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.identifier',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.subject',
                  },
                ),
            ),
          )
          .toList(),
      authority: (json['authority'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.authority',
                  },
                ),
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.domain',
                  },
                ),
            ),
          )
          .toList(),
      site: (json['site'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.site',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.subType',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.term',
                  },
                ),
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.supportingInfo',
                  },
                ),
            ),
          )
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.relevantHistory',
                  },
                ),
            ),
          )
          .toList(),
      signer: (json['signer'] as List<dynamic>?)
          ?.map<ContractSigner>(
            (v) => ContractSigner.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.signer',
                  },
                ),
            ),
          )
          .toList(),
      friendly: (json['friendly'] as List<dynamic>?)
          ?.map<ContractFriendly>(
            (v) => ContractFriendly.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.friendly',
                  },
                ),
            ),
          )
          .toList(),
      legal: (json['legal'] as List<dynamic>?)
          ?.map<ContractLegal>(
            (v) => ContractLegal.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.legal',
                  },
                ),
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map<ContractRule>(
            (v) => ContractRule.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.rule',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
      addField('topic${fhirType.capitalize()}', topicX);
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
      addField('legallyBinding${fhirType.capitalize()}', legallyBindingX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.securityLabel',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.asset',
                  },
                ),
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<ContractAction>(
            (v) => ContractAction.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.action',
                  },
                ),
            ),
          )
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map<ContractTerm>(
            (v) => ContractTerm.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.group',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
      addField('topic${fhirType.capitalize()}', topicX);
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.category',
                  },
                ),
            ),
          )
          .toList(),
      control: (json['control'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.control',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.identifier',
                  },
                ),
            ),
          )
          .toList(),
      party: (json['party'] as List<dynamic>?)
          ?.map<ContractParty>(
            (v) => ContractParty.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.party',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.decisionMode',
                  },
                ),
            ),
          )
          .toList(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<ContractAnswer>(
            (v) => ContractAnswer.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.answer',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.reference',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    final valueXFhirType = valueX.fhirType;
    addField('value${valueXFhirType.capitalize()}', valueX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.type',
                  },
                ),
            ),
          )
          .toList(),
      typeReference: (json['typeReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.typeReference',
                  },
                ),
            ),
          )
          .toList(),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.subtype',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.context',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.periodType',
                  },
                ),
            ),
          )
          .toList(),
      period: (json['period'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.period',
                  },
                ),
            ),
          )
          .toList(),
      usePeriod: (json['usePeriod'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.usePeriod',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.answer',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.valuedItem',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.code',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (entityX != null) {
      final fhirType = entityX!.fhirType;
      addField('entity${fhirType.capitalize()}', entityX);
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.subject',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.requester',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.performerType',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.reasonCode',
                  },
                ),
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.reasonReference',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.note',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.reference',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.signature',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    final contentXFhirType = contentX.fhirType;
    addField('content${contentXFhirType.capitalize()}', contentX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    final contentXFhirType = contentX.fhirType;
    addField('content${contentXFhirType.capitalize()}', contentX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    final contentXFhirType = contentX.fhirType;
    addField('content${contentXFhirType.capitalize()}', contentX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
}
