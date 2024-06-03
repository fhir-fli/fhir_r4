/// /// [Contract] Legally enforceable, formally recorded unilateral or
/// bilateral directive i.e., a policy or agreement.

@freezed
class Contract with _$Contract {
  const Contract._();

  const factory Contract({
/// /// [resourceType] This is a Contract resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] Unique identifier for this Contract or a derivative that
/// references a Source Contract.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [url] Canonical identifier for this contract, represented as a URI
/// (globally unique).

    @JsonKey(name: 'url') FhirUri? url,
/// /// [_url] Extensions for url

    @JsonKey(name: '_url') FhirElement? urlElement,
/// /// [version] An edition identifier used for business purposes to label
/// business significant variants.

    @JsonKey(name: 'version') String? version,
/// /// [_version] Extensions for version

    @JsonKey(name: '_version') FhirElement? versionElement,
/// /// [status] The status of the resource instance.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [legalState] Legal states of the formation of a legal instrument, which
/// is a formally executed written document that can be formally attributed to
/// its author, records and formally expresses a legally enforceable act,
/// process, or contractual duty, obligation, or right, and therefore evidences
/// that act, process, or agreement.

    @JsonKey(name: 'legalState') CodeableConcept? legalState,
/// /// [instantiatesCanonical] The URL pointing to a FHIR-defined Contract
/// Definition that is adhered to in whole or part by this Contract.

    @JsonKey(name: 'instantiatesCanonical') Reference? instantiatesCanonical,
/// /// [instantiatesUri] The URL pointing to an externally maintained
/// definition that is adhered to in whole or in part by this Contract.

    @JsonKey(name: 'instantiatesUri') FhirUri? instantiatesUri,
/// /// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') FhirElement? instantiatesUriElement,
/// /// [contentDerivative] The minimal content derived from the basal
/// information source at a specific stage in its lifecycle.

    @JsonKey(name: 'contentDerivative') CodeableConcept? contentDerivative,
/// /// [issued] When this  Contract was issued.

    @JsonKey(name: 'issued') FhirDateTime? issued,
/// /// [_issued] Extensions for issued

    @JsonKey(name: '_issued') FhirElement? issuedElement,
/// /// [applies] Relevant time or time-period when this Contract is
/// applicable.

    @JsonKey(name: 'applies') Period? applies,
/// /// [expirationType] Event resulting in discontinuation or termination of
/// this Contract instance by one or more parties to the contract.

    @JsonKey(name: 'expirationType') CodeableConcept? expirationType,
/// /// [subject] The target entity impacted by or of interest to parties to
/// the agreement.

    @JsonKey(name: 'subject') List<List<Reference>>? subject,
/// /// [authority] A formally or informally recognized grouping of people,
/// principals, organizations, or jurisdictions formed for the purpose of
/// achieving some form of collective action such as the promulgation,
/// administration and enforcement of contracts and policies.

    @JsonKey(name: 'authority') List<List<Reference>>? authority,
/// /// [domain] Recognized governance framework or system operating with a
/// circumscribed scope in accordance with specified principles, policies,
/// processes or procedures for managing rights, actions, or behaviors of
/// parties or principals relative to resources.

    @JsonKey(name: 'domain') List<List<Reference>>? domain,
/// /// [site] Sites in which the contract is complied with,  exercised, or in
/// force.

    @JsonKey(name: 'site') List<List<Reference>>? site,
/// /// [name] A natural language name identifying this Contract definition,
/// derivative, or instance in any legal state. Provides additional information
/// about its content. This name should be usable as an identifier for the
/// module by machine processing applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [title] A short, descriptive, user-friendly title for this Contract
/// definition, derivative, or instance in any legal state.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [subtitle] A more detailed or qualifying explanatory or alternate
/// user-friendly title for this Contract definition, derivative, or instance
/// in any legal state.

    @JsonKey(name: 'subtitle') String? subtitle,
/// /// [_subtitle] Extensions for subtitle

    @JsonKey(name: '_subtitle') FhirElement? subtitleElement,
/// /// [alias] Alternative representation of the title for this Contract
/// definition, derivative, or instance in any legal state., e.g., a domain
/// specific contract number related to legislation.

    @JsonKey(name: 'alias') List<List<String>>? alias,
/// /// [_alias] Extensions for alias

    @JsonKey(name: '_alias') List<FhirElement>? aliasElement,
/// /// [author] The individual or organization that authored the Contract
/// definition, derivative, or instance in any legal state.

    @JsonKey(name: 'author') Reference? author,
/// /// [scope] A selector of legal concerns for this Contract definition,
/// derivative, or instance in any legal state.

    @JsonKey(name: 'scope') CodeableConcept? scope,
/// /// [topicCodeableConcept] Narrows the range of legal concerns to focus on
/// the achievement of specific contractual objectives.

    @JsonKey(name: 'topicCodeableConcept') CodeableConcept? topicCodeableConcept,
/// /// [topicReference] Narrows the range of legal concerns to focus on the
/// achievement of specific contractual objectives.

    @JsonKey(name: 'topicReference') Reference? topicReference,
/// /// [type] A high-level category for the legal instrument, whether
/// constructed as a Contract definition, derivative, or instance in any legal
/// state.  Provides additional information about its content within the
/// context of the Contract's scope to distinguish the kinds of systems that
/// would be interested in the contract.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [subType] Sub-category for the Contract that distinguishes the kinds of
/// systems that would be interested in the Contract within the context of the
/// Contract's scope.

    @JsonKey(name: 'subType') List<List<CodeableConcept>>? subType,
/// /// [contentDefinition] Precusory content developed with a focus and intent
/// of supporting the formation a Contract instance, which may be associated
/// with and transformable into a Contract.

    @JsonKey(name: 'contentDefinition') Contract_ContentDefinition? contentDefinition,
/// /// [term] One or more Contract Provisions, which may be related and
/// conveyed as a group, and may contain nested groups.

    @JsonKey(name: 'term') List<List<Contract_Term>>? term,
/// /// [supportingInfo] Information that may be needed by/relevant to the
/// performer in their execution of this term action.

    @JsonKey(name: 'supportingInfo') List<List<Reference>>? supportingInfo,
/// /// [relevantHistory] Links to Provenance records for past versions of this
/// Contract definition, derivative, or instance, which identify key state
/// transitions or updates that are likely to be relevant to a user looking at
/// the current version of the Contract.  The Provenance.entity indicates the
/// target that was changed in the update (see
/// [Provenance.entity](provenance-definitions.html#Provenance.entity)).

    @JsonKey(name: 'relevantHistory') List<List<Reference>>? relevantHistory,
/// /// [signer] Parties with legal standing in the Contract, including the
/// principal parties, the grantor(s) and grantee(s), which are any person or
/// organization bound by the contract, and any ancillary parties, which
/// facilitate the execution of the contract such as a notary or witness.

    @JsonKey(name: 'signer') List<List<Contract_Signer>>? signer,
/// /// [friendly] The "patient friendly language" versionof the Contract in
/// whole or in parts. "Patient friendly language" means the representation of
/// the Contract and Contract Provisions in a manner that is readily accessible
/// and understandable by a layperson in accordance with best practices for
/// communication styles that ensure that those agreeing to or signing the
/// Contract understand the roles, actions, obligations, responsibilities, and
/// implication of the agreement.

    @JsonKey(name: 'friendly') List<List<Contract_Friendly>>? friendly,
/// /// [legal] List of Legal expressions or representations of this Contract.

    @JsonKey(name: 'legal') List<List<Contract_Legal>>? legal,
/// /// [rule] List of Computable Policy Rule Language Representations of this
/// Contract.

    @JsonKey(name: 'rule') List<List<Contract_Rule>>? rule,
/// /// [legallyBindingAttachment] Legally binding Contract: This is the signed
/// and legally recognized representation of the Contract, which is considered
/// the "source of truth" and which would be the basis for legal action related
/// to enforcement of this Contract.

    @JsonKey(name: 'legallyBindingAttachment') Attachment? legallyBindingAttachment,
/// /// [legallyBindingReference] Legally binding Contract: This is the signed
/// and legally recognized representation of the Contract, which is considered
/// the "source of truth" and which would be the basis for legal action related
/// to enforcement of this Contract.

    @JsonKey(name: 'legallyBindingReference') Reference? legallyBindingReference,
  }) = _$Contract;

  @override
  String get fhirType => 'Contract';

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  factory Contract.fromYaml(dynamic yaml) => yaml is String
      ? Contract.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
