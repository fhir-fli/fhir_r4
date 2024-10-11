import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Questionnaire extends Resource {
  Questionnaire({
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  List<String>? derivedFrom;
  ToMany<Element>? derivedFromElement = ToMany<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  List<String>? subjectType;
  ToMany<Element>? subjectTypeElement = ToMany<Element>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  String? approvalDate;
  ToOne<Element>? approvalDateElement = ToOne<Element>();
  String? lastReviewDate;
  ToOne<Element>? lastReviewDateElement = ToOne<Element>();
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<Coding>? code = ToMany<Coding>();
  ToMany<QuestionnaireItem>? item = ToMany<QuestionnaireItem>();
}

@Entity()
class QuestionnaireItem {
  QuestionnaireItem({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String linkId;
  ToOne<Element>? linkIdElement = ToOne<Element>();
  String? definition;
  ToOne<Element>? definitionElement = ToOne<Element>();
  ToMany<Coding>? code = ToMany<Coding>();
  String? prefix;
  ToOne<Element>? prefixElement = ToOne<Element>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  ToMany<QuestionnaireEnableWhen>? enableWhen =
      ToMany<QuestionnaireEnableWhen>();
  String? enableBehavior;
  ToOne<Element>? enableBehaviorElement = ToOne<Element>();
  bool? required_;
  ToOne<Element>? requiredElement = ToOne<Element>();
  bool? repeats;
  ToOne<Element>? repeatsElement = ToOne<Element>();
  bool? readOnly;
  ToOne<Element>? readOnlyElement = ToOne<Element>();
  int? maxLength;
  ToOne<Element>? maxLengthElement = ToOne<Element>();
  String? answerValueSet;
  ToOne<Element>? answerValueSetElement = ToOne<Element>();
  ToMany<QuestionnaireAnswerOption>? answerOption =
      ToMany<QuestionnaireAnswerOption>();
  ToMany<QuestionnaireInitial>? initial = ToMany<QuestionnaireInitial>();
  ToMany<QuestionnaireItem>? item = ToMany<QuestionnaireItem>();
}

@Entity()
class QuestionnaireEnableWhen {
  QuestionnaireEnableWhen({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String question;
  ToOne<Element>? questionElement = ToOne<Element>();
  String operator_;
  ToOne<Element>? operatorElement = ToOne<Element>();
  bool? answerBoolean;
  ToOne<Element>? answerBooleanElement = ToOne<Element>();
  double? answerDecimal;
  ToOne<Element>? answerDecimalElement = ToOne<Element>();
  int? answerInteger;
  ToOne<Element>? answerIntegerElement = ToOne<Element>();
  String? answerDate;
  ToOne<Element>? answerDateElement = ToOne<Element>();
  String? answerDateTime;
  ToOne<Element>? answerDateTimeElement = ToOne<Element>();
  String? answerTime;
  ToOne<Element>? answerTimeElement = ToOne<Element>();
  String? answerString;
  ToOne<Element>? answerStringElement = ToOne<Element>();
  ToOne<Coding>? answerCoding = ToOne<Coding>();
  ToOne<Quantity>? answerQuantity = ToOne<Quantity>();
  ToOne<Reference>? answerReference = ToOne<Reference>();
}

@Entity()
class QuestionnaireAnswerOption {
  QuestionnaireAnswerOption({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? valueInteger;
  ToOne<Element>? valueIntegerElement = ToOne<Element>();
  String? valueDate;
  ToOne<Element>? valueDateElement = ToOne<Element>();
  String? valueTime;
  ToOne<Element>? valueTimeElement = ToOne<Element>();
  String? valueString;
  ToOne<Element>? valueStringElement = ToOne<Element>();
  ToOne<Coding>? valueCoding = ToOne<Coding>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
  bool? initialSelected;
  ToOne<Element>? initialSelectedElement = ToOne<Element>();
}

@Entity()
class QuestionnaireInitial {
  QuestionnaireInitial({
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
