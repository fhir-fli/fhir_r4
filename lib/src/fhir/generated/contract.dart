import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Contract {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String version;
  final PrimitiveElement versionElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept legalState;
  final Reference instantiatesCanonical;
  final FhirUri instantiatesUri;
  final PrimitiveElement instantiatesUriElement;
  final CodeableConcept contentDerivative;
  final FhirDateTime issued;
  final PrimitiveElement issuedElement;
  final Period applies;
  final CodeableConcept expirationType;
  final List<Reference> subject;
  final List<Reference> authority;
  final List<Reference> domain;
  final List<Reference> site;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final String subtitle;
  final PrimitiveElement subtitleElement;
  final List<String> alias;
  final List<PrimitiveElement> aliasElement;
  final Reference author;
  final CodeableConcept scope;
  final CodeableConcept topicCodeableConcept;
  final Reference topicReference;
  final CodeableConcept type;
  final List<CodeableConcept> subType;
  final ContractContentDefinition contentDefinition;
  final List<ContractTerm> term;
  final List<Reference> supportingInfo;
  final List<Reference> relevantHistory;
  final List<ContractSigner> signer;
  final List<ContractFriendly> friendly;
  final List<ContractLegal> legal;
  final List<ContractRule> rule;
  final Attachment legallyBindingAttachment;
  final Reference legallyBindingReference;
  const Contract({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.url,
    required this.urlElement,
    required this.version,
    required this.versionElement,
    required this.status,
    required this.statusElement,
    required this.legalState,
    required this.instantiatesCanonical,
    required this.instantiatesUri,
    required this.instantiatesUriElement,
    required this.contentDerivative,
    required this.issued,
    required this.issuedElement,
    required this.applies,
    required this.expirationType,
    required this.subject,
    required this.authority,
    required this.domain,
    required this.site,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.subtitle,
    required this.subtitleElement,
    required this.alias,
    required this.aliasElement,
    required this.author,
    required this.scope,
    required this.topicCodeableConcept,
    required this.topicReference,
    required this.type,
    required this.subType,
    required this.contentDefinition,
    required this.term,
    required this.supportingInfo,
    required this.relevantHistory,
    required this.signer,
    required this.friendly,
    required this.legal,
    required this.rule,
    required this.legallyBindingAttachment,
    required this.legallyBindingReference,
  });
}

@Data()
@JsonCodable()
class ContractContentDefinition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept subType;
  final Reference publisher;
  final FhirDateTime publicationDate;
  final PrimitiveElement publicationDateElement;
  final FhirCode publicationStatus;
  final PrimitiveElement publicationStatusElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  const ContractContentDefinition({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.subType,
    required this.publisher,
    required this.publicationDate,
    required this.publicationDateElement,
    required this.publicationStatus,
    required this.publicationStatusElement,
    required this.copyright,
    required this.copyrightElement,
  });
}

@Data()
@JsonCodable()
class ContractTerm {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final FhirDateTime issued;
  final PrimitiveElement issuedElement;
  final Period applies;
  final CodeableConcept topicCodeableConcept;
  final Reference topicReference;
  final CodeableConcept type;
  final CodeableConcept subType;
  final String text;
  final PrimitiveElement textElement;
  final List<ContractSecurityLabel> securityLabel;
  final ContractOffer offer;
  final List<ContractAsset> asset;
  final List<ContractAction> action;
  final List<ContractTerm> group;
  const ContractTerm({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.issued,
    required this.issuedElement,
    required this.applies,
    required this.topicCodeableConcept,
    required this.topicReference,
    required this.type,
    required this.subType,
    required this.text,
    required this.textElement,
    required this.securityLabel,
    required this.offer,
    required this.asset,
    required this.action,
    required this.group,
  });
}

@Data()
@JsonCodable()
class ContractSecurityLabel {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirUnsignedInt> number;
  final List<PrimitiveElement> numberElement;
  final Coding classification;
  final List<Coding> category;
  final List<Coding> control;
  const ContractSecurityLabel({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.number,
    required this.numberElement,
    required this.classification,
    required this.category,
    required this.control,
  });
}

@Data()
@JsonCodable()
class ContractOffer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<ContractParty> party;
  final Reference topic;
  final CodeableConcept type;
  final CodeableConcept decision;
  final List<CodeableConcept> decisionMode;
  final List<ContractAnswer> answer;
  final String text;
  final PrimitiveElement textElement;
  final List<String> linkId;
  final List<PrimitiveElement> linkIdElement;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> securityLabelNumberElement;
  const ContractOffer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.party,
    required this.topic,
    required this.type,
    required this.decision,
    required this.decisionMode,
    required this.answer,
    required this.text,
    required this.textElement,
    required this.linkId,
    required this.linkIdElement,
    required this.securityLabelNumber,
    required this.securityLabelNumberElement,
  });
}

@Data()
@JsonCodable()
class ContractParty {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Reference> reference;
  final CodeableConcept role;
  const ContractParty({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.reference,
    required this.role,
  });
}

@Data()
@JsonCodable()
class ContractAnswer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final String valueUri;
  final PrimitiveElement valueUriElement;
  final Attachment valueAttachment;
  final Coding valueCoding;
  final Quantity valueQuantity;
  final Reference valueReference;
  const ContractAnswer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueDecimal,
    required this.valueDecimalElement,
    required this.valueInteger,
    required this.valueIntegerElement,
    required this.valueDate,
    required this.valueDateElement,
    required this.valueDateTime,
    required this.valueDateTimeElement,
    required this.valueTime,
    required this.valueTimeElement,
    required this.valueString,
    required this.valueStringElement,
    required this.valueUri,
    required this.valueUriElement,
    required this.valueAttachment,
    required this.valueCoding,
    required this.valueQuantity,
    required this.valueReference,
  });
}

@Data()
@JsonCodable()
class ContractAsset {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept scope;
  final List<CodeableConcept> type;
  final List<Reference> typeReference;
  final List<CodeableConcept> subtype;
  final Coding relationship;
  final List<ContractContext> context;
  final String condition;
  final PrimitiveElement conditionElement;
  final List<CodeableConcept> periodType;
  final List<Period> period;
  final List<Period> usePeriod;
  final String text;
  final PrimitiveElement textElement;
  final List<String> linkId;
  final List<PrimitiveElement> linkIdElement;
  final List<ContractAnswer> answer;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> securityLabelNumberElement;
  final List<ContractValuedItem> valuedItem;
  const ContractAsset({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.scope,
    required this.type,
    required this.typeReference,
    required this.subtype,
    required this.relationship,
    required this.context,
    required this.condition,
    required this.conditionElement,
    required this.periodType,
    required this.period,
    required this.usePeriod,
    required this.text,
    required this.textElement,
    required this.linkId,
    required this.linkIdElement,
    required this.answer,
    required this.securityLabelNumber,
    required this.securityLabelNumberElement,
    required this.valuedItem,
  });
}

@Data()
@JsonCodable()
class ContractContext {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference reference;
  final List<CodeableConcept> code;
  final String text;
  final PrimitiveElement textElement;
  const ContractContext({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.reference,
    required this.code,
    required this.text,
    required this.textElement,
  });
}

@Data()
@JsonCodable()
class ContractValuedItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept entityCodeableConcept;
  final Reference entityReference;
  final Identifier identifier;
  final FhirDateTime effectiveTime;
  final PrimitiveElement effectiveTimeElement;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final FhirDecimal points;
  final PrimitiveElement pointsElement;
  final Money net;
  final String payment;
  final PrimitiveElement paymentElement;
  final FhirDateTime paymentDate;
  final PrimitiveElement paymentDateElement;
  final Reference responsible;
  final Reference recipient;
  final List<String> linkId;
  final List<PrimitiveElement> linkIdElement;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> securityLabelNumberElement;
  const ContractValuedItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.entityCodeableConcept,
    required this.entityReference,
    required this.identifier,
    required this.effectiveTime,
    required this.effectiveTimeElement,
    required this.quantity,
    required this.unitPrice,
    required this.factor,
    required this.factorElement,
    required this.points,
    required this.pointsElement,
    required this.net,
    required this.payment,
    required this.paymentElement,
    required this.paymentDate,
    required this.paymentDateElement,
    required this.responsible,
    required this.recipient,
    required this.linkId,
    required this.linkIdElement,
    required this.securityLabelNumber,
    required this.securityLabelNumberElement,
  });
}

@Data()
@JsonCodable()
class ContractAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean doNotPerform;
  final PrimitiveElement doNotPerformElement;
  final CodeableConcept type;
  final List<ContractSubject> subject;
  final CodeableConcept intent;
  final List<String> linkId;
  final List<PrimitiveElement> linkIdElement;
  final CodeableConcept status;
  final Reference context;
  final List<String> contextLinkId;
  final List<PrimitiveElement> contextLinkIdElement;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final List<Reference> requester;
  final List<String> requesterLinkId;
  final List<PrimitiveElement> requesterLinkIdElement;
  final List<CodeableConcept> performerType;
  final CodeableConcept performerRole;
  final Reference performer;
  final List<String> performerLinkId;
  final List<PrimitiveElement> performerLinkIdElement;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<String> reason;
  final List<PrimitiveElement> reasonElement;
  final List<String> reasonLinkId;
  final List<PrimitiveElement> reasonLinkIdElement;
  final List<Annotation> note;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> securityLabelNumberElement;
  const ContractAction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.doNotPerform,
    required this.doNotPerformElement,
    required this.type,
    required this.subject,
    required this.intent,
    required this.linkId,
    required this.linkIdElement,
    required this.status,
    required this.context,
    required this.contextLinkId,
    required this.contextLinkIdElement,
    required this.occurrenceDateTime,
    required this.occurrenceDateTimeElement,
    required this.occurrencePeriod,
    required this.occurrenceTiming,
    required this.requester,
    required this.requesterLinkId,
    required this.requesterLinkIdElement,
    required this.performerType,
    required this.performerRole,
    required this.performer,
    required this.performerLinkId,
    required this.performerLinkIdElement,
    required this.reasonCode,
    required this.reasonReference,
    required this.reason,
    required this.reasonElement,
    required this.reasonLinkId,
    required this.reasonLinkIdElement,
    required this.note,
    required this.securityLabelNumber,
    required this.securityLabelNumberElement,
  });
}

@Data()
@JsonCodable()
class ContractSubject {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Reference> reference;
  final CodeableConcept role;
  const ContractSubject({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.reference,
    required this.role,
  });
}

@Data()
@JsonCodable()
class ContractSigner {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Coding type;
  final Reference party;
  final List<Signature> signature;
  const ContractSigner({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.party,
    required this.signature,
  });
}

@Data()
@JsonCodable()
class ContractFriendly {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
  const ContractFriendly({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
  });
}

@Data()
@JsonCodable()
class ContractLegal {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
  const ContractLegal({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
  });
}

@Data()
@JsonCodable()
class ContractRule {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
  const ContractRule({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.contentAttachment,
    required this.contentReference,
  });
}


