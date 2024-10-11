import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Contract extends Resource {
  Contract({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? status;
  ToOne<Element>? statusElement = ToOne<Element>();
  ToOne<CodeableConcept>? legalState = ToOne<CodeableConcept>();
  ToOne<Reference>? instantiatesCanonical = ToOne<Reference>();
  String? instantiatesUri;
  ToOne<Element>? instantiatesUriElement = ToOne<Element>();
  ToOne<CodeableConcept>? contentDerivative = ToOne<CodeableConcept>();
  String? issued;
  ToOne<Element>? issuedElement = ToOne<Element>();
  ToOne<Period>? applies = ToOne<Period>();
  ToOne<CodeableConcept>? expirationType = ToOne<CodeableConcept>();
  ToMany<Reference>? subject = ToMany<Reference>();
  ToMany<Reference>? authority = ToMany<Reference>();
  ToMany<Reference>? domain = ToMany<Reference>();
  ToMany<Reference>? site = ToMany<Reference>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String? subtitle;
  ToOne<Element>? subtitleElement = ToOne<Element>();
  List<String>? alias;
  ToMany<Element>? aliasElement = ToMany<Element>();
  ToOne<Reference>? author = ToOne<Reference>();
  ToOne<CodeableConcept>? scope = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? topicCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? topicReference = ToOne<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? subType = ToMany<CodeableConcept>();
  ToOne<ContractContentDefinition>? contentDefinition =
      ToOne<ContractContentDefinition>();
  ToMany<ContractTerm>? term = ToMany<ContractTerm>();
  ToMany<Reference>? supportingInfo = ToMany<Reference>();
  ToMany<Reference>? relevantHistory = ToMany<Reference>();
  ToMany<ContractSigner>? signer = ToMany<ContractSigner>();
  ToMany<ContractFriendly>? friendly = ToMany<ContractFriendly>();
  ToMany<ContractLegal>? legal = ToMany<ContractLegal>();
  ToMany<ContractRule>? rule = ToMany<ContractRule>();
}

@Entity()
class ContractContentDefinition {
  ContractContentDefinition({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? subType = ToOne<CodeableConcept>();
  ToOne<Reference>? publisher = ToOne<Reference>();
  String? publicationDate;
  ToOne<Element>? publicationDateElement = ToOne<Element>();
  String publicationStatus;
  ToOne<Element>? publicationStatusElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
}

@Entity()
class ContractTerm {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? issued;
  ToOne<Element>? issuedElement = ToOne<Element>();
  ToOne<Period>? applies = ToOne<Period>();
  ToOne<CodeableConcept>? topicCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? topicReference = ToOne<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? subType = ToOne<CodeableConcept>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
  ToMany<ContractSecurityLabel>? securityLabel =
      ToMany<ContractSecurityLabel>();
  ToOne<ContractOffer> offer = ToOne<ContractOffer>();
  ToMany<ContractAsset>? asset = ToMany<ContractAsset>();
  ToMany<ContractAction>? action = ToMany<ContractAction>();
  ToMany<ContractTerm>? group = ToMany<ContractTerm>();
}

@Entity()
class ContractSecurityLabel {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<int>? number;
  ToMany<Element>? numberElement = ToMany<Element>();
  ToOne<Coding> classification = ToOne<Coding>();
  ToMany<Coding>? category = ToMany<Coding>();
  ToMany<Coding>? control = ToMany<Coding>();
}

@Entity()
class ContractOffer {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<ContractParty>? party = ToMany<ContractParty>();
  ToOne<Reference>? topic = ToOne<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? decision = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? decisionMode = ToMany<CodeableConcept>();
  ToMany<ContractAnswer>? answer = ToMany<ContractAnswer>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
  List<String>? linkId;
  ToMany<Element>? linkIdElement = ToMany<Element>();
  List<int>? securityLabelNumber;
  ToMany<Element>? securityLabelNumberElement = ToMany<Element>();
}

@Entity()
class ContractParty {
  ContractParty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    required this.role,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Reference> reference = ToMany<Reference>();
  ToOne<CodeableConcept> role = ToOne<CodeableConcept>();
}

@Entity()
class ContractAnswer {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? valueBoolean;
  ToOne<Element>? valueBooleanElement = ToOne<Element>();
  double? valueDecimal;
  ToOne<Element>? valueDecimalElement = ToOne<Element>();
  int? valueInteger;
  ToOne<Element>? valueIntegerElement = ToOne<Element>();
  String? valueDate;
  ToOne<Element>? valueDateElement = ToOne<Element>();
  String? valueDateTime;
  ToOne<Element>? valueDateTimeElement = ToOne<Element>();
  String? valueTime;
  ToOne<Element>? valueTimeElement = ToOne<Element>();
  String? valueString;
  ToOne<Element>? valueStringElement = ToOne<Element>();
  String? valueUri;
  ToOne<Element>? valueUriElement = ToOne<Element>();
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
  ToOne<Coding>? valueCoding = ToOne<Coding>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
}

@Entity()
class ContractAsset {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? scope = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToMany<Reference>? typeReference = ToMany<Reference>();
  ToMany<CodeableConcept>? subtype = ToMany<CodeableConcept>();
  ToOne<Coding>? relationship = ToOne<Coding>();
  ToMany<ContractContext>? context = ToMany<ContractContext>();
  String? condition;
  ToOne<Element>? conditionElement = ToOne<Element>();
  ToMany<CodeableConcept>? periodType = ToMany<CodeableConcept>();
  ToMany<Period>? period = ToMany<Period>();
  ToMany<Period>? usePeriod = ToMany<Period>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
  List<String>? linkId;
  ToMany<Element>? linkIdElement = ToMany<Element>();
  ToMany<ContractAnswer>? answer = ToMany<ContractAnswer>();
  List<int>? securityLabelNumber;
  ToMany<Element>? securityLabelNumberElement = ToMany<Element>();
  ToMany<ContractValuedItem>? valuedItem = ToMany<ContractValuedItem>();
}

@Entity()
class ContractContext {
  ContractContext({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.reference,
    this.code,
    this.text,
    this.textElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? reference = ToOne<Reference>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
}

@Entity()
class ContractValuedItem {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? entityCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? entityReference = ToOne<Reference>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? effectiveTime;
  ToOne<Element>? effectiveTimeElement = ToOne<Element>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Element>? factorElement = ToOne<Element>();
  double? points;
  ToOne<Element>? pointsElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  String? payment;
  ToOne<Element>? paymentElement = ToOne<Element>();
  String? paymentDate;
  ToOne<Element>? paymentDateElement = ToOne<Element>();
  ToOne<Reference>? responsible = ToOne<Reference>();
  ToOne<Reference>? recipient = ToOne<Reference>();
  List<String>? linkId;
  ToMany<Element>? linkIdElement = ToMany<Element>();
  List<int>? securityLabelNumber;
  ToMany<Element>? securityLabelNumberElement = ToMany<Element>();
}

@Entity()
class ContractAction {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? doNotPerform;
  ToOne<Element>? doNotPerformElement = ToOne<Element>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<ContractSubject>? subject = ToMany<ContractSubject>();
  ToOne<CodeableConcept> intent = ToOne<CodeableConcept>();
  List<String>? linkId;
  ToMany<Element>? linkIdElement = ToMany<Element>();
  ToOne<CodeableConcept> status = ToOne<CodeableConcept>();
  ToOne<Reference>? context = ToOne<Reference>();
  List<String>? contextLinkId;
  ToMany<Element>? contextLinkIdElement = ToMany<Element>();
  String? occurrenceDateTime;
  ToOne<Element>? occurrenceDateTimeElement = ToOne<Element>();
  ToOne<Period>? occurrencePeriod = ToOne<Period>();
  ToOne<Timing>? occurrenceTiming = ToOne<Timing>();
  ToMany<Reference>? requester = ToMany<Reference>();
  List<String>? requesterLinkId;
  ToMany<Element>? requesterLinkIdElement = ToMany<Element>();
  ToMany<CodeableConcept>? performerType = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? performerRole = ToOne<CodeableConcept>();
  ToOne<Reference>? performer = ToOne<Reference>();
  List<String>? performerLinkId;
  ToMany<Element>? performerLinkIdElement = ToMany<Element>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  List<String>? reason;
  ToMany<Element>? reasonElement = ToMany<Element>();
  List<String>? reasonLinkId;
  ToMany<Element>? reasonLinkIdElement = ToMany<Element>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  List<int>? securityLabelNumber;
  ToMany<Element>? securityLabelNumberElement = ToMany<Element>();
}

@Entity()
class ContractSubject {
  ContractSubject({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    this.role,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Reference> reference = ToMany<Reference>();
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
}

@Entity()
class ContractSigner {
  ContractSigner({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.party,
    required this.signature,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Coding> type = ToOne<Coding>();
  ToOne<Reference> party = ToOne<Reference>();
  ToMany<Signature> signature = ToMany<Signature>();
}

@Entity()
class ContractFriendly {
  ContractFriendly({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Attachment>? contentAttachment = ToOne<Attachment>();
  ToOne<Reference>? contentReference = ToOne<Reference>();
}

@Entity()
class ContractLegal {
  ContractLegal({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
    this.legallyBindingAttachment,
    this.legallyBindingReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Attachment>? contentAttachment = ToOne<Attachment>();
  ToOne<Reference>? contentReference = ToOne<Reference>();
  ToOne<Attachment>? legallyBindingAttachment = ToOne<Attachment>();
  ToOne<Reference>? legallyBindingReference = ToOne<Reference>();
}

@Entity()
class ContractRule {
  ContractRule({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Attachment>? contentAttachment = ToOne<Attachment>();
  ToOne<Reference>? contentReference = ToOne<Reference>();
}
