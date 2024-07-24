// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'contract.freezed.dart';
part 'contract.g.dart';

/// [Contract] Legally enforceable, formally recorded unilateral or bilateral
@freezed
class Contract with _$Contract implements DomainResource {
  /// [Contract] Legally enforceable, formally recorded unilateral or bilateral
  const Contract._();

  /// [Contract] Legally enforceable, formally recorded unilateral or bilateral
  ///  directive i.e., a policy or agreement.
  ///
  /// [resourceType] This is a Contract resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
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
  ///
  /// [identifier] Unique identifier for this Contract or a derivative that
  ///  references a Source Contract.
  ///
  /// [url] Canonical identifier for this contract, represented as a URI
  ///  (globally unique).
  ///
  /// [urlElement] Extensions for url
  ///
  /// [version] An edition identifier used for business purposes to label
  ///  business significant variants.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [status] The status of the resource instance.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [legalState] Legal states of the formation of a legal instrument, which
  /// is a formally executed written document that can be formally attributed to
  /// its author, records and formally expresses a legally enforceable act,
  /// process, or contractual duty, obligation, or right, and therefore
  ///  evidences that act, process, or agreement.
  ///
  /// [instantiatesCanonical] The URL pointing to a FHIR-defined Contract
  ///  Definition that is adhered to in whole or part by this Contract.
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained definition
  ///  that is adhered to in whole or in part by this Contract.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [contentDerivative] The minimal content derived from the basal
  ///  information source at a specific stage in its lifecycle.
  ///
  /// [issued] When this  Contract was issued.
  ///
  /// [issuedElement] Extensions for issued
  ///
  /// [applies] Relevant time or time-period when this Contract is applicable.
  ///
  /// [expirationType] Event resulting in discontinuation or termination of
  ///  this Contract instance by one or more parties to the contract.
  ///
  /// [subject] The target entity impacted by or of interest to parties to the
  ///  agreement.
  ///
  /// [authority] A formally or informally recognized grouping of people,
  /// principals, organizations, or jurisdictions formed for the purpose of
  /// achieving some form of collective action such as the promulgation,
  ///  administration and enforcement of contracts and policies.
  ///
  /// [domain] Recognized governance framework or system operating with a
  /// circumscribed scope in accordance with specified principles, policies,
  /// processes or procedures for managing rights, actions, or behaviors of
  ///  parties or principals relative to resources.
  ///
  /// [site] Sites in which the contract is complied with,  exercised, or in
  ///  force.
  ///
  /// [name] A natural language name identifying this Contract definition,
  /// derivative, or instance in any legal state. Provides additional
  /// information about its content. This name should be usable as an identifier
  /// for the module by machine processing applications such as code
  ///  generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving additional
  ///  information about its content.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [subtitle] An explanatory or alternate user-friendly title for this
  /// Contract definition, derivative, or instance in any legal state.t giving
  ///  additional information about its content.
  ///
  /// [subtitleElement] Extensions for subtitle
  ///
  /// [alias] Alternative representation of the title for this Contract
  /// definition, derivative, or instance in any legal state., e.g., a domain
  ///  specific contract number related to legislation.
  ///
  /// [aliasElement] Extensions for alias
  ///
  /// [author] The individual or organization that authored the Contract
  ///  definition, derivative, or instance in any legal state.
  ///
  /// [scope] A selector of legal concerns for this Contract definition,
  ///  derivative, or instance in any legal state.
  ///
  /// [topicCodeableConcept] Narrows the range of legal concerns to focus on
  ///  the achievement of specific contractual objectives.
  ///
  /// [topicReference] Narrows the range of legal concerns to focus on the
  ///  achievement of specific contractual objectives.
  ///
  /// [type] A high-level category for the legal instrument, whether
  /// constructed as a Contract definition, derivative, or instance in any legal
  /// state.  Provides additional information about its content within the
  /// context of the Contract's scope to distinguish the kinds of systems that
  ///  would be interested in the contract.
  ///
  /// [subType] Sub-category for the Contract that distinguishes the kinds of
  /// systems that would be interested in the Contract within the context of the
  ///  Contract's scope.
  ///
  /// [contentDefinition] Precusory content developed with a focus and intent
  /// of supporting the formation a Contract instance, which may be associated
  ///  with and transformable into a Contract.
  ///
  /// [term] One or more Contract Provisions, which may be related and conveyed
  ///  as a group, and may contain nested groups.
  ///
  /// [supportingInfo] Information that may be needed by/relevant to the
  ///  performer in their execution of this term action.
  ///
  /// [relevantHistory] Links to Provenance records for past versions of this
  /// Contract definition, derivative, or instance, which identify key state
  /// transitions or updates that are likely to be relevant to a user looking at
  /// the current version of the Contract.  The Provence.entity indicates the
  /// target that was changed in the update.
  ///  http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  ///
  /// [signer] Parties with legal standing in the Contract, including the
  /// principal parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  ///  facilitate the execution of the contract such as a notary or witness.
  ///
  /// [friendly] The "patient friendly language" versionof the Contract in
  /// whole or in parts. "Patient friendly language" means the representation of
  /// the Contract and Contract Provisions in a manner that is readily
  /// accessible and understandable by a layperson in accordance with best
  /// practices for communication styles that ensure that those agreeing to or
  /// signing the Contract understand the roles, actions, obligations,
  ///  responsibilities, and implication of the agreement.
  ///
  /// [legal] List of Legal expressions or representations of this Contract.
  ///
  /// [rule] List of Computable Policy Rule Language Representations of this
  ///  Contract.
  ///
  /// [legallyBindingAttachment] Legally binding Contract: This is the signed
  /// and legally recognized representation of the Contract, which is considered
  /// the "source of truth" and which would be the basis for legal action
  ///  related to enforcement of this Contract.
  ///
  /// [legallyBindingReference] Legally binding Contract: This is the signed
  /// and legally recognized representation of the Contract, which is considered
  /// the "source of truth" and which would be the basis for legal action
  ///  related to enforcement of this Contract.
  const factory Contract({
    @Default(R4ResourceType.Contract)
    @JsonKey(unknownEnumValue: R4ResourceType.Contract)

    /// [resourceType] This is a Contract resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [identifier] Unique identifier for this Contract or a derivative that
    ///  references a Source Contract.
    List<Identifier>? identifier,

    /// [url] Canonical identifier for this contract, represented as a URI
    ///  (globally unique).
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [version] An edition identifier used for business purposes to label
    ///  business significant variants.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [status] The status of the resource instance.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [legalState] Legal states of the formation of a legal instrument, which
    /// is a formally executed written document that can be formally attributed to
    /// its author, records and formally expresses a legally enforceable act,
    /// process, or contractual duty, obligation, or right, and therefore
    ///  evidences that act, process, or agreement.
    CodeableConcept? legalState,

    /// [instantiatesCanonical] The URL pointing to a FHIR-defined Contract
    ///  Definition that is adhered to in whole or part by this Contract.
    Reference? instantiatesCanonical,

    /// [instantiatesUri] The URL pointing to an externally maintained definition
    ///  that is adhered to in whole or in part by this Contract.
    FhirUri? instantiatesUri,

    /// [instantiatesUriElement] Extensions for instantiatesUri
    @JsonKey(name: '_instantiatesUri') PrimitiveElement? instantiatesUriElement,

    /// [contentDerivative] The minimal content derived from the basal
    ///  information source at a specific stage in its lifecycle.
    CodeableConcept? contentDerivative,

    /// [issued] When this  Contract was issued.
    FhirDateTime? issued,

    /// [issuedElement] Extensions for issued
    @JsonKey(name: '_issued') PrimitiveElement? issuedElement,

    /// [applies] Relevant time or time-period when this Contract is applicable.
    Period? applies,

    /// [expirationType] Event resulting in discontinuation or termination of
    ///  this Contract instance by one or more parties to the contract.
    CodeableConcept? expirationType,

    /// [subject] The target entity impacted by or of interest to parties to the
    ///  agreement.
    List<Reference>? subject,

    /// [authority] A formally or informally recognized grouping of people,
    /// principals, organizations, or jurisdictions formed for the purpose of
    /// achieving some form of collective action such as the promulgation,
    ///  administration and enforcement of contracts and policies.
    List<Reference>? authority,

    /// [domain] Recognized governance framework or system operating with a
    /// circumscribed scope in accordance with specified principles, policies,
    /// processes or procedures for managing rights, actions, or behaviors of
    ///  parties or principals relative to resources.
    List<Reference>? domain,

    /// [site] Sites in which the contract is complied with,  exercised, or in
    ///  force.
    List<Reference>? site,

    /// [name] A natural language name identifying this Contract definition,
    /// derivative, or instance in any legal state. Provides additional
    /// information about its content. This name should be usable as an identifier
    /// for the module by machine processing applications such as code
    ///  generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for this Contract
    /// definition, derivative, or instance in any legal state.t giving additional
    ///  information about its content.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [subtitle] An explanatory or alternate user-friendly title for this
    /// Contract definition, derivative, or instance in any legal state.t giving
    ///  additional information about its content.
    String? subtitle,

    /// [subtitleElement] Extensions for subtitle
    @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,

    /// [alias] Alternative representation of the title for this Contract
    /// definition, derivative, or instance in any legal state., e.g., a domain
    ///  specific contract number related to legislation.
    List<String>? alias,

    /// [aliasElement] Extensions for alias
    @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,

    /// [author] The individual or organization that authored the Contract
    ///  definition, derivative, or instance in any legal state.
    Reference? author,

    /// [scope] A selector of legal concerns for this Contract definition,
    ///  derivative, or instance in any legal state.
    CodeableConcept? scope,

    /// [topicCodeableConcept] Narrows the range of legal concerns to focus on
    ///  the achievement of specific contractual objectives.
    CodeableConcept? topicCodeableConcept,

    /// [topicReference] Narrows the range of legal concerns to focus on the
    ///  achievement of specific contractual objectives.
    Reference? topicReference,

    /// [type] A high-level category for the legal instrument, whether
    /// constructed as a Contract definition, derivative, or instance in any legal
    /// state.  Provides additional information about its content within the
    /// context of the Contract's scope to distinguish the kinds of systems that
    ///  would be interested in the contract.
    CodeableConcept? type,

    /// [subType] Sub-category for the Contract that distinguishes the kinds of
    /// systems that would be interested in the Contract within the context of the
    ///  Contract's scope.
    List<CodeableConcept>? subType,

    /// [contentDefinition] Precusory content developed with a focus and intent
    /// of supporting the formation a Contract instance, which may be associated
    ///  with and transformable into a Contract.
    ContractContentDefinition? contentDefinition,

    /// [term] One or more Contract Provisions, which may be related and conveyed
    ///  as a group, and may contain nested groups.
    List<ContractTerm>? term,

    /// [supportingInfo] Information that may be needed by/relevant to the
    ///  performer in their execution of this term action.
    List<Reference>? supportingInfo,

    /// [relevantHistory] Links to Provenance records for past versions of this
    /// Contract definition, derivative, or instance, which identify key state
    /// transitions or updates that are likely to be relevant to a user looking at
    /// the current version of the Contract.  The Provence.entity indicates the
    /// target that was changed in the update.
    ///  http://build.fhir.org/provenance-definitions.html#Provenance.entity.
    List<Reference>? relevantHistory,

    /// [signer] Parties with legal standing in the Contract, including the
    /// principal parties, the grantor(s) and grantee(s), which are any person or
    /// organization bound by the contract, and any ancillary parties, which
    ///  facilitate the execution of the contract such as a notary or witness.
    List<ContractSigner>? signer,

    /// [friendly] The "patient friendly language" versionof the Contract in
    /// whole or in parts. "Patient friendly language" means the representation of
    /// the Contract and Contract Provisions in a manner that is readily
    /// accessible and understandable by a layperson in accordance with best
    /// practices for communication styles that ensure that those agreeing to or
    /// signing the Contract understand the roles, actions, obligations,
    ///  responsibilities, and implication of the agreement.
    List<ContractFriendly>? friendly,

    /// [legal] List of Legal expressions or representations of this Contract.
    List<ContractLegal>? legal,

    /// [rule] List of Computable Policy Rule Language Representations of this
    ///  Contract.
    List<ContractRule>? rule,

    /// [legallyBindingAttachment] Legally binding Contract: This is the signed
    /// and legally recognized representation of the Contract, which is considered
    /// the "source of truth" and which would be the basis for legal action
    ///  related to enforcement of this Contract.
    Attachment? legallyBindingAttachment,

    /// [legallyBindingReference] Legally binding Contract: This is the signed
    /// and legally recognized representation of the Contract, which is considered
    /// the "source of truth" and which would be the basis for legal action
    ///  related to enforcement of this Contract.
    Reference? legallyBindingReference,
  }) = _Contract;

  @override
  String get fhirType => 'Contract';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Contract.fromYaml(dynamic yaml) => yaml is String
      ? Contract.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  /// Acts like a constructor, returns a [Contract], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Contract.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta));
}

/// [ContractContentDefinition] Legally enforceable, formally recorded
@freezed

/// [ContractContentDefinition] Legally enforceable, formally recorded
@freezed
class ContractContentDefinition
    with _$ContractContentDefinition
    implements BackboneElement {
  /// [ContractContentDefinition] Legally enforceable, formally recorded
  const ContractContentDefinition._();

  /// [ContractContentDefinition] Legally enforceable, formally recorded
  ///  unilateral or bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [type] Precusory content structure and use, i.e., a boilerplate,
  /// template, application for a contract such as an insurance policy or
  ///  benefits under a program, e.g., workers compensation.
  ///
  /// [subType] Detailed Precusory content type.
  ///
  /// [publisher] The  individual or organization that published the Contract
  ///  precursor content.
  ///
  /// [publicationDate] The date (and optionally time) when the contract was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the contract changes.
  ///
  /// [publicationDateElement] Extensions for publicationDate
  ///
  /// [publicationStatus] amended | appended | cancelled | disputed |
  /// entered-in-error | executable | executed | negotiable | offered | policy |
  ///  rejected | renewed | revoked | resolved | terminated.
  ///
  /// [publicationStatusElement] Extensions for publicationStatus
  ///
  /// [copyright] A copyright statement relating to Contract precursor content.
  /// Copyright statements are generally legal restrictions on the use and
  ///  publishing of the Contract precursor content.
  ///
  /// [copyrightElement] Extensions for copyright
  const factory ContractContentDefinition({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [type] Precusory content structure and use, i.e., a boilerplate,
    /// template, application for a contract such as an insurance policy or
    ///  benefits under a program, e.g., workers compensation.
    required CodeableConcept type,

    /// [subType] Detailed Precusory content type.
    CodeableConcept? subType,

    /// [publisher] The  individual or organization that published the Contract
    ///  precursor content.
    Reference? publisher,

    /// [publicationDate] The date (and optionally time) when the contract was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the contract changes.
    FhirDateTime? publicationDate,

    /// [publicationDateElement] Extensions for publicationDate
    @JsonKey(name: '_publicationDate') PrimitiveElement? publicationDateElement,

    /// [publicationStatus] amended | appended | cancelled | disputed |
    /// entered-in-error | executable | executed | negotiable | offered | policy |
    ///  rejected | renewed | revoked | resolved | terminated.
    FhirCode? publicationStatus,

    /// [publicationStatusElement] Extensions for publicationStatus
    @JsonKey(name: '_publicationStatus')
    PrimitiveElement? publicationStatusElement,

    /// [copyright] A copyright statement relating to Contract precursor content.
    /// Copyright statements are generally legal restrictions on the use and
    ///  publishing of the Contract precursor content.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
  }) = _ContractContentDefinition;

  @override
  String get fhirType => 'ContractContentDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractContentDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ContractContentDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractContentDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractContentDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractContentDefinition.fromJson(Map<String, dynamic> json) =>
      _$ContractContentDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ContractContentDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractContentDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractContentDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractTerm] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractTerm] Legally enforceable, formally recorded unilateral or
@freezed
class ContractTerm with _$ContractTerm implements BackboneElement {
  /// [ContractTerm] Legally enforceable, formally recorded unilateral or
  const ContractTerm._();

  /// [ContractTerm] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [identifier] Unique identifier for this particular Contract Provision.
  ///
  /// [issued] When this Contract Provision was issued.
  ///
  /// [issuedElement] Extensions for issued
  ///
  /// [applies] Relevant time or time-period when this Contract Provision is
  ///  applicable.
  ///
  /// [topicCodeableConcept] The entity that the term applies to.
  ///
  /// [topicReference] The entity that the term applies to.
  ///
  /// [type] A legal clause or condition contained within a contract that
  /// requires one or both parties to perform a particular requirement by some
  /// specified time or prevents one or both parties from performing a
  ///  particular requirement by some specified time.
  ///
  /// [subType] A specialized legal clause or condition based on overarching
  ///  contract type.
  ///
  /// [text] Statement of a provision in a policy or a contract.
  ///
  /// [textElement] Extensions for text
  ///
  /// [securityLabel] Security labels that protect the handling of information
  ///  about the term and its elements, which may be specifically identified..
  ///
  /// [offer] The matter of concern in the context of this provision of the
  ///  agrement.
  ///
  /// [asset] Contract Term Asset List.
  ///
  /// [action] An actor taking a role in an activity for which it can be
  ///  assigned some degree of responsibility for the activity taking place.
  ///
  /// [group] Nested group of Contract Provisions.
  const factory ContractTerm({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [identifier] Unique identifier for this particular Contract Provision.
    Identifier? identifier,

    /// [issued] When this Contract Provision was issued.
    FhirDateTime? issued,

    /// [issuedElement] Extensions for issued
    @JsonKey(name: '_issued') PrimitiveElement? issuedElement,

    /// [applies] Relevant time or time-period when this Contract Provision is
    ///  applicable.
    Period? applies,

    /// [topicCodeableConcept] The entity that the term applies to.
    CodeableConcept? topicCodeableConcept,

    /// [topicReference] The entity that the term applies to.
    Reference? topicReference,

    /// [type] A legal clause or condition contained within a contract that
    /// requires one or both parties to perform a particular requirement by some
    /// specified time or prevents one or both parties from performing a
    ///  particular requirement by some specified time.
    CodeableConcept? type,

    /// [subType] A specialized legal clause or condition based on overarching
    ///  contract type.
    CodeableConcept? subType,

    /// [text] Statement of a provision in a policy or a contract.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,

    /// [securityLabel] Security labels that protect the handling of information
    ///  about the term and its elements, which may be specifically identified..
    List<ContractSecurityLabel>? securityLabel,

    /// [offer] The matter of concern in the context of this provision of the
    ///  agrement.
    required ContractOffer offer,

    /// [asset] Contract Term Asset List.
    List<ContractAsset>? asset,

    /// [action] An actor taking a role in an activity for which it can be
    ///  assigned some degree of responsibility for the activity taking place.
    List<ContractAction>? action,

    /// [group] Nested group of Contract Provisions.
    List<ContractTerm>? group,
  }) = _ContractTerm;

  @override
  String get fhirType => 'ContractTerm';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractTerm.fromYaml(dynamic yaml) => yaml is String
      ? ContractTerm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractTerm.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractTerm cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractTerm.fromJson(Map<String, dynamic> json) =>
      _$ContractTermFromJson(json);

  /// Acts like a constructor, returns a [ContractTerm], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractTerm.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractTermFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractSecurityLabel] Legally enforceable, formally recorded
@freezed

/// [ContractSecurityLabel] Legally enforceable, formally recorded
@freezed
class ContractSecurityLabel
    with _$ContractSecurityLabel
    implements BackboneElement {
  /// [ContractSecurityLabel] Legally enforceable, formally recorded
  const ContractSecurityLabel._();

  /// [ContractSecurityLabel] Legally enforceable, formally recorded
  ///  unilateral or bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [number] Number used to link this term or term element to the applicable
  ///  Security Label.
  ///
  /// [numberElement] Extensions for number
  ///
  /// [classification] Security label privacy tag that species the level of
  ///  confidentiality protection required for this term and/or term elements.
  ///
  /// [category] Security label privacy tag that species the applicable privacy
  ///  and security policies governing this term and/or term elements.
  ///
  /// [control] Security label privacy tag that species the manner in which
  ///  term and/or term elements are to be protected.
  const factory ContractSecurityLabel({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [number] Number used to link this term or term element to the applicable
    ///  Security Label.
    List<FhirUnsignedInt>? number,

    /// [numberElement] Extensions for number
    @JsonKey(name: '_number') List<PrimitiveElement>? numberElement,

    /// [classification] Security label privacy tag that species the level of
    ///  confidentiality protection required for this term and/or term elements.
    required Coding classification,

    /// [category] Security label privacy tag that species the applicable privacy
    ///  and security policies governing this term and/or term elements.
    List<Coding>? category,

    /// [control] Security label privacy tag that species the manner in which
    ///  term and/or term elements are to be protected.
    List<Coding>? control,
  }) = _ContractSecurityLabel;

  @override
  String get fhirType => 'ContractSecurityLabel';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractSecurityLabel.fromYaml(dynamic yaml) => yaml is String
      ? ContractSecurityLabel.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractSecurityLabel.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractSecurityLabel cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractSecurityLabel.fromJson(Map<String, dynamic> json) =>
      _$ContractSecurityLabelFromJson(json);

  /// Acts like a constructor, returns a [ContractSecurityLabel], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractSecurityLabel.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractSecurityLabelFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractOffer] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractOffer] Legally enforceable, formally recorded unilateral or
@freezed
class ContractOffer with _$ContractOffer implements BackboneElement {
  /// [ContractOffer] Legally enforceable, formally recorded unilateral or
  const ContractOffer._();

  /// [ContractOffer] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [identifier] Unique identifier for this particular Contract Provision.
  ///
  /// [party] Offer Recipient.
  ///
  /// [topic] The owner of an asset has the residual control rights over the
  /// asset: the right to decide all usages of the asset in any way not
  ///  inconsistent with a prior contract, custom, or law (Hart, 1995, p. 30).
  ///
  /// [type] Type of Contract Provision such as specific requirements, purposes
  ///  for actions, obligations, prohibitions, e.g. life time maximum benefit.
  ///
  /// [decision] Type of choice made by accepting party with respect to an
  ///  offer made by an offeror/ grantee.
  ///
  /// [decisionMode] How the decision about a Contract was conveyed.
  ///
  /// [answer] Response to offer text.
  ///
  /// [text] Human readable form of this Contract Offer.
  ///
  /// [textElement] Extensions for text
  ///
  /// [linkId] The id of the clause or question text of the offer in the
  ///  referenced questionnaire/response.
  ///
  /// [linkIdElement] Extensions for linkId
  ///
  /// [securityLabelNumber] Security labels that protects the offer.
  ///
  /// [securityLabelNumberElement] Extensions for securityLabelNumber
  const factory ContractOffer({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [identifier] Unique identifier for this particular Contract Provision.
    List<Identifier>? identifier,

    /// [party] Offer Recipient.
    List<ContractParty>? party,

    /// [topic] The owner of an asset has the residual control rights over the
    /// asset: the right to decide all usages of the asset in any way not
    ///  inconsistent with a prior contract, custom, or law (Hart, 1995, p. 30).
    Reference? topic,

    /// [type] Type of Contract Provision such as specific requirements, purposes
    ///  for actions, obligations, prohibitions, e.g. life time maximum benefit.
    CodeableConcept? type,

    /// [decision] Type of choice made by accepting party with respect to an
    ///  offer made by an offeror/ grantee.
    CodeableConcept? decision,

    /// [decisionMode] How the decision about a Contract was conveyed.
    List<CodeableConcept>? decisionMode,

    /// [answer] Response to offer text.
    List<ContractAnswer>? answer,

    /// [text] Human readable form of this Contract Offer.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,

    /// [linkId] The id of the clause or question text of the offer in the
    ///  referenced questionnaire/response.
    List<String>? linkId,

    /// [linkIdElement] Extensions for linkId
    @JsonKey(name: '_linkId') List<PrimitiveElement>? linkIdElement,

    /// [securityLabelNumber] Security labels that protects the offer.
    List<FhirUnsignedInt>? securityLabelNumber,
    @JsonKey(name: '_securityLabelNumber')

    /// [securityLabelNumberElement] Extensions for securityLabelNumber
    List<PrimitiveElement>? securityLabelNumberElement,
  }) = _ContractOffer;

  @override
  String get fhirType => 'ContractOffer';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractOffer.fromYaml(dynamic yaml) => yaml is String
      ? ContractOffer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractOffer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractOffer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractOffer.fromJson(Map<String, dynamic> json) =>
      _$ContractOfferFromJson(json);

  /// Acts like a constructor, returns a [ContractOffer], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractOffer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractOfferFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractParty] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractParty] Legally enforceable, formally recorded unilateral or
@freezed
class ContractParty with _$ContractParty implements BackboneElement {
  /// [ContractParty] Legally enforceable, formally recorded unilateral or
  const ContractParty._();

  /// [ContractParty] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [reference] Participant in the offer.
  ///
  /// [role] How the party participates in the offer.
  const factory ContractParty({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [reference] Participant in the offer.
    required List<Reference> reference,

    /// [role] How the party participates in the offer.
    required CodeableConcept role,
  }) = _ContractParty;

  @override
  String get fhirType => 'ContractParty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractParty.fromYaml(dynamic yaml) => yaml is String
      ? ContractParty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractParty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractParty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractParty.fromJson(Map<String, dynamic> json) =>
      _$ContractPartyFromJson(json);

  /// Acts like a constructor, returns a [ContractParty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractParty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractPartyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractAnswer] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractAnswer] Legally enforceable, formally recorded unilateral or
@freezed
class ContractAnswer with _$ContractAnswer implements BackboneElement {
  /// [ContractAnswer] Legally enforceable, formally recorded unilateral or
  const ContractAnswer._();

  /// [ContractAnswer] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [valueBoolean] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueDecimal] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  ///
  /// [valueDecimalElement] Extensions for valueDecimal
  ///
  /// [valueInteger] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueDate] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  ///
  /// [valueDateElement] Extensions for valueDate
  ///
  /// [valueDateTime] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valueTime] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  ///
  /// [valueTimeElement] Extensions for valueTime
  ///
  /// [valueString] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueUri] Response to an offer clause or question text,  which enables
  /// selection of values to be agreed to, e.g., the period of participation,
  /// the date of occupancy of a rental, warrently duration, or whether
  ///  biospecimen may be used for further research.
  ///
  /// [valueUriElement] Extensions for valueUri
  ///
  /// [valueAttachment] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  ///
  /// [valueCoding] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  ///
  /// [valueQuantity] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  ///
  /// [valueReference] Response to an offer clause or question text,  which
  /// enables selection of values to be agreed to, e.g., the period of
  /// participation, the date of occupancy of a rental, warrently duration, or
  ///  whether biospecimen may be used for further research.
  const factory ContractAnswer({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [valueBoolean] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueDecimal] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    FhirDecimal? valueDecimal,

    /// [valueDecimalElement] Extensions for valueDecimal
    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,

    /// [valueInteger] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueDate] Response to an offer clause or question text,  which enables
    /// selection of values to be agreed to, e.g., the period of participation,
    /// the date of occupancy of a rental, warrently duration, or whether
    ///  biospecimen may be used for further research.
    FhirDate? valueDate,

    /// [valueDateElement] Extensions for valueDate
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueDateTime] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valueTime] Response to an offer clause or question text,  which enables
    /// selection of values to be agreed to, e.g., the period of participation,
    /// the date of occupancy of a rental, warrently duration, or whether
    ///  biospecimen may be used for further research.
    FhirTime? valueTime,

    /// [valueTimeElement] Extensions for valueTime
    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueString] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueUri] Response to an offer clause or question text,  which enables
    /// selection of values to be agreed to, e.g., the period of participation,
    /// the date of occupancy of a rental, warrently duration, or whether
    ///  biospecimen may be used for further research.
    FhirUri? valueUri,

    /// [valueUriElement] Extensions for valueUri
    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,

    /// [valueAttachment] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    Attachment? valueAttachment,

    /// [valueCoding] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    Coding? valueCoding,

    /// [valueQuantity] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    Quantity? valueQuantity,

    /// [valueReference] Response to an offer clause or question text,  which
    /// enables selection of values to be agreed to, e.g., the period of
    /// participation, the date of occupancy of a rental, warrently duration, or
    ///  whether biospecimen may be used for further research.
    Reference? valueReference,
  }) = _ContractAnswer;

  @override
  String get fhirType => 'ContractAnswer';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractAnswer.fromYaml(dynamic yaml) => yaml is String
      ? ContractAnswer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractAnswer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractAnswer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractAnswer.fromJson(Map<String, dynamic> json) =>
      _$ContractAnswerFromJson(json);

  /// Acts like a constructor, returns a [ContractAnswer], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractAnswer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractAnswerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractAsset] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractAsset] Legally enforceable, formally recorded unilateral or
@freezed
class ContractAsset with _$ContractAsset implements BackboneElement {
  /// [ContractAsset] Legally enforceable, formally recorded unilateral or
  const ContractAsset._();

  /// [ContractAsset] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [scope] Differentiates the kind of the asset .
  ///
  /// [type] Target entity type about which the term may be concerned.
  ///
  /// [typeReference] Associated entities.
  ///
  /// [subtype] May be a subtype or part of an offered asset.
  ///
  /// [relationship] Specifies the applicability of the term to an asset
  /// resource instance, and instances it refers to orinstances that refer to
  ///  it, and/or are owned by the offeree.
  ///
  /// [context] Circumstance of the asset.
  ///
  /// [condition] Description of the quality and completeness of the asset that
  ///  imay be a factor in its valuation.
  ///
  /// [conditionElement] Extensions for condition
  ///
  /// [periodType] Type of Asset availability for use or ownership.
  ///
  /// [period] Asset relevant contractual time period.
  ///
  /// [usePeriod] Time period of asset use.
  ///
  /// [text] Clause or question text (Prose Object) concerning the asset in a
  /// linked form, such as a QuestionnaireResponse used in the formation of the
  ///  contract.
  ///
  /// [textElement] Extensions for text
  ///
  /// [linkId] Id [Identifier]?? of the clause or question text about the asset
  ///  in the referenced form or QuestionnaireResponse.
  ///
  /// [linkIdElement] Extensions for linkId
  ///
  /// [answer] Response to assets.
  ///
  /// [securityLabelNumber] Security labels that protects the asset.
  ///
  /// [securityLabelNumberElement] Extensions for securityLabelNumber
  ///
  /// [valuedItem] Contract Valued Item List.
  const factory ContractAsset({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [scope] Differentiates the kind of the asset .
    CodeableConcept? scope,

    /// [type] Target entity type about which the term may be concerned.
    List<CodeableConcept>? type,

    /// [typeReference] Associated entities.
    List<Reference>? typeReference,

    /// [subtype] May be a subtype or part of an offered asset.
    List<CodeableConcept>? subtype,

    /// [relationship] Specifies the applicability of the term to an asset
    /// resource instance, and instances it refers to orinstances that refer to
    ///  it, and/or are owned by the offeree.
    Coding? relationship,

    /// [context] Circumstance of the asset.
    List<ContractContext>? context,

    /// [condition] Description of the quality and completeness of the asset that
    ///  imay be a factor in its valuation.
    String? condition,

    /// [conditionElement] Extensions for condition
    @JsonKey(name: '_condition') PrimitiveElement? conditionElement,

    /// [periodType] Type of Asset availability for use or ownership.
    List<CodeableConcept>? periodType,

    /// [period] Asset relevant contractual time period.
    List<Period>? period,

    /// [usePeriod] Time period of asset use.
    List<Period>? usePeriod,

    /// [text] Clause or question text (Prose Object) concerning the asset in a
    /// linked form, such as a QuestionnaireResponse used in the formation of the
    ///  contract.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,

    /// [linkId] Id [Identifier]?? of the clause or question text about the asset
    ///  in the referenced form or QuestionnaireResponse.
    List<String>? linkId,

    /// [linkIdElement] Extensions for linkId
    @JsonKey(name: '_linkId') List<PrimitiveElement>? linkIdElement,

    /// [answer] Response to assets.
    List<ContractAnswer>? answer,

    /// [securityLabelNumber] Security labels that protects the asset.
    List<FhirUnsignedInt>? securityLabelNumber,
    @JsonKey(name: '_securityLabelNumber')

    /// [securityLabelNumberElement] Extensions for securityLabelNumber
    List<PrimitiveElement>? securityLabelNumberElement,

    /// [valuedItem] Contract Valued Item List.
    List<ContractValuedItem>? valuedItem,
  }) = _ContractAsset;

  @override
  String get fhirType => 'ContractAsset';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractAsset.fromYaml(dynamic yaml) => yaml is String
      ? ContractAsset.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractAsset.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractAsset cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractAsset.fromJson(Map<String, dynamic> json) =>
      _$ContractAssetFromJson(json);

  /// Acts like a constructor, returns a [ContractAsset], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractAsset.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractAssetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractContext] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractContext] Legally enforceable, formally recorded unilateral or
@freezed
class ContractContext with _$ContractContext implements BackboneElement {
  /// [ContractContext] Legally enforceable, formally recorded unilateral or
  const ContractContext._();

  /// [ContractContext] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [reference] Asset context reference may include the creator, custodian,
  /// or owning Person or Organization (e.g., bank, repository),  location held,
  ///  e.g., building,  jurisdiction.
  ///
  /// [code] Coded representation of the context generally or of the Referenced
  ///  entity, such as the asset holder type or location.
  ///
  /// [text] Context description.
  ///
  /// [textElement] Extensions for text
  const factory ContractContext({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [reference] Asset context reference may include the creator, custodian,
    /// or owning Person or Organization (e.g., bank, repository),  location held,
    ///  e.g., building,  jurisdiction.
    Reference? reference,

    /// [code] Coded representation of the context generally or of the Referenced
    ///  entity, such as the asset holder type or location.
    List<CodeableConcept>? code,

    /// [text] Context description.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,
  }) = _ContractContext;

  @override
  String get fhirType => 'ContractContext';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractContext.fromYaml(dynamic yaml) => yaml is String
      ? ContractContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractContext cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractContext.fromJson(Map<String, dynamic> json) =>
      _$ContractContextFromJson(json);

  /// Acts like a constructor, returns a [ContractContext], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractContext.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractContextFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractValuedItem] Legally enforceable, formally recorded unilateral
@freezed

/// [ContractValuedItem] Legally enforceable, formally recorded unilateral
@freezed
class ContractValuedItem with _$ContractValuedItem implements BackboneElement {
  /// [ContractValuedItem] Legally enforceable, formally recorded unilateral
  const ContractValuedItem._();

  /// [ContractValuedItem] Legally enforceable, formally recorded unilateral
  ///  or bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [entityCodeableConcept] Specific type of Contract Valued Item that may be
  ///  priced.
  ///
  /// [entityReference] Specific type of Contract Valued Item that may be
  ///  priced.
  ///
  /// [identifier] Identifies a Contract Valued Item instance.
  ///
  /// [effectiveTime] Indicates the time during which this Contract ValuedItem
  ///  information is effective.
  ///
  /// [effectiveTimeElement] Extensions for effectiveTime
  ///
  /// [quantity] Specifies the units by which the Contract Valued Item is
  /// measured or counted, and quantifies the countable or measurable Contract
  ///  Valued Item instances.
  ///
  /// [unitPrice] A Contract Valued Item unit valuation measure.
  ///
  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of the Contract Valued Item delivered. The concept of a
  /// Factor allows for a discount or surcharge multiplier to be applied to a
  ///  monetary amount.
  ///
  /// [factorElement] Extensions for factor
  ///
  /// [points] An amount that expresses the weighting (based on difficulty,
  /// cost and/or resource intensiveness) associated with the Contract Valued
  /// Item delivered. The concept of Points allows for assignment of point
  /// values for a Contract Valued Item, such that a monetary amount can be
  ///  assigned to each point.
  ///
  /// [pointsElement] Extensions for points
  ///
  /// [net] Expresses the product of the Contract Valued Item unitQuantity and
  /// the unitPriceAmt. For example, the formula: unit Quantity * unit Price
  /// (Cost per Point) * factor Number  * points = net Amount. Quantity, factor
  ///  and points are assumed to be 1 if not supplied.
  ///
  /// [payment] Terms of valuation.
  ///
  /// [paymentElement] Extensions for payment
  ///
  /// [paymentDate] When payment is due.
  ///
  /// [paymentDateElement] Extensions for paymentDate
  ///
  /// [responsible] Who will make payment.
  ///
  /// [recipient] Who will receive payment.
  ///
  /// [linkId] Id  of the clause or question text related to the context of
  ///  this valuedItem in the referenced form or QuestionnaireResponse.
  ///
  /// [linkIdElement] Extensions for linkId
  ///
  /// [securityLabelNumber] A set of security labels that define which terms
  ///  are controlled by this condition.
  ///
  /// [securityLabelNumberElement] Extensions for securityLabelNumber
  const factory ContractValuedItem({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [entityCodeableConcept] Specific type of Contract Valued Item that may be
    ///  priced.
    CodeableConcept? entityCodeableConcept,

    /// [entityReference] Specific type of Contract Valued Item that may be
    ///  priced.
    Reference? entityReference,

    /// [identifier] Identifies a Contract Valued Item instance.
    Identifier? identifier,

    /// [effectiveTime] Indicates the time during which this Contract ValuedItem
    ///  information is effective.
    FhirDateTime? effectiveTime,

    /// [effectiveTimeElement] Extensions for effectiveTime
    @JsonKey(name: '_effectiveTime') PrimitiveElement? effectiveTimeElement,

    /// [quantity] Specifies the units by which the Contract Valued Item is
    /// measured or counted, and quantifies the countable or measurable Contract
    ///  Valued Item instances.
    Quantity? quantity,

    /// [unitPrice] A Contract Valued Item unit valuation measure.
    Money? unitPrice,

    /// [factor] A real number that represents a multiplier used in determining
    /// the overall value of the Contract Valued Item delivered. The concept of a
    /// Factor allows for a discount or surcharge multiplier to be applied to a
    ///  monetary amount.
    FhirDecimal? factor,

    /// [factorElement] Extensions for factor
    @JsonKey(name: '_factor') PrimitiveElement? factorElement,

    /// [points] An amount that expresses the weighting (based on difficulty,
    /// cost and/or resource intensiveness) associated with the Contract Valued
    /// Item delivered. The concept of Points allows for assignment of point
    /// values for a Contract Valued Item, such that a monetary amount can be
    ///  assigned to each point.
    FhirDecimal? points,

    /// [pointsElement] Extensions for points
    @JsonKey(name: '_points') PrimitiveElement? pointsElement,

    /// [net] Expresses the product of the Contract Valued Item unitQuantity and
    /// the unitPriceAmt. For example, the formula: unit Quantity * unit Price
    /// (Cost per Point) * factor Number  * points = net Amount. Quantity, factor
    ///  and points are assumed to be 1 if not supplied.
    Money? net,

    /// [payment] Terms of valuation.
    String? payment,

    /// [paymentElement] Extensions for payment
    @JsonKey(name: '_payment') PrimitiveElement? paymentElement,

    /// [paymentDate] When payment is due.
    FhirDateTime? paymentDate,

    /// [paymentDateElement] Extensions for paymentDate
    @JsonKey(name: '_paymentDate') PrimitiveElement? paymentDateElement,

    /// [responsible] Who will make payment.
    Reference? responsible,

    /// [recipient] Who will receive payment.
    Reference? recipient,

    /// [linkId] Id  of the clause or question text related to the context of
    ///  this valuedItem in the referenced form or QuestionnaireResponse.
    List<String>? linkId,

    /// [linkIdElement] Extensions for linkId
    @JsonKey(name: '_linkId') List<PrimitiveElement>? linkIdElement,

    /// [securityLabelNumber] A set of security labels that define which terms
    ///  are controlled by this condition.
    List<FhirUnsignedInt>? securityLabelNumber,
    @JsonKey(name: '_securityLabelNumber')

    /// [securityLabelNumberElement] Extensions for securityLabelNumber
    List<PrimitiveElement>? securityLabelNumberElement,
  }) = _ContractValuedItem;

  @override
  String get fhirType => 'ContractValuedItem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractValuedItem.fromYaml(dynamic yaml) => yaml is String
      ? ContractValuedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractValuedItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractValuedItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractValuedItem.fromJson(Map<String, dynamic> json) =>
      _$ContractValuedItemFromJson(json);

  /// Acts like a constructor, returns a [ContractValuedItem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractValuedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractValuedItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractAction] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractAction] Legally enforceable, formally recorded unilateral or
@freezed
class ContractAction with _$ContractAction implements BackboneElement {
  /// [ContractAction] Legally enforceable, formally recorded unilateral or
  const ContractAction._();

  /// [ContractAction] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [doNotPerform] True if the term prohibits the  action.
  ///
  /// [doNotPerformElement] Extensions for doNotPerform
  ///
  /// [type] Activity or service obligation to be done or not done, performed
  ///  or not performed, effectuated or not by this Contract term.
  ///
  /// [subject] Entity of the action.
  ///
  /// [intent] Reason or purpose for the action stipulated by this Contract
  ///  Provision.
  ///
  /// [linkId] Id [Identifier]?? of the clause or question text related to this
  ///  action in the referenced form or QuestionnaireResponse.
  ///
  /// [linkIdElement] Extensions for linkId
  ///
  /// [status] Current state of the term action.
  ///
  /// [context] Encounter or Episode with primary association to specified term
  ///  activity.
  ///
  /// [contextLinkId] Id [Identifier]?? of the clause or question text related
  /// to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  ///
  /// [contextLinkIdElement] Extensions for contextLinkId
  ///
  /// [occurrenceDateTime] When action happens.
  ///
  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  ///
  /// [occurrencePeriod] When action happens.
  ///
  /// [occurrenceTiming] When action happens.
  ///
  /// [requester] Who or what initiated the action and has responsibility for
  ///  its activation.
  ///
  /// [requesterLinkId] Id [Identifier]?? of the clause or question text
  /// related to the requester of this action in the referenced form or
  ///  QuestionnaireResponse.
  ///
  /// [requesterLinkIdElement] Extensions for requesterLinkId
  ///
  /// [performerType] The type of individual that is desired or required to
  ///  perform or not perform the action.
  ///
  /// [performerRole] The type of role or competency of an individual desired
  ///  or required to perform or not perform the action.
  ///
  /// [performer] Indicates who or what is being asked to perform (or not
  ///  perform) the ction.
  ///
  /// [performerLinkId] Id [Identifier]?? of the clause or question text
  /// related to the reason type or reference of this  action in the referenced
  ///  form or QuestionnaireResponse.
  ///
  /// [performerLinkIdElement] Extensions for performerLinkId
  ///
  /// [reasonCode] Rationale for the action to be performed or not performed.
  ///  Describes why the action is permitted or prohibited.
  ///
  /// [reasonReference] Indicates another resource whose existence justifies
  ///  permitting or not permitting this action.
  ///
  /// [reason] Describes why the action is to be performed or not performed in
  ///  textual form.
  ///
  /// [reasonElement] Extensions for reason
  ///
  /// [reasonLinkId] Id [Identifier]?? of the clause or question text related
  /// to the reason type or reference of this  action in the referenced form or
  ///  QuestionnaireResponse.
  ///
  /// [reasonLinkIdElement] Extensions for reasonLinkId
  ///
  /// [note] Comments made about the term action made by the requester,
  ///  performer, subject or other participants.
  ///
  /// [securityLabelNumber] Security labels that protects the action.
  ///
  /// [securityLabelNumberElement] Extensions for securityLabelNumber
  const factory ContractAction({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [doNotPerform] True if the term prohibits the  action.
    FhirBoolean? doNotPerform,

    /// [doNotPerformElement] Extensions for doNotPerform
    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,

    /// [type] Activity or service obligation to be done or not done, performed
    ///  or not performed, effectuated or not by this Contract term.
    required CodeableConcept type,

    /// [subject] Entity of the action.
    List<ContractSubject>? subject,

    /// [intent] Reason or purpose for the action stipulated by this Contract
    ///  Provision.
    required CodeableConcept intent,

    /// [linkId] Id [Identifier]?? of the clause or question text related to this
    ///  action in the referenced form or QuestionnaireResponse.
    List<String>? linkId,

    /// [linkIdElement] Extensions for linkId
    @JsonKey(name: '_linkId') List<PrimitiveElement>? linkIdElement,

    /// [status] Current state of the term action.
    required CodeableConcept status,

    /// [context] Encounter or Episode with primary association to specified term
    ///  activity.
    Reference? context,

    /// [contextLinkId] Id [Identifier]?? of the clause or question text related
    /// to the requester of this action in the referenced form or
    ///  QuestionnaireResponse.
    List<String>? contextLinkId,

    /// [contextLinkIdElement] Extensions for contextLinkId
    @JsonKey(name: '_contextLinkId')
    List<PrimitiveElement>? contextLinkIdElement,

    /// [occurrenceDateTime] When action happens.
    FhirDateTime? occurrenceDateTime,

    /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
    @JsonKey(name: '_occurrenceDateTime')
    PrimitiveElement? occurrenceDateTimeElement,

    /// [occurrencePeriod] When action happens.
    Period? occurrencePeriod,

    /// [occurrenceTiming] When action happens.
    Timing? occurrenceTiming,

    /// [requester] Who or what initiated the action and has responsibility for
    ///  its activation.
    List<Reference>? requester,

    /// [requesterLinkId] Id [Identifier]?? of the clause or question text
    /// related to the requester of this action in the referenced form or
    ///  QuestionnaireResponse.
    List<String>? requesterLinkId,

    /// [requesterLinkIdElement] Extensions for requesterLinkId
    @JsonKey(name: '_requesterLinkId')
    List<PrimitiveElement>? requesterLinkIdElement,

    /// [performerType] The type of individual that is desired or required to
    ///  perform or not perform the action.
    List<CodeableConcept>? performerType,

    /// [performerRole] The type of role or competency of an individual desired
    ///  or required to perform or not perform the action.
    CodeableConcept? performerRole,

    /// [performer] Indicates who or what is being asked to perform (or not
    ///  perform) the ction.
    Reference? performer,

    /// [performerLinkId] Id [Identifier]?? of the clause or question text
    /// related to the reason type or reference of this  action in the referenced
    ///  form or QuestionnaireResponse.
    List<String>? performerLinkId,

    /// [performerLinkIdElement] Extensions for performerLinkId
    @JsonKey(name: '_performerLinkId')
    List<PrimitiveElement>? performerLinkIdElement,

    /// [reasonCode] Rationale for the action to be performed or not performed.
    ///  Describes why the action is permitted or prohibited.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Indicates another resource whose existence justifies
    ///  permitting or not permitting this action.
    List<Reference>? reasonReference,

    /// [reason] Describes why the action is to be performed or not performed in
    ///  textual form.
    List<String>? reason,

    /// [reasonElement] Extensions for reason
    @JsonKey(name: '_reason') List<PrimitiveElement>? reasonElement,

    /// [reasonLinkId] Id [Identifier]?? of the clause or question text related
    /// to the reason type or reference of this  action in the referenced form or
    ///  QuestionnaireResponse.
    List<String>? reasonLinkId,

    /// [reasonLinkIdElement] Extensions for reasonLinkId
    @JsonKey(name: '_reasonLinkId') List<PrimitiveElement>? reasonLinkIdElement,

    /// [note] Comments made about the term action made by the requester,
    ///  performer, subject or other participants.
    List<Annotation>? note,

    /// [securityLabelNumber] Security labels that protects the action.
    List<FhirUnsignedInt>? securityLabelNumber,
    @JsonKey(name: '_securityLabelNumber')

    /// [securityLabelNumberElement] Extensions for securityLabelNumber
    List<PrimitiveElement>? securityLabelNumberElement,
  }) = _ContractAction;

  @override
  String get fhirType => 'ContractAction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractAction.fromYaml(dynamic yaml) => yaml is String
      ? ContractAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractAction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractAction.fromJson(Map<String, dynamic> json) =>
      _$ContractActionFromJson(json);

  /// Acts like a constructor, returns a [ContractAction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractSubject] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractSubject] Legally enforceable, formally recorded unilateral or
@freezed
class ContractSubject with _$ContractSubject implements BackboneElement {
  /// [ContractSubject] Legally enforceable, formally recorded unilateral or
  const ContractSubject._();

  /// [ContractSubject] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [reference] The entity the action is performed or not performed on or
  ///  for.
  ///
  /// [role] Role type of agent assigned roles in this Contract.
  const factory ContractSubject({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [reference] The entity the action is performed or not performed on or
    ///  for.
    required List<Reference> reference,

    /// [role] Role type of agent assigned roles in this Contract.
    CodeableConcept? role,
  }) = _ContractSubject;

  @override
  String get fhirType => 'ContractSubject';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractSubject.fromYaml(dynamic yaml) => yaml is String
      ? ContractSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractSubject.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractSubject cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractSubject.fromJson(Map<String, dynamic> json) =>
      _$ContractSubjectFromJson(json);

  /// Acts like a constructor, returns a [ContractSubject], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractSubject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractSubjectFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractSigner] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractSigner] Legally enforceable, formally recorded unilateral or
@freezed
class ContractSigner with _$ContractSigner implements BackboneElement {
  /// [ContractSigner] Legally enforceable, formally recorded unilateral or
  const ContractSigner._();

  /// [ContractSigner] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [type] Role of this Contract signer, e.g. notary, grantee.
  ///
  /// [party] Party which is a signator to this Contract.
  ///
  /// [signature] Legally binding Contract DSIG signature contents in Base64.
  const factory ContractSigner({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [type] Role of this Contract signer, e.g. notary, grantee.
    required Coding type,

    /// [party] Party which is a signator to this Contract.
    required Reference party,

    /// [signature] Legally binding Contract DSIG signature contents in Base64.
    required List<Signature> signature,
  }) = _ContractSigner;

  @override
  String get fhirType => 'ContractSigner';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractSigner.fromYaml(dynamic yaml) => yaml is String
      ? ContractSigner.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractSigner.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractSigner cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractSigner.fromJson(Map<String, dynamic> json) =>
      _$ContractSignerFromJson(json);

  /// Acts like a constructor, returns a [ContractSigner], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractSigner.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractSignerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractFriendly] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractFriendly] Legally enforceable, formally recorded unilateral or
@freezed
class ContractFriendly with _$ContractFriendly implements BackboneElement {
  /// [ContractFriendly] Legally enforceable, formally recorded unilateral or
  const ContractFriendly._();

  /// [ContractFriendly] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [contentAttachment] Human readable rendering of this Contract in a format
  /// and representation intended to enhance comprehension and ensure
  ///  understandability.
  ///
  /// [contentReference] Human readable rendering of this Contract in a format
  /// and representation intended to enhance comprehension and ensure
  ///  understandability.
  const factory ContractFriendly({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [contentAttachment] Human readable rendering of this Contract in a format
    /// and representation intended to enhance comprehension and ensure
    ///  understandability.
    Attachment? contentAttachment,

    /// [contentReference] Human readable rendering of this Contract in a format
    /// and representation intended to enhance comprehension and ensure
    ///  understandability.
    Reference? contentReference,
  }) = _ContractFriendly;

  @override
  String get fhirType => 'ContractFriendly';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractFriendly.fromYaml(dynamic yaml) => yaml is String
      ? ContractFriendly.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractFriendly.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractFriendly cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractFriendly.fromJson(Map<String, dynamic> json) =>
      _$ContractFriendlyFromJson(json);

  /// Acts like a constructor, returns a [ContractFriendly], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractFriendly.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractFriendlyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractLegal] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractLegal] Legally enforceable, formally recorded unilateral or
@freezed
class ContractLegal with _$ContractLegal implements BackboneElement {
  /// [ContractLegal] Legally enforceable, formally recorded unilateral or
  const ContractLegal._();

  /// [ContractLegal] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [contentAttachment] Contract legal text in human renderable form.
  ///
  /// [contentReference] Contract legal text in human renderable form.
  const factory ContractLegal({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [contentAttachment] Contract legal text in human renderable form.
    Attachment? contentAttachment,

    /// [contentReference] Contract legal text in human renderable form.
    Reference? contentReference,
  }) = _ContractLegal;

  @override
  String get fhirType => 'ContractLegal';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractLegal.fromYaml(dynamic yaml) => yaml is String
      ? ContractLegal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractLegal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractLegal cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractLegal.fromJson(Map<String, dynamic> json) =>
      _$ContractLegalFromJson(json);

  /// Acts like a constructor, returns a [ContractLegal], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractLegal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractLegalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ContractRule] Legally enforceable, formally recorded unilateral or
@freezed

/// [ContractRule] Legally enforceable, formally recorded unilateral or
@freezed
class ContractRule with _$ContractRule implements BackboneElement {
  /// [ContractRule] Legally enforceable, formally recorded unilateral or
  const ContractRule._();

  /// [ContractRule] Legally enforceable, formally recorded unilateral or
  ///  bilateral directive i.e., a policy or agreement.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
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
  ///
  /// [contentAttachment] Computable Contract conveyed using a policy rule
  ///  language (e.g. XACML, DKAL, SecPal).
  ///
  /// [contentReference] Computable Contract conveyed using a policy rule
  ///  language (e.g. XACML, DKAL, SecPal).
  const factory ContractRule({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [contentAttachment] Computable Contract conveyed using a policy rule
    ///  language (e.g. XACML, DKAL, SecPal).
    Attachment? contentAttachment,

    /// [contentReference] Computable Contract conveyed using a policy rule
    ///  language (e.g. XACML, DKAL, SecPal).
    Reference? contentReference,
  }) = _ContractRule;

  @override
  String get fhirType => 'ContractRule';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContractRule.fromYaml(dynamic yaml) => yaml is String
      ? ContractRule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContractRule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContractRule cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContractRule.fromJson(Map<String, dynamic> json) =>
      _$ContractRuleFromJson(json);

  /// Acts like a constructor, returns a [ContractRule], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContractRule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContractRuleFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
