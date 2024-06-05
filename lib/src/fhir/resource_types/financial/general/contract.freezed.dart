// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Contract _$ContractFromJson(Map<String, dynamic> json) {
  return _Contract.fromJson(json);
}

/// @nodoc
mixin _$Contract {
  @JsonKey(unknownEnumValue: R4ResourceType.Contract)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Unique identifier for this Contract or a derivative that
  ///  references a Source Contract.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [url] Canonical identifier for this contract, represented as a URI
  ///  (globally unique).
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [version] An edition identifier used for business purposes to label
  ///  business significant variants.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [status] The status of the resource instance.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [legalState] Legal states of the formation of a legal instrument, which
  /// is a formally executed written document that can be formally attributed to
  /// its author, records and formally expresses a legally enforceable act,
  /// process, or contractual duty, obligation, or right, and therefore
  ///  evidences that act, process, or agreement.
  CodeableConcept? get legalState => throw _privateConstructorUsedError;

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined Contract
  ///  Definition that is adhered to in whole or part by this Contract.
  Reference? get instantiatesCanonical => throw _privateConstructorUsedError;

  /// [instantiatesUri] The URL pointing to an externally maintained definition
  ///  that is adhered to in whole or in part by this Contract.
  FhirUri? get instantiatesUri => throw _privateConstructorUsedError;

  /// [instantiatesUriElement] Extensions for instantiatesUri
  @JsonKey(name: '_instantiatesUri')
  PrimitiveElement? get instantiatesUriElement =>
      throw _privateConstructorUsedError;

  /// [contentDerivative] The minimal content derived from the basal
  ///  information source at a specific stage in its lifecycle.
  CodeableConcept? get contentDerivative => throw _privateConstructorUsedError;

  /// [issued] When this  Contract was issued.
  FhirDateTime? get issued => throw _privateConstructorUsedError;

  /// [issuedElement] Extensions for issued
  @JsonKey(name: '_issued')
  PrimitiveElement? get issuedElement => throw _privateConstructorUsedError;

  /// [applies] Relevant time or time-period when this Contract is applicable.
  Period? get applies => throw _privateConstructorUsedError;

  /// [expirationType] Event resulting in discontinuation or termination of
  ///  this Contract instance by one or more parties to the contract.
  CodeableConcept? get expirationType => throw _privateConstructorUsedError;

  /// [subject] The target entity impacted by or of interest to parties to the
  ///  agreement.
  List<Reference>? get subject => throw _privateConstructorUsedError;

  /// [authority] A formally or informally recognized grouping of people,
  /// principals, organizations, or jurisdictions formed for the purpose of
  /// achieving some form of collective action such as the promulgation,
  ///  administration and enforcement of contracts and policies.
  List<Reference>? get authority => throw _privateConstructorUsedError;

  /// [domain] Recognized governance framework or system operating with a
  /// circumscribed scope in accordance with specified principles, policies,
  /// processes or procedures for managing rights, actions, or behaviors of
  ///  parties or principals relative to resources.
  List<Reference>? get domain => throw _privateConstructorUsedError;

  /// [site] Sites in which the contract is complied with,  exercised, or in
  ///  force.
  List<Reference>? get site => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying this Contract definition,
  /// derivative, or instance in any legal state. Provides additional
  /// information about its content. This name should be usable as an identifier
  /// for the module by machine processing applications such as code
  ///  generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving additional
  ///  information about its content.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [subtitle] An explanatory or alternate user-friendly title for this
  /// Contract definition, derivative, or instance in any legal state.t giving
  ///  additional information about its content.
  String? get subtitle => throw _privateConstructorUsedError;

  /// [subtitleElement] Extensions for subtitle
  @JsonKey(name: '_subtitle')
  PrimitiveElement? get subtitleElement => throw _privateConstructorUsedError;

  /// [alias] Alternative representation of the title for this Contract
  /// definition, derivative, or instance in any legal state., e.g., a domain
  ///  specific contract number related to legislation.
  List<String>? get alias => throw _privateConstructorUsedError;

  /// [aliasElement] Extensions for alias
  @JsonKey(name: '_alias')
  List<Element?>? get aliasElement => throw _privateConstructorUsedError;

  /// [author] The individual or organization that authored the Contract
  ///  definition, derivative, or instance in any legal state.
  Reference? get author => throw _privateConstructorUsedError;

  /// [scope] A selector of legal concerns for this Contract definition,
  ///  derivative, or instance in any legal state.
  CodeableConcept? get scope => throw _privateConstructorUsedError;

  /// [topicCodeableConcept] Narrows the range of legal concerns to focus on
  ///  the achievement of specific contractual objectives.
  CodeableConcept? get topicCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [topicReference] Narrows the range of legal concerns to focus on the
  ///  achievement of specific contractual objectives.
  Reference? get topicReference => throw _privateConstructorUsedError;

  /// [type] A high-level category for the legal instrument, whether
  /// constructed as a Contract definition, derivative, or instance in any legal
  /// state.  Provides additional information about its content within the
  /// context of the Contract's scope to distinguish the kinds of systems that
  ///  would be interested in the contract.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [subType] Sub-category for the Contract that distinguishes the kinds of
  /// systems that would be interested in the Contract within the context of the
  ///  Contract's scope.
  List<CodeableConcept>? get subType => throw _privateConstructorUsedError;

  /// [contentDefinition] Precusory content developed with a focus and intent
  /// of supporting the formation a Contract instance, which may be associated
  ///  with and transformable into a Contract.
  ContractContentDefinition? get contentDefinition =>
      throw _privateConstructorUsedError;

  /// [term] One or more Contract Provisions, which may be related and conveyed
  ///  as a group, and may contain nested groups.
  List<ContractTerm>? get term => throw _privateConstructorUsedError;

  /// [supportingInfo] Information that may be needed by/relevant to the
  ///  performer in their execution of this term action.
  List<Reference>? get supportingInfo => throw _privateConstructorUsedError;

  /// [relevantHistory] Links to Provenance records for past versions of this
  /// Contract definition, derivative, or instance, which identify key state
  /// transitions or updates that are likely to be relevant to a user looking at
  /// the current version of the Contract.  The Provence.entity indicates the
  /// target that was changed in the update.
  ///  http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  List<Reference>? get relevantHistory => throw _privateConstructorUsedError;

  /// [signer] Parties with legal standing in the Contract, including the
  /// principal parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  ///  facilitate the execution of the contract such as a notary or witness.
  List<ContractSigner>? get signer => throw _privateConstructorUsedError;

  /// [friendly] The "patient friendly language" versionof the Contract in
  /// whole or in parts. "Patient friendly language" means the representation of
  /// the Contract and Contract Provisions in a manner that is readily
  /// accessible and understandable by a layperson in accordance with best
  /// practices for communication styles that ensure that those agreeing to or
  /// signing the Contract understand the roles, actions, obligations,
  ///  responsibilities, and implication of the agreement.
  List<ContractFriendly>? get friendly => throw _privateConstructorUsedError;

  /// [legal] List of Legal expressions or representations of this Contract.
  List<ContractLegal>? get legal => throw _privateConstructorUsedError;

  /// [rule] List of Computable Policy Rule Language Representations of this
  ///  Contract.
  List<ContractRule>? get rule => throw _privateConstructorUsedError;

  /// [legallyBindingAttachment] Legally binding Contract: This is the signed
  /// and legally recognized representation of the Contract, which is considered
  /// the "source of truth" and which would be the basis for legal action
  ///  related to enforcement of this Contract.
  Attachment? get legallyBindingAttachment =>
      throw _privateConstructorUsedError;

  /// [legallyBindingReference] Legally binding Contract: This is the signed
  /// and legally recognized representation of the Contract, which is considered
  /// the "source of truth" and which would be the basis for legal action
  ///  related to enforcement of this Contract.
  Reference? get legallyBindingReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractCopyWith<Contract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractCopyWith<$Res> {
  factory $ContractCopyWith(Contract value, $Res Function(Contract) then) =
      _$ContractCopyWithImpl<$Res, Contract>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Contract)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? legalState,
      Reference? instantiatesCanonical,
      FhirUri? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      PrimitiveElement? instantiatesUriElement,
      CodeableConcept? contentDerivative,
      FhirDateTime? issued,
      @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
      Period? applies,
      CodeableConcept? expirationType,
      List<Reference>? subject,
      List<Reference>? authority,
      List<Reference>? domain,
      List<Reference>? site,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      String? subtitle,
      @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<Element?>? aliasElement,
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
      Attachment? legallyBindingAttachment,
      Reference? legallyBindingReference});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get legalState;
  $ReferenceCopyWith<$Res>? get instantiatesCanonical;
  $CodeableConceptCopyWith<$Res>? get contentDerivative;
  $PeriodCopyWith<$Res>? get applies;
  $CodeableConceptCopyWith<$Res>? get expirationType;
  $ReferenceCopyWith<$Res>? get author;
  $CodeableConceptCopyWith<$Res>? get scope;
  $CodeableConceptCopyWith<$Res>? get topicCodeableConcept;
  $ReferenceCopyWith<$Res>? get topicReference;
  $CodeableConceptCopyWith<$Res>? get type;
  $ContractContentDefinitionCopyWith<$Res>? get contentDefinition;
  $AttachmentCopyWith<$Res>? get legallyBindingAttachment;
  $ReferenceCopyWith<$Res>? get legallyBindingReference;
}

/// @nodoc
class _$ContractCopyWithImpl<$Res, $Val extends Contract>
    implements $ContractCopyWith<$Res> {
  _$ContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? legalState = freezed,
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? instantiatesUriElement = freezed,
    Object? contentDerivative = freezed,
    Object? issued = freezed,
    Object? issuedElement = freezed,
    Object? applies = freezed,
    Object? expirationType = freezed,
    Object? subject = freezed,
    Object? authority = freezed,
    Object? domain = freezed,
    Object? site = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? subtitle = freezed,
    Object? subtitleElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? author = freezed,
    Object? scope = freezed,
    Object? topicCodeableConcept = freezed,
    Object? topicReference = freezed,
    Object? type = freezed,
    Object? subType = freezed,
    Object? contentDefinition = freezed,
    Object? term = freezed,
    Object? supportingInfo = freezed,
    Object? relevantHistory = freezed,
    Object? signer = freezed,
    Object? friendly = freezed,
    Object? legal = freezed,
    Object? rule = freezed,
    Object? legallyBindingAttachment = freezed,
    Object? legallyBindingReference = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      legalState: freezed == legalState
          ? _value.legalState
          : legalState // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      instantiatesCanonical: freezed == instantiatesCanonical
          ? _value.instantiatesCanonical
          : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
              as Reference?,
      instantiatesUri: freezed == instantiatesUri
          ? _value.instantiatesUri
          : instantiatesUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      instantiatesUriElement: freezed == instantiatesUriElement
          ? _value.instantiatesUriElement
          : instantiatesUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      contentDerivative: freezed == contentDerivative
          ? _value.contentDerivative
          : contentDerivative // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      issuedElement: freezed == issuedElement
          ? _value.issuedElement
          : issuedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      applies: freezed == applies
          ? _value.applies
          : applies // ignore: cast_nullable_to_non_nullable
              as Period?,
      expirationType: freezed == expirationType
          ? _value.expirationType
          : expirationType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleElement: freezed == subtitleElement
          ? _value.subtitleElement
          : subtitleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value.aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      topicCodeableConcept: freezed == topicCodeableConcept
          ? _value.topicCodeableConcept
          : topicCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      topicReference: freezed == topicReference
          ? _value.topicReference
          : topicReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      contentDefinition: freezed == contentDefinition
          ? _value.contentDefinition
          : contentDefinition // ignore: cast_nullable_to_non_nullable
              as ContractContentDefinition?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as List<ContractTerm>?,
      supportingInfo: freezed == supportingInfo
          ? _value.supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      relevantHistory: freezed == relevantHistory
          ? _value.relevantHistory
          : relevantHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      signer: freezed == signer
          ? _value.signer
          : signer // ignore: cast_nullable_to_non_nullable
              as List<ContractSigner>?,
      friendly: freezed == friendly
          ? _value.friendly
          : friendly // ignore: cast_nullable_to_non_nullable
              as List<ContractFriendly>?,
      legal: freezed == legal
          ? _value.legal
          : legal // ignore: cast_nullable_to_non_nullable
              as List<ContractLegal>?,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as List<ContractRule>?,
      legallyBindingAttachment: freezed == legallyBindingAttachment
          ? _value.legallyBindingAttachment
          : legallyBindingAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      legallyBindingReference: freezed == legallyBindingReference
          ? _value.legallyBindingReference
          : legallyBindingReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get legalState {
    if (_value.legalState == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.legalState!, (value) {
      return _then(_value.copyWith(legalState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get instantiatesCanonical {
    if (_value.instantiatesCanonical == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.instantiatesCanonical!, (value) {
      return _then(_value.copyWith(instantiatesCanonical: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get contentDerivative {
    if (_value.contentDerivative == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.contentDerivative!, (value) {
      return _then(_value.copyWith(contentDerivative: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get applies {
    if (_value.applies == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.applies!, (value) {
      return _then(_value.copyWith(applies: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get expirationType {
    if (_value.expirationType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.expirationType!, (value) {
      return _then(_value.copyWith(expirationType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get scope {
    if (_value.scope == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.scope!, (value) {
      return _then(_value.copyWith(scope: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get topicCodeableConcept {
    if (_value.topicCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.topicCodeableConcept!,
        (value) {
      return _then(_value.copyWith(topicCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get topicReference {
    if (_value.topicReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.topicReference!, (value) {
      return _then(_value.copyWith(topicReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractContentDefinitionCopyWith<$Res>? get contentDefinition {
    if (_value.contentDefinition == null) {
      return null;
    }

    return $ContractContentDefinitionCopyWith<$Res>(_value.contentDefinition!,
        (value) {
      return _then(_value.copyWith(contentDefinition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get legallyBindingAttachment {
    if (_value.legallyBindingAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.legallyBindingAttachment!, (value) {
      return _then(_value.copyWith(legallyBindingAttachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get legallyBindingReference {
    if (_value.legallyBindingReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.legallyBindingReference!, (value) {
      return _then(_value.copyWith(legallyBindingReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractImplCopyWith<$Res>
    implements $ContractCopyWith<$Res> {
  factory _$$ContractImplCopyWith(
          _$ContractImpl value, $Res Function(_$ContractImpl) then) =
      __$$ContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Contract)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? legalState,
      Reference? instantiatesCanonical,
      FhirUri? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      PrimitiveElement? instantiatesUriElement,
      CodeableConcept? contentDerivative,
      FhirDateTime? issued,
      @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
      Period? applies,
      CodeableConcept? expirationType,
      List<Reference>? subject,
      List<Reference>? authority,
      List<Reference>? domain,
      List<Reference>? site,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      String? subtitle,
      @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<Element?>? aliasElement,
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
      Attachment? legallyBindingAttachment,
      Reference? legallyBindingReference});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get legalState;
  @override
  $ReferenceCopyWith<$Res>? get instantiatesCanonical;
  @override
  $CodeableConceptCopyWith<$Res>? get contentDerivative;
  @override
  $PeriodCopyWith<$Res>? get applies;
  @override
  $CodeableConceptCopyWith<$Res>? get expirationType;
  @override
  $ReferenceCopyWith<$Res>? get author;
  @override
  $CodeableConceptCopyWith<$Res>? get scope;
  @override
  $CodeableConceptCopyWith<$Res>? get topicCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get topicReference;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $ContractContentDefinitionCopyWith<$Res>? get contentDefinition;
  @override
  $AttachmentCopyWith<$Res>? get legallyBindingAttachment;
  @override
  $ReferenceCopyWith<$Res>? get legallyBindingReference;
}

/// @nodoc
class __$$ContractImplCopyWithImpl<$Res>
    extends _$ContractCopyWithImpl<$Res, _$ContractImpl>
    implements _$$ContractImplCopyWith<$Res> {
  __$$ContractImplCopyWithImpl(
      _$ContractImpl _value, $Res Function(_$ContractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? legalState = freezed,
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? instantiatesUriElement = freezed,
    Object? contentDerivative = freezed,
    Object? issued = freezed,
    Object? issuedElement = freezed,
    Object? applies = freezed,
    Object? expirationType = freezed,
    Object? subject = freezed,
    Object? authority = freezed,
    Object? domain = freezed,
    Object? site = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? subtitle = freezed,
    Object? subtitleElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? author = freezed,
    Object? scope = freezed,
    Object? topicCodeableConcept = freezed,
    Object? topicReference = freezed,
    Object? type = freezed,
    Object? subType = freezed,
    Object? contentDefinition = freezed,
    Object? term = freezed,
    Object? supportingInfo = freezed,
    Object? relevantHistory = freezed,
    Object? signer = freezed,
    Object? friendly = freezed,
    Object? legal = freezed,
    Object? rule = freezed,
    Object? legallyBindingAttachment = freezed,
    Object? legallyBindingReference = freezed,
  }) {
    return _then(_$ContractImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      legalState: freezed == legalState
          ? _value.legalState
          : legalState // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      instantiatesCanonical: freezed == instantiatesCanonical
          ? _value.instantiatesCanonical
          : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
              as Reference?,
      instantiatesUri: freezed == instantiatesUri
          ? _value.instantiatesUri
          : instantiatesUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      instantiatesUriElement: freezed == instantiatesUriElement
          ? _value.instantiatesUriElement
          : instantiatesUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      contentDerivative: freezed == contentDerivative
          ? _value.contentDerivative
          : contentDerivative // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      issuedElement: freezed == issuedElement
          ? _value.issuedElement
          : issuedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      applies: freezed == applies
          ? _value.applies
          : applies // ignore: cast_nullable_to_non_nullable
              as Period?,
      expirationType: freezed == expirationType
          ? _value.expirationType
          : expirationType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subject: freezed == subject
          ? _value._subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      authority: freezed == authority
          ? _value._authority
          : authority // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      domain: freezed == domain
          ? _value._domain
          : domain // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      site: freezed == site
          ? _value._site
          : site // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleElement: freezed == subtitleElement
          ? _value.subtitleElement
          : subtitleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      alias: freezed == alias
          ? _value._alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value._aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      topicCodeableConcept: freezed == topicCodeableConcept
          ? _value.topicCodeableConcept
          : topicCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      topicReference: freezed == topicReference
          ? _value.topicReference
          : topicReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subType: freezed == subType
          ? _value._subType
          : subType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      contentDefinition: freezed == contentDefinition
          ? _value.contentDefinition
          : contentDefinition // ignore: cast_nullable_to_non_nullable
              as ContractContentDefinition?,
      term: freezed == term
          ? _value._term
          : term // ignore: cast_nullable_to_non_nullable
              as List<ContractTerm>?,
      supportingInfo: freezed == supportingInfo
          ? _value._supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      relevantHistory: freezed == relevantHistory
          ? _value._relevantHistory
          : relevantHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      signer: freezed == signer
          ? _value._signer
          : signer // ignore: cast_nullable_to_non_nullable
              as List<ContractSigner>?,
      friendly: freezed == friendly
          ? _value._friendly
          : friendly // ignore: cast_nullable_to_non_nullable
              as List<ContractFriendly>?,
      legal: freezed == legal
          ? _value._legal
          : legal // ignore: cast_nullable_to_non_nullable
              as List<ContractLegal>?,
      rule: freezed == rule
          ? _value._rule
          : rule // ignore: cast_nullable_to_non_nullable
              as List<ContractRule>?,
      legallyBindingAttachment: freezed == legallyBindingAttachment
          ? _value.legallyBindingAttachment
          : legallyBindingAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      legallyBindingReference: freezed == legallyBindingReference
          ? _value.legallyBindingReference
          : legallyBindingReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractImpl extends _Contract {
  const _$ContractImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Contract)
      this.resourceType = R4ResourceType.Contract,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      this.version,
      @JsonKey(name: '_version') this.versionElement,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.legalState,
      this.instantiatesCanonical,
      this.instantiatesUri,
      @JsonKey(name: '_instantiatesUri') this.instantiatesUriElement,
      this.contentDerivative,
      this.issued,
      @JsonKey(name: '_issued') this.issuedElement,
      this.applies,
      this.expirationType,
      final List<Reference>? subject,
      final List<Reference>? authority,
      final List<Reference>? domain,
      final List<Reference>? site,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.subtitle,
      @JsonKey(name: '_subtitle') this.subtitleElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<Element?>? aliasElement,
      this.author,
      this.scope,
      this.topicCodeableConcept,
      this.topicReference,
      this.type,
      final List<CodeableConcept>? subType,
      this.contentDefinition,
      final List<ContractTerm>? term,
      final List<Reference>? supportingInfo,
      final List<Reference>? relevantHistory,
      final List<ContractSigner>? signer,
      final List<ContractFriendly>? friendly,
      final List<ContractLegal>? legal,
      final List<ContractRule>? rule,
      this.legallyBindingAttachment,
      this.legallyBindingReference})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _subject = subject,
        _authority = authority,
        _domain = domain,
        _site = site,
        _alias = alias,
        _aliasElement = aliasElement,
        _subType = subType,
        _term = term,
        _supportingInfo = supportingInfo,
        _relevantHistory = relevantHistory,
        _signer = signer,
        _friendly = friendly,
        _legal = legal,
        _rule = rule,
        super._();

  factory _$ContractImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Contract)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Unique identifier for this Contract or a derivative that
  ///  references a Source Contract.
  final List<Identifier>? _identifier;

  /// [identifier] Unique identifier for this Contract or a derivative that
  ///  references a Source Contract.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [url] Canonical identifier for this contract, represented as a URI
  ///  (globally unique).
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [version] An edition identifier used for business purposes to label
  ///  business significant variants.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [status] The status of the resource instance.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [legalState] Legal states of the formation of a legal instrument, which
  /// is a formally executed written document that can be formally attributed to
  /// its author, records and formally expresses a legally enforceable act,
  /// process, or contractual duty, obligation, or right, and therefore
  ///  evidences that act, process, or agreement.
  @override
  final CodeableConcept? legalState;

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined Contract
  ///  Definition that is adhered to in whole or part by this Contract.
  @override
  final Reference? instantiatesCanonical;

  /// [instantiatesUri] The URL pointing to an externally maintained definition
  ///  that is adhered to in whole or in part by this Contract.
  @override
  final FhirUri? instantiatesUri;

  /// [instantiatesUriElement] Extensions for instantiatesUri
  @override
  @JsonKey(name: '_instantiatesUri')
  final PrimitiveElement? instantiatesUriElement;

  /// [contentDerivative] The minimal content derived from the basal
  ///  information source at a specific stage in its lifecycle.
  @override
  final CodeableConcept? contentDerivative;

  /// [issued] When this  Contract was issued.
  @override
  final FhirDateTime? issued;

  /// [issuedElement] Extensions for issued
  @override
  @JsonKey(name: '_issued')
  final PrimitiveElement? issuedElement;

  /// [applies] Relevant time or time-period when this Contract is applicable.
  @override
  final Period? applies;

  /// [expirationType] Event resulting in discontinuation or termination of
  ///  this Contract instance by one or more parties to the contract.
  @override
  final CodeableConcept? expirationType;

  /// [subject] The target entity impacted by or of interest to parties to the
  ///  agreement.
  final List<Reference>? _subject;

  /// [subject] The target entity impacted by or of interest to parties to the
  ///  agreement.
  @override
  List<Reference>? get subject {
    final value = _subject;
    if (value == null) return null;
    if (_subject is EqualUnmodifiableListView) return _subject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [authority] A formally or informally recognized grouping of people,
  /// principals, organizations, or jurisdictions formed for the purpose of
  /// achieving some form of collective action such as the promulgation,
  ///  administration and enforcement of contracts and policies.
  final List<Reference>? _authority;

  /// [authority] A formally or informally recognized grouping of people,
  /// principals, organizations, or jurisdictions formed for the purpose of
  /// achieving some form of collective action such as the promulgation,
  ///  administration and enforcement of contracts and policies.
  @override
  List<Reference>? get authority {
    final value = _authority;
    if (value == null) return null;
    if (_authority is EqualUnmodifiableListView) return _authority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [domain] Recognized governance framework or system operating with a
  /// circumscribed scope in accordance with specified principles, policies,
  /// processes or procedures for managing rights, actions, or behaviors of
  ///  parties or principals relative to resources.
  final List<Reference>? _domain;

  /// [domain] Recognized governance framework or system operating with a
  /// circumscribed scope in accordance with specified principles, policies,
  /// processes or procedures for managing rights, actions, or behaviors of
  ///  parties or principals relative to resources.
  @override
  List<Reference>? get domain {
    final value = _domain;
    if (value == null) return null;
    if (_domain is EqualUnmodifiableListView) return _domain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [site] Sites in which the contract is complied with,  exercised, or in
  ///  force.
  final List<Reference>? _site;

  /// [site] Sites in which the contract is complied with,  exercised, or in
  ///  force.
  @override
  List<Reference>? get site {
    final value = _site;
    if (value == null) return null;
    if (_site is EqualUnmodifiableListView) return _site;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] A natural language name identifying this Contract definition,
  /// derivative, or instance in any legal state. Provides additional
  /// information about its content. This name should be usable as an identifier
  /// for the module by machine processing applications such as code
  ///  generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving additional
  ///  information about its content.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [subtitle] An explanatory or alternate user-friendly title for this
  /// Contract definition, derivative, or instance in any legal state.t giving
  ///  additional information about its content.
  @override
  final String? subtitle;

  /// [subtitleElement] Extensions for subtitle
  @override
  @JsonKey(name: '_subtitle')
  final PrimitiveElement? subtitleElement;

  /// [alias] Alternative representation of the title for this Contract
  /// definition, derivative, or instance in any legal state., e.g., a domain
  ///  specific contract number related to legislation.
  final List<String>? _alias;

  /// [alias] Alternative representation of the title for this Contract
  /// definition, derivative, or instance in any legal state., e.g., a domain
  ///  specific contract number related to legislation.
  @override
  List<String>? get alias {
    final value = _alias;
    if (value == null) return null;
    if (_alias is EqualUnmodifiableListView) return _alias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [aliasElement] Extensions for alias
  final List<Element?>? _aliasElement;

  /// [aliasElement] Extensions for alias
  @override
  @JsonKey(name: '_alias')
  List<Element?>? get aliasElement {
    final value = _aliasElement;
    if (value == null) return null;
    if (_aliasElement is EqualUnmodifiableListView) return _aliasElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [author] The individual or organization that authored the Contract
  ///  definition, derivative, or instance in any legal state.
  @override
  final Reference? author;

  /// [scope] A selector of legal concerns for this Contract definition,
  ///  derivative, or instance in any legal state.
  @override
  final CodeableConcept? scope;

  /// [topicCodeableConcept] Narrows the range of legal concerns to focus on
  ///  the achievement of specific contractual objectives.
  @override
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference] Narrows the range of legal concerns to focus on the
  ///  achievement of specific contractual objectives.
  @override
  final Reference? topicReference;

  /// [type] A high-level category for the legal instrument, whether
  /// constructed as a Contract definition, derivative, or instance in any legal
  /// state.  Provides additional information about its content within the
  /// context of the Contract's scope to distinguish the kinds of systems that
  ///  would be interested in the contract.
  @override
  final CodeableConcept? type;

  /// [subType] Sub-category for the Contract that distinguishes the kinds of
  /// systems that would be interested in the Contract within the context of the
  ///  Contract's scope.
  final List<CodeableConcept>? _subType;

  /// [subType] Sub-category for the Contract that distinguishes the kinds of
  /// systems that would be interested in the Contract within the context of the
  ///  Contract's scope.
  @override
  List<CodeableConcept>? get subType {
    final value = _subType;
    if (value == null) return null;
    if (_subType is EqualUnmodifiableListView) return _subType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contentDefinition] Precusory content developed with a focus and intent
  /// of supporting the formation a Contract instance, which may be associated
  ///  with and transformable into a Contract.
  @override
  final ContractContentDefinition? contentDefinition;

  /// [term] One or more Contract Provisions, which may be related and conveyed
  ///  as a group, and may contain nested groups.
  final List<ContractTerm>? _term;

  /// [term] One or more Contract Provisions, which may be related and conveyed
  ///  as a group, and may contain nested groups.
  @override
  List<ContractTerm>? get term {
    final value = _term;
    if (value == null) return null;
    if (_term is EqualUnmodifiableListView) return _term;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [supportingInfo] Information that may be needed by/relevant to the
  ///  performer in their execution of this term action.
  final List<Reference>? _supportingInfo;

  /// [supportingInfo] Information that may be needed by/relevant to the
  ///  performer in their execution of this term action.
  @override
  List<Reference>? get supportingInfo {
    final value = _supportingInfo;
    if (value == null) return null;
    if (_supportingInfo is EqualUnmodifiableListView) return _supportingInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [relevantHistory] Links to Provenance records for past versions of this
  /// Contract definition, derivative, or instance, which identify key state
  /// transitions or updates that are likely to be relevant to a user looking at
  /// the current version of the Contract.  The Provence.entity indicates the
  /// target that was changed in the update.
  ///  http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  final List<Reference>? _relevantHistory;

  /// [relevantHistory] Links to Provenance records for past versions of this
  /// Contract definition, derivative, or instance, which identify key state
  /// transitions or updates that are likely to be relevant to a user looking at
  /// the current version of the Contract.  The Provence.entity indicates the
  /// target that was changed in the update.
  ///  http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  @override
  List<Reference>? get relevantHistory {
    final value = _relevantHistory;
    if (value == null) return null;
    if (_relevantHistory is EqualUnmodifiableListView) return _relevantHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [signer] Parties with legal standing in the Contract, including the
  /// principal parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  ///  facilitate the execution of the contract such as a notary or witness.
  final List<ContractSigner>? _signer;

  /// [signer] Parties with legal standing in the Contract, including the
  /// principal parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  ///  facilitate the execution of the contract such as a notary or witness.
  @override
  List<ContractSigner>? get signer {
    final value = _signer;
    if (value == null) return null;
    if (_signer is EqualUnmodifiableListView) return _signer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [friendly] The "patient friendly language" versionof the Contract in
  /// whole or in parts. "Patient friendly language" means the representation of
  /// the Contract and Contract Provisions in a manner that is readily
  /// accessible and understandable by a layperson in accordance with best
  /// practices for communication styles that ensure that those agreeing to or
  /// signing the Contract understand the roles, actions, obligations,
  ///  responsibilities, and implication of the agreement.
  final List<ContractFriendly>? _friendly;

  /// [friendly] The "patient friendly language" versionof the Contract in
  /// whole or in parts. "Patient friendly language" means the representation of
  /// the Contract and Contract Provisions in a manner that is readily
  /// accessible and understandable by a layperson in accordance with best
  /// practices for communication styles that ensure that those agreeing to or
  /// signing the Contract understand the roles, actions, obligations,
  ///  responsibilities, and implication of the agreement.
  @override
  List<ContractFriendly>? get friendly {
    final value = _friendly;
    if (value == null) return null;
    if (_friendly is EqualUnmodifiableListView) return _friendly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [legal] List of Legal expressions or representations of this Contract.
  final List<ContractLegal>? _legal;

  /// [legal] List of Legal expressions or representations of this Contract.
  @override
  List<ContractLegal>? get legal {
    final value = _legal;
    if (value == null) return null;
    if (_legal is EqualUnmodifiableListView) return _legal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [rule] List of Computable Policy Rule Language Representations of this
  ///  Contract.
  final List<ContractRule>? _rule;

  /// [rule] List of Computable Policy Rule Language Representations of this
  ///  Contract.
  @override
  List<ContractRule>? get rule {
    final value = _rule;
    if (value == null) return null;
    if (_rule is EqualUnmodifiableListView) return _rule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [legallyBindingAttachment] Legally binding Contract: This is the signed
  /// and legally recognized representation of the Contract, which is considered
  /// the "source of truth" and which would be the basis for legal action
  ///  related to enforcement of this Contract.
  @override
  final Attachment? legallyBindingAttachment;

  /// [legallyBindingReference] Legally binding Contract: This is the signed
  /// and legally recognized representation of the Contract, which is considered
  /// the "source of truth" and which would be the basis for legal action
  ///  related to enforcement of this Contract.
  @override
  final Reference? legallyBindingReference;

  @override
  String toString() {
    return 'Contract(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, url: $url, urlElement: $urlElement, version: $version, versionElement: $versionElement, status: $status, statusElement: $statusElement, legalState: $legalState, instantiatesCanonical: $instantiatesCanonical, instantiatesUri: $instantiatesUri, instantiatesUriElement: $instantiatesUriElement, contentDerivative: $contentDerivative, issued: $issued, issuedElement: $issuedElement, applies: $applies, expirationType: $expirationType, subject: $subject, authority: $authority, domain: $domain, site: $site, name: $name, nameElement: $nameElement, title: $title, titleElement: $titleElement, subtitle: $subtitle, subtitleElement: $subtitleElement, alias: $alias, aliasElement: $aliasElement, author: $author, scope: $scope, topicCodeableConcept: $topicCodeableConcept, topicReference: $topicReference, type: $type, subType: $subType, contentDefinition: $contentDefinition, term: $term, supportingInfo: $supportingInfo, relevantHistory: $relevantHistory, signer: $signer, friendly: $friendly, legal: $legal, rule: $rule, legallyBindingAttachment: $legallyBindingAttachment, legallyBindingReference: $legallyBindingReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.legalState, legalState) ||
                other.legalState == legalState) &&
            (identical(other.instantiatesCanonical, instantiatesCanonical) ||
                other.instantiatesCanonical == instantiatesCanonical) &&
            (identical(other.instantiatesUri, instantiatesUri) ||
                other.instantiatesUri == instantiatesUri) &&
            (identical(other.instantiatesUriElement, instantiatesUriElement) ||
                other.instantiatesUriElement == instantiatesUriElement) &&
            (identical(other.contentDerivative, contentDerivative) ||
                other.contentDerivative == contentDerivative) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.issuedElement, issuedElement) ||
                other.issuedElement == issuedElement) &&
            (identical(other.applies, applies) || other.applies == applies) &&
            (identical(other.expirationType, expirationType) ||
                other.expirationType == expirationType) &&
            const DeepCollectionEquality().equals(other._subject, _subject) &&
            const DeepCollectionEquality()
                .equals(other._authority, _authority) &&
            const DeepCollectionEquality().equals(other._domain, _domain) &&
            const DeepCollectionEquality().equals(other._site, _site) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.subtitleElement, subtitleElement) ||
                other.subtitleElement == subtitleElement) &&
            const DeepCollectionEquality().equals(other._alias, _alias) &&
            const DeepCollectionEquality()
                .equals(other._aliasElement, _aliasElement) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.topicCodeableConcept, topicCodeableConcept) ||
                other.topicCodeableConcept == topicCodeableConcept) &&
            (identical(other.topicReference, topicReference) ||
                other.topicReference == topicReference) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._subType, _subType) &&
            (identical(other.contentDefinition, contentDefinition) ||
                other.contentDefinition == contentDefinition) &&
            const DeepCollectionEquality().equals(other._term, _term) &&
            const DeepCollectionEquality()
                .equals(other._supportingInfo, _supportingInfo) &&
            const DeepCollectionEquality()
                .equals(other._relevantHistory, _relevantHistory) &&
            const DeepCollectionEquality().equals(other._signer, _signer) &&
            const DeepCollectionEquality().equals(other._friendly, _friendly) &&
            const DeepCollectionEquality().equals(other._legal, _legal) &&
            const DeepCollectionEquality().equals(other._rule, _rule) &&
            (identical(
                    other.legallyBindingAttachment, legallyBindingAttachment) ||
                other.legallyBindingAttachment == legallyBindingAttachment) &&
            (identical(
                    other.legallyBindingReference, legallyBindingReference) ||
                other.legallyBindingReference == legallyBindingReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        url,
        urlElement,
        version,
        versionElement,
        status,
        statusElement,
        legalState,
        instantiatesCanonical,
        instantiatesUri,
        instantiatesUriElement,
        contentDerivative,
        issued,
        issuedElement,
        applies,
        expirationType,
        const DeepCollectionEquality().hash(_subject),
        const DeepCollectionEquality().hash(_authority),
        const DeepCollectionEquality().hash(_domain),
        const DeepCollectionEquality().hash(_site),
        name,
        nameElement,
        title,
        titleElement,
        subtitle,
        subtitleElement,
        const DeepCollectionEquality().hash(_alias),
        const DeepCollectionEquality().hash(_aliasElement),
        author,
        scope,
        topicCodeableConcept,
        topicReference,
        type,
        const DeepCollectionEquality().hash(_subType),
        contentDefinition,
        const DeepCollectionEquality().hash(_term),
        const DeepCollectionEquality().hash(_supportingInfo),
        const DeepCollectionEquality().hash(_relevantHistory),
        const DeepCollectionEquality().hash(_signer),
        const DeepCollectionEquality().hash(_friendly),
        const DeepCollectionEquality().hash(_legal),
        const DeepCollectionEquality().hash(_rule),
        legallyBindingAttachment,
        legallyBindingReference
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractImplCopyWith<_$ContractImpl> get copyWith =>
      __$$ContractImplCopyWithImpl<_$ContractImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractImplToJson(
      this,
    );
  }
}

abstract class _Contract extends Contract {
  const factory _Contract(
      {@JsonKey(unknownEnumValue: R4ResourceType.Contract)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final FhirUri? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      final String? version,
      @JsonKey(name: '_version') final PrimitiveElement? versionElement,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final CodeableConcept? legalState,
      final Reference? instantiatesCanonical,
      final FhirUri? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      final PrimitiveElement? instantiatesUriElement,
      final CodeableConcept? contentDerivative,
      final FhirDateTime? issued,
      @JsonKey(name: '_issued') final PrimitiveElement? issuedElement,
      final Period? applies,
      final CodeableConcept? expirationType,
      final List<Reference>? subject,
      final List<Reference>? authority,
      final List<Reference>? domain,
      final List<Reference>? site,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final String? subtitle,
      @JsonKey(name: '_subtitle') final PrimitiveElement? subtitleElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<Element?>? aliasElement,
      final Reference? author,
      final CodeableConcept? scope,
      final CodeableConcept? topicCodeableConcept,
      final Reference? topicReference,
      final CodeableConcept? type,
      final List<CodeableConcept>? subType,
      final ContractContentDefinition? contentDefinition,
      final List<ContractTerm>? term,
      final List<Reference>? supportingInfo,
      final List<Reference>? relevantHistory,
      final List<ContractSigner>? signer,
      final List<ContractFriendly>? friendly,
      final List<ContractLegal>? legal,
      final List<ContractRule>? rule,
      final Attachment? legallyBindingAttachment,
      final Reference? legallyBindingReference}) = _$ContractImpl;
  const _Contract._() : super._();

  factory _Contract.fromJson(Map<String, dynamic> json) =
      _$ContractImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Contract)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Unique identifier for this Contract or a derivative that
  ///  references a Source Contract.
  List<Identifier>? get identifier;
  @override

  /// [url] Canonical identifier for this contract, represented as a URI
  ///  (globally unique).
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [version] An edition identifier used for business purposes to label
  ///  business significant variants.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [status] The status of the resource instance.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [legalState] Legal states of the formation of a legal instrument, which
  /// is a formally executed written document that can be formally attributed to
  /// its author, records and formally expresses a legally enforceable act,
  /// process, or contractual duty, obligation, or right, and therefore
  ///  evidences that act, process, or agreement.
  CodeableConcept? get legalState;
  @override

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined Contract
  ///  Definition that is adhered to in whole or part by this Contract.
  Reference? get instantiatesCanonical;
  @override

  /// [instantiatesUri] The URL pointing to an externally maintained definition
  ///  that is adhered to in whole or in part by this Contract.
  FhirUri? get instantiatesUri;
  @override

  /// [instantiatesUriElement] Extensions for instantiatesUri
  @JsonKey(name: '_instantiatesUri')
  PrimitiveElement? get instantiatesUriElement;
  @override

  /// [contentDerivative] The minimal content derived from the basal
  ///  information source at a specific stage in its lifecycle.
  CodeableConcept? get contentDerivative;
  @override

  /// [issued] When this  Contract was issued.
  FhirDateTime? get issued;
  @override

  /// [issuedElement] Extensions for issued
  @JsonKey(name: '_issued')
  PrimitiveElement? get issuedElement;
  @override

  /// [applies] Relevant time or time-period when this Contract is applicable.
  Period? get applies;
  @override

  /// [expirationType] Event resulting in discontinuation or termination of
  ///  this Contract instance by one or more parties to the contract.
  CodeableConcept? get expirationType;
  @override

  /// [subject] The target entity impacted by or of interest to parties to the
  ///  agreement.
  List<Reference>? get subject;
  @override

  /// [authority] A formally or informally recognized grouping of people,
  /// principals, organizations, or jurisdictions formed for the purpose of
  /// achieving some form of collective action such as the promulgation,
  ///  administration and enforcement of contracts and policies.
  List<Reference>? get authority;
  @override

  /// [domain] Recognized governance framework or system operating with a
  /// circumscribed scope in accordance with specified principles, policies,
  /// processes or procedures for managing rights, actions, or behaviors of
  ///  parties or principals relative to resources.
  List<Reference>? get domain;
  @override

  /// [site] Sites in which the contract is complied with,  exercised, or in
  ///  force.
  List<Reference>? get site;
  @override

  /// [name] A natural language name identifying this Contract definition,
  /// derivative, or instance in any legal state. Provides additional
  /// information about its content. This name should be usable as an identifier
  /// for the module by machine processing applications such as code
  ///  generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving additional
  ///  information about its content.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [subtitle] An explanatory or alternate user-friendly title for this
  /// Contract definition, derivative, or instance in any legal state.t giving
  ///  additional information about its content.
  String? get subtitle;
  @override

  /// [subtitleElement] Extensions for subtitle
  @JsonKey(name: '_subtitle')
  PrimitiveElement? get subtitleElement;
  @override

  /// [alias] Alternative representation of the title for this Contract
  /// definition, derivative, or instance in any legal state., e.g., a domain
  ///  specific contract number related to legislation.
  List<String>? get alias;
  @override

  /// [aliasElement] Extensions for alias
  @JsonKey(name: '_alias')
  List<Element?>? get aliasElement;
  @override

  /// [author] The individual or organization that authored the Contract
  ///  definition, derivative, or instance in any legal state.
  Reference? get author;
  @override

  /// [scope] A selector of legal concerns for this Contract definition,
  ///  derivative, or instance in any legal state.
  CodeableConcept? get scope;
  @override

  /// [topicCodeableConcept] Narrows the range of legal concerns to focus on
  ///  the achievement of specific contractual objectives.
  CodeableConcept? get topicCodeableConcept;
  @override

  /// [topicReference] Narrows the range of legal concerns to focus on the
  ///  achievement of specific contractual objectives.
  Reference? get topicReference;
  @override

  /// [type] A high-level category for the legal instrument, whether
  /// constructed as a Contract definition, derivative, or instance in any legal
  /// state.  Provides additional information about its content within the
  /// context of the Contract's scope to distinguish the kinds of systems that
  ///  would be interested in the contract.
  CodeableConcept? get type;
  @override

  /// [subType] Sub-category for the Contract that distinguishes the kinds of
  /// systems that would be interested in the Contract within the context of the
  ///  Contract's scope.
  List<CodeableConcept>? get subType;
  @override

  /// [contentDefinition] Precusory content developed with a focus and intent
  /// of supporting the formation a Contract instance, which may be associated
  ///  with and transformable into a Contract.
  ContractContentDefinition? get contentDefinition;
  @override

  /// [term] One or more Contract Provisions, which may be related and conveyed
  ///  as a group, and may contain nested groups.
  List<ContractTerm>? get term;
  @override

  /// [supportingInfo] Information that may be needed by/relevant to the
  ///  performer in their execution of this term action.
  List<Reference>? get supportingInfo;
  @override

  /// [relevantHistory] Links to Provenance records for past versions of this
  /// Contract definition, derivative, or instance, which identify key state
  /// transitions or updates that are likely to be relevant to a user looking at
  /// the current version of the Contract.  The Provence.entity indicates the
  /// target that was changed in the update.
  ///  http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  List<Reference>? get relevantHistory;
  @override

  /// [signer] Parties with legal standing in the Contract, including the
  /// principal parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  ///  facilitate the execution of the contract such as a notary or witness.
  List<ContractSigner>? get signer;
  @override

  /// [friendly] The "patient friendly language" versionof the Contract in
  /// whole or in parts. "Patient friendly language" means the representation of
  /// the Contract and Contract Provisions in a manner that is readily
  /// accessible and understandable by a layperson in accordance with best
  /// practices for communication styles that ensure that those agreeing to or
  /// signing the Contract understand the roles, actions, obligations,
  ///  responsibilities, and implication of the agreement.
  List<ContractFriendly>? get friendly;
  @override

  /// [legal] List of Legal expressions or representations of this Contract.
  List<ContractLegal>? get legal;
  @override

  /// [rule] List of Computable Policy Rule Language Representations of this
  ///  Contract.
  List<ContractRule>? get rule;
  @override

  /// [legallyBindingAttachment] Legally binding Contract: This is the signed
  /// and legally recognized representation of the Contract, which is considered
  /// the "source of truth" and which would be the basis for legal action
  ///  related to enforcement of this Contract.
  Attachment? get legallyBindingAttachment;
  @override

  /// [legallyBindingReference] Legally binding Contract: This is the signed
  /// and legally recognized representation of the Contract, which is considered
  /// the "source of truth" and which would be the basis for legal action
  ///  related to enforcement of this Contract.
  Reference? get legallyBindingReference;
  @override
  @JsonKey(ignore: true)
  _$$ContractImplCopyWith<_$ContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractContentDefinition _$ContractContentDefinitionFromJson(
    Map<String, dynamic> json) {
  return _ContractContentDefinition.fromJson(json);
}

/// @nodoc
mixin _$ContractContentDefinition {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Precusory content structure and use, i.e., a boilerplate,
  /// template, application for a contract such as an insurance policy or
  ///  benefits under a program, e.g., workers compensation.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [subType] Detailed Precusory content type.
  CodeableConcept? get subType => throw _privateConstructorUsedError;

  /// [publisher] The  individual or organization that published the Contract
  ///  precursor content.
  Reference? get publisher => throw _privateConstructorUsedError;

  /// [publicationDate] The date (and optionally time) when the contract was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the contract changes.
  FhirDateTime? get publicationDate => throw _privateConstructorUsedError;

  /// [publicationDateElement] Extensions for publicationDate
  @JsonKey(name: '_publicationDate')
  PrimitiveElement? get publicationDateElement =>
      throw _privateConstructorUsedError;

  /// [publicationStatus] amended | appended | cancelled | disputed |
  /// entered-in-error | executable | executed | negotiable | offered | policy |
  ///  rejected | renewed | revoked | resolved | terminated.
  FhirCode? get publicationStatus => throw _privateConstructorUsedError;

  /// [publicationStatusElement] Extensions for publicationStatus
  @JsonKey(name: '_publicationStatus')
  PrimitiveElement? get publicationStatusElement =>
      throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to Contract precursor content.
  /// Copyright statements are generally legal restrictions on the use and
  ///  publishing of the Contract precursor content.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractContentDefinitionCopyWith<ContractContentDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractContentDefinitionCopyWith<$Res> {
  factory $ContractContentDefinitionCopyWith(ContractContentDefinition value,
          $Res Function(ContractContentDefinition) then) =
      _$ContractContentDefinitionCopyWithImpl<$Res, ContractContentDefinition>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      CodeableConcept? subType,
      Reference? publisher,
      FhirDateTime? publicationDate,
      @JsonKey(name: '_publicationDate')
      PrimitiveElement? publicationDateElement,
      FhirCode? publicationStatus,
      @JsonKey(name: '_publicationStatus')
      PrimitiveElement? publicationStatusElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement});

  $CodeableConceptCopyWith<$Res> get type;
  $CodeableConceptCopyWith<$Res>? get subType;
  $ReferenceCopyWith<$Res>? get publisher;
}

/// @nodoc
class _$ContractContentDefinitionCopyWithImpl<$Res,
        $Val extends ContractContentDefinition>
    implements $ContractContentDefinitionCopyWith<$Res> {
  _$ContractContentDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? subType = freezed,
    Object? publisher = freezed,
    Object? publicationDate = freezed,
    Object? publicationDateElement = freezed,
    Object? publicationStatus = freezed,
    Object? publicationStatusElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Reference?,
      publicationDate: freezed == publicationDate
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      publicationDateElement: freezed == publicationDateElement
          ? _value.publicationDateElement
          : publicationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publicationStatus: freezed == publicationStatus
          ? _value.publicationStatus
          : publicationStatus // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      publicationStatusElement: freezed == publicationStatusElement
          ? _value.publicationStatusElement
          : publicationStatusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get subType {
    if (_value.subType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.subType!, (value) {
      return _then(_value.copyWith(subType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get publisher {
    if (_value.publisher == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.publisher!, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractContentDefinitionImplCopyWith<$Res>
    implements $ContractContentDefinitionCopyWith<$Res> {
  factory _$$ContractContentDefinitionImplCopyWith(
          _$ContractContentDefinitionImpl value,
          $Res Function(_$ContractContentDefinitionImpl) then) =
      __$$ContractContentDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      CodeableConcept? subType,
      Reference? publisher,
      FhirDateTime? publicationDate,
      @JsonKey(name: '_publicationDate')
      PrimitiveElement? publicationDateElement,
      FhirCode? publicationStatus,
      @JsonKey(name: '_publicationStatus')
      PrimitiveElement? publicationStatusElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $CodeableConceptCopyWith<$Res>? get subType;
  @override
  $ReferenceCopyWith<$Res>? get publisher;
}

/// @nodoc
class __$$ContractContentDefinitionImplCopyWithImpl<$Res>
    extends _$ContractContentDefinitionCopyWithImpl<$Res,
        _$ContractContentDefinitionImpl>
    implements _$$ContractContentDefinitionImplCopyWith<$Res> {
  __$$ContractContentDefinitionImplCopyWithImpl(
      _$ContractContentDefinitionImpl _value,
      $Res Function(_$ContractContentDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? subType = freezed,
    Object? publisher = freezed,
    Object? publicationDate = freezed,
    Object? publicationDateElement = freezed,
    Object? publicationStatus = freezed,
    Object? publicationStatusElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
  }) {
    return _then(_$ContractContentDefinitionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Reference?,
      publicationDate: freezed == publicationDate
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      publicationDateElement: freezed == publicationDateElement
          ? _value.publicationDateElement
          : publicationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publicationStatus: freezed == publicationStatus
          ? _value.publicationStatus
          : publicationStatus // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      publicationStatusElement: freezed == publicationStatusElement
          ? _value.publicationStatusElement
          : publicationStatusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractContentDefinitionImpl extends _ContractContentDefinition {
  const _$ContractContentDefinitionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.subType,
      this.publisher,
      this.publicationDate,
      @JsonKey(name: '_publicationDate') this.publicationDateElement,
      this.publicationStatus,
      @JsonKey(name: '_publicationStatus') this.publicationStatusElement,
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ContractContentDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractContentDefinitionImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Precusory content structure and use, i.e., a boilerplate,
  /// template, application for a contract such as an insurance policy or
  ///  benefits under a program, e.g., workers compensation.
  @override
  final CodeableConcept type;

  /// [subType] Detailed Precusory content type.
  @override
  final CodeableConcept? subType;

  /// [publisher] The  individual or organization that published the Contract
  ///  precursor content.
  @override
  final Reference? publisher;

  /// [publicationDate] The date (and optionally time) when the contract was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the contract changes.
  @override
  final FhirDateTime? publicationDate;

  /// [publicationDateElement] Extensions for publicationDate
  @override
  @JsonKey(name: '_publicationDate')
  final PrimitiveElement? publicationDateElement;

  /// [publicationStatus] amended | appended | cancelled | disputed |
  /// entered-in-error | executable | executed | negotiable | offered | policy |
  ///  rejected | renewed | revoked | resolved | terminated.
  @override
  final FhirCode? publicationStatus;

  /// [publicationStatusElement] Extensions for publicationStatus
  @override
  @JsonKey(name: '_publicationStatus')
  final PrimitiveElement? publicationStatusElement;

  /// [copyright] A copyright statement relating to Contract precursor content.
  /// Copyright statements are generally legal restrictions on the use and
  ///  publishing of the Contract precursor content.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  @override
  String toString() {
    return 'ContractContentDefinition(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, subType: $subType, publisher: $publisher, publicationDate: $publicationDate, publicationDateElement: $publicationDateElement, publicationStatus: $publicationStatus, publicationStatusElement: $publicationStatusElement, copyright: $copyright, copyrightElement: $copyrightElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractContentDefinitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publicationDate, publicationDate) ||
                other.publicationDate == publicationDate) &&
            (identical(other.publicationDateElement, publicationDateElement) ||
                other.publicationDateElement == publicationDateElement) &&
            (identical(other.publicationStatus, publicationStatus) ||
                other.publicationStatus == publicationStatus) &&
            (identical(
                    other.publicationStatusElement, publicationStatusElement) ||
                other.publicationStatusElement == publicationStatusElement) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightElement, copyrightElement) ||
                other.copyrightElement == copyrightElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      subType,
      publisher,
      publicationDate,
      publicationDateElement,
      publicationStatus,
      publicationStatusElement,
      copyright,
      copyrightElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractContentDefinitionImplCopyWith<_$ContractContentDefinitionImpl>
      get copyWith => __$$ContractContentDefinitionImplCopyWithImpl<
          _$ContractContentDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractContentDefinitionImplToJson(
      this,
    );
  }
}

abstract class _ContractContentDefinition extends ContractContentDefinition {
  const factory _ContractContentDefinition(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          final CodeableConcept? subType,
          final Reference? publisher,
          final FhirDateTime? publicationDate,
          @JsonKey(name: '_publicationDate')
          final PrimitiveElement? publicationDateElement,
          final FhirCode? publicationStatus,
          @JsonKey(name: '_publicationStatus')
          final PrimitiveElement? publicationStatusElement,
          final FhirMarkdown? copyright,
          @JsonKey(name: '_copyright')
          final PrimitiveElement? copyrightElement}) =
      _$ContractContentDefinitionImpl;
  const _ContractContentDefinition._() : super._();

  factory _ContractContentDefinition.fromJson(Map<String, dynamic> json) =
      _$ContractContentDefinitionImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] Precusory content structure and use, i.e., a boilerplate,
  /// template, application for a contract such as an insurance policy or
  ///  benefits under a program, e.g., workers compensation.
  CodeableConcept get type;
  @override

  /// [subType] Detailed Precusory content type.
  CodeableConcept? get subType;
  @override

  /// [publisher] The  individual or organization that published the Contract
  ///  precursor content.
  Reference? get publisher;
  @override

  /// [publicationDate] The date (and optionally time) when the contract was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the contract changes.
  FhirDateTime? get publicationDate;
  @override

  /// [publicationDateElement] Extensions for publicationDate
  @JsonKey(name: '_publicationDate')
  PrimitiveElement? get publicationDateElement;
  @override

  /// [publicationStatus] amended | appended | cancelled | disputed |
  /// entered-in-error | executable | executed | negotiable | offered | policy |
  ///  rejected | renewed | revoked | resolved | terminated.
  FhirCode? get publicationStatus;
  @override

  /// [publicationStatusElement] Extensions for publicationStatus
  @JsonKey(name: '_publicationStatus')
  PrimitiveElement? get publicationStatusElement;
  @override

  /// [copyright] A copyright statement relating to Contract precursor content.
  /// Copyright statements are generally legal restrictions on the use and
  ///  publishing of the Contract precursor content.
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override
  @JsonKey(ignore: true)
  _$$ContractContentDefinitionImplCopyWith<_$ContractContentDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContractTerm _$ContractTermFromJson(Map<String, dynamic> json) {
  return _ContractTerm.fromJson(json);
}

/// @nodoc
mixin _$ContractTerm {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Unique identifier for this particular Contract Provision.
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [issued] When this Contract Provision was issued.
  FhirDateTime? get issued => throw _privateConstructorUsedError;

  /// [issuedElement] Extensions for issued
  @JsonKey(name: '_issued')
  PrimitiveElement? get issuedElement => throw _privateConstructorUsedError;

  /// [applies] Relevant time or time-period when this Contract Provision is
  ///  applicable.
  Period? get applies => throw _privateConstructorUsedError;

  /// [topicCodeableConcept] The entity that the term applies to.
  CodeableConcept? get topicCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [topicReference] The entity that the term applies to.
  Reference? get topicReference => throw _privateConstructorUsedError;

  /// [type] A legal clause or condition contained within a contract that
  /// requires one or both parties to perform a particular requirement by some
  /// specified time or prevents one or both parties from performing a
  ///  particular requirement by some specified time.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [subType] A specialized legal clause or condition based on overarching
  ///  contract type.
  CodeableConcept? get subType => throw _privateConstructorUsedError;

  /// [text] Statement of a provision in a policy or a contract.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [securityLabel] Security labels that protect the handling of information
  ///  about the term and its elements, which may be specifically identified..
  List<ContractSecurityLabel>? get securityLabel =>
      throw _privateConstructorUsedError;

  /// [offer] The matter of concern in the context of this provision of the
  ///  agrement.
  ContractOffer get offer => throw _privateConstructorUsedError;

  /// [asset] Contract Term Asset List.
  List<ContractAsset>? get asset => throw _privateConstructorUsedError;

  /// [action] An actor taking a role in an activity for which it can be
  ///  assigned some degree of responsibility for the activity taking place.
  List<ContractAction>? get action => throw _privateConstructorUsedError;

  /// [group] Nested group of Contract Provisions.
  List<ContractTerm>? get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractTermCopyWith<ContractTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractTermCopyWith<$Res> {
  factory $ContractTermCopyWith(
          ContractTerm value, $Res Function(ContractTerm) then) =
      _$ContractTermCopyWithImpl<$Res, ContractTerm>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      FhirDateTime? issued,
      @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
      Period? applies,
      CodeableConcept? topicCodeableConcept,
      Reference? topicReference,
      CodeableConcept? type,
      CodeableConcept? subType,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<ContractSecurityLabel>? securityLabel,
      ContractOffer offer,
      List<ContractAsset>? asset,
      List<ContractAction>? action,
      List<ContractTerm>? group});

  $IdentifierCopyWith<$Res>? get identifier;
  $PeriodCopyWith<$Res>? get applies;
  $CodeableConceptCopyWith<$Res>? get topicCodeableConcept;
  $ReferenceCopyWith<$Res>? get topicReference;
  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get subType;
  $ContractOfferCopyWith<$Res> get offer;
}

/// @nodoc
class _$ContractTermCopyWithImpl<$Res, $Val extends ContractTerm>
    implements $ContractTermCopyWith<$Res> {
  _$ContractTermCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? issued = freezed,
    Object? issuedElement = freezed,
    Object? applies = freezed,
    Object? topicCodeableConcept = freezed,
    Object? topicReference = freezed,
    Object? type = freezed,
    Object? subType = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? securityLabel = freezed,
    Object? offer = null,
    Object? asset = freezed,
    Object? action = freezed,
    Object? group = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      issuedElement: freezed == issuedElement
          ? _value.issuedElement
          : issuedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      applies: freezed == applies
          ? _value.applies
          : applies // ignore: cast_nullable_to_non_nullable
              as Period?,
      topicCodeableConcept: freezed == topicCodeableConcept
          ? _value.topicCodeableConcept
          : topicCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      topicReference: freezed == topicReference
          ? _value.topicReference
          : topicReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      securityLabel: freezed == securityLabel
          ? _value.securityLabel
          : securityLabel // ignore: cast_nullable_to_non_nullable
              as List<ContractSecurityLabel>?,
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as ContractOffer,
      asset: freezed == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as List<ContractAsset>?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as List<ContractAction>?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<ContractTerm>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get identifier {
    if (_value.identifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.identifier!, (value) {
      return _then(_value.copyWith(identifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get applies {
    if (_value.applies == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.applies!, (value) {
      return _then(_value.copyWith(applies: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get topicCodeableConcept {
    if (_value.topicCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.topicCodeableConcept!,
        (value) {
      return _then(_value.copyWith(topicCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get topicReference {
    if (_value.topicReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.topicReference!, (value) {
      return _then(_value.copyWith(topicReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get subType {
    if (_value.subType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.subType!, (value) {
      return _then(_value.copyWith(subType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractOfferCopyWith<$Res> get offer {
    return $ContractOfferCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractTermImplCopyWith<$Res>
    implements $ContractTermCopyWith<$Res> {
  factory _$$ContractTermImplCopyWith(
          _$ContractTermImpl value, $Res Function(_$ContractTermImpl) then) =
      __$$ContractTermImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      FhirDateTime? issued,
      @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
      Period? applies,
      CodeableConcept? topicCodeableConcept,
      Reference? topicReference,
      CodeableConcept? type,
      CodeableConcept? subType,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<ContractSecurityLabel>? securityLabel,
      ContractOffer offer,
      List<ContractAsset>? asset,
      List<ContractAction>? action,
      List<ContractTerm>? group});

  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $PeriodCopyWith<$Res>? get applies;
  @override
  $CodeableConceptCopyWith<$Res>? get topicCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get topicReference;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get subType;
  @override
  $ContractOfferCopyWith<$Res> get offer;
}

/// @nodoc
class __$$ContractTermImplCopyWithImpl<$Res>
    extends _$ContractTermCopyWithImpl<$Res, _$ContractTermImpl>
    implements _$$ContractTermImplCopyWith<$Res> {
  __$$ContractTermImplCopyWithImpl(
      _$ContractTermImpl _value, $Res Function(_$ContractTermImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? issued = freezed,
    Object? issuedElement = freezed,
    Object? applies = freezed,
    Object? topicCodeableConcept = freezed,
    Object? topicReference = freezed,
    Object? type = freezed,
    Object? subType = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? securityLabel = freezed,
    Object? offer = null,
    Object? asset = freezed,
    Object? action = freezed,
    Object? group = freezed,
  }) {
    return _then(_$ContractTermImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      issuedElement: freezed == issuedElement
          ? _value.issuedElement
          : issuedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      applies: freezed == applies
          ? _value.applies
          : applies // ignore: cast_nullable_to_non_nullable
              as Period?,
      topicCodeableConcept: freezed == topicCodeableConcept
          ? _value.topicCodeableConcept
          : topicCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      topicReference: freezed == topicReference
          ? _value.topicReference
          : topicReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      securityLabel: freezed == securityLabel
          ? _value._securityLabel
          : securityLabel // ignore: cast_nullable_to_non_nullable
              as List<ContractSecurityLabel>?,
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as ContractOffer,
      asset: freezed == asset
          ? _value._asset
          : asset // ignore: cast_nullable_to_non_nullable
              as List<ContractAsset>?,
      action: freezed == action
          ? _value._action
          : action // ignore: cast_nullable_to_non_nullable
              as List<ContractAction>?,
      group: freezed == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<ContractTerm>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractTermImpl extends _ContractTerm {
  const _$ContractTermImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.identifier,
      this.issued,
      @JsonKey(name: '_issued') this.issuedElement,
      this.applies,
      this.topicCodeableConcept,
      this.topicReference,
      this.type,
      this.subType,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      final List<ContractSecurityLabel>? securityLabel,
      required this.offer,
      final List<ContractAsset>? asset,
      final List<ContractAction>? action,
      final List<ContractTerm>? group})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _securityLabel = securityLabel,
        _asset = asset,
        _action = action,
        _group = group,
        super._();

  factory _$ContractTermImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractTermImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Unique identifier for this particular Contract Provision.
  @override
  final Identifier? identifier;

  /// [issued] When this Contract Provision was issued.
  @override
  final FhirDateTime? issued;

  /// [issuedElement] Extensions for issued
  @override
  @JsonKey(name: '_issued')
  final PrimitiveElement? issuedElement;

  /// [applies] Relevant time or time-period when this Contract Provision is
  ///  applicable.
  @override
  final Period? applies;

  /// [topicCodeableConcept] The entity that the term applies to.
  @override
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference] The entity that the term applies to.
  @override
  final Reference? topicReference;

  /// [type] A legal clause or condition contained within a contract that
  /// requires one or both parties to perform a particular requirement by some
  /// specified time or prevents one or both parties from performing a
  ///  particular requirement by some specified time.
  @override
  final CodeableConcept? type;

  /// [subType] A specialized legal clause or condition based on overarching
  ///  contract type.
  @override
  final CodeableConcept? subType;

  /// [text] Statement of a provision in a policy or a contract.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [securityLabel] Security labels that protect the handling of information
  ///  about the term and its elements, which may be specifically identified..
  final List<ContractSecurityLabel>? _securityLabel;

  /// [securityLabel] Security labels that protect the handling of information
  ///  about the term and its elements, which may be specifically identified..
  @override
  List<ContractSecurityLabel>? get securityLabel {
    final value = _securityLabel;
    if (value == null) return null;
    if (_securityLabel is EqualUnmodifiableListView) return _securityLabel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [offer] The matter of concern in the context of this provision of the
  ///  agrement.
  @override
  final ContractOffer offer;

  /// [asset] Contract Term Asset List.
  final List<ContractAsset>? _asset;

  /// [asset] Contract Term Asset List.
  @override
  List<ContractAsset>? get asset {
    final value = _asset;
    if (value == null) return null;
    if (_asset is EqualUnmodifiableListView) return _asset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [action] An actor taking a role in an activity for which it can be
  ///  assigned some degree of responsibility for the activity taking place.
  final List<ContractAction>? _action;

  /// [action] An actor taking a role in an activity for which it can be
  ///  assigned some degree of responsibility for the activity taking place.
  @override
  List<ContractAction>? get action {
    final value = _action;
    if (value == null) return null;
    if (_action is EqualUnmodifiableListView) return _action;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [group] Nested group of Contract Provisions.
  final List<ContractTerm>? _group;

  /// [group] Nested group of Contract Provisions.
  @override
  List<ContractTerm>? get group {
    final value = _group;
    if (value == null) return null;
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContractTerm(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, issued: $issued, issuedElement: $issuedElement, applies: $applies, topicCodeableConcept: $topicCodeableConcept, topicReference: $topicReference, type: $type, subType: $subType, text: $text, textElement: $textElement, securityLabel: $securityLabel, offer: $offer, asset: $asset, action: $action, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractTermImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.issuedElement, issuedElement) ||
                other.issuedElement == issuedElement) &&
            (identical(other.applies, applies) || other.applies == applies) &&
            (identical(other.topicCodeableConcept, topicCodeableConcept) ||
                other.topicCodeableConcept == topicCodeableConcept) &&
            (identical(other.topicReference, topicReference) ||
                other.topicReference == topicReference) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            const DeepCollectionEquality()
                .equals(other._securityLabel, _securityLabel) &&
            (identical(other.offer, offer) || other.offer == offer) &&
            const DeepCollectionEquality().equals(other._asset, _asset) &&
            const DeepCollectionEquality().equals(other._action, _action) &&
            const DeepCollectionEquality().equals(other._group, _group));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      identifier,
      issued,
      issuedElement,
      applies,
      topicCodeableConcept,
      topicReference,
      type,
      subType,
      text,
      textElement,
      const DeepCollectionEquality().hash(_securityLabel),
      offer,
      const DeepCollectionEquality().hash(_asset),
      const DeepCollectionEquality().hash(_action),
      const DeepCollectionEquality().hash(_group));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractTermImplCopyWith<_$ContractTermImpl> get copyWith =>
      __$$ContractTermImplCopyWithImpl<_$ContractTermImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractTermImplToJson(
      this,
    );
  }
}

abstract class _ContractTerm extends ContractTerm {
  const factory _ContractTerm(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Identifier? identifier,
      final FhirDateTime? issued,
      @JsonKey(name: '_issued') final PrimitiveElement? issuedElement,
      final Period? applies,
      final CodeableConcept? topicCodeableConcept,
      final Reference? topicReference,
      final CodeableConcept? type,
      final CodeableConcept? subType,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final List<ContractSecurityLabel>? securityLabel,
      required final ContractOffer offer,
      final List<ContractAsset>? asset,
      final List<ContractAction>? action,
      final List<ContractTerm>? group}) = _$ContractTermImpl;
  const _ContractTerm._() : super._();

  factory _ContractTerm.fromJson(Map<String, dynamic> json) =
      _$ContractTermImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Unique identifier for this particular Contract Provision.
  Identifier? get identifier;
  @override

  /// [issued] When this Contract Provision was issued.
  FhirDateTime? get issued;
  @override

  /// [issuedElement] Extensions for issued
  @JsonKey(name: '_issued')
  PrimitiveElement? get issuedElement;
  @override

  /// [applies] Relevant time or time-period when this Contract Provision is
  ///  applicable.
  Period? get applies;
  @override

  /// [topicCodeableConcept] The entity that the term applies to.
  CodeableConcept? get topicCodeableConcept;
  @override

  /// [topicReference] The entity that the term applies to.
  Reference? get topicReference;
  @override

  /// [type] A legal clause or condition contained within a contract that
  /// requires one or both parties to perform a particular requirement by some
  /// specified time or prevents one or both parties from performing a
  ///  particular requirement by some specified time.
  CodeableConcept? get type;
  @override

  /// [subType] A specialized legal clause or condition based on overarching
  ///  contract type.
  CodeableConcept? get subType;
  @override

  /// [text] Statement of a provision in a policy or a contract.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override

  /// [securityLabel] Security labels that protect the handling of information
  ///  about the term and its elements, which may be specifically identified..
  List<ContractSecurityLabel>? get securityLabel;
  @override

  /// [offer] The matter of concern in the context of this provision of the
  ///  agrement.
  ContractOffer get offer;
  @override

  /// [asset] Contract Term Asset List.
  List<ContractAsset>? get asset;
  @override

  /// [action] An actor taking a role in an activity for which it can be
  ///  assigned some degree of responsibility for the activity taking place.
  List<ContractAction>? get action;
  @override

  /// [group] Nested group of Contract Provisions.
  List<ContractTerm>? get group;
  @override
  @JsonKey(ignore: true)
  _$$ContractTermImplCopyWith<_$ContractTermImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractSecurityLabel _$ContractSecurityLabelFromJson(
    Map<String, dynamic> json) {
  return _ContractSecurityLabel.fromJson(json);
}

/// @nodoc
mixin _$ContractSecurityLabel {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [number] Number used to link this term or term element to the applicable
  ///  Security Label.
  List<FhirUnsignedInt>? get number => throw _privateConstructorUsedError;

  /// [numberElement] Extensions for number
  @JsonKey(name: '_number')
  List<Element?>? get numberElement => throw _privateConstructorUsedError;

  /// [classification] Security label privacy tag that species the level of
  ///  confidentiality protection required for this term and/or term elements.
  Coding get classification => throw _privateConstructorUsedError;

  /// [category] Security label privacy tag that species the applicable privacy
  ///  and security policies governing this term and/or term elements.
  List<Coding>? get category => throw _privateConstructorUsedError;

  /// [control] Security label privacy tag that species the manner in which
  ///  term and/or term elements are to be protected.
  List<Coding>? get control => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractSecurityLabelCopyWith<ContractSecurityLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractSecurityLabelCopyWith<$Res> {
  factory $ContractSecurityLabelCopyWith(ContractSecurityLabel value,
          $Res Function(ContractSecurityLabel) then) =
      _$ContractSecurityLabelCopyWithImpl<$Res, ContractSecurityLabel>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirUnsignedInt>? number,
      @JsonKey(name: '_number') List<Element?>? numberElement,
      Coding classification,
      List<Coding>? category,
      List<Coding>? control});

  $CodingCopyWith<$Res> get classification;
}

/// @nodoc
class _$ContractSecurityLabelCopyWithImpl<$Res,
        $Val extends ContractSecurityLabel>
    implements $ContractSecurityLabelCopyWith<$Res> {
  _$ContractSecurityLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? number = freezed,
    Object? numberElement = freezed,
    Object? classification = null,
    Object? category = freezed,
    Object? control = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      numberElement: freezed == numberElement
          ? _value.numberElement
          : numberElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as Coding,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      control: freezed == control
          ? _value.control
          : control // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res> get classification {
    return $CodingCopyWith<$Res>(_value.classification, (value) {
      return _then(_value.copyWith(classification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractSecurityLabelImplCopyWith<$Res>
    implements $ContractSecurityLabelCopyWith<$Res> {
  factory _$$ContractSecurityLabelImplCopyWith(
          _$ContractSecurityLabelImpl value,
          $Res Function(_$ContractSecurityLabelImpl) then) =
      __$$ContractSecurityLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirUnsignedInt>? number,
      @JsonKey(name: '_number') List<Element?>? numberElement,
      Coding classification,
      List<Coding>? category,
      List<Coding>? control});

  @override
  $CodingCopyWith<$Res> get classification;
}

/// @nodoc
class __$$ContractSecurityLabelImplCopyWithImpl<$Res>
    extends _$ContractSecurityLabelCopyWithImpl<$Res,
        _$ContractSecurityLabelImpl>
    implements _$$ContractSecurityLabelImplCopyWith<$Res> {
  __$$ContractSecurityLabelImplCopyWithImpl(_$ContractSecurityLabelImpl _value,
      $Res Function(_$ContractSecurityLabelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? number = freezed,
    Object? numberElement = freezed,
    Object? classification = null,
    Object? category = freezed,
    Object? control = freezed,
  }) {
    return _then(_$ContractSecurityLabelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      number: freezed == number
          ? _value._number
          : number // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      numberElement: freezed == numberElement
          ? _value._numberElement
          : numberElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as Coding,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      control: freezed == control
          ? _value._control
          : control // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractSecurityLabelImpl extends _ContractSecurityLabel {
  const _$ContractSecurityLabelImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirUnsignedInt>? number,
      @JsonKey(name: '_number') final List<Element?>? numberElement,
      required this.classification,
      final List<Coding>? category,
      final List<Coding>? control})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _number = number,
        _numberElement = numberElement,
        _category = category,
        _control = control,
        super._();

  factory _$ContractSecurityLabelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractSecurityLabelImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [number] Number used to link this term or term element to the applicable
  ///  Security Label.
  final List<FhirUnsignedInt>? _number;

  /// [number] Number used to link this term or term element to the applicable
  ///  Security Label.
  @override
  List<FhirUnsignedInt>? get number {
    final value = _number;
    if (value == null) return null;
    if (_number is EqualUnmodifiableListView) return _number;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numberElement] Extensions for number
  final List<Element?>? _numberElement;

  /// [numberElement] Extensions for number
  @override
  @JsonKey(name: '_number')
  List<Element?>? get numberElement {
    final value = _numberElement;
    if (value == null) return null;
    if (_numberElement is EqualUnmodifiableListView) return _numberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [classification] Security label privacy tag that species the level of
  ///  confidentiality protection required for this term and/or term elements.
  @override
  final Coding classification;

  /// [category] Security label privacy tag that species the applicable privacy
  ///  and security policies governing this term and/or term elements.
  final List<Coding>? _category;

  /// [category] Security label privacy tag that species the applicable privacy
  ///  and security policies governing this term and/or term elements.
  @override
  List<Coding>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [control] Security label privacy tag that species the manner in which
  ///  term and/or term elements are to be protected.
  final List<Coding>? _control;

  /// [control] Security label privacy tag that species the manner in which
  ///  term and/or term elements are to be protected.
  @override
  List<Coding>? get control {
    final value = _control;
    if (value == null) return null;
    if (_control is EqualUnmodifiableListView) return _control;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContractSecurityLabel(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, number: $number, numberElement: $numberElement, classification: $classification, category: $category, control: $control)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractSecurityLabelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._number, _number) &&
            const DeepCollectionEquality()
                .equals(other._numberElement, _numberElement) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._control, _control));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_number),
      const DeepCollectionEquality().hash(_numberElement),
      classification,
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_control));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractSecurityLabelImplCopyWith<_$ContractSecurityLabelImpl>
      get copyWith => __$$ContractSecurityLabelImplCopyWithImpl<
          _$ContractSecurityLabelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractSecurityLabelImplToJson(
      this,
    );
  }
}

abstract class _ContractSecurityLabel extends ContractSecurityLabel {
  const factory _ContractSecurityLabel(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirUnsignedInt>? number,
      @JsonKey(name: '_number') final List<Element?>? numberElement,
      required final Coding classification,
      final List<Coding>? category,
      final List<Coding>? control}) = _$ContractSecurityLabelImpl;
  const _ContractSecurityLabel._() : super._();

  factory _ContractSecurityLabel.fromJson(Map<String, dynamic> json) =
      _$ContractSecurityLabelImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [number] Number used to link this term or term element to the applicable
  ///  Security Label.
  List<FhirUnsignedInt>? get number;
  @override

  /// [numberElement] Extensions for number
  @JsonKey(name: '_number')
  List<Element?>? get numberElement;
  @override

  /// [classification] Security label privacy tag that species the level of
  ///  confidentiality protection required for this term and/or term elements.
  Coding get classification;
  @override

  /// [category] Security label privacy tag that species the applicable privacy
  ///  and security policies governing this term and/or term elements.
  List<Coding>? get category;
  @override

  /// [control] Security label privacy tag that species the manner in which
  ///  term and/or term elements are to be protected.
  List<Coding>? get control;
  @override
  @JsonKey(ignore: true)
  _$$ContractSecurityLabelImplCopyWith<_$ContractSecurityLabelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContractOffer _$ContractOfferFromJson(Map<String, dynamic> json) {
  return _ContractOffer.fromJson(json);
}

/// @nodoc
mixin _$ContractOffer {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Unique identifier for this particular Contract Provision.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [party] Offer Recipient.
  List<ContractParty>? get party => throw _privateConstructorUsedError;

  /// [topic] The owner of an asset has the residual control rights over the
  /// asset: the right to decide all usages of the asset in any way not
  ///  inconsistent with a prior contract, custom, or law (Hart, 1995, p. 30).
  Reference? get topic => throw _privateConstructorUsedError;

  /// [type] Type of Contract Provision such as specific requirements, purposes
  ///  for actions, obligations, prohibitions, e.g. life time maximum benefit.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [decision] Type of choice made by accepting party with respect to an
  ///  offer made by an offeror/ grantee.
  CodeableConcept? get decision => throw _privateConstructorUsedError;

  /// [decisionMode] How the decision about a Contract was conveyed.
  List<CodeableConcept>? get decisionMode => throw _privateConstructorUsedError;

  /// [answer] Response to offer text.
  List<ContractAnswer>? get answer => throw _privateConstructorUsedError;

  /// [text] Human readable form of this Contract Offer.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [linkId] The id of the clause or question text of the offer in the
  ///  referenced questionnaire/response.
  List<String>? get linkId => throw _privateConstructorUsedError;

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement => throw _privateConstructorUsedError;

  /// [securityLabelNumber] Security labels that protects the offer.
  List<FhirUnsignedInt>? get securityLabelNumber =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractOfferCopyWith<ContractOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractOfferCopyWith<$Res> {
  factory $ContractOfferCopyWith(
          ContractOffer value, $Res Function(ContractOffer) then) =
      _$ContractOfferCopyWithImpl<$Res, ContractOffer>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<ContractParty>? party,
      Reference? topic,
      CodeableConcept? type,
      CodeableConcept? decision,
      List<CodeableConcept>? decisionMode,
      List<ContractAnswer>? answer,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<String>? linkId,
      @JsonKey(name: '_linkId') List<Element?>? linkIdElement,
      List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      List<Element>? securityLabelNumberElement});

  $ReferenceCopyWith<$Res>? get topic;
  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get decision;
}

/// @nodoc
class _$ContractOfferCopyWithImpl<$Res, $Val extends ContractOffer>
    implements $ContractOfferCopyWith<$Res> {
  _$ContractOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? party = freezed,
    Object? topic = freezed,
    Object? type = freezed,
    Object? decision = freezed,
    Object? decisionMode = freezed,
    Object? answer = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? linkId = freezed,
    Object? linkIdElement = freezed,
    Object? securityLabelNumber = freezed,
    Object? securityLabelNumberElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      party: freezed == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as List<ContractParty>?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Reference?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      decision: freezed == decision
          ? _value.decision
          : decision // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      decisionMode: freezed == decisionMode
          ? _value.decisionMode
          : decisionMode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<ContractAnswer>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      linkIdElement: freezed == linkIdElement
          ? _value.linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      securityLabelNumber: freezed == securityLabelNumber
          ? _value.securityLabelNumber
          : securityLabelNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      securityLabelNumberElement: freezed == securityLabelNumberElement
          ? _value.securityLabelNumberElement
          : securityLabelNumberElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get topic {
    if (_value.topic == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.topic!, (value) {
      return _then(_value.copyWith(topic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get decision {
    if (_value.decision == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.decision!, (value) {
      return _then(_value.copyWith(decision: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractOfferImplCopyWith<$Res>
    implements $ContractOfferCopyWith<$Res> {
  factory _$$ContractOfferImplCopyWith(
          _$ContractOfferImpl value, $Res Function(_$ContractOfferImpl) then) =
      __$$ContractOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<ContractParty>? party,
      Reference? topic,
      CodeableConcept? type,
      CodeableConcept? decision,
      List<CodeableConcept>? decisionMode,
      List<ContractAnswer>? answer,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<String>? linkId,
      @JsonKey(name: '_linkId') List<Element?>? linkIdElement,
      List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      List<Element>? securityLabelNumberElement});

  @override
  $ReferenceCopyWith<$Res>? get topic;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get decision;
}

/// @nodoc
class __$$ContractOfferImplCopyWithImpl<$Res>
    extends _$ContractOfferCopyWithImpl<$Res, _$ContractOfferImpl>
    implements _$$ContractOfferImplCopyWith<$Res> {
  __$$ContractOfferImplCopyWithImpl(
      _$ContractOfferImpl _value, $Res Function(_$ContractOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? party = freezed,
    Object? topic = freezed,
    Object? type = freezed,
    Object? decision = freezed,
    Object? decisionMode = freezed,
    Object? answer = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? linkId = freezed,
    Object? linkIdElement = freezed,
    Object? securityLabelNumber = freezed,
    Object? securityLabelNumberElement = freezed,
  }) {
    return _then(_$ContractOfferImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      party: freezed == party
          ? _value._party
          : party // ignore: cast_nullable_to_non_nullable
              as List<ContractParty>?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Reference?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      decision: freezed == decision
          ? _value.decision
          : decision // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      decisionMode: freezed == decisionMode
          ? _value._decisionMode
          : decisionMode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      answer: freezed == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<ContractAnswer>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      linkId: freezed == linkId
          ? _value._linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      linkIdElement: freezed == linkIdElement
          ? _value._linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      securityLabelNumber: freezed == securityLabelNumber
          ? _value._securityLabelNumber
          : securityLabelNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      securityLabelNumberElement: freezed == securityLabelNumberElement
          ? _value._securityLabelNumberElement
          : securityLabelNumberElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractOfferImpl extends _ContractOffer {
  const _$ContractOfferImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<ContractParty>? party,
      this.topic,
      this.type,
      this.decision,
      final List<CodeableConcept>? decisionMode,
      final List<ContractAnswer>? answer,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      final List<String>? linkId,
      @JsonKey(name: '_linkId') final List<Element?>? linkIdElement,
      final List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      final List<Element>? securityLabelNumberElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _party = party,
        _decisionMode = decisionMode,
        _answer = answer,
        _linkId = linkId,
        _linkIdElement = linkIdElement,
        _securityLabelNumber = securityLabelNumber,
        _securityLabelNumberElement = securityLabelNumberElement,
        super._();

  factory _$ContractOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractOfferImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Unique identifier for this particular Contract Provision.
  final List<Identifier>? _identifier;

  /// [identifier] Unique identifier for this particular Contract Provision.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [party] Offer Recipient.
  final List<ContractParty>? _party;

  /// [party] Offer Recipient.
  @override
  List<ContractParty>? get party {
    final value = _party;
    if (value == null) return null;
    if (_party is EqualUnmodifiableListView) return _party;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [topic] The owner of an asset has the residual control rights over the
  /// asset: the right to decide all usages of the asset in any way not
  ///  inconsistent with a prior contract, custom, or law (Hart, 1995, p. 30).
  @override
  final Reference? topic;

  /// [type] Type of Contract Provision such as specific requirements, purposes
  ///  for actions, obligations, prohibitions, e.g. life time maximum benefit.
  @override
  final CodeableConcept? type;

  /// [decision] Type of choice made by accepting party with respect to an
  ///  offer made by an offeror/ grantee.
  @override
  final CodeableConcept? decision;

  /// [decisionMode] How the decision about a Contract was conveyed.
  final List<CodeableConcept>? _decisionMode;

  /// [decisionMode] How the decision about a Contract was conveyed.
  @override
  List<CodeableConcept>? get decisionMode {
    final value = _decisionMode;
    if (value == null) return null;
    if (_decisionMode is EqualUnmodifiableListView) return _decisionMode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [answer] Response to offer text.
  final List<ContractAnswer>? _answer;

  /// [answer] Response to offer text.
  @override
  List<ContractAnswer>? get answer {
    final value = _answer;
    if (value == null) return null;
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [text] Human readable form of this Contract Offer.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [linkId] The id of the clause or question text of the offer in the
  ///  referenced questionnaire/response.
  final List<String>? _linkId;

  /// [linkId] The id of the clause or question text of the offer in the
  ///  referenced questionnaire/response.
  @override
  List<String>? get linkId {
    final value = _linkId;
    if (value == null) return null;
    if (_linkId is EqualUnmodifiableListView) return _linkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [linkIdElement] Extensions for linkId
  final List<Element?>? _linkIdElement;

  /// [linkIdElement] Extensions for linkId
  @override
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement {
    final value = _linkIdElement;
    if (value == null) return null;
    if (_linkIdElement is EqualUnmodifiableListView) return _linkIdElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [securityLabelNumber] Security labels that protects the offer.
  final List<FhirUnsignedInt>? _securityLabelNumber;

  /// [securityLabelNumber] Security labels that protects the offer.
  @override
  List<FhirUnsignedInt>? get securityLabelNumber {
    final value = _securityLabelNumber;
    if (value == null) return null;
    if (_securityLabelNumber is EqualUnmodifiableListView)
      return _securityLabelNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Element>? _securityLabelNumberElement;
  @override
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement {
    final value = _securityLabelNumberElement;
    if (value == null) return null;
    if (_securityLabelNumberElement is EqualUnmodifiableListView)
      return _securityLabelNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContractOffer(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, party: $party, topic: $topic, type: $type, decision: $decision, decisionMode: $decisionMode, answer: $answer, text: $text, textElement: $textElement, linkId: $linkId, linkIdElement: $linkIdElement, securityLabelNumber: $securityLabelNumber, securityLabelNumberElement: $securityLabelNumberElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractOfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality().equals(other._party, _party) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.decision, decision) ||
                other.decision == decision) &&
            const DeepCollectionEquality()
                .equals(other._decisionMode, _decisionMode) &&
            const DeepCollectionEquality().equals(other._answer, _answer) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            const DeepCollectionEquality().equals(other._linkId, _linkId) &&
            const DeepCollectionEquality()
                .equals(other._linkIdElement, _linkIdElement) &&
            const DeepCollectionEquality()
                .equals(other._securityLabelNumber, _securityLabelNumber) &&
            const DeepCollectionEquality().equals(
                other._securityLabelNumberElement,
                _securityLabelNumberElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_identifier),
      const DeepCollectionEquality().hash(_party),
      topic,
      type,
      decision,
      const DeepCollectionEquality().hash(_decisionMode),
      const DeepCollectionEquality().hash(_answer),
      text,
      textElement,
      const DeepCollectionEquality().hash(_linkId),
      const DeepCollectionEquality().hash(_linkIdElement),
      const DeepCollectionEquality().hash(_securityLabelNumber),
      const DeepCollectionEquality().hash(_securityLabelNumberElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractOfferImplCopyWith<_$ContractOfferImpl> get copyWith =>
      __$$ContractOfferImplCopyWithImpl<_$ContractOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractOfferImplToJson(
      this,
    );
  }
}

abstract class _ContractOffer extends ContractOffer {
  const factory _ContractOffer(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<ContractParty>? party,
      final Reference? topic,
      final CodeableConcept? type,
      final CodeableConcept? decision,
      final List<CodeableConcept>? decisionMode,
      final List<ContractAnswer>? answer,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final List<String>? linkId,
      @JsonKey(name: '_linkId') final List<Element?>? linkIdElement,
      final List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      final List<Element>? securityLabelNumberElement}) = _$ContractOfferImpl;
  const _ContractOffer._() : super._();

  factory _ContractOffer.fromJson(Map<String, dynamic> json) =
      _$ContractOfferImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Unique identifier for this particular Contract Provision.
  List<Identifier>? get identifier;
  @override

  /// [party] Offer Recipient.
  List<ContractParty>? get party;
  @override

  /// [topic] The owner of an asset has the residual control rights over the
  /// asset: the right to decide all usages of the asset in any way not
  ///  inconsistent with a prior contract, custom, or law (Hart, 1995, p. 30).
  Reference? get topic;
  @override

  /// [type] Type of Contract Provision such as specific requirements, purposes
  ///  for actions, obligations, prohibitions, e.g. life time maximum benefit.
  CodeableConcept? get type;
  @override

  /// [decision] Type of choice made by accepting party with respect to an
  ///  offer made by an offeror/ grantee.
  CodeableConcept? get decision;
  @override

  /// [decisionMode] How the decision about a Contract was conveyed.
  List<CodeableConcept>? get decisionMode;
  @override

  /// [answer] Response to offer text.
  List<ContractAnswer>? get answer;
  @override

  /// [text] Human readable form of this Contract Offer.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override

  /// [linkId] The id of the clause or question text of the offer in the
  ///  referenced questionnaire/response.
  List<String>? get linkId;
  @override

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement;
  @override

  /// [securityLabelNumber] Security labels that protects the offer.
  List<FhirUnsignedInt>? get securityLabelNumber;
  @override
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement;
  @override
  @JsonKey(ignore: true)
  _$$ContractOfferImplCopyWith<_$ContractOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractParty _$ContractPartyFromJson(Map<String, dynamic> json) {
  return _ContractParty.fromJson(json);
}

/// @nodoc
mixin _$ContractParty {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [reference] Participant in the offer.
  List<Reference> get reference => throw _privateConstructorUsedError;

  /// [role] How the party participates in the offer.
  CodeableConcept get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractPartyCopyWith<ContractParty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractPartyCopyWith<$Res> {
  factory $ContractPartyCopyWith(
          ContractParty value, $Res Function(ContractParty) then) =
      _$ContractPartyCopyWithImpl<$Res, ContractParty>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Reference> reference,
      CodeableConcept role});

  $CodeableConceptCopyWith<$Res> get role;
}

/// @nodoc
class _$ContractPartyCopyWithImpl<$Res, $Val extends ContractParty>
    implements $ContractPartyCopyWith<$Res> {
  _$ContractPartyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get role {
    return $CodeableConceptCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractPartyImplCopyWith<$Res>
    implements $ContractPartyCopyWith<$Res> {
  factory _$$ContractPartyImplCopyWith(
          _$ContractPartyImpl value, $Res Function(_$ContractPartyImpl) then) =
      __$$ContractPartyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Reference> reference,
      CodeableConcept role});

  @override
  $CodeableConceptCopyWith<$Res> get role;
}

/// @nodoc
class __$$ContractPartyImplCopyWithImpl<$Res>
    extends _$ContractPartyCopyWithImpl<$Res, _$ContractPartyImpl>
    implements _$$ContractPartyImplCopyWith<$Res> {
  __$$ContractPartyImplCopyWithImpl(
      _$ContractPartyImpl _value, $Res Function(_$ContractPartyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = null,
    Object? role = null,
  }) {
    return _then(_$ContractPartyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      reference: null == reference
          ? _value._reference
          : reference // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractPartyImpl extends _ContractParty {
  const _$ContractPartyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<Reference> reference,
      required this.role})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _reference = reference,
        super._();

  factory _$ContractPartyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractPartyImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reference] Participant in the offer.
  final List<Reference> _reference;

  /// [reference] Participant in the offer.
  @override
  List<Reference> get reference {
    if (_reference is EqualUnmodifiableListView) return _reference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reference);
  }

  /// [role] How the party participates in the offer.
  @override
  final CodeableConcept role;

  @override
  String toString() {
    return 'ContractParty(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, reference: $reference, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractPartyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._reference, _reference) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_reference),
      role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractPartyImplCopyWith<_$ContractPartyImpl> get copyWith =>
      __$$ContractPartyImplCopyWithImpl<_$ContractPartyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractPartyImplToJson(
      this,
    );
  }
}

abstract class _ContractParty extends ContractParty {
  const factory _ContractParty(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<Reference> reference,
      required final CodeableConcept role}) = _$ContractPartyImpl;
  const _ContractParty._() : super._();

  factory _ContractParty.fromJson(Map<String, dynamic> json) =
      _$ContractPartyImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [reference] Participant in the offer.
  List<Reference> get reference;
  @override

  /// [role] How the party participates in the offer.
  CodeableConcept get role;
  @override
  @JsonKey(ignore: true)
  _$$ContractPartyImplCopyWith<_$ContractPartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractAnswer _$ContractAnswerFromJson(Map<String, dynamic> json) {
  return _ContractAnswer.fromJson(json);
}

/// @nodoc
mixin _$ContractAnswer {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [valueBoolean] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueDecimal] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  FhirDecimal? get valueDecimal => throw _privateConstructorUsedError;

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement =>
      throw _privateConstructorUsedError;

  /// [valueInteger] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  FhirInteger? get valueInteger => throw _privateConstructorUsedError;

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [valueDate] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  FhirDate? get valueDate => throw _privateConstructorUsedError;

  /// [valueDateElement] Extensions for valueDate
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement => throw _privateConstructorUsedError;

  /// [valueDateTime] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  FhirDateTime? get valueDateTime => throw _privateConstructorUsedError;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [valueTime] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  FhirTime? get valueTime => throw _privateConstructorUsedError;

  /// [valueTimeElement] Extensions for valueTime
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement => throw _privateConstructorUsedError;

  /// [valueString] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  String? get valueString => throw _privateConstructorUsedError;

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement =>
      throw _privateConstructorUsedError;

  /// [valueUri] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  FhirUri? get valueUri => throw _privateConstructorUsedError;

  /// [valueUriElement] Extensions for valueUri
  @JsonKey(name: '_valueUri')
  PrimitiveElement? get valueUriElement => throw _privateConstructorUsedError;

  /// [valueAttachment] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  Attachment? get valueAttachment => throw _privateConstructorUsedError;

  /// [valueCoding] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  Coding? get valueCoding => throw _privateConstructorUsedError;

  /// [valueQuantity] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueReference] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  Reference? get valueReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractAnswerCopyWith<ContractAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractAnswerCopyWith<$Res> {
  factory $ContractAnswerCopyWith(
          ContractAnswer value, $Res Function(ContractAnswer) then) =
      _$ContractAnswerCopyWithImpl<$Res, ContractAnswer>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirUri? valueUri,
      @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
      Attachment? valueAttachment,
      Coding? valueCoding,
      Quantity? valueQuantity,
      Reference? valueReference});

  $AttachmentCopyWith<$Res>? get valueAttachment;
  $CodingCopyWith<$Res>? get valueCoding;
  $QuantityCopyWith<$Res>? get valueQuantity;
  $ReferenceCopyWith<$Res>? get valueReference;
}

/// @nodoc
class _$ContractAnswerCopyWithImpl<$Res, $Val extends ContractAnswer>
    implements $ContractAnswerCopyWith<$Res> {
  _$ContractAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueUri = freezed,
    Object? valueUriElement = freezed,
    Object? valueAttachment = freezed,
    Object? valueCoding = freezed,
    Object? valueQuantity = freezed,
    Object? valueReference = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUri: freezed == valueUri
          ? _value.valueUri
          : valueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      valueUriElement: freezed == valueUriElement
          ? _value.valueUriElement
          : valueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get valueAttachment {
    if (_value.valueAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.valueAttachment!, (value) {
      return _then(_value.copyWith(valueAttachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get valueCoding {
    if (_value.valueCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.valueCoding!, (value) {
      return _then(_value.copyWith(valueCoding: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get valueQuantity {
    if (_value.valueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.valueQuantity!, (value) {
      return _then(_value.copyWith(valueQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get valueReference {
    if (_value.valueReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.valueReference!, (value) {
      return _then(_value.copyWith(valueReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractAnswerImplCopyWith<$Res>
    implements $ContractAnswerCopyWith<$Res> {
  factory _$$ContractAnswerImplCopyWith(_$ContractAnswerImpl value,
          $Res Function(_$ContractAnswerImpl) then) =
      __$$ContractAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirUri? valueUri,
      @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
      Attachment? valueAttachment,
      Coding? valueCoding,
      Quantity? valueQuantity,
      Reference? valueReference});

  @override
  $AttachmentCopyWith<$Res>? get valueAttachment;
  @override
  $CodingCopyWith<$Res>? get valueCoding;
  @override
  $QuantityCopyWith<$Res>? get valueQuantity;
  @override
  $ReferenceCopyWith<$Res>? get valueReference;
}

/// @nodoc
class __$$ContractAnswerImplCopyWithImpl<$Res>
    extends _$ContractAnswerCopyWithImpl<$Res, _$ContractAnswerImpl>
    implements _$$ContractAnswerImplCopyWith<$Res> {
  __$$ContractAnswerImplCopyWithImpl(
      _$ContractAnswerImpl _value, $Res Function(_$ContractAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueUri = freezed,
    Object? valueUriElement = freezed,
    Object? valueAttachment = freezed,
    Object? valueCoding = freezed,
    Object? valueQuantity = freezed,
    Object? valueReference = freezed,
  }) {
    return _then(_$ContractAnswerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUri: freezed == valueUri
          ? _value.valueUri
          : valueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      valueUriElement: freezed == valueUriElement
          ? _value.valueUriElement
          : valueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractAnswerImpl extends _ContractAnswer {
  const _$ContractAnswerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      this.valueDecimal,
      @JsonKey(name: '_valueDecimal') this.valueDecimalElement,
      this.valueInteger,
      @JsonKey(name: '_valueInteger') this.valueIntegerElement,
      this.valueDate,
      @JsonKey(name: '_valueDate') this.valueDateElement,
      this.valueDateTime,
      @JsonKey(name: '_valueDateTime') this.valueDateTimeElement,
      this.valueTime,
      @JsonKey(name: '_valueTime') this.valueTimeElement,
      this.valueString,
      @JsonKey(name: '_valueString') this.valueStringElement,
      this.valueUri,
      @JsonKey(name: '_valueUri') this.valueUriElement,
      this.valueAttachment,
      this.valueCoding,
      this.valueQuantity,
      this.valueReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ContractAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractAnswerImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [valueBoolean] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueDecimal] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final FhirDecimal? valueDecimal;

  /// [valueDecimalElement] Extensions for valueDecimal
  @override
  @JsonKey(name: '_valueDecimal')
  final PrimitiveElement? valueDecimalElement;

  /// [valueInteger] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final FhirInteger? valueInteger;

  /// [valueIntegerElement] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  final PrimitiveElement? valueIntegerElement;

  /// [valueDate] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  @override
  final FhirDate? valueDate;

  /// [valueDateElement] Extensions for valueDate
  @override
  @JsonKey(name: '_valueDate')
  final PrimitiveElement? valueDateElement;

  /// [valueDateTime] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final FhirDateTime? valueDateTime;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @override
  @JsonKey(name: '_valueDateTime')
  final PrimitiveElement? valueDateTimeElement;

  /// [valueTime] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  @override
  final FhirTime? valueTime;

  /// [valueTimeElement] Extensions for valueTime
  @override
  @JsonKey(name: '_valueTime')
  final PrimitiveElement? valueTimeElement;

  /// [valueString] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final String? valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  final PrimitiveElement? valueStringElement;

  /// [valueUri] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  @override
  final FhirUri? valueUri;

  /// [valueUriElement] Extensions for valueUri
  @override
  @JsonKey(name: '_valueUri')
  final PrimitiveElement? valueUriElement;

  /// [valueAttachment] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final Attachment? valueAttachment;

  /// [valueCoding] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final Coding? valueCoding;

  /// [valueQuantity] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final Quantity? valueQuantity;

  /// [valueReference] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  @override
  final Reference? valueReference;

  @override
  String toString() {
    return 'ContractAnswer(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, valueBoolean: $valueBoolean, valueBooleanElement: $valueBooleanElement, valueDecimal: $valueDecimal, valueDecimalElement: $valueDecimalElement, valueInteger: $valueInteger, valueIntegerElement: $valueIntegerElement, valueDate: $valueDate, valueDateElement: $valueDateElement, valueDateTime: $valueDateTime, valueDateTimeElement: $valueDateTimeElement, valueTime: $valueTime, valueTimeElement: $valueTimeElement, valueString: $valueString, valueStringElement: $valueStringElement, valueUri: $valueUri, valueUriElement: $valueUriElement, valueAttachment: $valueAttachment, valueCoding: $valueCoding, valueQuantity: $valueQuantity, valueReference: $valueReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractAnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueDecimal, valueDecimal) ||
                other.valueDecimal == valueDecimal) &&
            (identical(other.valueDecimalElement, valueDecimalElement) ||
                other.valueDecimalElement == valueDecimalElement) &&
            (identical(other.valueInteger, valueInteger) ||
                other.valueInteger == valueInteger) &&
            (identical(other.valueIntegerElement, valueIntegerElement) ||
                other.valueIntegerElement == valueIntegerElement) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.valueDateElement, valueDateElement) ||
                other.valueDateElement == valueDateElement) &&
            (identical(other.valueDateTime, valueDateTime) ||
                other.valueDateTime == valueDateTime) &&
            (identical(other.valueDateTimeElement, valueDateTimeElement) ||
                other.valueDateTimeElement == valueDateTimeElement) &&
            (identical(other.valueTime, valueTime) ||
                other.valueTime == valueTime) &&
            (identical(other.valueTimeElement, valueTimeElement) ||
                other.valueTimeElement == valueTimeElement) &&
            (identical(other.valueString, valueString) ||
                other.valueString == valueString) &&
            (identical(other.valueStringElement, valueStringElement) ||
                other.valueStringElement == valueStringElement) &&
            (identical(other.valueUri, valueUri) ||
                other.valueUri == valueUri) &&
            (identical(other.valueUriElement, valueUriElement) ||
                other.valueUriElement == valueUriElement) &&
            (identical(other.valueAttachment, valueAttachment) ||
                other.valueAttachment == valueAttachment) &&
            (identical(other.valueCoding, valueCoding) ||
                other.valueCoding == valueCoding) &&
            (identical(other.valueQuantity, valueQuantity) ||
                other.valueQuantity == valueQuantity) &&
            (identical(other.valueReference, valueReference) ||
                other.valueReference == valueReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        valueBoolean,
        valueBooleanElement,
        valueDecimal,
        valueDecimalElement,
        valueInteger,
        valueIntegerElement,
        valueDate,
        valueDateElement,
        valueDateTime,
        valueDateTimeElement,
        valueTime,
        valueTimeElement,
        valueString,
        valueStringElement,
        valueUri,
        valueUriElement,
        valueAttachment,
        valueCoding,
        valueQuantity,
        valueReference
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractAnswerImplCopyWith<_$ContractAnswerImpl> get copyWith =>
      __$$ContractAnswerImplCopyWithImpl<_$ContractAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractAnswerImplToJson(
      this,
    );
  }
}

abstract class _ContractAnswer extends ContractAnswer {
  const factory _ContractAnswer(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean')
      final PrimitiveElement? valueBooleanElement,
      final FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal')
      final PrimitiveElement? valueDecimalElement,
      final FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger')
      final PrimitiveElement? valueIntegerElement,
      final FhirDate? valueDate,
      @JsonKey(name: '_valueDate') final PrimitiveElement? valueDateElement,
      final FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime')
      final PrimitiveElement? valueDateTimeElement,
      final FhirTime? valueTime,
      @JsonKey(name: '_valueTime') final PrimitiveElement? valueTimeElement,
      final String? valueString,
      @JsonKey(name: '_valueString') final PrimitiveElement? valueStringElement,
      final FhirUri? valueUri,
      @JsonKey(name: '_valueUri') final PrimitiveElement? valueUriElement,
      final Attachment? valueAttachment,
      final Coding? valueCoding,
      final Quantity? valueQuantity,
      final Reference? valueReference}) = _$ContractAnswerImpl;
  const _ContractAnswer._() : super._();

  factory _ContractAnswer.fromJson(Map<String, dynamic> json) =
      _$ContractAnswerImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [valueBoolean] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  FhirBoolean? get valueBoolean;
  @override

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;
  @override

  /// [valueDecimal] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  FhirDecimal? get valueDecimal;
  @override

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement;
  @override

  /// [valueInteger] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  FhirInteger? get valueInteger;
  @override

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement;
  @override

  /// [valueDate] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  FhirDate? get valueDate;
  @override

  /// [valueDateElement] Extensions for valueDate
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;
  @override

  /// [valueDateTime] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  FhirDateTime? get valueDateTime;
  @override

  /// [valueDateTimeElement] Extensions for valueDateTime
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement;
  @override

  /// [valueTime] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  FhirTime? get valueTime;
  @override

  /// [valueTimeElement] Extensions for valueTime
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement;
  @override

  /// [valueString] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  String? get valueString;
  @override

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement;
  @override

  /// [valueUri] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  FhirUri? get valueUri;
  @override

  /// [valueUriElement] Extensions for valueUri
  @JsonKey(name: '_valueUri')
  PrimitiveElement? get valueUriElement;
  @override

  /// [valueAttachment] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  Attachment? get valueAttachment;
  @override

  /// [valueCoding] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  Coding? get valueCoding;
  @override

  /// [valueQuantity] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  Quantity? get valueQuantity;
  @override

  /// [valueReference] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  Reference? get valueReference;
  @override
  @JsonKey(ignore: true)
  _$$ContractAnswerImplCopyWith<_$ContractAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractAsset _$ContractAssetFromJson(Map<String, dynamic> json) {
  return _ContractAsset.fromJson(json);
}

/// @nodoc
mixin _$ContractAsset {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [scope] Differentiates the kind of the asset .
  CodeableConcept? get scope => throw _privateConstructorUsedError;

  /// [type] Target entity type about which the term may be concerned.
  List<CodeableConcept>? get type => throw _privateConstructorUsedError;

  /// [typeReference] Associated entities.
  List<Reference>? get typeReference => throw _privateConstructorUsedError;

  /// [subtype] May be a subtype or part of an offered asset.
  List<CodeableConcept>? get subtype => throw _privateConstructorUsedError;

  /// [relationship] Specifies the applicability of the term to an asset
  /// resource instance, and instances it refers to orinstances that refer to
  ///  it, and/or are owned by the offeree.
  Coding? get relationship => throw _privateConstructorUsedError;

  /// [context] Circumstance of the asset.
  List<ContractContext>? get context => throw _privateConstructorUsedError;

  /// [condition] Description of the quality and completeness of the asset that
  ///  imay be a factor in its valuation.
  String? get condition => throw _privateConstructorUsedError;

  /// [conditionElement] Extensions for condition
  @JsonKey(name: '_condition')
  PrimitiveElement? get conditionElement => throw _privateConstructorUsedError;

  /// [periodType] Type of Asset availability for use or ownership.
  List<CodeableConcept>? get periodType => throw _privateConstructorUsedError;

  /// [period] Asset relevant contractual time period.
  List<Period>? get period => throw _privateConstructorUsedError;

  /// [usePeriod] Time period of asset use.
  List<Period>? get usePeriod => throw _privateConstructorUsedError;

  /// [text] Clause or question text (Prose Object) concerning the asset in a
  /// linked form, such as a QuestionnaireResponse used in the formation of the
  ///  contract.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [linkId] Id [Identifier]?? of the clause or question text about the asset
  ///  in the referenced form or QuestionnaireResponse.
  List<String>? get linkId => throw _privateConstructorUsedError;

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement => throw _privateConstructorUsedError;

  /// [answer] Response to assets.
  List<ContractAnswer>? get answer => throw _privateConstructorUsedError;

  /// [securityLabelNumber] Security labels that protects the asset.
  List<FhirUnsignedInt>? get securityLabelNumber =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement =>
      throw _privateConstructorUsedError;

  /// [valuedItem] Contract Valued Item List.
  List<ContractValuedItem>? get valuedItem =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractAssetCopyWith<ContractAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractAssetCopyWith<$Res> {
  factory $ContractAssetCopyWith(
          ContractAsset value, $Res Function(ContractAsset) then) =
      _$ContractAssetCopyWithImpl<$Res, ContractAsset>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? scope,
      List<CodeableConcept>? type,
      List<Reference>? typeReference,
      List<CodeableConcept>? subtype,
      Coding? relationship,
      List<ContractContext>? context,
      String? condition,
      @JsonKey(name: '_condition') PrimitiveElement? conditionElement,
      List<CodeableConcept>? periodType,
      List<Period>? period,
      List<Period>? usePeriod,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<String>? linkId,
      @JsonKey(name: '_linkId') List<Element?>? linkIdElement,
      List<ContractAnswer>? answer,
      List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      List<Element>? securityLabelNumberElement,
      List<ContractValuedItem>? valuedItem});

  $CodeableConceptCopyWith<$Res>? get scope;
  $CodingCopyWith<$Res>? get relationship;
}

/// @nodoc
class _$ContractAssetCopyWithImpl<$Res, $Val extends ContractAsset>
    implements $ContractAssetCopyWith<$Res> {
  _$ContractAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? scope = freezed,
    Object? type = freezed,
    Object? typeReference = freezed,
    Object? subtype = freezed,
    Object? relationship = freezed,
    Object? context = freezed,
    Object? condition = freezed,
    Object? conditionElement = freezed,
    Object? periodType = freezed,
    Object? period = freezed,
    Object? usePeriod = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? linkId = freezed,
    Object? linkIdElement = freezed,
    Object? answer = freezed,
    Object? securityLabelNumber = freezed,
    Object? securityLabelNumberElement = freezed,
    Object? valuedItem = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      typeReference: freezed == typeReference
          ? _value.typeReference
          : typeReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Coding?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as List<ContractContext>?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionElement: freezed == conditionElement
          ? _value.conditionElement
          : conditionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      periodType: freezed == periodType
          ? _value.periodType
          : periodType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as List<Period>?,
      usePeriod: freezed == usePeriod
          ? _value.usePeriod
          : usePeriod // ignore: cast_nullable_to_non_nullable
              as List<Period>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      linkIdElement: freezed == linkIdElement
          ? _value.linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<ContractAnswer>?,
      securityLabelNumber: freezed == securityLabelNumber
          ? _value.securityLabelNumber
          : securityLabelNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      securityLabelNumberElement: freezed == securityLabelNumberElement
          ? _value.securityLabelNumberElement
          : securityLabelNumberElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      valuedItem: freezed == valuedItem
          ? _value.valuedItem
          : valuedItem // ignore: cast_nullable_to_non_nullable
              as List<ContractValuedItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get scope {
    if (_value.scope == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.scope!, (value) {
      return _then(_value.copyWith(scope: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get relationship {
    if (_value.relationship == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.relationship!, (value) {
      return _then(_value.copyWith(relationship: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractAssetImplCopyWith<$Res>
    implements $ContractAssetCopyWith<$Res> {
  factory _$$ContractAssetImplCopyWith(
          _$ContractAssetImpl value, $Res Function(_$ContractAssetImpl) then) =
      __$$ContractAssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? scope,
      List<CodeableConcept>? type,
      List<Reference>? typeReference,
      List<CodeableConcept>? subtype,
      Coding? relationship,
      List<ContractContext>? context,
      String? condition,
      @JsonKey(name: '_condition') PrimitiveElement? conditionElement,
      List<CodeableConcept>? periodType,
      List<Period>? period,
      List<Period>? usePeriod,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<String>? linkId,
      @JsonKey(name: '_linkId') List<Element?>? linkIdElement,
      List<ContractAnswer>? answer,
      List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      List<Element>? securityLabelNumberElement,
      List<ContractValuedItem>? valuedItem});

  @override
  $CodeableConceptCopyWith<$Res>? get scope;
  @override
  $CodingCopyWith<$Res>? get relationship;
}

/// @nodoc
class __$$ContractAssetImplCopyWithImpl<$Res>
    extends _$ContractAssetCopyWithImpl<$Res, _$ContractAssetImpl>
    implements _$$ContractAssetImplCopyWith<$Res> {
  __$$ContractAssetImplCopyWithImpl(
      _$ContractAssetImpl _value, $Res Function(_$ContractAssetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? scope = freezed,
    Object? type = freezed,
    Object? typeReference = freezed,
    Object? subtype = freezed,
    Object? relationship = freezed,
    Object? context = freezed,
    Object? condition = freezed,
    Object? conditionElement = freezed,
    Object? periodType = freezed,
    Object? period = freezed,
    Object? usePeriod = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? linkId = freezed,
    Object? linkIdElement = freezed,
    Object? answer = freezed,
    Object? securityLabelNumber = freezed,
    Object? securityLabelNumberElement = freezed,
    Object? valuedItem = freezed,
  }) {
    return _then(_$ContractAssetImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      typeReference: freezed == typeReference
          ? _value._typeReference
          : typeReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      subtype: freezed == subtype
          ? _value._subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Coding?,
      context: freezed == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as List<ContractContext>?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionElement: freezed == conditionElement
          ? _value.conditionElement
          : conditionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      periodType: freezed == periodType
          ? _value._periodType
          : periodType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      period: freezed == period
          ? _value._period
          : period // ignore: cast_nullable_to_non_nullable
              as List<Period>?,
      usePeriod: freezed == usePeriod
          ? _value._usePeriod
          : usePeriod // ignore: cast_nullable_to_non_nullable
              as List<Period>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      linkId: freezed == linkId
          ? _value._linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      linkIdElement: freezed == linkIdElement
          ? _value._linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      answer: freezed == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<ContractAnswer>?,
      securityLabelNumber: freezed == securityLabelNumber
          ? _value._securityLabelNumber
          : securityLabelNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      securityLabelNumberElement: freezed == securityLabelNumberElement
          ? _value._securityLabelNumberElement
          : securityLabelNumberElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      valuedItem: freezed == valuedItem
          ? _value._valuedItem
          : valuedItem // ignore: cast_nullable_to_non_nullable
              as List<ContractValuedItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractAssetImpl extends _ContractAsset {
  const _$ContractAssetImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.scope,
      final List<CodeableConcept>? type,
      final List<Reference>? typeReference,
      final List<CodeableConcept>? subtype,
      this.relationship,
      final List<ContractContext>? context,
      this.condition,
      @JsonKey(name: '_condition') this.conditionElement,
      final List<CodeableConcept>? periodType,
      final List<Period>? period,
      final List<Period>? usePeriod,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      final List<String>? linkId,
      @JsonKey(name: '_linkId') final List<Element?>? linkIdElement,
      final List<ContractAnswer>? answer,
      final List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      final List<Element>? securityLabelNumberElement,
      final List<ContractValuedItem>? valuedItem})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _type = type,
        _typeReference = typeReference,
        _subtype = subtype,
        _context = context,
        _periodType = periodType,
        _period = period,
        _usePeriod = usePeriod,
        _linkId = linkId,
        _linkIdElement = linkIdElement,
        _answer = answer,
        _securityLabelNumber = securityLabelNumber,
        _securityLabelNumberElement = securityLabelNumberElement,
        _valuedItem = valuedItem,
        super._();

  factory _$ContractAssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractAssetImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [scope] Differentiates the kind of the asset .
  @override
  final CodeableConcept? scope;

  /// [type] Target entity type about which the term may be concerned.
  final List<CodeableConcept>? _type;

  /// [type] Target entity type about which the term may be concerned.
  @override
  List<CodeableConcept>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [typeReference] Associated entities.
  final List<Reference>? _typeReference;

  /// [typeReference] Associated entities.
  @override
  List<Reference>? get typeReference {
    final value = _typeReference;
    if (value == null) return null;
    if (_typeReference is EqualUnmodifiableListView) return _typeReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [subtype] May be a subtype or part of an offered asset.
  final List<CodeableConcept>? _subtype;

  /// [subtype] May be a subtype or part of an offered asset.
  @override
  List<CodeableConcept>? get subtype {
    final value = _subtype;
    if (value == null) return null;
    if (_subtype is EqualUnmodifiableListView) return _subtype;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [relationship] Specifies the applicability of the term to an asset
  /// resource instance, and instances it refers to orinstances that refer to
  ///  it, and/or are owned by the offeree.
  @override
  final Coding? relationship;

  /// [context] Circumstance of the asset.
  final List<ContractContext>? _context;

  /// [context] Circumstance of the asset.
  @override
  List<ContractContext>? get context {
    final value = _context;
    if (value == null) return null;
    if (_context is EqualUnmodifiableListView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [condition] Description of the quality and completeness of the asset that
  ///  imay be a factor in its valuation.
  @override
  final String? condition;

  /// [conditionElement] Extensions for condition
  @override
  @JsonKey(name: '_condition')
  final PrimitiveElement? conditionElement;

  /// [periodType] Type of Asset availability for use or ownership.
  final List<CodeableConcept>? _periodType;

  /// [periodType] Type of Asset availability for use or ownership.
  @override
  List<CodeableConcept>? get periodType {
    final value = _periodType;
    if (value == null) return null;
    if (_periodType is EqualUnmodifiableListView) return _periodType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [period] Asset relevant contractual time period.
  final List<Period>? _period;

  /// [period] Asset relevant contractual time period.
  @override
  List<Period>? get period {
    final value = _period;
    if (value == null) return null;
    if (_period is EqualUnmodifiableListView) return _period;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [usePeriod] Time period of asset use.
  final List<Period>? _usePeriod;

  /// [usePeriod] Time period of asset use.
  @override
  List<Period>? get usePeriod {
    final value = _usePeriod;
    if (value == null) return null;
    if (_usePeriod is EqualUnmodifiableListView) return _usePeriod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [text] Clause or question text (Prose Object) concerning the asset in a
  /// linked form, such as a QuestionnaireResponse used in the formation of the
  ///  contract.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [linkId] Id [Identifier]?? of the clause or question text about the asset
  ///  in the referenced form or QuestionnaireResponse.
  final List<String>? _linkId;

  /// [linkId] Id [Identifier]?? of the clause or question text about the asset
  ///  in the referenced form or QuestionnaireResponse.
  @override
  List<String>? get linkId {
    final value = _linkId;
    if (value == null) return null;
    if (_linkId is EqualUnmodifiableListView) return _linkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [linkIdElement] Extensions for linkId
  final List<Element?>? _linkIdElement;

  /// [linkIdElement] Extensions for linkId
  @override
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement {
    final value = _linkIdElement;
    if (value == null) return null;
    if (_linkIdElement is EqualUnmodifiableListView) return _linkIdElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [answer] Response to assets.
  final List<ContractAnswer>? _answer;

  /// [answer] Response to assets.
  @override
  List<ContractAnswer>? get answer {
    final value = _answer;
    if (value == null) return null;
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [securityLabelNumber] Security labels that protects the asset.
  final List<FhirUnsignedInt>? _securityLabelNumber;

  /// [securityLabelNumber] Security labels that protects the asset.
  @override
  List<FhirUnsignedInt>? get securityLabelNumber {
    final value = _securityLabelNumber;
    if (value == null) return null;
    if (_securityLabelNumber is EqualUnmodifiableListView)
      return _securityLabelNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Element>? _securityLabelNumberElement;
  @override
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement {
    final value = _securityLabelNumberElement;
    if (value == null) return null;
    if (_securityLabelNumberElement is EqualUnmodifiableListView)
      return _securityLabelNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [valuedItem] Contract Valued Item List.
  final List<ContractValuedItem>? _valuedItem;

  /// [valuedItem] Contract Valued Item List.
  @override
  List<ContractValuedItem>? get valuedItem {
    final value = _valuedItem;
    if (value == null) return null;
    if (_valuedItem is EqualUnmodifiableListView) return _valuedItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContractAsset(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, scope: $scope, type: $type, typeReference: $typeReference, subtype: $subtype, relationship: $relationship, context: $context, condition: $condition, conditionElement: $conditionElement, periodType: $periodType, period: $period, usePeriod: $usePeriod, text: $text, textElement: $textElement, linkId: $linkId, linkIdElement: $linkIdElement, answer: $answer, securityLabelNumber: $securityLabelNumber, securityLabelNumberElement: $securityLabelNumberElement, valuedItem: $valuedItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractAssetImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality()
                .equals(other._typeReference, _typeReference) &&
            const DeepCollectionEquality().equals(other._subtype, _subtype) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            const DeepCollectionEquality().equals(other._context, _context) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.conditionElement, conditionElement) ||
                other.conditionElement == conditionElement) &&
            const DeepCollectionEquality()
                .equals(other._periodType, _periodType) &&
            const DeepCollectionEquality().equals(other._period, _period) &&
            const DeepCollectionEquality()
                .equals(other._usePeriod, _usePeriod) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            const DeepCollectionEquality().equals(other._linkId, _linkId) &&
            const DeepCollectionEquality()
                .equals(other._linkIdElement, _linkIdElement) &&
            const DeepCollectionEquality().equals(other._answer, _answer) &&
            const DeepCollectionEquality()
                .equals(other._securityLabelNumber, _securityLabelNumber) &&
            const DeepCollectionEquality().equals(
                other._securityLabelNumberElement,
                _securityLabelNumberElement) &&
            const DeepCollectionEquality()
                .equals(other._valuedItem, _valuedItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        scope,
        const DeepCollectionEquality().hash(_type),
        const DeepCollectionEquality().hash(_typeReference),
        const DeepCollectionEquality().hash(_subtype),
        relationship,
        const DeepCollectionEquality().hash(_context),
        condition,
        conditionElement,
        const DeepCollectionEquality().hash(_periodType),
        const DeepCollectionEquality().hash(_period),
        const DeepCollectionEquality().hash(_usePeriod),
        text,
        textElement,
        const DeepCollectionEquality().hash(_linkId),
        const DeepCollectionEquality().hash(_linkIdElement),
        const DeepCollectionEquality().hash(_answer),
        const DeepCollectionEquality().hash(_securityLabelNumber),
        const DeepCollectionEquality().hash(_securityLabelNumberElement),
        const DeepCollectionEquality().hash(_valuedItem)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractAssetImplCopyWith<_$ContractAssetImpl> get copyWith =>
      __$$ContractAssetImplCopyWithImpl<_$ContractAssetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractAssetImplToJson(
      this,
    );
  }
}

abstract class _ContractAsset extends ContractAsset {
  const factory _ContractAsset(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? scope,
      final List<CodeableConcept>? type,
      final List<Reference>? typeReference,
      final List<CodeableConcept>? subtype,
      final Coding? relationship,
      final List<ContractContext>? context,
      final String? condition,
      @JsonKey(name: '_condition') final PrimitiveElement? conditionElement,
      final List<CodeableConcept>? periodType,
      final List<Period>? period,
      final List<Period>? usePeriod,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final List<String>? linkId,
      @JsonKey(name: '_linkId') final List<Element?>? linkIdElement,
      final List<ContractAnswer>? answer,
      final List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      final List<Element>? securityLabelNumberElement,
      final List<ContractValuedItem>? valuedItem}) = _$ContractAssetImpl;
  const _ContractAsset._() : super._();

  factory _ContractAsset.fromJson(Map<String, dynamic> json) =
      _$ContractAssetImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [scope] Differentiates the kind of the asset .
  CodeableConcept? get scope;
  @override

  /// [type] Target entity type about which the term may be concerned.
  List<CodeableConcept>? get type;
  @override

  /// [typeReference] Associated entities.
  List<Reference>? get typeReference;
  @override

  /// [subtype] May be a subtype or part of an offered asset.
  List<CodeableConcept>? get subtype;
  @override

  /// [relationship] Specifies the applicability of the term to an asset
  /// resource instance, and instances it refers to orinstances that refer to
  ///  it, and/or are owned by the offeree.
  Coding? get relationship;
  @override

  /// [context] Circumstance of the asset.
  List<ContractContext>? get context;
  @override

  /// [condition] Description of the quality and completeness of the asset that
  ///  imay be a factor in its valuation.
  String? get condition;
  @override

  /// [conditionElement] Extensions for condition
  @JsonKey(name: '_condition')
  PrimitiveElement? get conditionElement;
  @override

  /// [periodType] Type of Asset availability for use or ownership.
  List<CodeableConcept>? get periodType;
  @override

  /// [period] Asset relevant contractual time period.
  List<Period>? get period;
  @override

  /// [usePeriod] Time period of asset use.
  List<Period>? get usePeriod;
  @override

  /// [text] Clause or question text (Prose Object) concerning the asset in a
  /// linked form, such as a QuestionnaireResponse used in the formation of the
  ///  contract.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override

  /// [linkId] Id [Identifier]?? of the clause or question text about the asset
  ///  in the referenced form or QuestionnaireResponse.
  List<String>? get linkId;
  @override

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement;
  @override

  /// [answer] Response to assets.
  List<ContractAnswer>? get answer;
  @override

  /// [securityLabelNumber] Security labels that protects the asset.
  List<FhirUnsignedInt>? get securityLabelNumber;
  @override
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement;
  @override

  /// [valuedItem] Contract Valued Item List.
  List<ContractValuedItem>? get valuedItem;
  @override
  @JsonKey(ignore: true)
  _$$ContractAssetImplCopyWith<_$ContractAssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractContext _$ContractContextFromJson(Map<String, dynamic> json) {
  return _ContractContext.fromJson(json);
}

/// @nodoc
mixin _$ContractContext {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [reference] Asset context reference may include the creator, custodian,
  /// or owning Person or Organization (e.g., bank, repository),  location held,
  ///  e.g., building,  jurisdiction.
  Reference? get reference => throw _privateConstructorUsedError;

  /// [code] Coded representation of the context generally or of the Referenced
  ///  entity, such as the asset holder type or location.
  List<CodeableConcept>? get code => throw _privateConstructorUsedError;

  /// [text] Context description.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractContextCopyWith<ContractContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractContextCopyWith<$Res> {
  factory $ContractContextCopyWith(
          ContractContext value, $Res Function(ContractContext) then) =
      _$ContractContextCopyWithImpl<$Res, ContractContext>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? reference,
      List<CodeableConcept>? code,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});

  $ReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class _$ContractContextCopyWithImpl<$Res, $Val extends ContractContext>
    implements $ContractContextCopyWith<$Res> {
  _$ContractContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = freezed,
    Object? code = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get reference {
    if (_value.reference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.reference!, (value) {
      return _then(_value.copyWith(reference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractContextImplCopyWith<$Res>
    implements $ContractContextCopyWith<$Res> {
  factory _$$ContractContextImplCopyWith(_$ContractContextImpl value,
          $Res Function(_$ContractContextImpl) then) =
      __$$ContractContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? reference,
      List<CodeableConcept>? code,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});

  @override
  $ReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class __$$ContractContextImplCopyWithImpl<$Res>
    extends _$ContractContextCopyWithImpl<$Res, _$ContractContextImpl>
    implements _$$ContractContextImplCopyWith<$Res> {
  __$$ContractContextImplCopyWithImpl(
      _$ContractContextImpl _value, $Res Function(_$ContractContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = freezed,
    Object? code = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_$ContractContextImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractContextImpl extends _ContractContext {
  const _$ContractContextImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.reference,
      final List<CodeableConcept>? code,
      this.text,
      @JsonKey(name: '_text') this.textElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _code = code,
        super._();

  factory _$ContractContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractContextImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reference] Asset context reference may include the creator, custodian,
  /// or owning Person or Organization (e.g., bank, repository),  location held,
  ///  e.g., building,  jurisdiction.
  @override
  final Reference? reference;

  /// [code] Coded representation of the context generally or of the Referenced
  ///  entity, such as the asset holder type or location.
  final List<CodeableConcept>? _code;

  /// [code] Coded representation of the context generally or of the Referenced
  ///  entity, such as the asset holder type or location.
  @override
  List<CodeableConcept>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [text] Context description.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  @override
  String toString() {
    return 'ContractContext(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, reference: $reference, code: $code, text: $text, textElement: $textElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractContextImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      reference,
      const DeepCollectionEquality().hash(_code),
      text,
      textElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractContextImplCopyWith<_$ContractContextImpl> get copyWith =>
      __$$ContractContextImplCopyWithImpl<_$ContractContextImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractContextImplToJson(
      this,
    );
  }
}

abstract class _ContractContext extends ContractContext {
  const factory _ContractContext(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final Reference? reference,
          final List<CodeableConcept>? code,
          final String? text,
          @JsonKey(name: '_text') final PrimitiveElement? textElement}) =
      _$ContractContextImpl;
  const _ContractContext._() : super._();

  factory _ContractContext.fromJson(Map<String, dynamic> json) =
      _$ContractContextImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [reference] Asset context reference may include the creator, custodian,
  /// or owning Person or Organization (e.g., bank, repository),  location held,
  ///  e.g., building,  jurisdiction.
  Reference? get reference;
  @override

  /// [code] Coded representation of the context generally or of the Referenced
  ///  entity, such as the asset holder type or location.
  List<CodeableConcept>? get code;
  @override

  /// [text] Context description.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override
  @JsonKey(ignore: true)
  _$$ContractContextImplCopyWith<_$ContractContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractValuedItem _$ContractValuedItemFromJson(Map<String, dynamic> json) {
  return _ContractValuedItem.fromJson(json);
}

/// @nodoc
mixin _$ContractValuedItem {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [entityCodeableConcept] Specific type of Contract Valued Item that may be
  ///  priced.
  CodeableConcept? get entityCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [entityReference] Specific type of Contract Valued Item that may be
  ///  priced.
  Reference? get entityReference => throw _privateConstructorUsedError;

  /// [identifier] Identifies a Contract Valued Item instance.
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [effectiveTime] Indicates the time during which this Contract ValuedItem
  ///  information is effective.
  FhirDateTime? get effectiveTime => throw _privateConstructorUsedError;

  /// [effectiveTimeElement] Extensions for effectiveTime
  @JsonKey(name: '_effectiveTime')
  PrimitiveElement? get effectiveTimeElement =>
      throw _privateConstructorUsedError;

  /// [quantity] Specifies the units by which the Contract Valued Item is
  /// measured or counted, and quantifies the countable or measurable Contract
  ///  Valued Item instances.
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [unitPrice] A Contract Valued Item unit valuation measure.
  Money? get unitPrice => throw _privateConstructorUsedError;

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of the Contract Valued Item delivered. The concept of a
  /// Factor allows for a discount or surcharge multiplier to be applied to a
  ///  monetary amount.
  FhirDecimal? get factor => throw _privateConstructorUsedError;

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  PrimitiveElement? get factorElement => throw _privateConstructorUsedError;

  /// [points] An amount that expresses the weighting (based on difficulty,
  /// cost and/or resource intensiveness) associated with the Contract Valued
  /// Item delivered. The concept of Points allows for assignment of point
  /// values for a Contract Valued Item, such that a monetary amount can be
  ///  assigned to each point.
  FhirDecimal? get points => throw _privateConstructorUsedError;

  /// [pointsElement] Extensions for points
  @JsonKey(name: '_points')
  PrimitiveElement? get pointsElement => throw _privateConstructorUsedError;

  /// [net] Expresses the product of the Contract Valued Item unitQuantity and
  /// the unitPriceAmt. For example, the formula: unit Quantity * unit Price
  /// (Cost per Point) * factor Number  * points = net Amount. Quantity, factor
  ///  and points are assumed to be 1 if not supplied.
  Money? get net => throw _privateConstructorUsedError;

  /// [payment] Terms of valuation.
  String? get payment => throw _privateConstructorUsedError;

  /// [paymentElement] Extensions for payment
  @JsonKey(name: '_payment')
  PrimitiveElement? get paymentElement => throw _privateConstructorUsedError;

  /// [paymentDate] When payment is due.
  FhirDateTime? get paymentDate => throw _privateConstructorUsedError;

  /// [paymentDateElement] Extensions for paymentDate
  @JsonKey(name: '_paymentDate')
  PrimitiveElement? get paymentDateElement =>
      throw _privateConstructorUsedError;

  /// [responsible] Who will make payment.
  Reference? get responsible => throw _privateConstructorUsedError;

  /// [recipient] Who will receive payment.
  Reference? get recipient => throw _privateConstructorUsedError;

  /// [linkId] Id  of the clause or question text related to the context of
  ///  this valuedItem in the referenced form or QuestionnaireResponse.
  List<String>? get linkId => throw _privateConstructorUsedError;

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement => throw _privateConstructorUsedError;

  /// [securityLabelNumber] A set of security labels that define which terms
  ///  are controlled by this condition.
  List<FhirUnsignedInt>? get securityLabelNumber =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractValuedItemCopyWith<ContractValuedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractValuedItemCopyWith<$Res> {
  factory $ContractValuedItemCopyWith(
          ContractValuedItem value, $Res Function(ContractValuedItem) then) =
      _$ContractValuedItemCopyWithImpl<$Res, ContractValuedItem>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? entityCodeableConcept,
      Reference? entityReference,
      Identifier? identifier,
      FhirDateTime? effectiveTime,
      @JsonKey(name: '_effectiveTime') PrimitiveElement? effectiveTimeElement,
      Quantity? quantity,
      Money? unitPrice,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') PrimitiveElement? factorElement,
      FhirDecimal? points,
      @JsonKey(name: '_points') PrimitiveElement? pointsElement,
      Money? net,
      String? payment,
      @JsonKey(name: '_payment') PrimitiveElement? paymentElement,
      FhirDateTime? paymentDate,
      @JsonKey(name: '_paymentDate') PrimitiveElement? paymentDateElement,
      Reference? responsible,
      Reference? recipient,
      List<String>? linkId,
      @JsonKey(name: '_linkId') List<Element?>? linkIdElement,
      List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      List<Element>? securityLabelNumberElement});

  $CodeableConceptCopyWith<$Res>? get entityCodeableConcept;
  $ReferenceCopyWith<$Res>? get entityReference;
  $IdentifierCopyWith<$Res>? get identifier;
  $QuantityCopyWith<$Res>? get quantity;
  $MoneyCopyWith<$Res>? get unitPrice;
  $MoneyCopyWith<$Res>? get net;
  $ReferenceCopyWith<$Res>? get responsible;
  $ReferenceCopyWith<$Res>? get recipient;
}

/// @nodoc
class _$ContractValuedItemCopyWithImpl<$Res, $Val extends ContractValuedItem>
    implements $ContractValuedItemCopyWith<$Res> {
  _$ContractValuedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? entityCodeableConcept = freezed,
    Object? entityReference = freezed,
    Object? identifier = freezed,
    Object? effectiveTime = freezed,
    Object? effectiveTimeElement = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? points = freezed,
    Object? pointsElement = freezed,
    Object? net = freezed,
    Object? payment = freezed,
    Object? paymentElement = freezed,
    Object? paymentDate = freezed,
    Object? paymentDateElement = freezed,
    Object? responsible = freezed,
    Object? recipient = freezed,
    Object? linkId = freezed,
    Object? linkIdElement = freezed,
    Object? securityLabelNumber = freezed,
    Object? securityLabelNumberElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      entityCodeableConcept: freezed == entityCodeableConcept
          ? _value.entityCodeableConcept
          : entityCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      entityReference: freezed == entityReference
          ? _value.entityReference
          : entityReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      effectiveTime: freezed == effectiveTime
          ? _value.effectiveTime
          : effectiveTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      effectiveTimeElement: freezed == effectiveTimeElement
          ? _value.effectiveTimeElement
          : effectiveTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      pointsElement: freezed == pointsElement
          ? _value.pointsElement
          : pointsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as Money?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentElement: freezed == paymentElement
          ? _value.paymentElement
          : paymentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      paymentDateElement: freezed == paymentDateElement
          ? _value.paymentDateElement
          : paymentDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      responsible: freezed == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as Reference?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Reference?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      linkIdElement: freezed == linkIdElement
          ? _value.linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      securityLabelNumber: freezed == securityLabelNumber
          ? _value.securityLabelNumber
          : securityLabelNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      securityLabelNumberElement: freezed == securityLabelNumberElement
          ? _value.securityLabelNumberElement
          : securityLabelNumberElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get entityCodeableConcept {
    if (_value.entityCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.entityCodeableConcept!,
        (value) {
      return _then(_value.copyWith(entityCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get entityReference {
    if (_value.entityReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.entityReference!, (value) {
      return _then(_value.copyWith(entityReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get identifier {
    if (_value.identifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.identifier!, (value) {
      return _then(_value.copyWith(identifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get unitPrice {
    if (_value.unitPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.unitPrice!, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get net {
    if (_value.net == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.net!, (value) {
      return _then(_value.copyWith(net: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get responsible {
    if (_value.responsible == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.responsible!, (value) {
      return _then(_value.copyWith(responsible: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get recipient {
    if (_value.recipient == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.recipient!, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractValuedItemImplCopyWith<$Res>
    implements $ContractValuedItemCopyWith<$Res> {
  factory _$$ContractValuedItemImplCopyWith(_$ContractValuedItemImpl value,
          $Res Function(_$ContractValuedItemImpl) then) =
      __$$ContractValuedItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? entityCodeableConcept,
      Reference? entityReference,
      Identifier? identifier,
      FhirDateTime? effectiveTime,
      @JsonKey(name: '_effectiveTime') PrimitiveElement? effectiveTimeElement,
      Quantity? quantity,
      Money? unitPrice,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') PrimitiveElement? factorElement,
      FhirDecimal? points,
      @JsonKey(name: '_points') PrimitiveElement? pointsElement,
      Money? net,
      String? payment,
      @JsonKey(name: '_payment') PrimitiveElement? paymentElement,
      FhirDateTime? paymentDate,
      @JsonKey(name: '_paymentDate') PrimitiveElement? paymentDateElement,
      Reference? responsible,
      Reference? recipient,
      List<String>? linkId,
      @JsonKey(name: '_linkId') List<Element?>? linkIdElement,
      List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      List<Element>? securityLabelNumberElement});

  @override
  $CodeableConceptCopyWith<$Res>? get entityCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get entityReference;
  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $MoneyCopyWith<$Res>? get unitPrice;
  @override
  $MoneyCopyWith<$Res>? get net;
  @override
  $ReferenceCopyWith<$Res>? get responsible;
  @override
  $ReferenceCopyWith<$Res>? get recipient;
}

/// @nodoc
class __$$ContractValuedItemImplCopyWithImpl<$Res>
    extends _$ContractValuedItemCopyWithImpl<$Res, _$ContractValuedItemImpl>
    implements _$$ContractValuedItemImplCopyWith<$Res> {
  __$$ContractValuedItemImplCopyWithImpl(_$ContractValuedItemImpl _value,
      $Res Function(_$ContractValuedItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? entityCodeableConcept = freezed,
    Object? entityReference = freezed,
    Object? identifier = freezed,
    Object? effectiveTime = freezed,
    Object? effectiveTimeElement = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? points = freezed,
    Object? pointsElement = freezed,
    Object? net = freezed,
    Object? payment = freezed,
    Object? paymentElement = freezed,
    Object? paymentDate = freezed,
    Object? paymentDateElement = freezed,
    Object? responsible = freezed,
    Object? recipient = freezed,
    Object? linkId = freezed,
    Object? linkIdElement = freezed,
    Object? securityLabelNumber = freezed,
    Object? securityLabelNumberElement = freezed,
  }) {
    return _then(_$ContractValuedItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      entityCodeableConcept: freezed == entityCodeableConcept
          ? _value.entityCodeableConcept
          : entityCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      entityReference: freezed == entityReference
          ? _value.entityReference
          : entityReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      effectiveTime: freezed == effectiveTime
          ? _value.effectiveTime
          : effectiveTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      effectiveTimeElement: freezed == effectiveTimeElement
          ? _value.effectiveTimeElement
          : effectiveTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      pointsElement: freezed == pointsElement
          ? _value.pointsElement
          : pointsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as Money?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentElement: freezed == paymentElement
          ? _value.paymentElement
          : paymentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      paymentDateElement: freezed == paymentDateElement
          ? _value.paymentDateElement
          : paymentDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      responsible: freezed == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as Reference?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Reference?,
      linkId: freezed == linkId
          ? _value._linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      linkIdElement: freezed == linkIdElement
          ? _value._linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      securityLabelNumber: freezed == securityLabelNumber
          ? _value._securityLabelNumber
          : securityLabelNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      securityLabelNumberElement: freezed == securityLabelNumberElement
          ? _value._securityLabelNumberElement
          : securityLabelNumberElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractValuedItemImpl extends _ContractValuedItem {
  const _$ContractValuedItemImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.entityCodeableConcept,
      this.entityReference,
      this.identifier,
      this.effectiveTime,
      @JsonKey(name: '_effectiveTime') this.effectiveTimeElement,
      this.quantity,
      this.unitPrice,
      this.factor,
      @JsonKey(name: '_factor') this.factorElement,
      this.points,
      @JsonKey(name: '_points') this.pointsElement,
      this.net,
      this.payment,
      @JsonKey(name: '_payment') this.paymentElement,
      this.paymentDate,
      @JsonKey(name: '_paymentDate') this.paymentDateElement,
      this.responsible,
      this.recipient,
      final List<String>? linkId,
      @JsonKey(name: '_linkId') final List<Element?>? linkIdElement,
      final List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      final List<Element>? securityLabelNumberElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _linkId = linkId,
        _linkIdElement = linkIdElement,
        _securityLabelNumber = securityLabelNumber,
        _securityLabelNumberElement = securityLabelNumberElement,
        super._();

  factory _$ContractValuedItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractValuedItemImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [entityCodeableConcept] Specific type of Contract Valued Item that may be
  ///  priced.
  @override
  final CodeableConcept? entityCodeableConcept;

  /// [entityReference] Specific type of Contract Valued Item that may be
  ///  priced.
  @override
  final Reference? entityReference;

  /// [identifier] Identifies a Contract Valued Item instance.
  @override
  final Identifier? identifier;

  /// [effectiveTime] Indicates the time during which this Contract ValuedItem
  ///  information is effective.
  @override
  final FhirDateTime? effectiveTime;

  /// [effectiveTimeElement] Extensions for effectiveTime
  @override
  @JsonKey(name: '_effectiveTime')
  final PrimitiveElement? effectiveTimeElement;

  /// [quantity] Specifies the units by which the Contract Valued Item is
  /// measured or counted, and quantifies the countable or measurable Contract
  ///  Valued Item instances.
  @override
  final Quantity? quantity;

  /// [unitPrice] A Contract Valued Item unit valuation measure.
  @override
  final Money? unitPrice;

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of the Contract Valued Item delivered. The concept of a
  /// Factor allows for a discount or surcharge multiplier to be applied to a
  ///  monetary amount.
  @override
  final FhirDecimal? factor;

  /// [factorElement] Extensions for factor
  @override
  @JsonKey(name: '_factor')
  final PrimitiveElement? factorElement;

  /// [points] An amount that expresses the weighting (based on difficulty,
  /// cost and/or resource intensiveness) associated with the Contract Valued
  /// Item delivered. The concept of Points allows for assignment of point
  /// values for a Contract Valued Item, such that a monetary amount can be
  ///  assigned to each point.
  @override
  final FhirDecimal? points;

  /// [pointsElement] Extensions for points
  @override
  @JsonKey(name: '_points')
  final PrimitiveElement? pointsElement;

  /// [net] Expresses the product of the Contract Valued Item unitQuantity and
  /// the unitPriceAmt. For example, the formula: unit Quantity * unit Price
  /// (Cost per Point) * factor Number  * points = net Amount. Quantity, factor
  ///  and points are assumed to be 1 if not supplied.
  @override
  final Money? net;

  /// [payment] Terms of valuation.
  @override
  final String? payment;

  /// [paymentElement] Extensions for payment
  @override
  @JsonKey(name: '_payment')
  final PrimitiveElement? paymentElement;

  /// [paymentDate] When payment is due.
  @override
  final FhirDateTime? paymentDate;

  /// [paymentDateElement] Extensions for paymentDate
  @override
  @JsonKey(name: '_paymentDate')
  final PrimitiveElement? paymentDateElement;

  /// [responsible] Who will make payment.
  @override
  final Reference? responsible;

  /// [recipient] Who will receive payment.
  @override
  final Reference? recipient;

  /// [linkId] Id  of the clause or question text related to the context of
  ///  this valuedItem in the referenced form or QuestionnaireResponse.
  final List<String>? _linkId;

  /// [linkId] Id  of the clause or question text related to the context of
  ///  this valuedItem in the referenced form or QuestionnaireResponse.
  @override
  List<String>? get linkId {
    final value = _linkId;
    if (value == null) return null;
    if (_linkId is EqualUnmodifiableListView) return _linkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [linkIdElement] Extensions for linkId
  final List<Element?>? _linkIdElement;

  /// [linkIdElement] Extensions for linkId
  @override
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement {
    final value = _linkIdElement;
    if (value == null) return null;
    if (_linkIdElement is EqualUnmodifiableListView) return _linkIdElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [securityLabelNumber] A set of security labels that define which terms
  ///  are controlled by this condition.
  final List<FhirUnsignedInt>? _securityLabelNumber;

  /// [securityLabelNumber] A set of security labels that define which terms
  ///  are controlled by this condition.
  @override
  List<FhirUnsignedInt>? get securityLabelNumber {
    final value = _securityLabelNumber;
    if (value == null) return null;
    if (_securityLabelNumber is EqualUnmodifiableListView)
      return _securityLabelNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Element>? _securityLabelNumberElement;
  @override
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement {
    final value = _securityLabelNumberElement;
    if (value == null) return null;
    if (_securityLabelNumberElement is EqualUnmodifiableListView)
      return _securityLabelNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContractValuedItem(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, entityCodeableConcept: $entityCodeableConcept, entityReference: $entityReference, identifier: $identifier, effectiveTime: $effectiveTime, effectiveTimeElement: $effectiveTimeElement, quantity: $quantity, unitPrice: $unitPrice, factor: $factor, factorElement: $factorElement, points: $points, pointsElement: $pointsElement, net: $net, payment: $payment, paymentElement: $paymentElement, paymentDate: $paymentDate, paymentDateElement: $paymentDateElement, responsible: $responsible, recipient: $recipient, linkId: $linkId, linkIdElement: $linkIdElement, securityLabelNumber: $securityLabelNumber, securityLabelNumberElement: $securityLabelNumberElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractValuedItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.entityCodeableConcept, entityCodeableConcept) ||
                other.entityCodeableConcept == entityCodeableConcept) &&
            (identical(other.entityReference, entityReference) ||
                other.entityReference == entityReference) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.effectiveTime, effectiveTime) ||
                other.effectiveTime == effectiveTime) &&
            (identical(other.effectiveTimeElement, effectiveTimeElement) ||
                other.effectiveTimeElement == effectiveTimeElement) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.factorElement, factorElement) ||
                other.factorElement == factorElement) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.pointsElement, pointsElement) ||
                other.pointsElement == pointsElement) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.paymentElement, paymentElement) ||
                other.paymentElement == paymentElement) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.paymentDateElement, paymentDateElement) ||
                other.paymentDateElement == paymentDateElement) &&
            (identical(other.responsible, responsible) ||
                other.responsible == responsible) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            const DeepCollectionEquality().equals(other._linkId, _linkId) &&
            const DeepCollectionEquality()
                .equals(other._linkIdElement, _linkIdElement) &&
            const DeepCollectionEquality()
                .equals(other._securityLabelNumber, _securityLabelNumber) &&
            const DeepCollectionEquality().equals(
                other._securityLabelNumberElement,
                _securityLabelNumberElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        entityCodeableConcept,
        entityReference,
        identifier,
        effectiveTime,
        effectiveTimeElement,
        quantity,
        unitPrice,
        factor,
        factorElement,
        points,
        pointsElement,
        net,
        payment,
        paymentElement,
        paymentDate,
        paymentDateElement,
        responsible,
        recipient,
        const DeepCollectionEquality().hash(_linkId),
        const DeepCollectionEquality().hash(_linkIdElement),
        const DeepCollectionEquality().hash(_securityLabelNumber),
        const DeepCollectionEquality().hash(_securityLabelNumberElement)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractValuedItemImplCopyWith<_$ContractValuedItemImpl> get copyWith =>
      __$$ContractValuedItemImplCopyWithImpl<_$ContractValuedItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractValuedItemImplToJson(
      this,
    );
  }
}

abstract class _ContractValuedItem extends ContractValuedItem {
  const factory _ContractValuedItem(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? entityCodeableConcept,
      final Reference? entityReference,
      final Identifier? identifier,
      final FhirDateTime? effectiveTime,
      @JsonKey(name: '_effectiveTime')
      final PrimitiveElement? effectiveTimeElement,
      final Quantity? quantity,
      final Money? unitPrice,
      final FhirDecimal? factor,
      @JsonKey(name: '_factor') final PrimitiveElement? factorElement,
      final FhirDecimal? points,
      @JsonKey(name: '_points') final PrimitiveElement? pointsElement,
      final Money? net,
      final String? payment,
      @JsonKey(name: '_payment') final PrimitiveElement? paymentElement,
      final FhirDateTime? paymentDate,
      @JsonKey(name: '_paymentDate') final PrimitiveElement? paymentDateElement,
      final Reference? responsible,
      final Reference? recipient,
      final List<String>? linkId,
      @JsonKey(name: '_linkId') final List<Element?>? linkIdElement,
      final List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      final List<Element>?
          securityLabelNumberElement}) = _$ContractValuedItemImpl;
  const _ContractValuedItem._() : super._();

  factory _ContractValuedItem.fromJson(Map<String, dynamic> json) =
      _$ContractValuedItemImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [entityCodeableConcept] Specific type of Contract Valued Item that may be
  ///  priced.
  CodeableConcept? get entityCodeableConcept;
  @override

  /// [entityReference] Specific type of Contract Valued Item that may be
  ///  priced.
  Reference? get entityReference;
  @override

  /// [identifier] Identifies a Contract Valued Item instance.
  Identifier? get identifier;
  @override

  /// [effectiveTime] Indicates the time during which this Contract ValuedItem
  ///  information is effective.
  FhirDateTime? get effectiveTime;
  @override

  /// [effectiveTimeElement] Extensions for effectiveTime
  @JsonKey(name: '_effectiveTime')
  PrimitiveElement? get effectiveTimeElement;
  @override

  /// [quantity] Specifies the units by which the Contract Valued Item is
  /// measured or counted, and quantifies the countable or measurable Contract
  ///  Valued Item instances.
  Quantity? get quantity;
  @override

  /// [unitPrice] A Contract Valued Item unit valuation measure.
  Money? get unitPrice;
  @override

  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of the Contract Valued Item delivered. The concept of a
  /// Factor allows for a discount or surcharge multiplier to be applied to a
  ///  monetary amount.
  FhirDecimal? get factor;
  @override

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  PrimitiveElement? get factorElement;
  @override

  /// [points] An amount that expresses the weighting (based on difficulty,
  /// cost and/or resource intensiveness) associated with the Contract Valued
  /// Item delivered. The concept of Points allows for assignment of point
  /// values for a Contract Valued Item, such that a monetary amount can be
  ///  assigned to each point.
  FhirDecimal? get points;
  @override

  /// [pointsElement] Extensions for points
  @JsonKey(name: '_points')
  PrimitiveElement? get pointsElement;
  @override

  /// [net] Expresses the product of the Contract Valued Item unitQuantity and
  /// the unitPriceAmt. For example, the formula: unit Quantity * unit Price
  /// (Cost per Point) * factor Number  * points = net Amount. Quantity, factor
  ///  and points are assumed to be 1 if not supplied.
  Money? get net;
  @override

  /// [payment] Terms of valuation.
  String? get payment;
  @override

  /// [paymentElement] Extensions for payment
  @JsonKey(name: '_payment')
  PrimitiveElement? get paymentElement;
  @override

  /// [paymentDate] When payment is due.
  FhirDateTime? get paymentDate;
  @override

  /// [paymentDateElement] Extensions for paymentDate
  @JsonKey(name: '_paymentDate')
  PrimitiveElement? get paymentDateElement;
  @override

  /// [responsible] Who will make payment.
  Reference? get responsible;
  @override

  /// [recipient] Who will receive payment.
  Reference? get recipient;
  @override

  /// [linkId] Id  of the clause or question text related to the context of
  ///  this valuedItem in the referenced form or QuestionnaireResponse.
  List<String>? get linkId;
  @override

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement;
  @override

  /// [securityLabelNumber] A set of security labels that define which terms
  ///  are controlled by this condition.
  List<FhirUnsignedInt>? get securityLabelNumber;
  @override
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement;
  @override
  @JsonKey(ignore: true)
  _$$ContractValuedItemImplCopyWith<_$ContractValuedItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractAction _$ContractActionFromJson(Map<String, dynamic> json) {
  return _ContractAction.fromJson(json);
}

/// @nodoc
mixin _$ContractAction {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [doNotPerform] True if the term prohibits the  action.
  FhirBoolean? get doNotPerform => throw _privateConstructorUsedError;

  /// [doNotPerformElement] Extensions for doNotPerform
  @JsonKey(name: '_doNotPerform')
  PrimitiveElement? get doNotPerformElement =>
      throw _privateConstructorUsedError;

  /// [type] Activity or service obligation to be done or not done, performed
  ///  or not performed, effectuated or not by this Contract term.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [subject] Entity of the action.
  List<ContractSubject>? get subject => throw _privateConstructorUsedError;

  /// [intent] Reason or purpose for the action stipulated by this Contract
  ///  Provision.
  CodeableConcept get intent => throw _privateConstructorUsedError;

  /// [linkId] Id [Identifier]?? of the clause or question text related to this
  ///  action in the referenced form or QuestionnaireResponse.
  List<String>? get linkId => throw _privateConstructorUsedError;

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement => throw _privateConstructorUsedError;

  /// [status] Current state of the term action.
  CodeableConcept get status => throw _privateConstructorUsedError;

  /// [context] Encounter or Episode with primary association to specified term
  ///  activity.
  Reference? get context => throw _privateConstructorUsedError;

  /// [contextLinkId] Id [Identifier]?? of the clause or question text related
  /// to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  List<String>? get contextLinkId => throw _privateConstructorUsedError;

  /// [contextLinkIdElement] Extensions for contextLinkId
  @JsonKey(name: '_contextLinkId')
  List<Element?>? get contextLinkIdElement =>
      throw _privateConstructorUsedError;

  /// [occurrenceDateTime] When action happens.
  FhirDateTime? get occurrenceDateTime => throw _privateConstructorUsedError;

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @JsonKey(name: '_occurrenceDateTime')
  PrimitiveElement? get occurrenceDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [occurrencePeriod] When action happens.
  Period? get occurrencePeriod => throw _privateConstructorUsedError;

  /// [occurrenceTiming] When action happens.
  Timing? get occurrenceTiming => throw _privateConstructorUsedError;

  /// [requester] Who or what initiated the action and has responsibility for
  ///  its activation.
  List<Reference>? get requester => throw _privateConstructorUsedError;

  /// [requesterLinkId] Id [Identifier]?? of the clause or question text
  /// related to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  List<String>? get requesterLinkId => throw _privateConstructorUsedError;

  /// [requesterLinkIdElement] Extensions for requesterLinkId
  @JsonKey(name: '_requesterLinkId')
  List<Element?>? get requesterLinkIdElement =>
      throw _privateConstructorUsedError;

  /// [performerType] The type of individual that is desired or required to
  ///  perform or not perform the action.
  List<CodeableConcept>? get performerType =>
      throw _privateConstructorUsedError;

  /// [performerRole] The type of role or competency of an individual desired
  ///  or required to perform or not perform the action.
  CodeableConcept? get performerRole => throw _privateConstructorUsedError;

  /// [performer] Indicates who or what is being asked to perform (or not
  ///  perform) the ction.
  Reference? get performer => throw _privateConstructorUsedError;

  /// [performerLinkId] Id [Identifier]?? of the clause or question text
  /// related to the reason type or reference of this  action in the referenced
  ///  form or QuestionnaireResponse.
  List<String>? get performerLinkId => throw _privateConstructorUsedError;

  /// [performerLinkIdElement] Extensions for performerLinkId
  @JsonKey(name: '_performerLinkId')
  List<Element?>? get performerLinkIdElement =>
      throw _privateConstructorUsedError;

  /// [reasonCode] Rationale for the action to be performed or not performed.
  ///  Describes why the action is permitted or prohibited.
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;

  /// [reasonReference] Indicates another resource whose existence justifies
  ///  permitting or not permitting this action.
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;

  /// [reason] Describes why the action is to be performed or not performed in
  ///  textual form.
  List<String>? get reason => throw _privateConstructorUsedError;

  /// [reasonElement] Extensions for reason
  @JsonKey(name: '_reason')
  List<Element?>? get reasonElement => throw _privateConstructorUsedError;

  /// [reasonLinkId] Id [Identifier]?? of the clause or question text related
  /// to the reason type or reference of this  action in the referenced form or
  ///  QuestionnaireResponse.
  List<String>? get reasonLinkId => throw _privateConstructorUsedError;

  /// [reasonLinkIdElement] Extensions for reasonLinkId
  @JsonKey(name: '_reasonLinkId')
  List<Element?>? get reasonLinkIdElement => throw _privateConstructorUsedError;

  /// [note] Comments made about the term action made by the requester,
  ///  performer, subject or other participants.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// [securityLabelNumber] Security labels that protects the action.
  List<FhirUnsignedInt>? get securityLabelNumber =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractActionCopyWith<ContractAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractActionCopyWith<$Res> {
  factory $ContractActionCopyWith(
          ContractAction value, $Res Function(ContractAction) then) =
      _$ContractActionCopyWithImpl<$Res, ContractAction>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? doNotPerform,
      @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
      CodeableConcept type,
      List<ContractSubject>? subject,
      CodeableConcept intent,
      List<String>? linkId,
      @JsonKey(name: '_linkId') List<Element?>? linkIdElement,
      CodeableConcept status,
      Reference? context,
      List<String>? contextLinkId,
      @JsonKey(name: '_contextLinkId') List<Element?>? contextLinkIdElement,
      FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      PrimitiveElement? occurrenceDateTimeElement,
      Period? occurrencePeriod,
      Timing? occurrenceTiming,
      List<Reference>? requester,
      List<String>? requesterLinkId,
      @JsonKey(name: '_requesterLinkId') List<Element?>? requesterLinkIdElement,
      List<CodeableConcept>? performerType,
      CodeableConcept? performerRole,
      Reference? performer,
      List<String>? performerLinkId,
      @JsonKey(name: '_performerLinkId') List<Element?>? performerLinkIdElement,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<String>? reason,
      @JsonKey(name: '_reason') List<Element?>? reasonElement,
      List<String>? reasonLinkId,
      @JsonKey(name: '_reasonLinkId') List<Element?>? reasonLinkIdElement,
      List<Annotation>? note,
      List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      List<Element>? securityLabelNumberElement});

  $CodeableConceptCopyWith<$Res> get type;
  $CodeableConceptCopyWith<$Res> get intent;
  $CodeableConceptCopyWith<$Res> get status;
  $ReferenceCopyWith<$Res>? get context;
  $PeriodCopyWith<$Res>? get occurrencePeriod;
  $TimingCopyWith<$Res>? get occurrenceTiming;
  $CodeableConceptCopyWith<$Res>? get performerRole;
  $ReferenceCopyWith<$Res>? get performer;
}

/// @nodoc
class _$ContractActionCopyWithImpl<$Res, $Val extends ContractAction>
    implements $ContractActionCopyWith<$Res> {
  _$ContractActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? doNotPerform = freezed,
    Object? doNotPerformElement = freezed,
    Object? type = null,
    Object? subject = freezed,
    Object? intent = null,
    Object? linkId = freezed,
    Object? linkIdElement = freezed,
    Object? status = null,
    Object? context = freezed,
    Object? contextLinkId = freezed,
    Object? contextLinkIdElement = freezed,
    Object? occurrenceDateTime = freezed,
    Object? occurrenceDateTimeElement = freezed,
    Object? occurrencePeriod = freezed,
    Object? occurrenceTiming = freezed,
    Object? requester = freezed,
    Object? requesterLinkId = freezed,
    Object? requesterLinkIdElement = freezed,
    Object? performerType = freezed,
    Object? performerRole = freezed,
    Object? performer = freezed,
    Object? performerLinkId = freezed,
    Object? performerLinkIdElement = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? reason = freezed,
    Object? reasonElement = freezed,
    Object? reasonLinkId = freezed,
    Object? reasonLinkIdElement = freezed,
    Object? note = freezed,
    Object? securityLabelNumber = freezed,
    Object? securityLabelNumberElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      doNotPerform: freezed == doNotPerform
          ? _value.doNotPerform
          : doNotPerform // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      doNotPerformElement: freezed == doNotPerformElement
          ? _value.doNotPerformElement
          : doNotPerformElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<ContractSubject>?,
      intent: null == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      linkIdElement: freezed == linkIdElement
          ? _value.linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contextLinkId: freezed == contextLinkId
          ? _value.contextLinkId
          : contextLinkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contextLinkIdElement: freezed == contextLinkIdElement
          ? _value.contextLinkIdElement
          : contextLinkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      occurrenceDateTime: freezed == occurrenceDateTime
          ? _value.occurrenceDateTime
          : occurrenceDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      occurrenceDateTimeElement: freezed == occurrenceDateTimeElement
          ? _value.occurrenceDateTimeElement
          : occurrenceDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      occurrencePeriod: freezed == occurrencePeriod
          ? _value.occurrencePeriod
          : occurrencePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      occurrenceTiming: freezed == occurrenceTiming
          ? _value.occurrenceTiming
          : occurrenceTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      requester: freezed == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      requesterLinkId: freezed == requesterLinkId
          ? _value.requesterLinkId
          : requesterLinkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      requesterLinkIdElement: freezed == requesterLinkIdElement
          ? _value.requesterLinkIdElement
          : requesterLinkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      performerType: freezed == performerType
          ? _value.performerType
          : performerType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      performerRole: freezed == performerRole
          ? _value.performerRole
          : performerRole // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      performerLinkId: freezed == performerLinkId
          ? _value.performerLinkId
          : performerLinkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      performerLinkIdElement: freezed == performerLinkIdElement
          ? _value.performerLinkIdElement
          : performerLinkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      reasonCode: freezed == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value.reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reasonElement: freezed == reasonElement
          ? _value.reasonElement
          : reasonElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      reasonLinkId: freezed == reasonLinkId
          ? _value.reasonLinkId
          : reasonLinkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reasonLinkIdElement: freezed == reasonLinkIdElement
          ? _value.reasonLinkIdElement
          : reasonLinkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      securityLabelNumber: freezed == securityLabelNumber
          ? _value.securityLabelNumber
          : securityLabelNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      securityLabelNumberElement: freezed == securityLabelNumberElement
          ? _value.securityLabelNumberElement
          : securityLabelNumberElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get intent {
    return $CodeableConceptCopyWith<$Res>(_value.intent, (value) {
      return _then(_value.copyWith(intent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get status {
    return $CodeableConceptCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get occurrencePeriod {
    if (_value.occurrencePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.occurrencePeriod!, (value) {
      return _then(_value.copyWith(occurrencePeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get occurrenceTiming {
    if (_value.occurrenceTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.occurrenceTiming!, (value) {
      return _then(_value.copyWith(occurrenceTiming: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get performerRole {
    if (_value.performerRole == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.performerRole!, (value) {
      return _then(_value.copyWith(performerRole: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get performer {
    if (_value.performer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.performer!, (value) {
      return _then(_value.copyWith(performer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractActionImplCopyWith<$Res>
    implements $ContractActionCopyWith<$Res> {
  factory _$$ContractActionImplCopyWith(_$ContractActionImpl value,
          $Res Function(_$ContractActionImpl) then) =
      __$$ContractActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? doNotPerform,
      @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
      CodeableConcept type,
      List<ContractSubject>? subject,
      CodeableConcept intent,
      List<String>? linkId,
      @JsonKey(name: '_linkId') List<Element?>? linkIdElement,
      CodeableConcept status,
      Reference? context,
      List<String>? contextLinkId,
      @JsonKey(name: '_contextLinkId') List<Element?>? contextLinkIdElement,
      FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      PrimitiveElement? occurrenceDateTimeElement,
      Period? occurrencePeriod,
      Timing? occurrenceTiming,
      List<Reference>? requester,
      List<String>? requesterLinkId,
      @JsonKey(name: '_requesterLinkId') List<Element?>? requesterLinkIdElement,
      List<CodeableConcept>? performerType,
      CodeableConcept? performerRole,
      Reference? performer,
      List<String>? performerLinkId,
      @JsonKey(name: '_performerLinkId') List<Element?>? performerLinkIdElement,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<String>? reason,
      @JsonKey(name: '_reason') List<Element?>? reasonElement,
      List<String>? reasonLinkId,
      @JsonKey(name: '_reasonLinkId') List<Element?>? reasonLinkIdElement,
      List<Annotation>? note,
      List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      List<Element>? securityLabelNumberElement});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $CodeableConceptCopyWith<$Res> get intent;
  @override
  $CodeableConceptCopyWith<$Res> get status;
  @override
  $ReferenceCopyWith<$Res>? get context;
  @override
  $PeriodCopyWith<$Res>? get occurrencePeriod;
  @override
  $TimingCopyWith<$Res>? get occurrenceTiming;
  @override
  $CodeableConceptCopyWith<$Res>? get performerRole;
  @override
  $ReferenceCopyWith<$Res>? get performer;
}

/// @nodoc
class __$$ContractActionImplCopyWithImpl<$Res>
    extends _$ContractActionCopyWithImpl<$Res, _$ContractActionImpl>
    implements _$$ContractActionImplCopyWith<$Res> {
  __$$ContractActionImplCopyWithImpl(
      _$ContractActionImpl _value, $Res Function(_$ContractActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? doNotPerform = freezed,
    Object? doNotPerformElement = freezed,
    Object? type = null,
    Object? subject = freezed,
    Object? intent = null,
    Object? linkId = freezed,
    Object? linkIdElement = freezed,
    Object? status = null,
    Object? context = freezed,
    Object? contextLinkId = freezed,
    Object? contextLinkIdElement = freezed,
    Object? occurrenceDateTime = freezed,
    Object? occurrenceDateTimeElement = freezed,
    Object? occurrencePeriod = freezed,
    Object? occurrenceTiming = freezed,
    Object? requester = freezed,
    Object? requesterLinkId = freezed,
    Object? requesterLinkIdElement = freezed,
    Object? performerType = freezed,
    Object? performerRole = freezed,
    Object? performer = freezed,
    Object? performerLinkId = freezed,
    Object? performerLinkIdElement = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? reason = freezed,
    Object? reasonElement = freezed,
    Object? reasonLinkId = freezed,
    Object? reasonLinkIdElement = freezed,
    Object? note = freezed,
    Object? securityLabelNumber = freezed,
    Object? securityLabelNumberElement = freezed,
  }) {
    return _then(_$ContractActionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      doNotPerform: freezed == doNotPerform
          ? _value.doNotPerform
          : doNotPerform // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      doNotPerformElement: freezed == doNotPerformElement
          ? _value.doNotPerformElement
          : doNotPerformElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      subject: freezed == subject
          ? _value._subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<ContractSubject>?,
      intent: null == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      linkId: freezed == linkId
          ? _value._linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      linkIdElement: freezed == linkIdElement
          ? _value._linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contextLinkId: freezed == contextLinkId
          ? _value._contextLinkId
          : contextLinkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contextLinkIdElement: freezed == contextLinkIdElement
          ? _value._contextLinkIdElement
          : contextLinkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      occurrenceDateTime: freezed == occurrenceDateTime
          ? _value.occurrenceDateTime
          : occurrenceDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      occurrenceDateTimeElement: freezed == occurrenceDateTimeElement
          ? _value.occurrenceDateTimeElement
          : occurrenceDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      occurrencePeriod: freezed == occurrencePeriod
          ? _value.occurrencePeriod
          : occurrencePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      occurrenceTiming: freezed == occurrenceTiming
          ? _value.occurrenceTiming
          : occurrenceTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      requester: freezed == requester
          ? _value._requester
          : requester // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      requesterLinkId: freezed == requesterLinkId
          ? _value._requesterLinkId
          : requesterLinkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      requesterLinkIdElement: freezed == requesterLinkIdElement
          ? _value._requesterLinkIdElement
          : requesterLinkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      performerType: freezed == performerType
          ? _value._performerType
          : performerType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      performerRole: freezed == performerRole
          ? _value.performerRole
          : performerRole // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      performerLinkId: freezed == performerLinkId
          ? _value._performerLinkId
          : performerLinkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      performerLinkIdElement: freezed == performerLinkIdElement
          ? _value._performerLinkIdElement
          : performerLinkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      reasonCode: freezed == reasonCode
          ? _value._reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value._reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      reason: freezed == reason
          ? _value._reason
          : reason // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reasonElement: freezed == reasonElement
          ? _value._reasonElement
          : reasonElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      reasonLinkId: freezed == reasonLinkId
          ? _value._reasonLinkId
          : reasonLinkId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reasonLinkIdElement: freezed == reasonLinkIdElement
          ? _value._reasonLinkIdElement
          : reasonLinkIdElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      securityLabelNumber: freezed == securityLabelNumber
          ? _value._securityLabelNumber
          : securityLabelNumber // ignore: cast_nullable_to_non_nullable
              as List<FhirUnsignedInt>?,
      securityLabelNumberElement: freezed == securityLabelNumberElement
          ? _value._securityLabelNumberElement
          : securityLabelNumberElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractActionImpl extends _ContractAction {
  const _$ContractActionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.doNotPerform,
      @JsonKey(name: '_doNotPerform') this.doNotPerformElement,
      required this.type,
      final List<ContractSubject>? subject,
      required this.intent,
      final List<String>? linkId,
      @JsonKey(name: '_linkId') final List<Element?>? linkIdElement,
      required this.status,
      this.context,
      final List<String>? contextLinkId,
      @JsonKey(name: '_contextLinkId')
      final List<Element?>? contextLinkIdElement,
      this.occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime') this.occurrenceDateTimeElement,
      this.occurrencePeriod,
      this.occurrenceTiming,
      final List<Reference>? requester,
      final List<String>? requesterLinkId,
      @JsonKey(name: '_requesterLinkId')
      final List<Element?>? requesterLinkIdElement,
      final List<CodeableConcept>? performerType,
      this.performerRole,
      this.performer,
      final List<String>? performerLinkId,
      @JsonKey(name: '_performerLinkId')
      final List<Element?>? performerLinkIdElement,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<String>? reason,
      @JsonKey(name: '_reason') final List<Element?>? reasonElement,
      final List<String>? reasonLinkId,
      @JsonKey(name: '_reasonLinkId') final List<Element?>? reasonLinkIdElement,
      final List<Annotation>? note,
      final List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      final List<Element>? securityLabelNumberElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _subject = subject,
        _linkId = linkId,
        _linkIdElement = linkIdElement,
        _contextLinkId = contextLinkId,
        _contextLinkIdElement = contextLinkIdElement,
        _requester = requester,
        _requesterLinkId = requesterLinkId,
        _requesterLinkIdElement = requesterLinkIdElement,
        _performerType = performerType,
        _performerLinkId = performerLinkId,
        _performerLinkIdElement = performerLinkIdElement,
        _reasonCode = reasonCode,
        _reasonReference = reasonReference,
        _reason = reason,
        _reasonElement = reasonElement,
        _reasonLinkId = reasonLinkId,
        _reasonLinkIdElement = reasonLinkIdElement,
        _note = note,
        _securityLabelNumber = securityLabelNumber,
        _securityLabelNumberElement = securityLabelNumberElement,
        super._();

  factory _$ContractActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractActionImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [doNotPerform] True if the term prohibits the  action.
  @override
  final FhirBoolean? doNotPerform;

  /// [doNotPerformElement] Extensions for doNotPerform
  @override
  @JsonKey(name: '_doNotPerform')
  final PrimitiveElement? doNotPerformElement;

  /// [type] Activity or service obligation to be done or not done, performed
  ///  or not performed, effectuated or not by this Contract term.
  @override
  final CodeableConcept type;

  /// [subject] Entity of the action.
  final List<ContractSubject>? _subject;

  /// [subject] Entity of the action.
  @override
  List<ContractSubject>? get subject {
    final value = _subject;
    if (value == null) return null;
    if (_subject is EqualUnmodifiableListView) return _subject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [intent] Reason or purpose for the action stipulated by this Contract
  ///  Provision.
  @override
  final CodeableConcept intent;

  /// [linkId] Id [Identifier]?? of the clause or question text related to this
  ///  action in the referenced form or QuestionnaireResponse.
  final List<String>? _linkId;

  /// [linkId] Id [Identifier]?? of the clause or question text related to this
  ///  action in the referenced form or QuestionnaireResponse.
  @override
  List<String>? get linkId {
    final value = _linkId;
    if (value == null) return null;
    if (_linkId is EqualUnmodifiableListView) return _linkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [linkIdElement] Extensions for linkId
  final List<Element?>? _linkIdElement;

  /// [linkIdElement] Extensions for linkId
  @override
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement {
    final value = _linkIdElement;
    if (value == null) return null;
    if (_linkIdElement is EqualUnmodifiableListView) return _linkIdElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Current state of the term action.
  @override
  final CodeableConcept status;

  /// [context] Encounter or Episode with primary association to specified term
  ///  activity.
  @override
  final Reference? context;

  /// [contextLinkId] Id [Identifier]?? of the clause or question text related
  /// to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  final List<String>? _contextLinkId;

  /// [contextLinkId] Id [Identifier]?? of the clause or question text related
  /// to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  @override
  List<String>? get contextLinkId {
    final value = _contextLinkId;
    if (value == null) return null;
    if (_contextLinkId is EqualUnmodifiableListView) return _contextLinkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contextLinkIdElement] Extensions for contextLinkId
  final List<Element?>? _contextLinkIdElement;

  /// [contextLinkIdElement] Extensions for contextLinkId
  @override
  @JsonKey(name: '_contextLinkId')
  List<Element?>? get contextLinkIdElement {
    final value = _contextLinkIdElement;
    if (value == null) return null;
    if (_contextLinkIdElement is EqualUnmodifiableListView)
      return _contextLinkIdElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [occurrenceDateTime] When action happens.
  @override
  final FhirDateTime? occurrenceDateTime;

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @override
  @JsonKey(name: '_occurrenceDateTime')
  final PrimitiveElement? occurrenceDateTimeElement;

  /// [occurrencePeriod] When action happens.
  @override
  final Period? occurrencePeriod;

  /// [occurrenceTiming] When action happens.
  @override
  final Timing? occurrenceTiming;

  /// [requester] Who or what initiated the action and has responsibility for
  ///  its activation.
  final List<Reference>? _requester;

  /// [requester] Who or what initiated the action and has responsibility for
  ///  its activation.
  @override
  List<Reference>? get requester {
    final value = _requester;
    if (value == null) return null;
    if (_requester is EqualUnmodifiableListView) return _requester;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [requesterLinkId] Id [Identifier]?? of the clause or question text
  /// related to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  final List<String>? _requesterLinkId;

  /// [requesterLinkId] Id [Identifier]?? of the clause or question text
  /// related to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  @override
  List<String>? get requesterLinkId {
    final value = _requesterLinkId;
    if (value == null) return null;
    if (_requesterLinkId is EqualUnmodifiableListView) return _requesterLinkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [requesterLinkIdElement] Extensions for requesterLinkId
  final List<Element?>? _requesterLinkIdElement;

  /// [requesterLinkIdElement] Extensions for requesterLinkId
  @override
  @JsonKey(name: '_requesterLinkId')
  List<Element?>? get requesterLinkIdElement {
    final value = _requesterLinkIdElement;
    if (value == null) return null;
    if (_requesterLinkIdElement is EqualUnmodifiableListView)
      return _requesterLinkIdElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [performerType] The type of individual that is desired or required to
  ///  perform or not perform the action.
  final List<CodeableConcept>? _performerType;

  /// [performerType] The type of individual that is desired or required to
  ///  perform or not perform the action.
  @override
  List<CodeableConcept>? get performerType {
    final value = _performerType;
    if (value == null) return null;
    if (_performerType is EqualUnmodifiableListView) return _performerType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [performerRole] The type of role or competency of an individual desired
  ///  or required to perform or not perform the action.
  @override
  final CodeableConcept? performerRole;

  /// [performer] Indicates who or what is being asked to perform (or not
  ///  perform) the ction.
  @override
  final Reference? performer;

  /// [performerLinkId] Id [Identifier]?? of the clause or question text
  /// related to the reason type or reference of this  action in the referenced
  ///  form or QuestionnaireResponse.
  final List<String>? _performerLinkId;

  /// [performerLinkId] Id [Identifier]?? of the clause or question text
  /// related to the reason type or reference of this  action in the referenced
  ///  form or QuestionnaireResponse.
  @override
  List<String>? get performerLinkId {
    final value = _performerLinkId;
    if (value == null) return null;
    if (_performerLinkId is EqualUnmodifiableListView) return _performerLinkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [performerLinkIdElement] Extensions for performerLinkId
  final List<Element?>? _performerLinkIdElement;

  /// [performerLinkIdElement] Extensions for performerLinkId
  @override
  @JsonKey(name: '_performerLinkId')
  List<Element?>? get performerLinkIdElement {
    final value = _performerLinkIdElement;
    if (value == null) return null;
    if (_performerLinkIdElement is EqualUnmodifiableListView)
      return _performerLinkIdElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonCode] Rationale for the action to be performed or not performed.
  ///  Describes why the action is permitted or prohibited.
  final List<CodeableConcept>? _reasonCode;

  /// [reasonCode] Rationale for the action to be performed or not performed.
  ///  Describes why the action is permitted or prohibited.
  @override
  List<CodeableConcept>? get reasonCode {
    final value = _reasonCode;
    if (value == null) return null;
    if (_reasonCode is EqualUnmodifiableListView) return _reasonCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonReference] Indicates another resource whose existence justifies
  ///  permitting or not permitting this action.
  final List<Reference>? _reasonReference;

  /// [reasonReference] Indicates another resource whose existence justifies
  ///  permitting or not permitting this action.
  @override
  List<Reference>? get reasonReference {
    final value = _reasonReference;
    if (value == null) return null;
    if (_reasonReference is EqualUnmodifiableListView) return _reasonReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reason] Describes why the action is to be performed or not performed in
  ///  textual form.
  final List<String>? _reason;

  /// [reason] Describes why the action is to be performed or not performed in
  ///  textual form.
  @override
  List<String>? get reason {
    final value = _reason;
    if (value == null) return null;
    if (_reason is EqualUnmodifiableListView) return _reason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonElement] Extensions for reason
  final List<Element?>? _reasonElement;

  /// [reasonElement] Extensions for reason
  @override
  @JsonKey(name: '_reason')
  List<Element?>? get reasonElement {
    final value = _reasonElement;
    if (value == null) return null;
    if (_reasonElement is EqualUnmodifiableListView) return _reasonElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonLinkId] Id [Identifier]?? of the clause or question text related
  /// to the reason type or reference of this  action in the referenced form or
  ///  QuestionnaireResponse.
  final List<String>? _reasonLinkId;

  /// [reasonLinkId] Id [Identifier]?? of the clause or question text related
  /// to the reason type or reference of this  action in the referenced form or
  ///  QuestionnaireResponse.
  @override
  List<String>? get reasonLinkId {
    final value = _reasonLinkId;
    if (value == null) return null;
    if (_reasonLinkId is EqualUnmodifiableListView) return _reasonLinkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonLinkIdElement] Extensions for reasonLinkId
  final List<Element?>? _reasonLinkIdElement;

  /// [reasonLinkIdElement] Extensions for reasonLinkId
  @override
  @JsonKey(name: '_reasonLinkId')
  List<Element?>? get reasonLinkIdElement {
    final value = _reasonLinkIdElement;
    if (value == null) return null;
    if (_reasonLinkIdElement is EqualUnmodifiableListView)
      return _reasonLinkIdElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [note] Comments made about the term action made by the requester,
  ///  performer, subject or other participants.
  final List<Annotation>? _note;

  /// [note] Comments made about the term action made by the requester,
  ///  performer, subject or other participants.
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [securityLabelNumber] Security labels that protects the action.
  final List<FhirUnsignedInt>? _securityLabelNumber;

  /// [securityLabelNumber] Security labels that protects the action.
  @override
  List<FhirUnsignedInt>? get securityLabelNumber {
    final value = _securityLabelNumber;
    if (value == null) return null;
    if (_securityLabelNumber is EqualUnmodifiableListView)
      return _securityLabelNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Element>? _securityLabelNumberElement;
  @override
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement {
    final value = _securityLabelNumberElement;
    if (value == null) return null;
    if (_securityLabelNumberElement is EqualUnmodifiableListView)
      return _securityLabelNumberElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContractAction(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, doNotPerform: $doNotPerform, doNotPerformElement: $doNotPerformElement, type: $type, subject: $subject, intent: $intent, linkId: $linkId, linkIdElement: $linkIdElement, status: $status, context: $context, contextLinkId: $contextLinkId, contextLinkIdElement: $contextLinkIdElement, occurrenceDateTime: $occurrenceDateTime, occurrenceDateTimeElement: $occurrenceDateTimeElement, occurrencePeriod: $occurrencePeriod, occurrenceTiming: $occurrenceTiming, requester: $requester, requesterLinkId: $requesterLinkId, requesterLinkIdElement: $requesterLinkIdElement, performerType: $performerType, performerRole: $performerRole, performer: $performer, performerLinkId: $performerLinkId, performerLinkIdElement: $performerLinkIdElement, reasonCode: $reasonCode, reasonReference: $reasonReference, reason: $reason, reasonElement: $reasonElement, reasonLinkId: $reasonLinkId, reasonLinkIdElement: $reasonLinkIdElement, note: $note, securityLabelNumber: $securityLabelNumber, securityLabelNumberElement: $securityLabelNumberElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractActionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.doNotPerform, doNotPerform) ||
                other.doNotPerform == doNotPerform) &&
            (identical(other.doNotPerformElement, doNotPerformElement) ||
                other.doNotPerformElement == doNotPerformElement) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._subject, _subject) &&
            (identical(other.intent, intent) || other.intent == intent) &&
            const DeepCollectionEquality().equals(other._linkId, _linkId) &&
            const DeepCollectionEquality()
                .equals(other._linkIdElement, _linkIdElement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality()
                .equals(other._contextLinkId, _contextLinkId) &&
            const DeepCollectionEquality()
                .equals(other._contextLinkIdElement, _contextLinkIdElement) &&
            (identical(other.occurrenceDateTime, occurrenceDateTime) ||
                other.occurrenceDateTime == occurrenceDateTime) &&
            (identical(other.occurrenceDateTimeElement,
                    occurrenceDateTimeElement) ||
                other.occurrenceDateTimeElement == occurrenceDateTimeElement) &&
            (identical(other.occurrencePeriod, occurrencePeriod) ||
                other.occurrencePeriod == occurrencePeriod) &&
            (identical(other.occurrenceTiming, occurrenceTiming) ||
                other.occurrenceTiming == occurrenceTiming) &&
            const DeepCollectionEquality()
                .equals(other._requester, _requester) &&
            const DeepCollectionEquality()
                .equals(other._requesterLinkId, _requesterLinkId) &&
            const DeepCollectionEquality().equals(
                other._requesterLinkIdElement, _requesterLinkIdElement) &&
            const DeepCollectionEquality()
                .equals(other._performerType, _performerType) &&
            (identical(other.performerRole, performerRole) ||
                other.performerRole == performerRole) &&
            (identical(other.performer, performer) ||
                other.performer == performer) &&
            const DeepCollectionEquality()
                .equals(other._performerLinkId, _performerLinkId) &&
            const DeepCollectionEquality().equals(
                other._performerLinkIdElement, _performerLinkIdElement) &&
            const DeepCollectionEquality()
                .equals(other._reasonCode, _reasonCode) &&
            const DeepCollectionEquality()
                .equals(other._reasonReference, _reasonReference) &&
            const DeepCollectionEquality().equals(other._reason, _reason) &&
            const DeepCollectionEquality()
                .equals(other._reasonElement, _reasonElement) &&
            const DeepCollectionEquality()
                .equals(other._reasonLinkId, _reasonLinkId) &&
            const DeepCollectionEquality()
                .equals(other._reasonLinkIdElement, _reasonLinkIdElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._securityLabelNumber, _securityLabelNumber) &&
            const DeepCollectionEquality().equals(
                other._securityLabelNumberElement,
                _securityLabelNumberElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        doNotPerform,
        doNotPerformElement,
        type,
        const DeepCollectionEquality().hash(_subject),
        intent,
        const DeepCollectionEquality().hash(_linkId),
        const DeepCollectionEquality().hash(_linkIdElement),
        status,
        context,
        const DeepCollectionEquality().hash(_contextLinkId),
        const DeepCollectionEquality().hash(_contextLinkIdElement),
        occurrenceDateTime,
        occurrenceDateTimeElement,
        occurrencePeriod,
        occurrenceTiming,
        const DeepCollectionEquality().hash(_requester),
        const DeepCollectionEquality().hash(_requesterLinkId),
        const DeepCollectionEquality().hash(_requesterLinkIdElement),
        const DeepCollectionEquality().hash(_performerType),
        performerRole,
        performer,
        const DeepCollectionEquality().hash(_performerLinkId),
        const DeepCollectionEquality().hash(_performerLinkIdElement),
        const DeepCollectionEquality().hash(_reasonCode),
        const DeepCollectionEquality().hash(_reasonReference),
        const DeepCollectionEquality().hash(_reason),
        const DeepCollectionEquality().hash(_reasonElement),
        const DeepCollectionEquality().hash(_reasonLinkId),
        const DeepCollectionEquality().hash(_reasonLinkIdElement),
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_securityLabelNumber),
        const DeepCollectionEquality().hash(_securityLabelNumberElement)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractActionImplCopyWith<_$ContractActionImpl> get copyWith =>
      __$$ContractActionImplCopyWithImpl<_$ContractActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractActionImplToJson(
      this,
    );
  }
}

abstract class _ContractAction extends ContractAction {
  const factory _ContractAction(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirBoolean? doNotPerform,
      @JsonKey(name: '_doNotPerform')
      final PrimitiveElement? doNotPerformElement,
      required final CodeableConcept type,
      final List<ContractSubject>? subject,
      required final CodeableConcept intent,
      final List<String>? linkId,
      @JsonKey(name: '_linkId') final List<Element?>? linkIdElement,
      required final CodeableConcept status,
      final Reference? context,
      final List<String>? contextLinkId,
      @JsonKey(name: '_contextLinkId')
      final List<Element?>? contextLinkIdElement,
      final FhirDateTime? occurrenceDateTime,
      @JsonKey(name: '_occurrenceDateTime')
      final PrimitiveElement? occurrenceDateTimeElement,
      final Period? occurrencePeriod,
      final Timing? occurrenceTiming,
      final List<Reference>? requester,
      final List<String>? requesterLinkId,
      @JsonKey(name: '_requesterLinkId')
      final List<Element?>? requesterLinkIdElement,
      final List<CodeableConcept>? performerType,
      final CodeableConcept? performerRole,
      final Reference? performer,
      final List<String>? performerLinkId,
      @JsonKey(name: '_performerLinkId')
      final List<Element?>? performerLinkIdElement,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<String>? reason,
      @JsonKey(name: '_reason') final List<Element?>? reasonElement,
      final List<String>? reasonLinkId,
      @JsonKey(name: '_reasonLinkId') final List<Element?>? reasonLinkIdElement,
      final List<Annotation>? note,
      final List<FhirUnsignedInt>? securityLabelNumber,
      @JsonKey(name: '_securityLabelNumber')
      final List<Element>? securityLabelNumberElement}) = _$ContractActionImpl;
  const _ContractAction._() : super._();

  factory _ContractAction.fromJson(Map<String, dynamic> json) =
      _$ContractActionImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [doNotPerform] True if the term prohibits the  action.
  FhirBoolean? get doNotPerform;
  @override

  /// [doNotPerformElement] Extensions for doNotPerform
  @JsonKey(name: '_doNotPerform')
  PrimitiveElement? get doNotPerformElement;
  @override

  /// [type] Activity or service obligation to be done or not done, performed
  ///  or not performed, effectuated or not by this Contract term.
  CodeableConcept get type;
  @override

  /// [subject] Entity of the action.
  List<ContractSubject>? get subject;
  @override

  /// [intent] Reason or purpose for the action stipulated by this Contract
  ///  Provision.
  CodeableConcept get intent;
  @override

  /// [linkId] Id [Identifier]?? of the clause or question text related to this
  ///  action in the referenced form or QuestionnaireResponse.
  List<String>? get linkId;
  @override

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  List<Element?>? get linkIdElement;
  @override

  /// [status] Current state of the term action.
  CodeableConcept get status;
  @override

  /// [context] Encounter or Episode with primary association to specified term
  ///  activity.
  Reference? get context;
  @override

  /// [contextLinkId] Id [Identifier]?? of the clause or question text related
  /// to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  List<String>? get contextLinkId;
  @override

  /// [contextLinkIdElement] Extensions for contextLinkId
  @JsonKey(name: '_contextLinkId')
  List<Element?>? get contextLinkIdElement;
  @override

  /// [occurrenceDateTime] When action happens.
  FhirDateTime? get occurrenceDateTime;
  @override

  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  @JsonKey(name: '_occurrenceDateTime')
  PrimitiveElement? get occurrenceDateTimeElement;
  @override

  /// [occurrencePeriod] When action happens.
  Period? get occurrencePeriod;
  @override

  /// [occurrenceTiming] When action happens.
  Timing? get occurrenceTiming;
  @override

  /// [requester] Who or what initiated the action and has responsibility for
  ///  its activation.
  List<Reference>? get requester;
  @override

  /// [requesterLinkId] Id [Identifier]?? of the clause or question text
  /// related to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  List<String>? get requesterLinkId;
  @override

  /// [requesterLinkIdElement] Extensions for requesterLinkId
  @JsonKey(name: '_requesterLinkId')
  List<Element?>? get requesterLinkIdElement;
  @override

  /// [performerType] The type of individual that is desired or required to
  ///  perform or not perform the action.
  List<CodeableConcept>? get performerType;
  @override

  /// [performerRole] The type of role or competency of an individual desired
  ///  or required to perform or not perform the action.
  CodeableConcept? get performerRole;
  @override

  /// [performer] Indicates who or what is being asked to perform (or not
  ///  perform) the ction.
  Reference? get performer;
  @override

  /// [performerLinkId] Id [Identifier]?? of the clause or question text
  /// related to the reason type or reference of this  action in the referenced
  ///  form or QuestionnaireResponse.
  List<String>? get performerLinkId;
  @override

  /// [performerLinkIdElement] Extensions for performerLinkId
  @JsonKey(name: '_performerLinkId')
  List<Element?>? get performerLinkIdElement;
  @override

  /// [reasonCode] Rationale for the action to be performed or not performed.
  ///  Describes why the action is permitted or prohibited.
  List<CodeableConcept>? get reasonCode;
  @override

  /// [reasonReference] Indicates another resource whose existence justifies
  ///  permitting or not permitting this action.
  List<Reference>? get reasonReference;
  @override

  /// [reason] Describes why the action is to be performed or not performed in
  ///  textual form.
  List<String>? get reason;
  @override

  /// [reasonElement] Extensions for reason
  @JsonKey(name: '_reason')
  List<Element?>? get reasonElement;
  @override

  /// [reasonLinkId] Id [Identifier]?? of the clause or question text related
  /// to the reason type or reference of this  action in the referenced form or
  ///  QuestionnaireResponse.
  List<String>? get reasonLinkId;
  @override

  /// [reasonLinkIdElement] Extensions for reasonLinkId
  @JsonKey(name: '_reasonLinkId')
  List<Element?>? get reasonLinkIdElement;
  @override

  /// [note] Comments made about the term action made by the requester,
  ///  performer, subject or other participants.
  List<Annotation>? get note;
  @override

  /// [securityLabelNumber] Security labels that protects the action.
  List<FhirUnsignedInt>? get securityLabelNumber;
  @override
  @JsonKey(name: '_securityLabelNumber')
  List<Element>? get securityLabelNumberElement;
  @override
  @JsonKey(ignore: true)
  _$$ContractActionImplCopyWith<_$ContractActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractSubject _$ContractSubjectFromJson(Map<String, dynamic> json) {
  return _ContractSubject.fromJson(json);
}

/// @nodoc
mixin _$ContractSubject {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [reference] The entity the action is performed or not performed on or
  ///  for.
  List<Reference> get reference => throw _privateConstructorUsedError;

  /// [role] Role type of agent assigned roles in this Contract.
  CodeableConcept? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractSubjectCopyWith<ContractSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractSubjectCopyWith<$Res> {
  factory $ContractSubjectCopyWith(
          ContractSubject value, $Res Function(ContractSubject) then) =
      _$ContractSubjectCopyWithImpl<$Res, ContractSubject>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Reference> reference,
      CodeableConcept? role});

  $CodeableConceptCopyWith<$Res>? get role;
}

/// @nodoc
class _$ContractSubjectCopyWithImpl<$Res, $Val extends ContractSubject>
    implements $ContractSubjectCopyWith<$Res> {
  _$ContractSubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = null,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractSubjectImplCopyWith<$Res>
    implements $ContractSubjectCopyWith<$Res> {
  factory _$$ContractSubjectImplCopyWith(_$ContractSubjectImpl value,
          $Res Function(_$ContractSubjectImpl) then) =
      __$$ContractSubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Reference> reference,
      CodeableConcept? role});

  @override
  $CodeableConceptCopyWith<$Res>? get role;
}

/// @nodoc
class __$$ContractSubjectImplCopyWithImpl<$Res>
    extends _$ContractSubjectCopyWithImpl<$Res, _$ContractSubjectImpl>
    implements _$$ContractSubjectImplCopyWith<$Res> {
  __$$ContractSubjectImplCopyWithImpl(
      _$ContractSubjectImpl _value, $Res Function(_$ContractSubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = null,
    Object? role = freezed,
  }) {
    return _then(_$ContractSubjectImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      reference: null == reference
          ? _value._reference
          : reference // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractSubjectImpl extends _ContractSubject {
  const _$ContractSubjectImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<Reference> reference,
      this.role})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _reference = reference,
        super._();

  factory _$ContractSubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractSubjectImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reference] The entity the action is performed or not performed on or
  ///  for.
  final List<Reference> _reference;

  /// [reference] The entity the action is performed or not performed on or
  ///  for.
  @override
  List<Reference> get reference {
    if (_reference is EqualUnmodifiableListView) return _reference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reference);
  }

  /// [role] Role type of agent assigned roles in this Contract.
  @override
  final CodeableConcept? role;

  @override
  String toString() {
    return 'ContractSubject(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, reference: $reference, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractSubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._reference, _reference) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_reference),
      role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractSubjectImplCopyWith<_$ContractSubjectImpl> get copyWith =>
      __$$ContractSubjectImplCopyWithImpl<_$ContractSubjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractSubjectImplToJson(
      this,
    );
  }
}

abstract class _ContractSubject extends ContractSubject {
  const factory _ContractSubject(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<Reference> reference,
      final CodeableConcept? role}) = _$ContractSubjectImpl;
  const _ContractSubject._() : super._();

  factory _ContractSubject.fromJson(Map<String, dynamic> json) =
      _$ContractSubjectImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [reference] The entity the action is performed or not performed on or
  ///  for.
  List<Reference> get reference;
  @override

  /// [role] Role type of agent assigned roles in this Contract.
  CodeableConcept? get role;
  @override
  @JsonKey(ignore: true)
  _$$ContractSubjectImplCopyWith<_$ContractSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractSigner _$ContractSignerFromJson(Map<String, dynamic> json) {
  return _ContractSigner.fromJson(json);
}

/// @nodoc
mixin _$ContractSigner {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Role of this Contract signer, e.g. notary, grantee.
  Coding get type => throw _privateConstructorUsedError;

  /// [party] Party which is a signator to this Contract.
  Reference get party => throw _privateConstructorUsedError;

  /// [signature] Legally binding Contract DSIG signature contents in Base64.
  List<Signature> get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractSignerCopyWith<ContractSigner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractSignerCopyWith<$Res> {
  factory $ContractSignerCopyWith(
          ContractSigner value, $Res Function(ContractSigner) then) =
      _$ContractSignerCopyWithImpl<$Res, ContractSigner>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Coding type,
      Reference party,
      List<Signature> signature});

  $CodingCopyWith<$Res> get type;
  $ReferenceCopyWith<$Res> get party;
}

/// @nodoc
class _$ContractSignerCopyWithImpl<$Res, $Val extends ContractSigner>
    implements $ContractSignerCopyWith<$Res> {
  _$ContractSignerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? party = null,
    Object? signature = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Coding,
      party: null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as Reference,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as List<Signature>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res> get type {
    return $CodingCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get party {
    return $ReferenceCopyWith<$Res>(_value.party, (value) {
      return _then(_value.copyWith(party: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractSignerImplCopyWith<$Res>
    implements $ContractSignerCopyWith<$Res> {
  factory _$$ContractSignerImplCopyWith(_$ContractSignerImpl value,
          $Res Function(_$ContractSignerImpl) then) =
      __$$ContractSignerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Coding type,
      Reference party,
      List<Signature> signature});

  @override
  $CodingCopyWith<$Res> get type;
  @override
  $ReferenceCopyWith<$Res> get party;
}

/// @nodoc
class __$$ContractSignerImplCopyWithImpl<$Res>
    extends _$ContractSignerCopyWithImpl<$Res, _$ContractSignerImpl>
    implements _$$ContractSignerImplCopyWith<$Res> {
  __$$ContractSignerImplCopyWithImpl(
      _$ContractSignerImpl _value, $Res Function(_$ContractSignerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? party = null,
    Object? signature = null,
  }) {
    return _then(_$ContractSignerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Coding,
      party: null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as Reference,
      signature: null == signature
          ? _value._signature
          : signature // ignore: cast_nullable_to_non_nullable
              as List<Signature>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractSignerImpl extends _ContractSigner {
  const _$ContractSignerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      required this.party,
      required final List<Signature> signature})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _signature = signature,
        super._();

  factory _$ContractSignerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractSignerImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Role of this Contract signer, e.g. notary, grantee.
  @override
  final Coding type;

  /// [party] Party which is a signator to this Contract.
  @override
  final Reference party;

  /// [signature] Legally binding Contract DSIG signature contents in Base64.
  final List<Signature> _signature;

  /// [signature] Legally binding Contract DSIG signature contents in Base64.
  @override
  List<Signature> get signature {
    if (_signature is EqualUnmodifiableListView) return _signature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signature);
  }

  @override
  String toString() {
    return 'ContractSigner(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, party: $party, signature: $signature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractSignerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.party, party) || other.party == party) &&
            const DeepCollectionEquality()
                .equals(other._signature, _signature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      party,
      const DeepCollectionEquality().hash(_signature));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractSignerImplCopyWith<_$ContractSignerImpl> get copyWith =>
      __$$ContractSignerImplCopyWithImpl<_$ContractSignerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractSignerImplToJson(
      this,
    );
  }
}

abstract class _ContractSigner extends ContractSigner {
  const factory _ContractSigner(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final Coding type,
      required final Reference party,
      required final List<Signature> signature}) = _$ContractSignerImpl;
  const _ContractSigner._() : super._();

  factory _ContractSigner.fromJson(Map<String, dynamic> json) =
      _$ContractSignerImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] Role of this Contract signer, e.g. notary, grantee.
  Coding get type;
  @override

  /// [party] Party which is a signator to this Contract.
  Reference get party;
  @override

  /// [signature] Legally binding Contract DSIG signature contents in Base64.
  List<Signature> get signature;
  @override
  @JsonKey(ignore: true)
  _$$ContractSignerImplCopyWith<_$ContractSignerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractFriendly _$ContractFriendlyFromJson(Map<String, dynamic> json) {
  return _ContractFriendly.fromJson(json);
}

/// @nodoc
mixin _$ContractFriendly {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [contentAttachment] Human readable rendering of this Contract in a format
  /// and representation intended to enhance comprehension and ensure
  ///  understandability.
  Attachment? get contentAttachment => throw _privateConstructorUsedError;

  /// [contentReference] Human readable rendering of this Contract in a format
  /// and representation intended to enhance comprehension and ensure
  ///  understandability.
  Reference? get contentReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractFriendlyCopyWith<ContractFriendly> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractFriendlyCopyWith<$Res> {
  factory $ContractFriendlyCopyWith(
          ContractFriendly value, $Res Function(ContractFriendly) then) =
      _$ContractFriendlyCopyWithImpl<$Res, ContractFriendly>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Attachment? contentAttachment,
      Reference? contentReference});

  $AttachmentCopyWith<$Res>? get contentAttachment;
  $ReferenceCopyWith<$Res>? get contentReference;
}

/// @nodoc
class _$ContractFriendlyCopyWithImpl<$Res, $Val extends ContractFriendly>
    implements $ContractFriendlyCopyWith<$Res> {
  _$ContractFriendlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? contentAttachment = freezed,
    Object? contentReference = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      contentAttachment: freezed == contentAttachment
          ? _value.contentAttachment
          : contentAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      contentReference: freezed == contentReference
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get contentAttachment {
    if (_value.contentAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.contentAttachment!, (value) {
      return _then(_value.copyWith(contentAttachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get contentReference {
    if (_value.contentReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.contentReference!, (value) {
      return _then(_value.copyWith(contentReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractFriendlyImplCopyWith<$Res>
    implements $ContractFriendlyCopyWith<$Res> {
  factory _$$ContractFriendlyImplCopyWith(_$ContractFriendlyImpl value,
          $Res Function(_$ContractFriendlyImpl) then) =
      __$$ContractFriendlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Attachment? contentAttachment,
      Reference? contentReference});

  @override
  $AttachmentCopyWith<$Res>? get contentAttachment;
  @override
  $ReferenceCopyWith<$Res>? get contentReference;
}

/// @nodoc
class __$$ContractFriendlyImplCopyWithImpl<$Res>
    extends _$ContractFriendlyCopyWithImpl<$Res, _$ContractFriendlyImpl>
    implements _$$ContractFriendlyImplCopyWith<$Res> {
  __$$ContractFriendlyImplCopyWithImpl(_$ContractFriendlyImpl _value,
      $Res Function(_$ContractFriendlyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? contentAttachment = freezed,
    Object? contentReference = freezed,
  }) {
    return _then(_$ContractFriendlyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      contentAttachment: freezed == contentAttachment
          ? _value.contentAttachment
          : contentAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      contentReference: freezed == contentReference
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractFriendlyImpl extends _ContractFriendly {
  const _$ContractFriendlyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.contentAttachment,
      this.contentReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ContractFriendlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractFriendlyImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contentAttachment] Human readable rendering of this Contract in a format
  /// and representation intended to enhance comprehension and ensure
  ///  understandability.
  @override
  final Attachment? contentAttachment;

  /// [contentReference] Human readable rendering of this Contract in a format
  /// and representation intended to enhance comprehension and ensure
  ///  understandability.
  @override
  final Reference? contentReference;

  @override
  String toString() {
    return 'ContractFriendly(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, contentAttachment: $contentAttachment, contentReference: $contentReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractFriendlyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.contentAttachment, contentAttachment) ||
                other.contentAttachment == contentAttachment) &&
            (identical(other.contentReference, contentReference) ||
                other.contentReference == contentReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      contentAttachment,
      contentReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractFriendlyImplCopyWith<_$ContractFriendlyImpl> get copyWith =>
      __$$ContractFriendlyImplCopyWithImpl<_$ContractFriendlyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractFriendlyImplToJson(
      this,
    );
  }
}

abstract class _ContractFriendly extends ContractFriendly {
  const factory _ContractFriendly(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Attachment? contentAttachment,
      final Reference? contentReference}) = _$ContractFriendlyImpl;
  const _ContractFriendly._() : super._();

  factory _ContractFriendly.fromJson(Map<String, dynamic> json) =
      _$ContractFriendlyImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [contentAttachment] Human readable rendering of this Contract in a format
  /// and representation intended to enhance comprehension and ensure
  ///  understandability.
  Attachment? get contentAttachment;
  @override

  /// [contentReference] Human readable rendering of this Contract in a format
  /// and representation intended to enhance comprehension and ensure
  ///  understandability.
  Reference? get contentReference;
  @override
  @JsonKey(ignore: true)
  _$$ContractFriendlyImplCopyWith<_$ContractFriendlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractLegal _$ContractLegalFromJson(Map<String, dynamic> json) {
  return _ContractLegal.fromJson(json);
}

/// @nodoc
mixin _$ContractLegal {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [contentAttachment] Contract legal text in human renderable form.
  Attachment? get contentAttachment => throw _privateConstructorUsedError;

  /// [contentReference] Contract legal text in human renderable form.
  Reference? get contentReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractLegalCopyWith<ContractLegal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractLegalCopyWith<$Res> {
  factory $ContractLegalCopyWith(
          ContractLegal value, $Res Function(ContractLegal) then) =
      _$ContractLegalCopyWithImpl<$Res, ContractLegal>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Attachment? contentAttachment,
      Reference? contentReference});

  $AttachmentCopyWith<$Res>? get contentAttachment;
  $ReferenceCopyWith<$Res>? get contentReference;
}

/// @nodoc
class _$ContractLegalCopyWithImpl<$Res, $Val extends ContractLegal>
    implements $ContractLegalCopyWith<$Res> {
  _$ContractLegalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? contentAttachment = freezed,
    Object? contentReference = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      contentAttachment: freezed == contentAttachment
          ? _value.contentAttachment
          : contentAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      contentReference: freezed == contentReference
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get contentAttachment {
    if (_value.contentAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.contentAttachment!, (value) {
      return _then(_value.copyWith(contentAttachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get contentReference {
    if (_value.contentReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.contentReference!, (value) {
      return _then(_value.copyWith(contentReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractLegalImplCopyWith<$Res>
    implements $ContractLegalCopyWith<$Res> {
  factory _$$ContractLegalImplCopyWith(
          _$ContractLegalImpl value, $Res Function(_$ContractLegalImpl) then) =
      __$$ContractLegalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Attachment? contentAttachment,
      Reference? contentReference});

  @override
  $AttachmentCopyWith<$Res>? get contentAttachment;
  @override
  $ReferenceCopyWith<$Res>? get contentReference;
}

/// @nodoc
class __$$ContractLegalImplCopyWithImpl<$Res>
    extends _$ContractLegalCopyWithImpl<$Res, _$ContractLegalImpl>
    implements _$$ContractLegalImplCopyWith<$Res> {
  __$$ContractLegalImplCopyWithImpl(
      _$ContractLegalImpl _value, $Res Function(_$ContractLegalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? contentAttachment = freezed,
    Object? contentReference = freezed,
  }) {
    return _then(_$ContractLegalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      contentAttachment: freezed == contentAttachment
          ? _value.contentAttachment
          : contentAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      contentReference: freezed == contentReference
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractLegalImpl extends _ContractLegal {
  const _$ContractLegalImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.contentAttachment,
      this.contentReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ContractLegalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractLegalImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contentAttachment] Contract legal text in human renderable form.
  @override
  final Attachment? contentAttachment;

  /// [contentReference] Contract legal text in human renderable form.
  @override
  final Reference? contentReference;

  @override
  String toString() {
    return 'ContractLegal(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, contentAttachment: $contentAttachment, contentReference: $contentReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractLegalImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.contentAttachment, contentAttachment) ||
                other.contentAttachment == contentAttachment) &&
            (identical(other.contentReference, contentReference) ||
                other.contentReference == contentReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      contentAttachment,
      contentReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractLegalImplCopyWith<_$ContractLegalImpl> get copyWith =>
      __$$ContractLegalImplCopyWithImpl<_$ContractLegalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractLegalImplToJson(
      this,
    );
  }
}

abstract class _ContractLegal extends ContractLegal {
  const factory _ContractLegal(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Attachment? contentAttachment,
      final Reference? contentReference}) = _$ContractLegalImpl;
  const _ContractLegal._() : super._();

  factory _ContractLegal.fromJson(Map<String, dynamic> json) =
      _$ContractLegalImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [contentAttachment] Contract legal text in human renderable form.
  Attachment? get contentAttachment;
  @override

  /// [contentReference] Contract legal text in human renderable form.
  Reference? get contentReference;
  @override
  @JsonKey(ignore: true)
  _$$ContractLegalImplCopyWith<_$ContractLegalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractRule _$ContractRuleFromJson(Map<String, dynamic> json) {
  return _ContractRule.fromJson(json);
}

/// @nodoc
mixin _$ContractRule {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [contentAttachment] Computable Contract conveyed using a policy rule
  ///  language (e.g. XACML, DKAL, SecPal).
  Attachment? get contentAttachment => throw _privateConstructorUsedError;

  /// [contentReference] Computable Contract conveyed using a policy rule
  ///  language (e.g. XACML, DKAL, SecPal).
  Reference? get contentReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractRuleCopyWith<ContractRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractRuleCopyWith<$Res> {
  factory $ContractRuleCopyWith(
          ContractRule value, $Res Function(ContractRule) then) =
      _$ContractRuleCopyWithImpl<$Res, ContractRule>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Attachment? contentAttachment,
      Reference? contentReference});

  $AttachmentCopyWith<$Res>? get contentAttachment;
  $ReferenceCopyWith<$Res>? get contentReference;
}

/// @nodoc
class _$ContractRuleCopyWithImpl<$Res, $Val extends ContractRule>
    implements $ContractRuleCopyWith<$Res> {
  _$ContractRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? contentAttachment = freezed,
    Object? contentReference = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      contentAttachment: freezed == contentAttachment
          ? _value.contentAttachment
          : contentAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      contentReference: freezed == contentReference
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get contentAttachment {
    if (_value.contentAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.contentAttachment!, (value) {
      return _then(_value.copyWith(contentAttachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get contentReference {
    if (_value.contentReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.contentReference!, (value) {
      return _then(_value.copyWith(contentReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractRuleImplCopyWith<$Res>
    implements $ContractRuleCopyWith<$Res> {
  factory _$$ContractRuleImplCopyWith(
          _$ContractRuleImpl value, $Res Function(_$ContractRuleImpl) then) =
      __$$ContractRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Attachment? contentAttachment,
      Reference? contentReference});

  @override
  $AttachmentCopyWith<$Res>? get contentAttachment;
  @override
  $ReferenceCopyWith<$Res>? get contentReference;
}

/// @nodoc
class __$$ContractRuleImplCopyWithImpl<$Res>
    extends _$ContractRuleCopyWithImpl<$Res, _$ContractRuleImpl>
    implements _$$ContractRuleImplCopyWith<$Res> {
  __$$ContractRuleImplCopyWithImpl(
      _$ContractRuleImpl _value, $Res Function(_$ContractRuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? contentAttachment = freezed,
    Object? contentReference = freezed,
  }) {
    return _then(_$ContractRuleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      contentAttachment: freezed == contentAttachment
          ? _value.contentAttachment
          : contentAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      contentReference: freezed == contentReference
          ? _value.contentReference
          : contentReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractRuleImpl extends _ContractRule {
  const _$ContractRuleImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.contentAttachment,
      this.contentReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ContractRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractRuleImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contentAttachment] Computable Contract conveyed using a policy rule
  ///  language (e.g. XACML, DKAL, SecPal).
  @override
  final Attachment? contentAttachment;

  /// [contentReference] Computable Contract conveyed using a policy rule
  ///  language (e.g. XACML, DKAL, SecPal).
  @override
  final Reference? contentReference;

  @override
  String toString() {
    return 'ContractRule(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, contentAttachment: $contentAttachment, contentReference: $contentReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractRuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.contentAttachment, contentAttachment) ||
                other.contentAttachment == contentAttachment) &&
            (identical(other.contentReference, contentReference) ||
                other.contentReference == contentReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      contentAttachment,
      contentReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractRuleImplCopyWith<_$ContractRuleImpl> get copyWith =>
      __$$ContractRuleImplCopyWithImpl<_$ContractRuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractRuleImplToJson(
      this,
    );
  }
}

abstract class _ContractRule extends ContractRule {
  const factory _ContractRule(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Attachment? contentAttachment,
      final Reference? contentReference}) = _$ContractRuleImpl;
  const _ContractRule._() : super._();

  factory _ContractRule.fromJson(Map<String, dynamic> json) =
      _$ContractRuleImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [contentAttachment] Computable Contract conveyed using a policy rule
  ///  language (e.g. XACML, DKAL, SecPal).
  Attachment? get contentAttachment;
  @override

  /// [contentReference] Computable Contract conveyed using a policy rule
  ///  language (e.g. XACML, DKAL, SecPal).
  Reference? get contentReference;
  @override
  @JsonKey(ignore: true)
  _$$ContractRuleImplCopyWith<_$ContractRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
