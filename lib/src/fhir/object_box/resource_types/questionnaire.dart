// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxQuestionnaire {
  ObjectBoxQuestionnaire({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.derivedFrom,
    this.derivedFromElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectType,
    this.subjectTypeElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.code,
    this.item,
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
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  List<String>? derivedFrom;
  ToMany<ObjectBoxElement>? derivedFromElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  List<String>? subjectType;
  ToMany<ObjectBoxElement>? subjectTypeElement = ToMany<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement>? approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement>? lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCoding>? code = ToMany<ObjectBoxCoding>();
  ToMany<ObjectBoxQuestionnaireItem>? item =
      ToMany<ObjectBoxQuestionnaireItem>();
}

@Entity()
class ObjectBoxQuestionnaireItem {
  ObjectBoxQuestionnaireItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.linkId,
    this.linkIdElement,
    this.definition,
    this.definitionElement,
    this.code,
    this.prefix,
    this.prefixElement,
    this.text,
    this.textElement,
    required this.type,
    this.typeElement,
    this.enableWhen,
    this.enableBehavior,
    this.enableBehaviorElement,
    this.required_,
    this.requiredElement,
    this.repeats,
    this.repeatsElement,
    this.readOnly,
    this.readOnlyElement,
    this.maxLength,
    this.maxLengthElement,
    this.answerValueSet,
    this.answerValueSetElement,
    this.answerOption,
    this.initial,
    this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String linkId;
  ToOne<ObjectBoxElement>? linkIdElement = ToOne<ObjectBoxElement>();
  String? definition;
  ToOne<ObjectBoxElement>? definitionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoding>? code = ToMany<ObjectBoxCoding>();
  String? prefix;
  ToOne<ObjectBoxElement>? prefixElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxQuestionnaireEnableWhen>? enableWhen =
      ToMany<ObjectBoxQuestionnaireEnableWhen>();
  String? enableBehavior;
  ToOne<ObjectBoxElement>? enableBehaviorElement = ToOne<ObjectBoxElement>();
  bool? required_;
  ToOne<ObjectBoxElement>? requiredElement = ToOne<ObjectBoxElement>();
  bool? repeats;
  ToOne<ObjectBoxElement>? repeatsElement = ToOne<ObjectBoxElement>();
  bool? readOnly;
  ToOne<ObjectBoxElement>? readOnlyElement = ToOne<ObjectBoxElement>();
  int? maxLength;
  ToOne<ObjectBoxElement>? maxLengthElement = ToOne<ObjectBoxElement>();
  String? answerValueSet;
  ToOne<ObjectBoxElement>? answerValueSetElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxQuestionnaireAnswerOption>? answerOption =
      ToMany<ObjectBoxQuestionnaireAnswerOption>();
  ToMany<ObjectBoxQuestionnaireInitial>? initial =
      ToMany<ObjectBoxQuestionnaireInitial>();
  ToMany<ObjectBoxQuestionnaireItem>? item =
      ToMany<ObjectBoxQuestionnaireItem>();
}

@Entity()
class ObjectBoxQuestionnaireEnableWhen {
  ObjectBoxQuestionnaireEnableWhen({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.question,
    this.questionElement,
    required this.operator_,
    this.operatorElement,
    this.answerBoolean,
    this.answerBooleanElement,
    this.answerDecimal,
    this.answerDecimalElement,
    this.answerInteger,
    this.answerIntegerElement,
    this.answerDate,
    this.answerDateElement,
    this.answerDateTime,
    this.answerDateTimeElement,
    this.answerTime,
    this.answerTimeElement,
    this.answerString,
    this.answerStringElement,
    this.answerCoding,
    this.answerQuantity,
    this.answerReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String question;
  ToOne<ObjectBoxElement>? questionElement = ToOne<ObjectBoxElement>();
  String operator_;
  ToOne<ObjectBoxElement>? operatorElement = ToOne<ObjectBoxElement>();
  bool? answerBoolean;
  ToOne<ObjectBoxElement>? answerBooleanElement = ToOne<ObjectBoxElement>();
  double? answerDecimal;
  ToOne<ObjectBoxElement>? answerDecimalElement = ToOne<ObjectBoxElement>();
  int? answerInteger;
  ToOne<ObjectBoxElement>? answerIntegerElement = ToOne<ObjectBoxElement>();
  String? answerDate;
  ToOne<ObjectBoxElement>? answerDateElement = ToOne<ObjectBoxElement>();
  String? answerDateTime;
  ToOne<ObjectBoxElement>? answerDateTimeElement = ToOne<ObjectBoxElement>();
  String? answerTime;
  ToOne<ObjectBoxElement>? answerTimeElement = ToOne<ObjectBoxElement>();
  String? answerString;
  ToOne<ObjectBoxElement>? answerStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding>? answerCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxQuantity>? answerQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxReference>? answerReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxQuestionnaireAnswerOption {
  ObjectBoxQuestionnaireAnswerOption({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDate,
    this.valueDateElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueString,
    this.valueStringElement,
    this.valueCoding,
    this.valueReference,
    this.initialSelected,
    this.initialSelectedElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? valueInteger;
  ToOne<ObjectBoxElement>? valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement>? valueDateElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement>? valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding>? valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxReference>? valueReference = ToOne<ObjectBoxReference>();
  bool? initialSelected;
  ToOne<ObjectBoxElement>? initialSelectedElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxQuestionnaireInitial {
  ObjectBoxQuestionnaireInitial({
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
