import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Contract extends DomainResource {
  final List<Identifier>? identifier;
  final FhirUri? url;
  final Element? urlElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? legalState;
  final Reference? instantiatesCanonical;
  final FhirUri? instantiatesUri;
  final Element? instantiatesUriElement;
  final CodeableConcept? contentDerivative;
  final FhirDateTime? issued;
  final Element? issuedElement;
  final Period? applies;
  final CodeableConcept? expirationType;
  final List<Reference>? subject;
  final List<Reference>? authority;
  final List<Reference>? domain;
  final List<Reference>? site;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirString? subtitle;
  final Element? subtitleElement;
  final List<FhirString>? alias;
  final List<Element>? aliasElement;
  final Reference? author;
  final CodeableConcept? scope;
  final CodeableConcept? topicCodeableConcept;
  final Reference? topicReference;
  final CodeableConcept? type;
  final List<CodeableConcept>? subType;
  final ContractContentDefinition? contentDefinition;
  final List<ContractTerm>? term;
  final List<Reference>? supportingInfo;
  final List<Reference>? relevantHistory;
  final List<ContractSigner>? signer;
  final List<ContractFriendly>? friendly;
  final List<ContractLegal>? legal;
  final List<ContractRule>? rule;
  final Attachment? legallyBindingAttachment;
  final Reference? legallyBindingReference;

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
    this.legallyBindingAttachment,
    this.legallyBindingReference,
  }): super(resourceType: R4ResourceType.Contract);

@override
Contract clone() => this;

}


@Data()
@JsonCodable()
class ContractContentDefinition {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final CodeableConcept? subType;
  final Reference? publisher;
  final FhirDateTime? publicationDate;
  final Element? publicationDateElement;
  final FhirCode? publicationStatus;
  final Element? publicationStatusElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  ContractContentDefinition({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.subType,
    this.publisher,
    this.publicationDate,
    this.publicationDateElement,
    this.publicationStatus,
    this.publicationStatusElement,
    this.copyright,
    this.copyrightElement,
  });

}


@Data()
@JsonCodable()
class ContractTerm {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Identifier? identifier;
  final FhirDateTime? issued;
  final Element? issuedElement;
  final Period? applies;
  final CodeableConcept? topicCodeableConcept;
  final Reference? topicReference;
  final CodeableConcept? type;
  final CodeableConcept? subType;
  final FhirString? text;
  final Element? textElement;
  final List<ContractSecurityLabel>? securityLabel;
  final ContractOffer offer;
  final List<ContractAsset>? asset;
  final List<ContractAction>? action;
  final List<ContractTerm>? group;

  ContractTerm({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class ContractSecurityLabel {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<FhirUnsignedInt>? number;
  final List<Element>? numberElement;
  final Coding classification;
  final List<Coding>? category;
  final List<Coding>? control;

  ContractSecurityLabel({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.number,
    this.numberElement,
    required this.classification,
    this.category,
    this.control,
  });

}


@Data()
@JsonCodable()
class ContractOffer {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<Identifier>? identifier;
  final List<ContractParty>? party;
  final Reference? topic;
  final CodeableConcept? type;
  final CodeableConcept? decision;
  final List<CodeableConcept>? decisionMode;
  final List<ContractAnswer>? answer;
  final FhirString? text;
  final Element? textElement;
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;

  ContractOffer({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class ContractParty {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<Reference> reference;
  final CodeableConcept role;

  ContractParty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    required this.role,
  });

}


@Data()
@JsonCodable()
class ContractAnswer {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final double? valueDecimal;
  final Element? valueDecimalElement;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final FhirString? valueDate;
  final Element? valueDateElement;
  final FhirString? valueDateTime;
  final Element? valueDateTimeElement;
  final FhirString? valueTime;
  final Element? valueTimeElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final FhirString? valueUri;
  final Element? valueUriElement;
  final Attachment? valueAttachment;
  final Coding? valueCoding;
  final Quantity? valueQuantity;
  final Reference? valueReference;

  ContractAnswer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDate,
    this.valueDateElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueString,
    this.valueStringElement,
    this.valueUri,
    this.valueUriElement,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
  });

}


@Data()
@JsonCodable()
class ContractAsset {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? scope;
  final List<CodeableConcept>? type;
  final List<Reference>? typeReference;
  final List<CodeableConcept>? subtype;
  final Coding? relationship;
  final List<ContractContext>? context;
  final FhirString? condition;
  final Element? conditionElement;
  final List<CodeableConcept>? periodType;
  final List<Period>? period;
  final List<Period>? usePeriod;
  final FhirString? text;
  final Element? textElement;
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;
  final List<ContractAnswer>? answer;
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;
  final List<ContractValuedItem>? valuedItem;

  ContractAsset({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class ContractContext {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference? reference;
  final List<CodeableConcept>? code;
  final FhirString? text;
  final Element? textElement;

  ContractContext({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.reference,
    this.code,
    this.text,
    this.textElement,
  });

}


@Data()
@JsonCodable()
class ContractValuedItem {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? entityCodeableConcept;
  final Reference? entityReference;
  final Identifier? identifier;
  final FhirDateTime? effectiveTime;
  final Element? effectiveTimeElement;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final FhirDecimal? points;
  final Element? pointsElement;
  final Money? net;
  final FhirString? payment;
  final Element? paymentElement;
  final FhirDateTime? paymentDate;
  final Element? paymentDateElement;
  final Reference? responsible;
  final Reference? recipient;
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;

  ContractValuedItem({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class ContractAction {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;
  final CodeableConcept type;
  final List<ContractSubject>? subject;
  final CodeableConcept intent;
  final List<FhirString>? linkId;
  final List<Element>? linkIdElement;
  final CodeableConcept status;
  final Reference? context;
  final List<FhirString>? contextLinkId;
  final List<Element>? contextLinkIdElement;
  final FhirString? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final Period? occurrencePeriod;
  final Timing? occurrenceTiming;
  final List<Reference>? requester;
  final List<FhirString>? requesterLinkId;
  final List<Element>? requesterLinkIdElement;
  final List<CodeableConcept>? performerType;
  final CodeableConcept? performerRole;
  final Reference? performer;
  final List<FhirString>? performerLinkId;
  final List<Element>? performerLinkIdElement;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<FhirString>? reason;
  final List<Element>? reasonElement;
  final List<FhirString>? reasonLinkId;
  final List<Element>? reasonLinkIdElement;
  final List<Annotation>? note;
  final List<FhirUnsignedInt>? securityLabelNumber;
  final List<Element>? securityLabelNumberElement;

  ContractAction({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class ContractSubject {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<Reference> reference;
  final CodeableConcept? role;

  ContractSubject({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    this.role,
  });

}


@Data()
@JsonCodable()
class ContractSigner {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Coding type;
  final Reference party;
  final List<Signature> signature;

  ContractSigner({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.party,
    required this.signature,
  });

}


@Data()
@JsonCodable()
class ContractFriendly {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Attachment? contentAttachment;
  final Reference? contentReference;

  ContractFriendly({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

}


@Data()
@JsonCodable()
class ContractLegal {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Attachment? contentAttachment;
  final Reference? contentReference;

  ContractLegal({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

}


@Data()
@JsonCodable()
class ContractRule {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Attachment? contentAttachment;
  final Reference? contentReference;

  ContractRule({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

}



