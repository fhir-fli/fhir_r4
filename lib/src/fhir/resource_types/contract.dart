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

@override
Contract clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractContentDefinition extends BackboneElement {
  final CodeableConcept type;
  final CodeableConcept? subType;
  final Reference? publisher;
  final FhirDateTime? publicationDate;
  final Element? publicationDateElement;
  final FhirCode publicationStatus;
  final Element? publicationStatusElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

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

@override
ContractContentDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractTerm extends BackboneElement {
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

@override
ContractTerm clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractSecurityLabel extends BackboneElement {
  final List<FhirUnsignedInt>? number;
  final List<Element>? numberElement;
  final Coding classification;
  final List<Coding>? category;
  final List<Coding>? control;

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

@override
ContractSecurityLabel clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractOffer extends BackboneElement {
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

@override
ContractOffer clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractParty extends BackboneElement {
  final List<Reference> reference;
  final CodeableConcept role;

  ContractParty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    required this.role,
  });

@override
ContractParty clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractAnswer extends BackboneElement {
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;
  final FhirDate valueDate;
  final Element? valueDateElement;
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;
  final FhirTime valueTime;
  final Element? valueTimeElement;
  final FhirString valueString;
  final Element? valueStringElement;
  final FhirUri valueUri;
  final Element? valueUriElement;
  final Attachment valueAttachment;
  final Coding valueCoding;
  final Quantity valueQuantity;
  final Reference valueReference;

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

@override
ContractAnswer clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractAsset extends BackboneElement {
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

@override
ContractAsset clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractContext extends BackboneElement {
  final Reference? reference;
  final List<CodeableConcept>? code;
  final FhirString? text;
  final Element? textElement;

  ContractContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.code,
    this.text,
this.textElement,
  });

@override
ContractContext clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractValuedItem extends BackboneElement {
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

@override
ContractValuedItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractAction extends BackboneElement {
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
  final FhirDateTime? occurrenceDateTime;
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

@override
ContractAction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractSubject extends BackboneElement {
  final List<Reference> reference;
  final CodeableConcept? role;

  ContractSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.role,
  });

@override
ContractSubject clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractSigner extends BackboneElement {
  final Coding type;
  final Reference party;
  final List<Signature> signature;

  ContractSigner({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.party,
    required this.signature,
  });

@override
ContractSigner clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractFriendly extends BackboneElement {
  final Attachment contentAttachment;
  final Reference contentReference;

  ContractFriendly({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
  });

@override
ContractFriendly clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractLegal extends BackboneElement {
  final Attachment contentAttachment;
  final Reference contentReference;
  final Attachment? legallyBindingAttachment;
  final Reference? legallyBindingReference;

  ContractLegal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
    this.legallyBindingAttachment,
    this.legallyBindingReference,
  });

@override
ContractLegal clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ContractRule extends BackboneElement {
  final Attachment contentAttachment;
  final Reference contentReference;

  ContractRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
  });

@override
ContractRule clone() => throw UnimplementedError();
}

