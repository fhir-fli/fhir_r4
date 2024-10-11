import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Contract extends Resource {
  Contract({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? url;
  String? version;
  String? status;
  ToOne<CodeableConcept>? legalState = ToOne<CodeableConcept>();
  ToOne<Reference>? instantiatesCanonical = ToOne<Reference>();
  String? instantiatesUri;
  ToOne<CodeableConcept>? contentDerivative = ToOne<CodeableConcept>();
  String? issued;
  ToOne<Period>? applies = ToOne<Period>();
  ToOne<CodeableConcept>? expirationType = ToOne<CodeableConcept>();
  ToMany<Reference>? subject = ToMany<Reference>();
  ToMany<Reference>? authority = ToMany<Reference>();
  ToMany<Reference>? domain = ToMany<Reference>();
  ToMany<Reference>? site = ToMany<Reference>();
  String? name;
  String? title;
  String? subtitle;
  List<String>? alias;
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
    required this.publicationStatus,
    this.copyright,
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
  String publicationStatus;
  String? copyright;
}

@Entity()
class ContractTerm {
  ContractTerm({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.issued,
    this.applies,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.text,
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
  ToOne<Period>? applies = ToOne<Period>();
  ToOne<CodeableConcept>? topicCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? topicReference = ToOne<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? subType = ToOne<CodeableConcept>();
  String? text;
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
    this.linkId,
    this.securityLabelNumber,
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
  List<String>? linkId;
  List<int>? securityLabelNumber;
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
    this.valueDecimal,
    this.valueInteger,
    this.valueDate,
    this.valueDateTime,
    this.valueTime,
    this.valueString,
    this.valueUri,
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
  double? valueDecimal;
  int? valueInteger;
  String? valueDate;
  String? valueDateTime;
  String? valueTime;
  String? valueString;
  String? valueUri;
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
    this.periodType,
    this.period,
    this.usePeriod,
    this.text,
    this.linkId,
    this.answer,
    this.securityLabelNumber,
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
  ToMany<CodeableConcept>? periodType = ToMany<CodeableConcept>();
  ToMany<Period>? period = ToMany<Period>();
  ToMany<Period>? usePeriod = ToMany<Period>();
  String? text;
  List<String>? linkId;
  ToMany<ContractAnswer>? answer = ToMany<ContractAnswer>();
  List<int>? securityLabelNumber;
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? reference = ToOne<Reference>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  String? text;
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
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  double? points;
  ToOne<Money>? net = ToOne<Money>();
  String? payment;
  String? paymentDate;
  ToOne<Reference>? responsible = ToOne<Reference>();
  ToOne<Reference>? recipient = ToOne<Reference>();
  List<String>? linkId;
  List<int>? securityLabelNumber;
}

@Entity()
class ContractAction {
  ContractAction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.doNotPerform,
    required this.type,
    this.subject,
    required this.intent,
    this.linkId,
    required this.status,
    this.context,
    this.contextLinkId,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? doNotPerform;
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<ContractSubject>? subject = ToMany<ContractSubject>();
  ToOne<CodeableConcept> intent = ToOne<CodeableConcept>();
  List<String>? linkId;
  ToOne<CodeableConcept> status = ToOne<CodeableConcept>();
  ToOne<Reference>? context = ToOne<Reference>();
  List<String>? contextLinkId;
  String? occurrenceDateTime;
  ToOne<Period>? occurrencePeriod = ToOne<Period>();
  ToOne<Timing>? occurrenceTiming = ToOne<Timing>();
  ToMany<Reference>? requester = ToMany<Reference>();
  List<String>? requesterLinkId;
  ToMany<CodeableConcept>? performerType = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? performerRole = ToOne<CodeableConcept>();
  ToOne<Reference>? performer = ToOne<Reference>();
  List<String>? performerLinkId;
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  List<String>? reason;
  List<String>? reasonLinkId;
  ToMany<Annotation>? note = ToMany<Annotation>();
  List<int>? securityLabelNumber;
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
