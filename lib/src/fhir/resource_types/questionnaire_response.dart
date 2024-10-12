import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [QuestionnaireResponse]
/// A structured set of questions and their answers. The questions are
/// ordered and grouped into coherent subsets, corresponding to the
/// structure of the grouping of the questionnaire being responded to.
class QuestionnaireResponse extends DomainResource {
  /// Primary constructor for [QuestionnaireResponse]

  QuestionnaireResponse({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.questionnaire,

    /// Extensions for [questionnaire]
    this.questionnaireElement,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.subject,
    this.encounter,
    this.authored,

    /// Extensions for [authored]
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
  }) : super(
          resourceType: R4ResourceType.QuestionnaireResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) {
    return QuestionnaireResponse(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      questionnaire: json['questionnaire'] != null
          ? FhirCanonical.fromJson(json['questionnaire'])
          : null,
      questionnaireElement: json['_questionnaire'] != null
          ? Element.fromJson(
              json['_questionnaire'] as Map<String, dynamic>,
            )
          : null,
      status: QuestionnaireResponseStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      authored: json['authored'] != null
          ? FhirDateTime.fromJson(json['authored'])
          : null,
      authoredElement: json['_authored'] != null
          ? Element.fromJson(
              json['_authored'] as Map<String, dynamic>,
            )
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      source: json['source'] != null
          ? Reference.fromJson(
              json['source'] as Map<String, dynamic>,
            )
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<QuestionnaireResponseItem>(
                (dynamic v) => QuestionnaireResponseItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [QuestionnaireResponse] from a [String] or [YamlMap] object
  factory QuestionnaireResponse.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? QuestionnaireResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'QuestionnaireResponse cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [QuestionnaireResponse] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireResponse';

  /// [identifier]
  /// A business identifier assigned to a particular completed (or partially
  /// completed) questionnaire.
  final Identifier? identifier;

  /// [basedOn]
  /// The order, proposal or plan that is fulfilled in whole or in part by
  /// this QuestionnaireResponse. For example, a ServiceRequest seeking an
  /// intake assessment or a decision support recommendation to assess for
  /// post-partum depression.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A procedure or observation that this questionnaire was performed as
  /// part of the execution of. For example, the surgery a checklist was
  /// executed as part of.
  final List<Reference>? partOf;

  /// [questionnaire]
  /// The Questionnaire that defines and organizes the questions for which
  /// answers are being provided.
  final FhirCanonical? questionnaire;

  /// Extensions for [questionnaire]
  final Element? questionnaireElement;

  /// [status]
  /// The position of the questionnaire response within its overall
  /// lifecycle.
  final QuestionnaireResponseStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [subject]
  /// The subject of the questionnaire response. This could be a patient,
  /// organization, practitioner, device, etc. This is who/what the answers
  /// apply to, but is not necessarily the source of information.
  final Reference? subject;

  /// [encounter]
  /// The Encounter during which this questionnaire response was created or
  /// to which the creation of this record is tightly associated.
  final Reference? encounter;

  /// [authored]
  /// The date and/or time that this set of answers were last changed.
  final FhirDateTime? authored;

  /// Extensions for [authored]
  final Element? authoredElement;

  /// [author]
  /// Person who received the answers to the questions in the
  /// QuestionnaireResponse and recorded them in the system.
  final Reference? author;

  /// [source]
  /// The person who answered the questions about the subject.
  final Reference? source;

  /// [item]
  /// A group or question item from the original questionnaire for which
  /// answers are provided.
  final List<QuestionnaireResponseItem>? item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((Reference v) => v.toJson()).toList();
    }
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((Reference v) => v.toJson()).toList();
    }
    if (questionnaire?.value != null) {
      json['questionnaire'] = questionnaire!.toJson();
    }
    if (questionnaireElement != null) {
      json['_questionnaire'] = questionnaireElement!.toJson();
    }
    json['status'] = status.toJson();
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (authored?.value != null) {
      json['authored'] = authored!.toJson();
    }
    if (authoredElement != null) {
      json['_authored'] = authoredElement!.toJson();
    }
    if (author != null) {
      json['author'] = author!.toJson();
    }
    if (source != null) {
      json['source'] = source!.toJson();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] =
          item!.map((QuestionnaireResponseItem v) => v.toJson()).toList();
    }
    return json;
  }

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
}

/// [QuestionnaireResponseItem]
/// A group or question item from the original questionnaire for which
/// answers are provided.
class QuestionnaireResponseItem extends BackboneElement {
  /// Primary constructor for [QuestionnaireResponseItem]

  QuestionnaireResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.linkId,

    /// Extensions for [linkId]
    this.linkIdElement,
    this.definition,

    /// Extensions for [definition]
    this.definitionElement,
    this.text,

    /// Extensions for [text]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponseItem.fromJson(Map<String, dynamic> json) {
    return QuestionnaireResponseItem(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      linkId: FhirString.fromJson(json['linkId']),
      linkIdElement: json['_linkId'] != null
          ? Element.fromJson(
              json['_linkId'] as Map<String, dynamic>,
            )
          : null,
      definition: json['definition'] != null
          ? FhirUri.fromJson(json['definition'])
          : null,
      definitionElement: json['_definition'] != null
          ? Element.fromJson(
              json['_definition'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(
              json['_text'] as Map<String, dynamic>,
            )
          : null,
      answer: json['answer'] != null
          ? (json['answer'] as List<dynamic>)
              .map<QuestionnaireResponseAnswer>(
                (dynamic v) => QuestionnaireResponseAnswer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<QuestionnaireResponseItem>(
                (dynamic v) => QuestionnaireResponseItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [QuestionnaireResponseItem] from a [String] or [YamlMap] object
  factory QuestionnaireResponseItem.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponseItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? QuestionnaireResponseItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'QuestionnaireResponseItem cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [QuestionnaireResponseItem] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireResponseItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireResponseItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireResponseItem';

  /// [linkId]
  /// The item from the Questionnaire that corresponds to this item in the
  /// QuestionnaireResponse resource.
  final FhirString linkId;

  /// Extensions for [linkId]
  final Element? linkIdElement;

  /// [definition]
  /// A reference to an [ElementDefinition](elementdefinition.html) that
  /// provides the details for the item.
  final FhirUri? definition;

  /// Extensions for [definition]
  final Element? definitionElement;

  /// [text]
  /// Text that is displayed above the contents of the group or as the text
  /// of the question being answered.
  final FhirString? text;

  /// Extensions for [text]
  final Element? textElement;

  /// [answer]
  /// The respondent's answer(s) to the question.
  final List<QuestionnaireResponseAnswer>? answer;

  /// [item]
  /// Questions or sub-groups nested beneath a question or group.
  final List<QuestionnaireResponseItem>? item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['linkId'] = linkId.toJson();
    if (linkIdElement != null) {
      json['_linkId'] = linkIdElement!.toJson();
    }
    if (definition?.value != null) {
      json['definition'] = definition!.toJson();
    }
    if (definitionElement != null) {
      json['_definition'] = definitionElement!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (answer != null && answer!.isNotEmpty) {
      json['answer'] =
          answer!.map((QuestionnaireResponseAnswer v) => v.toJson()).toList();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] =
          item!.map((QuestionnaireResponseItem v) => v.toJson()).toList();
    }
    return json;
  }

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
}

/// [QuestionnaireResponseAnswer]
/// The respondent's answer(s) to the question.
class QuestionnaireResponseAnswer extends BackboneElement {
  /// Primary constructor for [QuestionnaireResponseAnswer]

  QuestionnaireResponseAnswer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueBoolean,

    /// Extensions for [valueBoolean]
    this.valueBooleanElement,
    this.valueDecimal,

    /// Extensions for [valueDecimal]
    this.valueDecimalElement,
    this.valueInteger,

    /// Extensions for [valueInteger]
    this.valueIntegerElement,
    this.valueDate,

    /// Extensions for [valueDate]
    this.valueDateElement,
    this.valueDateTime,

    /// Extensions for [valueDateTime]
    this.valueDateTimeElement,
    this.valueTime,

    /// Extensions for [valueTime]
    this.valueTimeElement,
    this.valueString,

    /// Extensions for [valueString]
    this.valueStringElement,
    this.valueUri,

    /// Extensions for [valueUri]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponseAnswer.fromJson(Map<String, dynamic> json) {
    return QuestionnaireResponseAnswer(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(
              json['_valueBoolean'] as Map<String, dynamic>,
            )
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(
              json['_valueDecimal'] as Map<String, dynamic>,
            )
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(
              json['_valueInteger'] as Map<String, dynamic>,
            )
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson(json['valueDate'])
          : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(
              json['_valueDate'] as Map<String, dynamic>,
            )
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(
              json['_valueDateTime'] as Map<String, dynamic>,
            )
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson(json['valueTime'])
          : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(
              json['_valueTime'] as Map<String, dynamic>,
            )
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson(json['valueString'])
          : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(
              json['_valueString'] as Map<String, dynamic>,
            )
          : null,
      valueUri:
          json['valueUri'] != null ? FhirUri.fromJson(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(
              json['_valueUri'] as Map<String, dynamic>,
            )
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              json['valueCoding'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<QuestionnaireResponseItem>(
                (dynamic v) => QuestionnaireResponseItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [QuestionnaireResponseAnswer] from a [String] or [YamlMap] object
  factory QuestionnaireResponseAnswer.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponseAnswer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? QuestionnaireResponseAnswer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'QuestionnaireResponseAnswer cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [QuestionnaireResponseAnswer] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireResponseAnswer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireResponseAnswer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireResponseAnswer';

  /// [valueBoolean]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirBoolean? valueBoolean;

  /// Extensions for [valueBoolean]
  final Element? valueBooleanElement;

  /// [valueDecimal]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDecimal? valueDecimal;

  /// Extensions for [valueDecimal]
  final Element? valueDecimalElement;

  /// [valueInteger]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirInteger? valueInteger;

  /// Extensions for [valueInteger]
  final Element? valueIntegerElement;

  /// [valueDate]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDate? valueDate;

  /// Extensions for [valueDate]
  final Element? valueDateElement;

  /// [valueDateTime]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDateTime? valueDateTime;

  /// Extensions for [valueDateTime]
  final Element? valueDateTimeElement;

  /// [valueTime]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirTime? valueTime;

  /// Extensions for [valueTime]
  final Element? valueTimeElement;

  /// [valueString]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirString? valueString;

  /// Extensions for [valueString]
  final Element? valueStringElement;

  /// [valueUri]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirUri? valueUri;

  /// Extensions for [valueUri]
  final Element? valueUriElement;

  /// [valueAttachment]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final Attachment? valueAttachment;

  /// [valueCoding]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final Coding? valueCoding;

  /// [valueQuantity]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final Quantity? valueQuantity;

  /// [valueReference]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final Reference? valueReference;

  /// [item]
  /// Nested groups and/or questions found within this particular answer.
  final List<QuestionnaireResponseItem>? item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.toJson();
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.toJson();
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.toJson();
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.toJson();
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.toJson();
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.toJson();
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] =
          item!.map((QuestionnaireResponseItem v) => v.toJson()).toList();
    }
    return json;
  }

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
}
