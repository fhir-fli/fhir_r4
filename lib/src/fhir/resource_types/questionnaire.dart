import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Questionnaire extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final List<FhirCanonical>? derivedFrom;
  final List<Element>? derivedFromElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final List<FhirCode>? subjectType;
  final List<Element>? subjectTypeElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirDate? approvalDate;
  final Element? approvalDateElement;
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;
  final Period? effectivePeriod;
  final List<Coding>? code;
  final List<QuestionnaireItem>? item;

  Questionnaire({
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
  }) : super(resourceType: R4ResourceType.Questionnaire);

@override
Questionnaire clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class QuestionnaireItem extends BackboneElement {
  final FhirString linkId;
  final Element? linkIdElement;
  final FhirUri? definition;
  final Element? definitionElement;
  final List<Coding>? code;
  final FhirString? prefix;
  final Element? prefixElement;
  final FhirString? text;
  final Element? textElement;
  final FhirCode type;
  final Element? typeElement;
  final List<QuestionnaireEnableWhen>? enableWhen;
  final FhirCode? enableBehavior;
  final Element? enableBehaviorElement;
  final FhirBoolean? required_;
  final Element? requiredElement;
  final FhirBoolean? repeats;
  final Element? repeatsElement;
  final FhirBoolean? readOnly;
  final Element? readOnlyElement;
  final FhirInteger? maxLength;
  final Element? maxLengthElement;
  final FhirCanonical? answerValueSet;
  final Element? answerValueSetElement;
  final List<QuestionnaireAnswerOption>? answerOption;
  final List<QuestionnaireInitial>? initial;
  final List<QuestionnaireItem>? item;

  QuestionnaireItem({
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
QuestionnaireItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class QuestionnaireEnableWhen extends BackboneElement {
  final FhirString question;
  final Element? questionElement;
  final FhirCode operator_;
  final Element? operatorElement;
  final FhirBoolean answerBoolean;
  final Element? answerBooleanElement;
  final FhirDecimal answerDecimal;
  final Element? answerDecimalElement;
  final FhirInteger answerInteger;
  final Element? answerIntegerElement;
  final FhirDate answerDate;
  final Element? answerDateElement;
  final FhirDateTime answerDateTime;
  final Element? answerDateTimeElement;
  final FhirTime answerTime;
  final Element? answerTimeElement;
  final FhirString answerString;
  final Element? answerStringElement;
  final Coding answerCoding;
  final Quantity answerQuantity;
  final Reference answerReference;

  QuestionnaireEnableWhen({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.question,
this.questionElement,
    required this.operator_,
this.operatorElement,
    required this.answerBoolean,
this.answerBooleanElement,
    required this.answerDecimal,
this.answerDecimalElement,
    required this.answerInteger,
this.answerIntegerElement,
    required this.answerDate,
this.answerDateElement,
    required this.answerDateTime,
this.answerDateTimeElement,
    required this.answerTime,
this.answerTimeElement,
    required this.answerString,
this.answerStringElement,
    required this.answerCoding,
    required this.answerQuantity,
    required this.answerReference,
  });

@override
QuestionnaireEnableWhen clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class QuestionnaireAnswerOption extends BackboneElement {
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;
  final FhirDate valueDate;
  final Element? valueDateElement;
  final FhirTime valueTime;
  final Element? valueTimeElement;
  final FhirString valueString;
  final Element? valueStringElement;
  final Coding valueCoding;
  final Reference valueReference;
  final FhirBoolean? initialSelected;
  final Element? initialSelectedElement;

  QuestionnaireAnswerOption({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueInteger,
this.valueIntegerElement,
    required this.valueDate,
this.valueDateElement,
    required this.valueTime,
this.valueTimeElement,
    required this.valueString,
this.valueStringElement,
    required this.valueCoding,
    required this.valueReference,
    this.initialSelected,
this.initialSelectedElement,
  });

@override
QuestionnaireAnswerOption clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class QuestionnaireInitial extends BackboneElement {
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

  QuestionnaireInitial({
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
QuestionnaireInitial clone() => throw UnimplementedError();
}

