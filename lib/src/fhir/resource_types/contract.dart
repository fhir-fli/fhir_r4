import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Contract] /// Legally enforceable, formally recorded unilateral or bilateral directive
/// i.e., a policy or agreement.
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
  }) : super(resourceType: R4ResourceType.Contract);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for this Contract or a derivative that references a
  /// Source Contract.
  final List<Identifier>? identifier;

  /// [url] /// Canonical identifier for this contract, represented as a URI (globally
  /// unique).
  final FhirUri? url;
  final Element? urlElement;

  /// [version] /// An edition identifier used for business purposes to label business
  /// significant variants.
  final FhirString? version;
  final Element? versionElement;

  /// [status] /// The status of the resource instance.
  final FhirCode? status;
  final Element? statusElement;

  /// [legalState] /// Legal states of the formation of a legal instrument, which is a formally
  /// executed written document that can be formally attributed to its author,
  /// records and formally expresses a legally enforceable act, process, or
  /// contractual duty, obligation, or right, and therefore evidences that act,
  /// process, or agreement.
  final CodeableConcept? legalState;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined Contract Definition that is adhered to
  /// in whole or part by this Contract.
  final Reference? instantiatesCanonical;

  /// [instantiatesUri] /// The URL pointing to an externally maintained definition that is adhered to
  /// in whole or in part by this Contract.
  final FhirUri? instantiatesUri;
  final Element? instantiatesUriElement;

  /// [contentDerivative] /// The minimal content derived from the basal information source at a specific
  /// stage in its lifecycle.
  final CodeableConcept? contentDerivative;

  /// [issued] /// When this Contract was issued.
  final FhirDateTime? issued;
  final Element? issuedElement;

  /// [applies] /// Relevant time or time-period when this Contract is applicable.
  final Period? applies;

  /// [expirationType] /// Event resulting in discontinuation or termination of this Contract instance
  /// by one or more parties to the contract.
  final CodeableConcept? expirationType;

  /// [subject] /// The target entity impacted by or of interest to parties to the agreement.
  final List<Reference>? subject;

  /// [authority] /// A formally or informally recognized grouping of people, principals,
  /// organizations, or jurisdictions formed for the purpose of achieving some
  /// form of collective action such as the promulgation, administration and
  /// enforcement of contracts and policies.
  final List<Reference>? authority;

  /// [domain] /// Recognized governance framework or system operating with a circumscribed
  /// scope in accordance with specified principles, policies, processes or
  /// procedures for managing rights, actions, or behaviors of parties or
  /// principals relative to resources.
  final List<Reference>? domain;

  /// [site] /// Sites in which the contract is complied with, exercised, or in force.
  final List<Reference>? site;

  /// [name] /// A natural language name identifying this Contract definition, derivative,
  /// or instance in any legal state. Provides additional information about its
  /// content. This name should be usable as an identifier for the module by
  /// machine processing applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for this Contract definition,
  /// derivative, or instance in any legal state.t giving additional information
  /// about its content.
  final FhirString? title;
  final Element? titleElement;

  /// [subtitle] /// An explanatory or alternate user-friendly title for this Contract
  /// definition, derivative, or instance in any legal state.t giving additional
  /// information about its content.
  final FhirString? subtitle;
  final Element? subtitleElement;

  /// [alias] /// Alternative representation of the title for this Contract definition,
  /// derivative, or instance in any legal state., e.g., a domain specific
  /// contract number related to legislation.
  final List<FhirString>? alias;
  final List<Element>? aliasElement;

  /// [author] /// The individual or organization that authored the Contract definition,
  /// derivative, or instance in any legal state.
  final Reference? author;

  /// [scope] /// A selector of legal concerns for this Contract definition, derivative, or
  /// instance in any legal state.
  final CodeableConcept? scope;

  /// [topicCodeableConcept] /// Narrows the range of legal concerns to focus on the achievement of specific
  /// contractual objectives.
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference] /// Narrows the range of legal concerns to focus on the achievement of specific
  /// contractual objectives.
  final Reference? topicReference;

  /// [type] /// A high-level category for the legal instrument, whether constructed as a
  /// Contract definition, derivative, or instance in any legal state. Provides
  /// additional information about its content within the context of the
  /// Contract's scope to distinguish the kinds of systems that would be
  /// interested in the contract.
  final CodeableConcept? type;

  /// [subType] /// Sub-category for the Contract that distinguishes the kinds of systems that
  /// would be interested in the Contract within the context of the Contract's
  /// scope.
  final List<CodeableConcept>? subType;

  /// [contentDefinition] /// Precusory content developed with a focus and intent of supporting the
  /// formation a Contract instance, which may be associated with and
  /// transformable into a Contract.
  final ContractContentDefinition? contentDefinition;

  /// [term] /// One or more Contract Provisions, which may be related and conveyed as a
  /// group, and may contain nested groups.
  final List<ContractTerm>? term;

  /// [supportingInfo] /// Information that may be needed by/relevant to the performer in their
  /// execution of this term action.
  final List<Reference>? supportingInfo;

  /// [relevantHistory] /// Links to Provenance records for past versions of this Contract definition,
  /// derivative, or instance, which identify key state transitions or updates
  /// that are likely to be relevant to a user looking at the current version of
  /// the Contract. The Provence.entity indicates the target that was changed in
  /// the update.
  /// http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  final List<Reference>? relevantHistory;

  /// [signer] /// Parties with legal standing in the Contract, including the principal
  /// parties, the grantor(s) and grantee(s), which are any person or
  /// organization bound by the contract, and any ancillary parties, which
  /// facilitate the execution of the contract such as a notary or witness.
  final List<ContractSigner>? signer;

  /// [friendly] /// The "patient friendly language" versionof the Contract in whole or in
  /// parts. "Patient friendly language" means the representation of the Contract
  /// and Contract Provisions in a manner that is readily accessible and
  /// understandable by a layperson in accordance with best practices for
  /// communication styles that ensure that those agreeing to or signing the
  /// Contract understand the roles, actions, obligations, responsibilities, and
  /// implication of the agreement.
  final List<ContractFriendly>? friendly;

  /// [legal] /// List of Legal expressions or representations of this Contract.
  final List<ContractLegal>? legal;

  /// [rule] /// List of Computable Policy Rule Language Representations of this Contract.
  final List<ContractRule>? rule;
  @override
  Contract clone() => throw UnimplementedError();
  Contract copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
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
    FhirCode? status,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractContentDefinition] /// Precusory content developed with a focus and intent of supporting the
/// formation a Contract instance, which may be associated with and
/// transformable into a Contract.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Precusory content structure and use, i.e., a boilerplate, template,
  /// application for a contract such as an insurance policy or benefits under a
  /// program, e.g., workers compensation.
  final CodeableConcept type;

  /// [subType] /// Detailed Precusory content type.
  final CodeableConcept? subType;

  /// [publisher] /// The individual or organization that published the Contract precursor
  /// content.
  final Reference? publisher;

  /// [publicationDate] /// The date (and optionally time) when the contract was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the contract changes.
  final FhirDateTime? publicationDate;
  final Element? publicationDateElement;

  /// [publicationStatus] /// amended | appended | cancelled | disputed | entered-in-error | executable |
  /// executed | negotiable | offered | policy | rejected | renewed | revoked |
  /// resolved | terminated.
  final FhirCode publicationStatus;
  final Element? publicationStatusElement;

  /// [copyright] /// A copyright statement relating to Contract precursor content. Copyright
  /// statements are generally legal restrictions on the use and publishing of
  /// the Contract precursor content.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  @override
  ContractContentDefinition clone() => throw UnimplementedError();
  ContractContentDefinition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? subType,
    Reference? publisher,
    FhirDateTime? publicationDate,
    Element? publicationDateElement,
    FhirCode? publicationStatus,
    Element? publicationStatusElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractTerm] /// One or more Contract Provisions, which may be related and conveyed as a
/// group, and may contain nested groups.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for this particular Contract Provision.
  final Identifier? identifier;

  /// [issued] /// When this Contract Provision was issued.
  final FhirDateTime? issued;
  final Element? issuedElement;

  /// [applies] /// Relevant time or time-period when this Contract Provision is applicable.
  final Period? applies;

  /// [topicCodeableConcept] /// The entity that the term applies to.
  final CodeableConcept? topicCodeableConcept;

  /// [topicReference] /// The entity that the term applies to.
  final Reference? topicReference;

  /// [type] /// A legal clause or condition contained within a contract that requires one
  /// or both parties to perform a particular requirement by some specified time
  /// or prevents one or both parties from performing a particular requirement by
  /// some specified time.
  final CodeableConcept? type;

  /// [subType] /// A specialized legal clause or condition based on overarching contract type.
  final CodeableConcept? subType;

  /// [text] /// Statement of a provision in a policy or a contract.
  final FhirString? text;
  final Element? textElement;

  /// [securityLabel] /// Security labels that protect the handling of information about the term and
  /// its elements, which may be specifically identified..
  final List<ContractSecurityLabel>? securityLabel;

  /// [offer] /// The matter of concern in the context of this provision of the agrement.
  final ContractOffer offer;

  /// [asset] /// Contract Term Asset List.
  final List<ContractAsset>? asset;

  /// [action] /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  final List<ContractAction>? action;

  /// [group] /// Nested group of Contract Provisions.
  final List<ContractTerm>? group;
  @override
  ContractTerm clone() => throw UnimplementedError();
  ContractTerm copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractSecurityLabel] /// Security labels that protect the handling of information about the term and
/// its elements, which may be specifically identified..
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [number] /// Number used to link this term or term element to the applicable Security
  /// Label.
  final List<FhirUnsignedInt>? number;
  final List<Element>? numberElement;

  /// [classification] /// Security label privacy tag that species the level of confidentiality
  /// protection required for this term and/or term elements.
  final Coding classification;

  /// [category] /// Security label privacy tag that species the applicable privacy and security
  /// policies governing this term and/or term elements.
  final List<Coding>? category;

  /// [control] /// Security label privacy tag that species the manner in which term and/or
  /// term elements are to be protected.
  final List<Coding>? control;
  @override
  ContractSecurityLabel clone() => throw UnimplementedError();
  ContractSecurityLabel copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirUnsignedInt>? number,
    List<Element>? numberElement,
    Coding? classification,
    List<Coding>? category,
    List<Coding>? control,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractOffer] /// The matter of concern in the context of this provision of the agrement.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for this particular Contract Provision.
  final List<Identifier>? identifier;

  /// [party] /// Offer Recipient.
  final List<ContractParty>? party;

  /// [topic] /// The owner of an asset has the residual control rights over the asset: the
  /// right to decide all usages of the asset in any way not inconsistent with a
  /// prior contract, custom, or law (Hart, 1995, p. 30).
  final Reference? topic;

  /// [type] /// Type of Contract Provision such as specific requirements, purposes for
  /// actions, obligations, prohibitions, e.g. life time maximum benefit.
  final CodeableConcept? type;

  /// [decision] /// Type of choice made by accepting party with respect to an offer made by an
  /// offeror/ grantee.
  final CodeableConcept? decision;

  /// [decisionMode] /// How the decision about a Contract was conveyed.
  final List<CodeableConcept>? decisionMode;

  /// [answer] /// Response to offer text.
  final List<ContractAnswer>? answer;

  /// [text] /// Human readable form of this Contract Offer.
  final FhirString? text;
  final Element? textElement;

  /// [linkId] /// The id of the clause or question text of the offer in the referenced
  /// questionnaire/response.
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;

  /// [securityLabelNumber] /// Security labels that protects the offer.
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;
  @override
  ContractOffer clone() => throw UnimplementedError();
  ContractOffer copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractParty] /// Offer Recipient.
class ContractParty extends BackboneElement {
  ContractParty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    required this.role,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// Participant in the offer.
  final List<Reference> reference;

  /// [role] /// How the party participates in the offer.
  final CodeableConcept role;
  @override
  ContractParty clone() => throw UnimplementedError();
  ContractParty copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? role,
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

@JsonCodable()
@Data()
@Entity()

/// [ContractAnswer] /// Response to offer text.
class ContractAnswer extends BackboneElement {
  ContractAnswer({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueDecimal,
    this.valueDecimalElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueDate,
    this.valueDateElement,
    required this.valueDateTime,
    this.valueDateTimeElement,
    required this.valueTime,
    this.valueTimeElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueUri,
    this.valueUriElement,
    required this.valueAttachment,
    required this.valueCoding,
    required this.valueQuantity,
    required this.valueReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [valueBoolean] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;

  /// [valueDecimal] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;

  /// [valueInteger] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;

  /// [valueDate] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirDate valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueTime] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirTime valueTime;
  final Element? valueTimeElement;

  /// [valueString] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueUri] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final FhirUri valueUri;
  final Element? valueUriElement;

  /// [valueAttachment] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final Attachment valueAttachment;

  /// [valueCoding] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final Coding valueCoding;

  /// [valueQuantity] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final Quantity valueQuantity;

  /// [valueReference] /// Response to an offer clause or question text, which enables selection of
  /// values to be agreed to, e.g., the period of participation, the date of
  /// occupancy of a rental, warrently duration, or whether biospecimen may be
  /// used for further research.
  final Reference valueReference;
  @override
  ContractAnswer clone() => throw UnimplementedError();
  ContractAnswer copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractAsset] /// Contract Term Asset List.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [scope] /// Differentiates the kind of the asset .
  final CodeableConcept? scope;

  /// [type] /// Target entity type about which the term may be concerned.
  final List<CodeableConcept>? type;

  /// [typeReference] /// Associated entities.
  final List<Reference>? typeReference;

  /// [subtype] /// May be a subtype or part of an offered asset.
  final List<CodeableConcept>? subtype;

  /// [relationship] /// Specifies the applicability of the term to an asset resource instance, and
  /// instances it refers to orinstances that refer to it, and/or are owned by
  /// the offeree.
  final Coding? relationship;

  /// [context] /// Circumstance of the asset.
  final List<ContractContext>? context;

  /// [condition] /// Description of the quality and completeness of the asset that imay be a
  /// factor in its valuation.
  final FhirString? condition;
  final Element? conditionElement;

  /// [periodType] /// Type of Asset availability for use or ownership.
  final List<CodeableConcept>? periodType;

  /// [period] /// Asset relevant contractual time period.
  final List<Period>? period;

  /// [usePeriod] /// Time period of asset use.
  final List<Period>? usePeriod;

  /// [text] /// Clause or question text (Prose Object) concerning the asset in a linked
  /// form, such as a QuestionnaireResponse used in the formation of the
  /// contract.
  final FhirString? text;
  final Element? textElement;

  /// [linkId] /// Id [identifier??] of the clause or question text about the asset in the
  /// referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;

  /// [answer] /// Response to assets.
  final List<ContractAnswer>? answer;

  /// [securityLabelNumber] /// Security labels that protects the asset.
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;

  /// [valuedItem] /// Contract Valued Item List.
  final List<ContractValuedItem>? valuedItem;
  @override
  ContractAsset clone() => throw UnimplementedError();
  ContractAsset copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractContext] /// Circumstance of the asset.
class ContractContext extends BackboneElement {
  ContractContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.code,
    this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// Asset context reference may include the creator, custodian, or owning
  /// Person or Organization (e.g., bank, repository), location held, e.g.,
  /// building, jurisdiction.
  final Reference? reference;

  /// [code] /// Coded representation of the context generally or of the Referenced entity,
  /// such as the asset holder type or location.
  final List<CodeableConcept>? code;

  /// [text] /// Context description.
  final FhirString? text;
  final Element? textElement;
  @override
  ContractContext clone() => throw UnimplementedError();
  ContractContext copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    List<CodeableConcept>? code,
    FhirString? text,
    Element? textElement,
  }) {
    return ContractContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      code: code ?? this.code,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractValuedItem] /// Contract Valued Item List.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [entityCodeableConcept] /// Specific type of Contract Valued Item that may be priced.
  final CodeableConcept? entityCodeableConcept;

  /// [entityReference] /// Specific type of Contract Valued Item that may be priced.
  final Reference? entityReference;

  /// [identifier] /// Identifies a Contract Valued Item instance.
  final Identifier? identifier;

  /// [effectiveTime] /// Indicates the time during which this Contract ValuedItem information is
  /// effective.
  final FhirDateTime? effectiveTime;
  final Element? effectiveTimeElement;

  /// [quantity] /// Specifies the units by which the Contract Valued Item is measured or
  /// counted, and quantifies the countable or measurable Contract Valued Item
  /// instances.
  final Quantity? quantity;

  /// [unitPrice] /// A Contract Valued Item unit valuation measure.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of the Contract Valued Item delivered. The concept of a Factor allows
  /// for a discount or surcharge multiplier to be applied to a monetary amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [points] /// An amount that expresses the weighting (based on difficulty, cost and/or
  /// resource intensiveness) associated with the Contract Valued Item delivered.
  /// The concept of Points allows for assignment of point values for a Contract
  /// Valued Item, such that a monetary amount can be assigned to each point.
  final FhirDecimal? points;
  final Element? pointsElement;

  /// [net] /// Expresses the product of the Contract Valued Item unitQuantity and the
  /// unitPriceAmt. For example, the formula: unit Quantity * unit Price (Cost
  /// per Point) * factor Number * points = net Amount. Quantity, factor and
  /// points are assumed to be 1 if not supplied.
  final Money? net;

  /// [payment] /// Terms of valuation.
  final FhirString? payment;
  final Element? paymentElement;

  /// [paymentDate] /// When payment is due.
  final FhirDateTime? paymentDate;
  final Element? paymentDateElement;

  /// [responsible] /// Who will make payment.
  final Reference? responsible;

  /// [recipient] /// Who will receive payment.
  final Reference? recipient;

  /// [linkId] /// Id of the clause or question text related to the context of this valuedItem
  /// in the referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;

  /// [securityLabelNumber] /// A set of security labels that define which terms are controlled by this
  /// condition.
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;
  @override
  ContractValuedItem clone() => throw UnimplementedError();
  ContractValuedItem copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractAction] /// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [doNotPerform] /// True if the term prohibits the action.
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;

  /// [type] /// Activity or service obligation to be done or not done, performed or not
  /// performed, effectuated or not by this Contract term.
  final CodeableConcept type;

  /// [subject] /// Entity of the action.
  final List<ContractSubject>? subject;

  /// [intent] /// Reason or purpose for the action stipulated by this Contract Provision.
  final CodeableConcept intent;

  /// [linkId] /// Id [identifier??] of the clause or question text related to this action in
  /// the referenced form or QuestionnaireResponse.
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;

  /// [status] /// Current state of the term action.
  final CodeableConcept status;

  /// [context] /// Encounter or Episode with primary association to specified term activity.
  final Reference? context;

  /// [contextLinkId] /// Id [identifier??] of the clause or question text related to the requester
  /// of this action in the referenced form or QuestionnaireResponse.
  final List<FhirString>? contextLinkId;
  final List<Element>? contextLinkIdElement;

  /// [occurrenceDateTime] /// When action happens.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// When action happens.
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// When action happens.
  final Timing? occurrenceTiming;

  /// [requester] /// Who or what initiated the action and has responsibility for its activation.
  final List<Reference>? requester;

  /// [requesterLinkId] /// Id [identifier??] of the clause or question text related to the requester
  /// of this action in the referenced form or QuestionnaireResponse.
  final List<FhirString>? requesterLinkId;
  final List<Element>? requesterLinkIdElement;

  /// [performerType] /// The type of individual that is desired or required to perform or not
  /// perform the action.
  final List<CodeableConcept>? performerType;

  /// [performerRole] /// The type of role or competency of an individual desired or required to
  /// perform or not perform the action.
  final CodeableConcept? performerRole;

  /// [performer] /// Indicates who or what is being asked to perform (or not perform) the ction.
  final Reference? performer;

  /// [performerLinkId] /// Id [identifier??] of the clause or question text related to the reason type
  /// or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  final List<FhirString>? performerLinkId;
  final List<Element>? performerLinkIdElement;

  /// [reasonCode] /// Rationale for the action to be performed or not performed. Describes why
  /// the action is permitted or prohibited.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies permitting or not
  /// permitting this action.
  final List<Reference>? reasonReference;

  /// [reason] /// Describes why the action is to be performed or not performed in textual
  /// form.
  final List<FhirString>? reason;
  final List<Element>? reasonElement;

  /// [reasonLinkId] /// Id [identifier??] of the clause or question text related to the reason type
  /// or reference of this action in the referenced form or
  /// QuestionnaireResponse.
  final List<FhirString>? reasonLinkId;
  final List<Element>? reasonLinkIdElement;

  /// [note] /// Comments made about the term action made by the requester, performer,
  /// subject or other participants.
  final List<Annotation>? note;

  /// [securityLabelNumber] /// Security labels that protects the action.
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;
  @override
  ContractAction clone() => throw UnimplementedError();
  ContractAction copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractSubject] /// Entity of the action.
class ContractSubject extends BackboneElement {
  ContractSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.role,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// The entity the action is performed or not performed on or for.
  final List<Reference> reference;

  /// [role] /// Role type of agent assigned roles in this Contract.
  final CodeableConcept? role;
  @override
  ContractSubject clone() => throw UnimplementedError();
  ContractSubject copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? role,
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

@JsonCodable()
@Data()
@Entity()

/// [ContractSigner] /// Parties with legal standing in the Contract, including the principal
/// parties, the grantor(s) and grantee(s), which are any person or
/// organization bound by the contract, and any ancillary parties, which
/// facilitate the execution of the contract such as a notary or witness.
class ContractSigner extends BackboneElement {
  ContractSigner({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.party,
    required this.signature,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Role of this Contract signer, e.g. notary, grantee.
  final Coding type;

  /// [party] /// Party which is a signator to this Contract.
  final Reference party;

  /// [signature] /// Legally binding Contract DSIG signature contents in Base64.
  final List<Signature> signature;
  @override
  ContractSigner clone() => throw UnimplementedError();
  ContractSigner copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    Reference? party,
    List<Signature>? signature,
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

@JsonCodable()
@Data()
@Entity()

/// [ContractFriendly] /// The "patient friendly language" versionof the Contract in whole or in
/// parts. "Patient friendly language" means the representation of the Contract
/// and Contract Provisions in a manner that is readily accessible and
/// understandable by a layperson in accordance with best practices for
/// communication styles that ensure that those agreeing to or signing the
/// Contract understand the roles, actions, obligations, responsibilities, and
/// implication of the agreement.
class ContractFriendly extends BackboneElement {
  ContractFriendly({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentAttachment] /// Human readable rendering of this Contract in a format and representation
  /// intended to enhance comprehension and ensure understandability.
  final Attachment contentAttachment;

  /// [contentReference] /// Human readable rendering of this Contract in a format and representation
  /// intended to enhance comprehension and ensure understandability.
  final Reference contentReference;
  @override
  ContractFriendly clone() => throw UnimplementedError();
  ContractFriendly copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? contentAttachment,
    Reference? contentReference,
  }) {
    return ContractFriendly(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractLegal] /// List of Legal expressions or representations of this Contract.
class ContractLegal extends BackboneElement {
  ContractLegal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
    this.legallyBindingAttachment,
    this.legallyBindingReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentAttachment] /// Contract legal text in human renderable form.
  final Attachment contentAttachment;

  /// [contentReference] /// Contract legal text in human renderable form.
  final Reference contentReference;

  /// [legallyBindingAttachment] /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of truth"
  /// and which would be the basis for legal action related to enforcement of
  /// this Contract.
  final Attachment? legallyBindingAttachment;

  /// [legallyBindingReference] /// Legally binding Contract: This is the signed and legally recognized
  /// representation of the Contract, which is considered the "source of truth"
  /// and which would be the basis for legal action related to enforcement of
  /// this Contract.
  final Reference? legallyBindingReference;
  @override
  ContractLegal clone() => throw UnimplementedError();
  ContractLegal copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? contentAttachment,
    Reference? contentReference,
    Attachment? legallyBindingAttachment,
    Reference? legallyBindingReference,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ContractRule] /// List of Computable Policy Rule Language Representations of this Contract.
class ContractRule extends BackboneElement {
  ContractRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentAttachment] /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  final Attachment contentAttachment;

  /// [contentReference] /// Computable Contract conveyed using a policy rule language (e.g. XACML,
  /// DKAL, SecPal).
  final Reference contentReference;
  @override
  ContractRule clone() => throw UnimplementedError();
  ContractRule copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? contentAttachment,
    Reference? contentReference,
  }) {
    return ContractRule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
    );
  }
}
