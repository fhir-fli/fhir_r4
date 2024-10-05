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
  final FhirCode? status;
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
    this.status,
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
  }): super(resourceType: R4ResourceType.Questionnaire);

@override
Questionnaire clone() => this;

}


@Data()
@JsonCodable()
class QuestionnaireItem {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? linkId;
  final Element? linkIdElement;
  final FhirUri? definition;
  final Element? definitionElement;
  final List<Coding>? code;
  final FhirString? prefix;
  final Element? prefixElement;
  final FhirString? text;
  final Element? textElement;
  final FhirCode? type;
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
  final List<QuestionnaireAnswerOption>? answerOption;
  final List<QuestionnaireInitial>? initial;
  final List<QuestionnaireItem>? item;

  QuestionnaireItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.linkId,
    this.linkIdElement,
    this.definition,
    this.definitionElement,
    this.code,
    this.prefix,
    this.prefixElement,
    this.text,
    this.textElement,
    this.type,
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
    this.answerOption,
    this.initial,
    this.item,
  });

}


@Data()
@JsonCodable()
class QuestionnaireEnableWhen {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? question;
  final Element? questionElement;
  final FhirCode? operator_;
  final Element? operatorElement;
  final bool? answerBoolean;
  final Element? answerBooleanElement;
  final double? answerDecimal;
  final Element? answerDecimalElement;
  final double? answerInteger;
  final Element? answerIntegerElement;
  final FhirString? answerDate;
  final Element? answerDateElement;
  final FhirString? answerDateTime;
  final Element? answerDateTimeElement;
  final FhirString? answerTime;
  final Element? answerTimeElement;
  final FhirString? answerString;
  final Element? answerStringElement;
  final Coding? answerCoding;
  final Quantity? answerQuantity;
  final Reference? answerReference;

  QuestionnaireEnableWhen({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.question,
    this.questionElement,
    this.operator_,
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

}


@Data()
@JsonCodable()
class QuestionnaireAnswerOption {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final FhirString? valueDate;
  final Element? valueDateElement;
  final FhirString? valueTime;
  final Element? valueTimeElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final Coding? valueCoding;
  final Reference? valueReference;
  final FhirBoolean? initialSelected;
  final Element? initialSelectedElement;

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

}


@Data()
@JsonCodable()
class QuestionnaireInitial {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final double? valueDecimal;
  final Element? valueDecimalElement;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final FhirString? valueDate;
  final Element? valueDateElement;
  final FhirString? valueDateTime;
  final Element? valueDateTimeElement;
  final FhirString? valueTime;
  final Element? valueTimeElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final FhirString? valueUri;
  final Element? valueUriElement;
  final Attachment? valueAttachment;
  final Coding? valueCoding;
  final Quantity? valueQuantity;
  final Reference? valueReference;

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

}



