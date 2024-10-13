// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxContract {
  ObjectBoxContract({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.url,
    ObjectBoxElement? urlElement,
    this.version,
    ObjectBoxElement? versionElement,
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? legalState,
    ObjectBoxReference? instantiatesCanonical,
    this.instantiatesUri,
    ObjectBoxElement? instantiatesUriElement,
    ObjectBoxCodeableConcept? contentDerivative,
    this.issued,
    ObjectBoxElement? issuedElement,
    ObjectBoxPeriod? applies,
    ObjectBoxCodeableConcept? expirationType,
    List<ObjectBoxReference>? subject,
    List<ObjectBoxReference>? authority,
    List<ObjectBoxReference>? domain,
    List<ObjectBoxReference>? site,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.subtitle,
    ObjectBoxElement? subtitleElement,
    this.alias,
    List<ObjectBoxElement>? aliasElement,
    ObjectBoxReference? author,
    ObjectBoxCodeableConcept? scope,
    ObjectBoxCodeableConcept? topicCodeableConcept,
    ObjectBoxReference? topicReference,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? subType,
    ObjectBoxContractContentDefinition? contentDefinition,
    List<ObjectBoxContractTerm>? term,
    List<ObjectBoxReference>? supportingInfo,
    List<ObjectBoxReference>? relevantHistory,
    List<ObjectBoxContractSigner>? signer,
    List<ObjectBoxContractFriendly>? friendly,
    List<ObjectBoxContractLegal>? legal,
    List<ObjectBoxContractRule>? rule,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.urlElement.target = urlElement;
    this.versionElement.target = versionElement;
    this.statusElement.target = statusElement;
    this.legalState.target = legalState;
    this.instantiatesCanonical.target = instantiatesCanonical;
    this.instantiatesUriElement.target = instantiatesUriElement;
    this.contentDerivative.target = contentDerivative;
    this.issuedElement.target = issuedElement;
    this.applies.target = applies;
    this.expirationType.target = expirationType;
    this.subject.addAll(subject ?? []);
    this.authority.addAll(authority ?? []);
    this.domain.addAll(domain ?? []);
    this.site.addAll(site ?? []);
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.subtitleElement.target = subtitleElement;
    this.aliasElement.addAll(aliasElement ?? []);
    this.author.target = author;
    this.scope.target = scope;
    this.topicCodeableConcept.target = topicCodeableConcept;
    this.topicReference.target = topicReference;
    this.type.target = type;
    this.subType.addAll(subType ?? []);
    this.contentDefinition.target = contentDefinition;
    this.term.addAll(term ?? []);
    this.supportingInfo.addAll(supportingInfo ?? []);
    this.relevantHistory.addAll(relevantHistory ?? []);
    this.signer.addAll(signer ?? []);
    this.friendly.addAll(friendly ?? []);
    this.legal.addAll(legal ?? []);
    this.rule.addAll(rule ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> legalState =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> instantiatesCanonical = ToOne<ObjectBoxReference>();
  String? instantiatesUri;
  ToOne<ObjectBoxElement> instantiatesUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> contentDerivative =
      ToOne<ObjectBoxCodeableConcept>();
  String? issued;
  ToOne<ObjectBoxElement> issuedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> applies = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept> expirationType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> subject = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> authority = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> domain = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> site = ToMany<ObjectBoxReference>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement> subtitleElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement> aliasElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference> author = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> scope = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> topicCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> topicReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> subType = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxContractContentDefinition> contentDefinition =
      ToOne<ObjectBoxContractContentDefinition>();
  ToMany<ObjectBoxContractTerm> term = ToMany<ObjectBoxContractTerm>();
  ToMany<ObjectBoxReference> supportingInfo = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> relevantHistory = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxContractSigner> signer = ToMany<ObjectBoxContractSigner>();
  ToMany<ObjectBoxContractFriendly> friendly =
      ToMany<ObjectBoxContractFriendly>();
  ToMany<ObjectBoxContractLegal> legal = ToMany<ObjectBoxContractLegal>();
  ToMany<ObjectBoxContractRule> rule = ToMany<ObjectBoxContractRule>();
}

@Entity()
class ObjectBoxContractContentDefinition {
  ObjectBoxContractContentDefinition({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? subType,
    ObjectBoxReference? publisher,
    this.publicationDate,
    ObjectBoxElement? publicationDateElement,
    required this.publicationStatus,
    ObjectBoxElement? publicationStatusElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.subType.target = subType;
    this.publisher.target = publisher;
    this.publicationDateElement.target = publicationDateElement;
    this.publicationStatusElement.target = publicationStatusElement;
    this.copyrightElement.target = copyrightElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> subType = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> publisher = ToOne<ObjectBoxReference>();
  String? publicationDate;
  ToOne<ObjectBoxElement> publicationDateElement = ToOne<ObjectBoxElement>();
  String publicationStatus;
  ToOne<ObjectBoxElement> publicationStatusElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractTerm {
  ObjectBoxContractTerm({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? identifier,
    this.issued,
    ObjectBoxElement? issuedElement,
    ObjectBoxPeriod? applies,
    ObjectBoxCodeableConcept? topicCodeableConcept,
    ObjectBoxReference? topicReference,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? subType,
    this.text,
    ObjectBoxElement? textElement,
    List<ObjectBoxContractSecurityLabel>? securityLabel,
    ObjectBoxContractOffer? offer,
    List<ObjectBoxContractAsset>? asset,
    List<ObjectBoxContractAction>? action,
    List<ObjectBoxContractTerm>? group,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.issuedElement.target = issuedElement;
    this.applies.target = applies;
    this.topicCodeableConcept.target = topicCodeableConcept;
    this.topicReference.target = topicReference;
    this.type.target = type;
    this.subType.target = subType;
    this.textElement.target = textElement;
    this.securityLabel.addAll(securityLabel ?? []);
    this.offer.target = offer;
    this.asset.addAll(asset ?? []);
    this.action.addAll(action ?? []);
    this.group.addAll(group ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String? issued;
  ToOne<ObjectBoxElement> issuedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> applies = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept> topicCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> topicReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> subType = ToOne<ObjectBoxCodeableConcept>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContractSecurityLabel> securityLabel =
      ToMany<ObjectBoxContractSecurityLabel>();
  ToOne<ObjectBoxContractOffer> offer = ToOne<ObjectBoxContractOffer>();
  ToMany<ObjectBoxContractAsset> asset = ToMany<ObjectBoxContractAsset>();
  ToMany<ObjectBoxContractAction> action = ToMany<ObjectBoxContractAction>();
  ToMany<ObjectBoxContractTerm> group = ToMany<ObjectBoxContractTerm>();
}

@Entity()
class ObjectBoxContractSecurityLabel {
  ObjectBoxContractSecurityLabel({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.number,
    List<ObjectBoxElement>? numberElement,
    ObjectBoxCoding? classification,
    List<ObjectBoxCoding>? category,
    List<ObjectBoxCoding>? control,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.numberElement.addAll(numberElement ?? []);
    this.classification.target = classification;
    this.category.addAll(category ?? []);
    this.control.addAll(control ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? number;
  ToMany<ObjectBoxElement> numberElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> classification = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding> category = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxCoding> control = ToMany<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxContractOffer {
  ObjectBoxContractOffer({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    List<ObjectBoxContractParty>? party,
    ObjectBoxReference? topic,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? decision,
    List<ObjectBoxCodeableConcept>? decisionMode,
    List<ObjectBoxContractAnswer>? answer,
    this.text,
    ObjectBoxElement? textElement,
    this.linkId,
    List<ObjectBoxElement>? linkIdElement,
    this.securityLabelNumber,
    List<ObjectBoxElement>? securityLabelNumberElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.party.addAll(party ?? []);
    this.topic.target = topic;
    this.type.target = type;
    this.decision.target = decision;
    this.decisionMode.addAll(decisionMode ?? []);
    this.answer.addAll(answer ?? []);
    this.textElement.target = textElement;
    this.linkIdElement.addAll(linkIdElement ?? []);
    this.securityLabelNumberElement.addAll(securityLabelNumberElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxContractParty> party = ToMany<ObjectBoxContractParty>();
  ToOne<ObjectBoxReference> topic = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> decision = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> decisionMode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContractAnswer> answer = ToMany<ObjectBoxContractAnswer>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  List<String>? linkId;
  ToMany<ObjectBoxElement> linkIdElement = ToMany<ObjectBoxElement>();
  List<int>? securityLabelNumber;
  ToMany<ObjectBoxElement> securityLabelNumberElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractParty {
  ObjectBoxContractParty({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxReference>? reference,
    ObjectBoxCodeableConcept? role,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.reference.addAll(reference ?? []);
    this.role.target = role;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxReference> reference = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxContractAnswer {
  ObjectBoxContractAnswer({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueDecimal,
    ObjectBoxElement? valueDecimalElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    this.valueDate,
    ObjectBoxElement? valueDateElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
    this.valueTime,
    ObjectBoxElement? valueTimeElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueUri,
    ObjectBoxElement? valueUriElement,
    ObjectBoxAttachment? valueAttachment,
    ObjectBoxCoding? valueCoding,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxReference? valueReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueDecimalElement.target = valueDecimalElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueDateElement.target = valueDateElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
    this.valueTimeElement.target = valueTimeElement;
    this.valueStringElement.target = valueStringElement;
    this.valueUriElement.target = valueUriElement;
    this.valueAttachment.target = valueAttachment;
    this.valueCoding.target = valueCoding;
    this.valueQuantity.target = valueQuantity;
    this.valueReference.target = valueReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement> valueDecimalElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement> valueDateElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement> valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement> valueUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCoding> valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxContractAsset {
  ObjectBoxContractAsset({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? scope,
    List<ObjectBoxCodeableConcept>? type,
    List<ObjectBoxReference>? typeReference,
    List<ObjectBoxCodeableConcept>? subtype,
    ObjectBoxCoding? relationship,
    List<ObjectBoxContractContext>? context,
    this.condition,
    ObjectBoxElement? conditionElement,
    List<ObjectBoxCodeableConcept>? periodType,
    List<ObjectBoxPeriod>? period,
    List<ObjectBoxPeriod>? usePeriod,
    this.text,
    ObjectBoxElement? textElement,
    this.linkId,
    List<ObjectBoxElement>? linkIdElement,
    List<ObjectBoxContractAnswer>? answer,
    this.securityLabelNumber,
    List<ObjectBoxElement>? securityLabelNumberElement,
    List<ObjectBoxContractValuedItem>? valuedItem,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.scope.target = scope;
    this.type.addAll(type ?? []);
    this.typeReference.addAll(typeReference ?? []);
    this.subtype.addAll(subtype ?? []);
    this.relationship.target = relationship;
    this.context.addAll(context ?? []);
    this.conditionElement.target = conditionElement;
    this.periodType.addAll(periodType ?? []);
    this.period.addAll(period ?? []);
    this.usePeriod.addAll(usePeriod ?? []);
    this.textElement.target = textElement;
    this.linkIdElement.addAll(linkIdElement ?? []);
    this.answer.addAll(answer ?? []);
    this.securityLabelNumberElement.addAll(securityLabelNumberElement ?? []);
    this.valuedItem.addAll(valuedItem ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> scope = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> typeReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> subtype = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCoding> relationship = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxContractContext> context = ToMany<ObjectBoxContractContext>();
  String? condition;
  ToOne<ObjectBoxElement> conditionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> periodType =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxPeriod> period = ToMany<ObjectBoxPeriod>();
  ToMany<ObjectBoxPeriod> usePeriod = ToMany<ObjectBoxPeriod>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  List<String>? linkId;
  ToMany<ObjectBoxElement> linkIdElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxContractAnswer> answer = ToMany<ObjectBoxContractAnswer>();
  List<int>? securityLabelNumber;
  ToMany<ObjectBoxElement> securityLabelNumberElement =
      ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxContractValuedItem> valuedItem =
      ToMany<ObjectBoxContractValuedItem>();
}

@Entity()
class ObjectBoxContractContext {
  ObjectBoxContractContext({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? reference,
    List<ObjectBoxCodeableConcept>? code,
    this.text,
    ObjectBoxElement? textElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.reference.target = reference;
    this.code.addAll(code ?? []);
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractValuedItem {
  ObjectBoxContractValuedItem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? entityCodeableConcept,
    ObjectBoxReference? entityReference,
    ObjectBoxIdentifier? identifier,
    this.effectiveTime,
    ObjectBoxElement? effectiveTimeElement,
    ObjectBoxQuantity? quantity,
    ObjectBoxMoney? unitPrice,
    this.factor,
    ObjectBoxElement? factorElement,
    this.points,
    ObjectBoxElement? pointsElement,
    ObjectBoxMoney? net,
    this.payment,
    ObjectBoxElement? paymentElement,
    this.paymentDate,
    ObjectBoxElement? paymentDateElement,
    ObjectBoxReference? responsible,
    ObjectBoxReference? recipient,
    this.linkId,
    List<ObjectBoxElement>? linkIdElement,
    this.securityLabelNumber,
    List<ObjectBoxElement>? securityLabelNumberElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.entityCodeableConcept.target = entityCodeableConcept;
    this.entityReference.target = entityReference;
    this.identifier.target = identifier;
    this.effectiveTimeElement.target = effectiveTimeElement;
    this.quantity.target = quantity;
    this.unitPrice.target = unitPrice;
    this.factorElement.target = factorElement;
    this.pointsElement.target = pointsElement;
    this.net.target = net;
    this.paymentElement.target = paymentElement;
    this.paymentDateElement.target = paymentDateElement;
    this.responsible.target = responsible;
    this.recipient.target = recipient;
    this.linkIdElement.addAll(linkIdElement ?? []);
    this.securityLabelNumberElement.addAll(securityLabelNumberElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> entityCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> entityReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String? effectiveTime;
  ToOne<ObjectBoxElement> effectiveTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney> unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement> factorElement = ToOne<ObjectBoxElement>();
  double? points;
  ToOne<ObjectBoxElement> pointsElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> net = ToOne<ObjectBoxMoney>();
  String? payment;
  ToOne<ObjectBoxElement> paymentElement = ToOne<ObjectBoxElement>();
  String? paymentDate;
  ToOne<ObjectBoxElement> paymentDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> responsible = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> recipient = ToOne<ObjectBoxReference>();
  List<String>? linkId;
  ToMany<ObjectBoxElement> linkIdElement = ToMany<ObjectBoxElement>();
  List<int>? securityLabelNumber;
  ToMany<ObjectBoxElement> securityLabelNumberElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractAction {
  ObjectBoxContractAction({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.doNotPerform,
    ObjectBoxElement? doNotPerformElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxContractSubject>? subject,
    ObjectBoxCodeableConcept? intent,
    this.linkId,
    List<ObjectBoxElement>? linkIdElement,
    ObjectBoxCodeableConcept? status,
    ObjectBoxReference? context,
    this.contextLinkId,
    List<ObjectBoxElement>? contextLinkIdElement,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxPeriod? occurrencePeriod,
    ObjectBoxTiming? occurrenceTiming,
    List<ObjectBoxReference>? requester,
    this.requesterLinkId,
    List<ObjectBoxElement>? requesterLinkIdElement,
    List<ObjectBoxCodeableConcept>? performerType,
    ObjectBoxCodeableConcept? performerRole,
    ObjectBoxReference? performer,
    this.performerLinkId,
    List<ObjectBoxElement>? performerLinkIdElement,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    this.reason,
    List<ObjectBoxElement>? reasonElement,
    this.reasonLinkId,
    List<ObjectBoxElement>? reasonLinkIdElement,
    List<ObjectBoxAnnotation>? note,
    this.securityLabelNumber,
    List<ObjectBoxElement>? securityLabelNumberElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.doNotPerformElement.target = doNotPerformElement;
    this.type.target = type;
    this.subject.addAll(subject ?? []);
    this.intent.target = intent;
    this.linkIdElement.addAll(linkIdElement ?? []);
    this.status.target = status;
    this.context.target = context;
    this.contextLinkIdElement.addAll(contextLinkIdElement ?? []);
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrencePeriod.target = occurrencePeriod;
    this.occurrenceTiming.target = occurrenceTiming;
    this.requester.addAll(requester ?? []);
    this.requesterLinkIdElement.addAll(requesterLinkIdElement ?? []);
    this.performerType.addAll(performerType ?? []);
    this.performerRole.target = performerRole;
    this.performer.target = performer;
    this.performerLinkIdElement.addAll(performerLinkIdElement ?? []);
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.reasonElement.addAll(reasonElement ?? []);
    this.reasonLinkIdElement.addAll(reasonLinkIdElement ?? []);
    this.note.addAll(note ?? []);
    this.securityLabelNumberElement.addAll(securityLabelNumberElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement> doNotPerformElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContractSubject> subject = ToMany<ObjectBoxContractSubject>();
  ToOne<ObjectBoxCodeableConcept> intent = ToOne<ObjectBoxCodeableConcept>();
  List<String>? linkId;
  ToMany<ObjectBoxElement> linkIdElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> context = ToOne<ObjectBoxReference>();
  List<String>? contextLinkId;
  ToMany<ObjectBoxElement> contextLinkIdElement = ToMany<ObjectBoxElement>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming> occurrenceTiming = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxReference> requester = ToMany<ObjectBoxReference>();
  List<String>? requesterLinkId;
  ToMany<ObjectBoxElement> requesterLinkIdElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> performerType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> performerRole =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> performer = ToOne<ObjectBoxReference>();
  List<String>? performerLinkId;
  ToMany<ObjectBoxElement> performerLinkIdElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  List<String>? reason;
  ToMany<ObjectBoxElement> reasonElement = ToMany<ObjectBoxElement>();
  List<String>? reasonLinkId;
  ToMany<ObjectBoxElement> reasonLinkIdElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  List<int>? securityLabelNumber;
  ToMany<ObjectBoxElement> securityLabelNumberElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxContractSubject {
  ObjectBoxContractSubject({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxReference>? reference,
    ObjectBoxCodeableConcept? role,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.reference.addAll(reference ?? []);
    this.role.target = role;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxReference> reference = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxContractSigner {
  ObjectBoxContractSigner({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCoding? type,
    ObjectBoxReference? party,
    List<ObjectBoxSignature>? signature,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.party.target = party;
    this.signature.addAll(signature ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> type = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxReference> party = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxSignature> signature = ToMany<ObjectBoxSignature>();
}

@Entity()
class ObjectBoxContractFriendly {
  ObjectBoxContractFriendly({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxAttachment? contentAttachment,
    ObjectBoxReference? contentReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.contentAttachment.target = contentAttachment;
    this.contentReference.target = contentReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxAttachment> contentAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference> contentReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxContractLegal {
  ObjectBoxContractLegal({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxAttachment? contentAttachment,
    ObjectBoxReference? contentReference,
    ObjectBoxAttachment? legallyBindingAttachment,
    ObjectBoxReference? legallyBindingReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.contentAttachment.target = contentAttachment;
    this.contentReference.target = contentReference;
    this.legallyBindingAttachment.target = legallyBindingAttachment;
    this.legallyBindingReference.target = legallyBindingReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxAttachment> contentAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference> contentReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxAttachment> legallyBindingAttachment =
      ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference> legallyBindingReference =
      ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxContractRule {
  ObjectBoxContractRule({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxAttachment? contentAttachment,
    ObjectBoxReference? contentReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.contentAttachment.target = contentAttachment;
    this.contentReference.target = contentReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxAttachment> contentAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference> contentReference = ToOne<ObjectBoxReference>();
}
