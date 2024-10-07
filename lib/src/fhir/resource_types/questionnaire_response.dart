import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [QuestionnaireResponse] /// A structured set of questions and their answers. The questions are ordered
/// and grouped into coherent subsets, corresponding to the structure of the
/// grouping of the questionnaire being responded to.
class QuestionnaireResponse extends DomainResource {
  QuestionnaireResponse({
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
    this.identifier,
    this.basedOn,
    this.partOf,
    this.questionnaire,
    this.questionnaireElement,
    required this.status,
    this.statusElement,
    this.subject,
    this.encounter,
    this.authored,
    this.authoredElement,
    this.author,
    this.source,
    this.item,
  }) : super(resourceType: R4ResourceType.QuestionnaireResponse);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A business identifier assigned to a particular completed (or partially
  /// completed) questionnaire.
  final Identifier? identifier;

  /// [basedOn] /// The order, proposal or plan that is fulfilled in whole or in part by this
  /// QuestionnaireResponse. For example, a ServiceRequest seeking an intake
  /// assessment or a decision support recommendation to assess for post-partum
  /// depression.
  final List<Reference>? basedOn;

  /// [partOf] /// A procedure or observation that this questionnaire was performed as part of
  /// the execution of. For example, the surgery a checklist was executed as part
  /// of.
  final List<Reference>? partOf;

  /// [questionnaire] /// The Questionnaire that defines and organizes the questions for which
  /// answers are being provided.
  final FhirCanonical? questionnaire;
  final Element? questionnaireElement;

  /// [status] /// The position of the questionnaire response within its overall lifecycle.
  final FhirCode status;
  final Element? statusElement;

  /// [subject] /// The subject of the questionnaire response. This could be a patient,
  /// organization, practitioner, device, etc. This is who/what the answers apply
  /// to, but is not necessarily the source of information.
  final Reference? subject;

  /// [encounter] /// The Encounter during which this questionnaire response was created or to
  /// which the creation of this record is tightly associated.
  final Reference? encounter;

  /// [authored] /// The date and/or time that this set of answers were last changed.
  final FhirDateTime? authored;
  final Element? authoredElement;

  /// [author] /// Person who received the answers to the questions in the
  /// QuestionnaireResponse and recorded them in the system.
  final Reference? author;

  /// [source] /// The person who answered the questions about the subject.
  final Reference? source;

  /// [item] /// A group or question item from the original questionnaire for which answers
  /// are provided.
  final List<QuestionnaireResponseItem>? item;
  @override
  QuestionnaireResponse clone() => throw UnimplementedError();
  QuestionnaireResponse copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    FhirCanonical? questionnaire,
    Element? questionnaireElement,
    FhirCode? status,
    Element? statusElement,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? authored,
    Element? authoredElement,
    Reference? author,
    Reference? source,
    List<QuestionnaireResponseItem>? item,
  }) {
    return QuestionnaireResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      questionnaire: questionnaire ?? this.questionnaire,
      questionnaireElement: questionnaireElement ?? this.questionnaireElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      authored: authored ?? this.authored,
      authoredElement: authoredElement ?? this.authoredElement,
      author: author ?? this.author,
      source: source ?? this.source,
      item: item ?? this.item,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [QuestionnaireResponseItem] /// A group or question item from the original questionnaire for which answers
/// are provided.
class QuestionnaireResponseItem extends BackboneElement {
  QuestionnaireResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.linkId,
    this.linkIdElement,
    this.definition,
    this.definitionElement,
    this.text,
    this.textElement,
    this.answer,
    this.item,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [linkId] /// The item from the Questionnaire that corresponds to this item in the
  /// QuestionnaireResponse resource.
  final FhirString linkId;
  final Element? linkIdElement;

  /// [definition] /// A reference to an [ElementDefinition](elementdefinition.html) that provides
  /// the details for the item.
  final FhirUri? definition;
  final Element? definitionElement;

  /// [text] /// Text that is displayed above the contents of the group or as the text of
  /// the question being answered.
  final FhirString? text;
  final Element? textElement;

  /// [answer] /// The respondent's answer(s) to the question.
  final List<QuestionnaireResponseAnswer>? answer;

  /// [item] /// Questions or sub-groups nested beneath a question or group.
  final List<QuestionnaireResponseItem>? item;
  @override
  QuestionnaireResponseItem clone() => throw UnimplementedError();
  QuestionnaireResponseItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    Element? linkIdElement,
    FhirUri? definition,
    Element? definitionElement,
    FhirString? text,
    Element? textElement,
    List<QuestionnaireResponseAnswer>? answer,
    List<QuestionnaireResponseItem>? item,
  }) {
    return QuestionnaireResponseItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      linkIdElement: linkIdElement ?? this.linkIdElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      answer: answer ?? this.answer,
      item: item ?? this.item,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [QuestionnaireResponseAnswer] /// The respondent's answer(s) to the question.
class QuestionnaireResponseAnswer extends BackboneElement {
  QuestionnaireResponseAnswer({
    super.id,
    super.extension_,
    super.modifierExtension,
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
    this.item,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [valueBoolean] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueDecimal] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;

  /// [valueInteger] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueDate] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueTime] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueString] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueUri] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirUri? valueUri;
  final Element? valueUriElement;

  /// [valueAttachment] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final Attachment? valueAttachment;

  /// [valueCoding] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final Coding? valueCoding;

  /// [valueQuantity] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final Quantity? valueQuantity;

  /// [valueReference] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final Reference? valueReference;

  /// [item] /// Nested groups and/or questions found within this particular answer.
  final List<QuestionnaireResponseItem>? item;
  @override
  QuestionnaireResponseAnswer clone() => throw UnimplementedError();
  QuestionnaireResponseAnswer copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    Attachment? valueAttachment,
    Coding? valueCoding,
    Quantity? valueQuantity,
    Reference? valueReference,
    List<QuestionnaireResponseItem>? item,
  }) {
    return QuestionnaireResponseAnswer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueCoding: valueCoding ?? this.valueCoding,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueReference: valueReference ?? this.valueReference,
      item: item ?? this.item,
    );
  }
}
