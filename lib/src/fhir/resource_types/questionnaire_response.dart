import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'questionnaire_response.g.dart';

/// [QuestionnaireResponse] /// A structured set of questions and their answers. The questions are ordered
/// and grouped into coherent subsets, corresponding to the structure of the
/// grouping of the questionnaire being responded to.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.QuestionnaireResponse);
  @override
  String get fhirType => 'QuestionnaireResponse';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A business identifier assigned to a particular completed (or partially
  /// completed) questionnaire.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [basedOn] /// The order, proposal or plan that is fulfilled in whole or in part by this
  /// QuestionnaireResponse. For example, a ServiceRequest seeking an intake
  /// assessment or a decision support recommendation to assess for post-partum
  /// depression.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [partOf] /// A procedure or observation that this questionnaire was performed as part of
  /// the execution of. For example, the surgery a checklist was executed as part
  /// of.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [questionnaire] /// The Questionnaire that defines and organizes the questions for which
  /// answers are being provided.
  @JsonKey(name: 'questionnaire')
  final FhirCanonical? questionnaire;
  @JsonKey(name: '_questionnaire')
  final Element? questionnaireElement;

  /// [status] /// The position of the questionnaire response within its overall lifecycle.
  @JsonKey(name: 'status')
  final QuestionnaireResponseStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [subject] /// The subject of the questionnaire response. This could be a patient,
  /// organization, practitioner, device, etc. This is who/what the answers apply
  /// to, but is not necessarily the source of information.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [encounter] /// The Encounter during which this questionnaire response was created or to
  /// which the creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [authored] /// The date and/or time that this set of answers were last changed.
  @JsonKey(name: 'authored')
  final FhirDateTime? authored;
  @JsonKey(name: '_authored')
  final Element? authoredElement;

  /// [author] /// Person who received the answers to the questions in the
  /// QuestionnaireResponse and recorded them in the system.
  @JsonKey(name: 'author')
  final Reference? author;

  /// [source] /// The person who answered the questions about the subject.
  @JsonKey(name: 'source')
  final Reference? source;

  /// [item] /// A group or question item from the original questionnaire for which answers
  /// are provided.
  @JsonKey(name: 'item')
  final List<QuestionnaireResponseItem>? item;
  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuestionnaireResponseToJson(this);

  @override
  QuestionnaireResponse clone() => throw UnimplementedError();
  @override
  QuestionnaireResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    QuestionnaireResponseStatus? status,
    Element? statusElement,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? authored,
    Element? authoredElement,
    Reference? author,
    Reference? source,
    List<QuestionnaireResponseItem>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory QuestionnaireResponse.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? QuestionnaireResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'QuestionnaireResponse cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory QuestionnaireResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [QuestionnaireResponseItem] /// A group or question item from the original questionnaire for which answers
/// are provided.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'QuestionnaireResponseItem';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [linkId] /// The item from the Questionnaire that corresponds to this item in the
  /// QuestionnaireResponse resource.
  @JsonKey(name: 'linkId')
  final FhirString linkId;
  @JsonKey(name: '_linkId')
  final Element? linkIdElement;

  /// [definition] /// A reference to an [ElementDefinition](elementdefinition.html) that provides
  /// the details for the item.
  @JsonKey(name: 'definition')
  final FhirUri? definition;
  @JsonKey(name: '_definition')
  final Element? definitionElement;

  /// [text] /// Text that is displayed above the contents of the group or as the text of
  /// the question being answered.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [answer] /// The respondent's answer(s) to the question.
  @JsonKey(name: 'answer')
  final List<QuestionnaireResponseAnswer>? answer;

  /// [item] /// Questions or sub-groups nested beneath a question or group.
  @JsonKey(name: 'item')
  final List<QuestionnaireResponseItem>? item;
  factory QuestionnaireResponseItem.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponseItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuestionnaireResponseItemToJson(this);

  @override
  QuestionnaireResponseItem clone() => throw UnimplementedError();
  @override
  QuestionnaireResponseItem copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory QuestionnaireResponseItem.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponseItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? QuestionnaireResponseItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'QuestionnaireResponseItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory QuestionnaireResponseItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireResponseItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [QuestionnaireResponseAnswer] /// The respondent's answer(s) to the question.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'QuestionnaireResponseAnswer';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [valueBoolean] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueDecimal] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal? valueDecimal;
  @JsonKey(name: '_valueDecimal')
  final Element? valueDecimalElement;

  /// [valueInteger] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueInteger')
  final FhirInteger? valueInteger;
  @JsonKey(name: '_valueInteger')
  final Element? valueIntegerElement;

  /// [valueDate] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueDateTime] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime? valueDateTime;
  @JsonKey(name: '_valueDateTime')
  final Element? valueDateTimeElement;

  /// [valueTime] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueTime')
  final FhirTime? valueTime;
  @JsonKey(name: '_valueTime')
  final Element? valueTimeElement;

  /// [valueString] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueString')
  final FhirString? valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueUri] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueUri')
  final FhirUri? valueUri;
  @JsonKey(name: '_valueUri')
  final Element? valueUriElement;

  /// [valueAttachment] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;

  /// [valueCoding] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueCoding')
  final Coding? valueCoding;

  /// [valueQuantity] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueReference] /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  @JsonKey(name: 'valueReference')
  final Reference? valueReference;

  /// [item] /// Nested groups and/or questions found within this particular answer.
  @JsonKey(name: 'item')
  final List<QuestionnaireResponseItem>? item;
  factory QuestionnaireResponseAnswer.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponseAnswerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuestionnaireResponseAnswerToJson(this);

  @override
  QuestionnaireResponseAnswer clone() => throw UnimplementedError();
  @override
  QuestionnaireResponseAnswer copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory QuestionnaireResponseAnswer.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponseAnswer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? QuestionnaireResponseAnswer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'QuestionnaireResponseAnswer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory QuestionnaireResponseAnswer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireResponseAnswer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
