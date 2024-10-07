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
  final List<BackboneElement>? item;
  final List<BackboneElement>? enableWhen;
  final List<BackboneElement>? answerOption;
  final List<BackboneElement>? initial;

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
    this.enableWhen,
    this.answerOption,
    this.initial,
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
  final List<dynamic>? item;

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
  final FhirBoolean answerFhirBoolean;
  final Element? answerFhirBooleanElement;
  final FhirDecimal answerFhirDecimal;
  final Element? answerFhirDecimalElement;
  final FhirInteger answerFhirInteger;
  final Element? answerFhirIntegerElement;
  final FhirDate answerFhirDate;
  final Element? answerFhirDateElement;
  final FhirDateTime answerFhirDateTime;
  final Element? answerFhirDateTimeElement;
  final FhirTime answerFhirTime;
  final Element? answerFhirTimeElement;
  final FhirString answerFhirString;
  final Element? answerFhirStringElement;
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
    required this.answerFhirBoolean,
this.answerFhirBooleanElement,
    required this.answerFhirDecimal,
this.answerFhirDecimalElement,
    required this.answerFhirInteger,
this.answerFhirIntegerElement,
    required this.answerFhirDate,
this.answerFhirDateElement,
    required this.answerFhirDateTime,
this.answerFhirDateTimeElement,
    required this.answerFhirTime,
this.answerFhirTimeElement,
    required this.answerFhirString,
this.answerFhirStringElement,
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
  final FhirInteger valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirDate valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirTime valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final Coding valueCoding;
  final Reference valueReference;
  final FhirBoolean? initialSelected;
  final Element? initialSelectedElement;

  QuestionnaireAnswerOption({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueFhirInteger,
this.valueFhirIntegerElement,
    required this.valueFhirDate,
this.valueFhirDateElement,
    required this.valueFhirTime,
this.valueFhirTimeElement,
    required this.valueFhirString,
this.valueFhirStringElement,
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
  final FhirBoolean valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirDecimal valueFhirDecimal;
  final Element? valueFhirDecimalElement;
  final FhirInteger valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirDate valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirDateTime valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final FhirTime valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final FhirUri valueFhirUri;
  final Element? valueFhirUriElement;
  final Attachment valueAttachment;
  final Coding valueCoding;
  final Quantity valueQuantity;
  final Reference valueReference;

  QuestionnaireInitial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueFhirBoolean,
this.valueFhirBooleanElement,
    required this.valueFhirDecimal,
this.valueFhirDecimalElement,
    required this.valueFhirInteger,
this.valueFhirIntegerElement,
    required this.valueFhirDate,
this.valueFhirDateElement,
    required this.valueFhirDateTime,
this.valueFhirDateTimeElement,
    required this.valueFhirTime,
this.valueFhirTimeElement,
    required this.valueFhirString,
this.valueFhirStringElement,
    required this.valueFhirUri,
this.valueFhirUriElement,
    required this.valueAttachment,
    required this.valueCoding,
    required this.valueQuantity,
    required this.valueReference,
  });

@override
QuestionnaireInitial clone() => throw UnimplementedError();
}

