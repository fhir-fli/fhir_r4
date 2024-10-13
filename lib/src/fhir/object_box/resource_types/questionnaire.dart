// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxQuestionnaire {
  ObjectBoxQuestionnaire({
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
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.derivedFrom,
    List<ObjectBoxElement>? derivedFromElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.subjectType,
    List<ObjectBoxElement>? subjectTypeElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    this.approvalDate,
    ObjectBoxElement? approvalDateElement,
    this.lastReviewDate,
    ObjectBoxElement? lastReviewDateElement,
    ObjectBoxPeriod? effectivePeriod,
    List<ObjectBoxCoding>? code,
    List<ObjectBoxQuestionnaireItem>? item,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.derivedFromElement.addAll(derivedFromElement ?? []);
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.subjectTypeElement.addAll(subjectTypeElement ?? []);
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.approvalDateElement.target = approvalDateElement;
    this.lastReviewDateElement.target = lastReviewDateElement;
    this.effectivePeriod.target = effectivePeriod;
    this.code.addAll(code ?? []);
    this.item.addAll(item ?? []);
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
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  List<String>? derivedFrom;
  ToMany<ObjectBoxElement> derivedFromElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  List<String>? subjectType;
  ToMany<ObjectBoxElement> subjectTypeElement = ToMany<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement> approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement> lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCoding> code = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxQuestionnaireItem> item =
      ToMany<ObjectBoxQuestionnaireItem>();
}

@Entity()
class ObjectBoxQuestionnaireItem {
  ObjectBoxQuestionnaireItem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.linkId,
    ObjectBoxElement? linkIdElement,
    this.definition,
    ObjectBoxElement? definitionElement,
    List<ObjectBoxCoding>? code,
    this.prefix,
    ObjectBoxElement? prefixElement,
    this.text,
    ObjectBoxElement? textElement,
    required this.type,
    ObjectBoxElement? typeElement,
    List<ObjectBoxQuestionnaireEnableWhen>? enableWhen,
    this.enableBehavior,
    ObjectBoxElement? enableBehaviorElement,
    this.required_,
    ObjectBoxElement? requiredElement,
    this.repeats,
    ObjectBoxElement? repeatsElement,
    this.readOnly,
    ObjectBoxElement? readOnlyElement,
    this.maxLength,
    ObjectBoxElement? maxLengthElement,
    this.answerValueSet,
    ObjectBoxElement? answerValueSetElement,
    List<ObjectBoxQuestionnaireAnswerOption>? answerOption,
    List<ObjectBoxQuestionnaireInitial>? initial,
    List<ObjectBoxQuestionnaireItem>? item,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.linkIdElement.target = linkIdElement;
    this.definitionElement.target = definitionElement;
    this.code.addAll(code ?? []);
    this.prefixElement.target = prefixElement;
    this.textElement.target = textElement;
    this.typeElement.target = typeElement;
    this.enableWhen.addAll(enableWhen ?? []);
    this.enableBehaviorElement.target = enableBehaviorElement;
    this.requiredElement.target = requiredElement;
    this.repeatsElement.target = repeatsElement;
    this.readOnlyElement.target = readOnlyElement;
    this.maxLengthElement.target = maxLengthElement;
    this.answerValueSetElement.target = answerValueSetElement;
    this.answerOption.addAll(answerOption ?? []);
    this.initial.addAll(initial ?? []);
    this.item.addAll(item ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String linkId;
  ToOne<ObjectBoxElement> linkIdElement = ToOne<ObjectBoxElement>();
  String? definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoding> code = ToMany<ObjectBoxCoding>();
  String? prefix;
  ToOne<ObjectBoxElement> prefixElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxQuestionnaireEnableWhen> enableWhen =
      ToMany<ObjectBoxQuestionnaireEnableWhen>();
  String? enableBehavior;
  ToOne<ObjectBoxElement> enableBehaviorElement = ToOne<ObjectBoxElement>();
  bool? required_;
  ToOne<ObjectBoxElement> requiredElement = ToOne<ObjectBoxElement>();
  bool? repeats;
  ToOne<ObjectBoxElement> repeatsElement = ToOne<ObjectBoxElement>();
  bool? readOnly;
  ToOne<ObjectBoxElement> readOnlyElement = ToOne<ObjectBoxElement>();
  int? maxLength;
  ToOne<ObjectBoxElement> maxLengthElement = ToOne<ObjectBoxElement>();
  String? answerValueSet;
  ToOne<ObjectBoxElement> answerValueSetElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxQuestionnaireAnswerOption> answerOption =
      ToMany<ObjectBoxQuestionnaireAnswerOption>();
  ToMany<ObjectBoxQuestionnaireInitial> initial =
      ToMany<ObjectBoxQuestionnaireInitial>();
  ToMany<ObjectBoxQuestionnaireItem> item =
      ToMany<ObjectBoxQuestionnaireItem>();
}

@Entity()
class ObjectBoxQuestionnaireEnableWhen {
  ObjectBoxQuestionnaireEnableWhen({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.question,
    ObjectBoxElement? questionElement,
    required this.operator_,
    ObjectBoxElement? operatorElement,
    this.answerBoolean,
    ObjectBoxElement? answerBooleanElement,
    this.answerDecimal,
    ObjectBoxElement? answerDecimalElement,
    this.answerInteger,
    ObjectBoxElement? answerIntegerElement,
    this.answerDate,
    ObjectBoxElement? answerDateElement,
    this.answerDateTime,
    ObjectBoxElement? answerDateTimeElement,
    this.answerTime,
    ObjectBoxElement? answerTimeElement,
    this.answerString,
    ObjectBoxElement? answerStringElement,
    ObjectBoxCoding? answerCoding,
    ObjectBoxQuantity? answerQuantity,
    ObjectBoxReference? answerReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.questionElement.target = questionElement;
    this.operatorElement.target = operatorElement;
    this.answerBooleanElement.target = answerBooleanElement;
    this.answerDecimalElement.target = answerDecimalElement;
    this.answerIntegerElement.target = answerIntegerElement;
    this.answerDateElement.target = answerDateElement;
    this.answerDateTimeElement.target = answerDateTimeElement;
    this.answerTimeElement.target = answerTimeElement;
    this.answerStringElement.target = answerStringElement;
    this.answerCoding.target = answerCoding;
    this.answerQuantity.target = answerQuantity;
    this.answerReference.target = answerReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String question;
  ToOne<ObjectBoxElement> questionElement = ToOne<ObjectBoxElement>();
  String operator_;
  ToOne<ObjectBoxElement> operatorElement = ToOne<ObjectBoxElement>();
  bool? answerBoolean;
  ToOne<ObjectBoxElement> answerBooleanElement = ToOne<ObjectBoxElement>();
  double? answerDecimal;
  ToOne<ObjectBoxElement> answerDecimalElement = ToOne<ObjectBoxElement>();
  int? answerInteger;
  ToOne<ObjectBoxElement> answerIntegerElement = ToOne<ObjectBoxElement>();
  String? answerDate;
  ToOne<ObjectBoxElement> answerDateElement = ToOne<ObjectBoxElement>();
  String? answerDateTime;
  ToOne<ObjectBoxElement> answerDateTimeElement = ToOne<ObjectBoxElement>();
  String? answerTime;
  ToOne<ObjectBoxElement> answerTimeElement = ToOne<ObjectBoxElement>();
  String? answerString;
  ToOne<ObjectBoxElement> answerStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> answerCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxQuantity> answerQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxReference> answerReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxQuestionnaireAnswerOption {
  ObjectBoxQuestionnaireAnswerOption({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    this.valueDate,
    ObjectBoxElement? valueDateElement,
    this.valueTime,
    ObjectBoxElement? valueTimeElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    ObjectBoxCoding? valueCoding,
    ObjectBoxReference? valueReference,
    this.initialSelected,
    ObjectBoxElement? initialSelectedElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueDateElement.target = valueDateElement;
    this.valueTimeElement.target = valueTimeElement;
    this.valueStringElement.target = valueStringElement;
    this.valueCoding.target = valueCoding;
    this.valueReference.target = valueReference;
    this.initialSelectedElement.target = initialSelectedElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement> valueDateElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement> valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
  bool? initialSelected;
  ToOne<ObjectBoxElement> initialSelectedElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxQuestionnaireInitial {
  ObjectBoxQuestionnaireInitial({
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
