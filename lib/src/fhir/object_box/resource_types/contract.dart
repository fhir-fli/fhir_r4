// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxContract {
  ObjectBoxContract({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? legalState =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? instantiatesCanonical =
      ToOne<ObjectBoxReference>();
  String? instantiatesUri;
  ToOne<ObjectBoxElement>? instantiatesUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? contentDerivative =
      ToOne<ObjectBoxCodeableConcept>();
  String? issued;
  ToOne<ObjectBoxElement>? issuedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? applies = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? expirationType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? subject = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? authority = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? domain = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? site = ToMany<ObjectBoxReference>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement>? subtitleElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement>? aliasElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? author = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? scope = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? topicCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? topicReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? subType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxContractContentDefinition>? contentDefinition =
      ToOne<ObjectBoxContractContentDefinition>();
  ToMany<ObjectBoxContractTerm>? term = ToMany<ObjectBoxContractTerm>();
  ToMany<ObjectBoxReference>? supportingInfo = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? relevantHistory = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxContractSigner>? signer = ToMany<ObjectBoxContractSigner>();
  ToMany<ObjectBoxContractFriendly>? friendly =
      ToMany<ObjectBoxContractFriendly>();
  ToMany<ObjectBoxContractLegal>? legal = ToMany<ObjectBoxContractLegal>();
  ToMany<ObjectBoxContractRule>? rule = ToMany<ObjectBoxContractRule>();
}

@Entity()
class ObjectBoxContractContentDefinition {
  ObjectBoxContractContentDefinition({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? subType = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? publisher = ToOne<ObjectBoxReference>();
  String? publicationDate;
  ToOne<ObjectBoxElement>? publicationDateElement = ToOne<ObjectBoxElement>();
  String publicationStatus;
  ToOne<ObjectBoxElement>? publicationStatusElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractTerm {
  ObjectBoxContractTerm({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String? issued;
  ToOne<ObjectBoxElement>? issuedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? applies = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? topicCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? topicReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? subType = ToOne<ObjectBoxCodeableConcept>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContractSecurityLabel>? securityLabel =
      ToMany<ObjectBoxContractSecurityLabel>();
  ToOne<ObjectBoxContractOffer> offer = ToOne<ObjectBoxContractOffer>();
  ToMany<ObjectBoxContractAsset>? asset = ToMany<ObjectBoxContractAsset>();
  ToMany<ObjectBoxContractAction>? action = ToMany<ObjectBoxContractAction>();
  ToMany<ObjectBoxContractTerm>? group = ToMany<ObjectBoxContractTerm>();
}

@Entity()
class ObjectBoxContractSecurityLabel {
  ObjectBoxContractSecurityLabel({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? number;
  ToMany<ObjectBoxElement>? numberElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> classification = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding>? category = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding>? control = ToMany<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxContractOffer {
  ObjectBoxContractOffer({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxContractParty>? party = ToMany<ObjectBoxContractParty>();
  ToOne<ObjectBoxReference>? topic = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? decision = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? decisionMode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContractAnswer>? answer = ToMany<ObjectBoxContractAnswer>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  List<String>? linkId;
  ToMany<ObjectBoxElement>? linkIdElement = ToMany<ObjectBoxElement>();
  List<int>? securityLabelNumber;
  ToMany<ObjectBoxElement>? securityLabelNumberElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractParty {
  ObjectBoxContractParty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    required this.role,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxReference> reference = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxContractAnswer {
  ObjectBoxContractAnswer({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement>? valueDecimalElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement>? valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement>? valueDateElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement>? valueDateTimeElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement>? valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement>? valueUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment>? valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCoding>? valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxReference>? valueReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxContractAsset {
  ObjectBoxContractAsset({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? scope = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? typeReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? subtype =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCoding>? relationship = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxContractContext>? context =
      ToMany<ObjectBoxContractContext>();
  String? condition;
  ToOne<ObjectBoxElement>? conditionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? periodType =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxPeriod>? period = ToMany<ObjectBoxPeriod>();
  ToMany<ObjectBoxPeriod>? usePeriod = ToMany<ObjectBoxPeriod>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  List<String>? linkId;
  ToMany<ObjectBoxElement>? linkIdElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxContractAnswer>? answer = ToMany<ObjectBoxContractAnswer>();
  List<int>? securityLabelNumber;
  ToMany<ObjectBoxElement>? securityLabelNumberElement =
      ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxContractValuedItem>? valuedItem =
      ToMany<ObjectBoxContractValuedItem>();
}

@Entity()
class ObjectBoxContractContext {
  ObjectBoxContractContext({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? reference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? code = ToMany<ObjectBoxCodeableConcept>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractValuedItem {
  ObjectBoxContractValuedItem({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? entityCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? entityReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String? effectiveTime;
  ToOne<ObjectBoxElement>? effectiveTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement>? factorElement = ToOne<ObjectBoxElement>();
  double? points;
  ToOne<ObjectBoxElement>? pointsElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? net = ToOne<ObjectBoxMoney>();
  String? payment;
  ToOne<ObjectBoxElement>? paymentElement = ToOne<ObjectBoxElement>();
  String? paymentDate;
  ToOne<ObjectBoxElement>? paymentDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? responsible = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? recipient = ToOne<ObjectBoxReference>();
  List<String>? linkId;
  ToMany<ObjectBoxElement>? linkIdElement = ToMany<ObjectBoxElement>();
  List<int>? securityLabelNumber;
  ToMany<ObjectBoxElement>? securityLabelNumberElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractAction {
  ObjectBoxContractAction({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement>? doNotPerformElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContractSubject>? subject =
      ToMany<ObjectBoxContractSubject>();
  ToOne<ObjectBoxCodeableConcept> intent = ToOne<ObjectBoxCodeableConcept>();
  List<String>? linkId;
  ToMany<ObjectBoxElement>? linkIdElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? context = ToOne<ObjectBoxReference>();
  List<String>? contextLinkId;
  ToMany<ObjectBoxElement>? contextLinkIdElement = ToMany<ObjectBoxElement>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement>? occurrenceDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming>? occurrenceTiming = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxReference>? requester = ToMany<ObjectBoxReference>();
  List<String>? requesterLinkId;
  ToMany<ObjectBoxElement>? requesterLinkIdElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? performerType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? performerRole =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? performer = ToOne<ObjectBoxReference>();
  List<String>? performerLinkId;
  ToMany<ObjectBoxElement>? performerLinkIdElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  List<String>? reason;
  ToMany<ObjectBoxElement>? reasonElement = ToMany<ObjectBoxElement>();
  List<String>? reasonLinkId;
  ToMany<ObjectBoxElement>? reasonLinkIdElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  List<int>? securityLabelNumber;
  ToMany<ObjectBoxElement>? securityLabelNumberElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractSubject {
  ObjectBoxContractSubject({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    this.role,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxReference> reference = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? role = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxContractSigner {
  ObjectBoxContractSigner({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> type = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxReference> party = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxSignature> signature = ToMany<ObjectBoxSignature>();
}

@Entity()
class ObjectBoxContractFriendly {
  ObjectBoxContractFriendly({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxAttachment>? contentAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference>? contentReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxContractLegal {
  ObjectBoxContractLegal({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxAttachment>? contentAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference>? contentReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxAttachment>? legallyBindingAttachment =
      ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference>? legallyBindingReference =
      ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxContractRule {
  ObjectBoxContractRule({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxAttachment>? contentAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference>? contentReference = ToOne<ObjectBoxReference>();
}
