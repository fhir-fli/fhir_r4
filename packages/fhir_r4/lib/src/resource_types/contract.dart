import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'contract.g.dart';

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
    TopicXContract? topicX,
    CodeableConcept? topicCodeableConcept,
    Reference? topicReference,
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
    LegallyBindingXContract? legallyBindingX,
    Attachment? legallyBindingAttachment,
    Reference? legallyBindingReference,
  })  : topicX = topicX ?? topicCodeableConcept ?? topicReference,
        legallyBindingX = legallyBindingX ??
            legallyBindingAttachment ??
            legallyBindingReference,
        super(
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      authority: (json['authority'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      site: (json['site'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
      topicX: JsonParser.parsePolymorphic<TopicXContract>(
        json,
        {
          'topicCodeableConcept': CodeableConcept.fromJson,
          'topicReference': Reference.fromJson,
        },
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      subType: (json['subType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      signer: (json['signer'] as List<dynamic>?)
          ?.map<ContractSigner>(
            (v) => ContractSigner.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      friendly: (json['friendly'] as List<dynamic>?)
          ?.map<ContractFriendly>(
            (v) => ContractFriendly.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      legal: (json['legal'] as List<dynamic>?)
          ?.map<ContractLegal>(
            (v) => ContractLegal.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      rule: (json['rule'] as List<dynamic>?)
          ?.map<ContractRule>(
            (v) => ContractRule.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      legallyBindingX: JsonParser.parsePolymorphic<LegallyBindingXContract>(
        json,
        {
          'legallyBindingAttachment': Attachment.fromJson,
          'legallyBindingReference': Reference.fromJson,
        },
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
  Contract clone() => copyWith();

  /// Copy function for [Contract]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractCopyWith<Contract> get copyWith => _$ContractCopyWithImpl<Contract>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
  ContractContentDefinition clone() => copyWith();

  /// Copy function for [ContractContentDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractContentDefinitionCopyWith<ContractContentDefinition> get copyWith =>
      _$ContractContentDefinitionCopyWithImpl<ContractContentDefinition>(
        this,
        (value) => value,
      );

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
    TopicXContractTerm? topicX,
    CodeableConcept? topicCodeableConcept,
    Reference? topicReference,
    this.type,
    this.subType,
    this.text,
    this.securityLabel,
    required this.offer,
    this.asset,
    this.action,
    this.group,
    super.disallowExtensions,
  })  : topicX = topicX ?? topicCodeableConcept ?? topicReference,
        super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
      topicX: JsonParser.parsePolymorphic<TopicXContractTerm>(
        json,
        {
          'topicCodeableConcept': CodeableConcept.fromJson,
          'topicReference': Reference.fromJson,
        },
      ),
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<ContractAction>(
            (v) => ContractAction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map<ContractTerm>(
            (v) => ContractTerm.fromJson(
              {...v as Map<String, dynamic>},
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
  ContractTerm clone() => copyWith();

  /// Copy function for [ContractTerm]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractTermCopyWith<ContractTerm> get copyWith =>
      _$ContractTermCopyWithImpl<ContractTerm>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      control: (json['control'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
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
  ContractSecurityLabel clone() => copyWith();

  /// Copy function for [ContractSecurityLabel]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractSecurityLabelCopyWith<ContractSecurityLabel> get copyWith =>
      _$ContractSecurityLabelCopyWithImpl<ContractSecurityLabel>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      party: (json['party'] as List<dynamic>?)
          ?.map<ContractParty>(
            (v) => ContractParty.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<ContractAnswer>(
            (v) => ContractAnswer.fromJson(
              {...v as Map<String, dynamic>},
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
  ContractOffer clone() => copyWith();

  /// Copy function for [ContractOffer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractOfferCopyWith<ContractOffer> get copyWith =>
      _$ContractOfferCopyWithImpl<ContractOffer>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
  ContractParty clone() => copyWith();

  /// Copy function for [ContractParty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractPartyCopyWith<ContractParty> get copyWith =>
      _$ContractPartyCopyWithImpl<ContractParty>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
  ContractAnswer clone() => copyWith();

  /// Copy function for [ContractAnswer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractAnswerCopyWith<ContractAnswer> get copyWith =>
      _$ContractAnswerCopyWithImpl<ContractAnswer>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      typeReference: (json['typeReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      period: (json['period'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      usePeriod: (json['usePeriod'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
  ContractAsset clone() => copyWith();

  /// Copy function for [ContractAsset]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractAssetCopyWith<ContractAsset> get copyWith =>
      _$ContractAssetCopyWithImpl<ContractAsset>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
  ContractContext clone() => copyWith();

  /// Copy function for [ContractContext]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractContextCopyWith<ContractContext> get copyWith =>
      _$ContractContextCopyWithImpl<ContractContext>(
        this,
        (value) => value,
      );

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
    EntityXContractValuedItem? entityX,
    CodeableConcept? entityCodeableConcept,
    Reference? entityReference,
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
        super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      entityX: JsonParser.parsePolymorphic<EntityXContractValuedItem>(
        json,
        {
          'entityCodeableConcept': CodeableConcept.fromJson,
          'entityReference': Reference.fromJson,
        },
      ),
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
  ContractValuedItem clone() => copyWith();

  /// Copy function for [ContractValuedItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractValuedItemCopyWith<ContractValuedItem> get copyWith =>
      _$ContractValuedItemCopyWithImpl<ContractValuedItem>(
        this,
        (value) => value,
      );

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
    OccurrenceXContractAction? occurrenceX,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
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
        super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXContractAction>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
      ),
      requester: (json['requester'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
  ContractAction clone() => copyWith();

  /// Copy function for [ContractAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractActionCopyWith<ContractAction> get copyWith =>
      _$ContractActionCopyWithImpl<ContractAction>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
  ContractSubject clone() => copyWith();

  /// Copy function for [ContractSubject]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractSubjectCopyWith<ContractSubject> get copyWith =>
      _$ContractSubjectCopyWithImpl<ContractSubject>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
  ContractSigner clone() => copyWith();

  /// Copy function for [ContractSigner]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractSignerCopyWith<ContractSigner> get copyWith =>
      _$ContractSignerCopyWithImpl<ContractSigner>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractFriendly>(
        json,
        {
          'contentAttachment': Attachment.fromJson,
          'contentReference': Reference.fromJson,
        },
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
  ContractFriendly clone() => copyWith();

  /// Copy function for [ContractFriendly]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractFriendlyCopyWith<ContractFriendly> get copyWith =>
      _$ContractFriendlyCopyWithImpl<ContractFriendly>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractLegal>(
        json,
        {
          'contentAttachment': Attachment.fromJson,
          'contentReference': Reference.fromJson,
        },
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
  ContractLegal clone() => copyWith();

  /// Copy function for [ContractLegal]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractLegalCopyWith<ContractLegal> get copyWith =>
      _$ContractLegalCopyWithImpl<ContractLegal>(
        this,
        (value) => value,
      );

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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contentX: JsonParser.parsePolymorphic<ContentXContractRule>(
        json,
        {
          'contentAttachment': Attachment.fromJson,
          'contentReference': Reference.fromJson,
        },
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
  ContractRule clone() => copyWith();

  /// Copy function for [ContractRule]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ContractRuleCopyWith<ContractRule> get copyWith =>
      _$ContractRuleCopyWithImpl<ContractRule>(
        this,
        (value) => value,
      );

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
