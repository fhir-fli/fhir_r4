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
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.questionnaire,
    required this.status,
    this.subject,
    this.encounter,
    this.authored,
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
  factory QuestionnaireResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireResponse(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
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
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      questionnaire: json['questionnaire'] != null
          ? FhirCanonical.fromJson({
              'value': json['questionnaire'],
              '_value': json['_questionnaire'],
            })
          : null,
      status: QuestionnaireResponseStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
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
          ? FhirDateTime.fromJson({
              'value': json['authored'],
              '_value': json['_authored'],
            })
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
                (v) => QuestionnaireResponseItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [QuestionnaireResponse] from a [String]
  /// or [YamlMap] object
  factory QuestionnaireResponse.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? QuestionnaireResponse.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? QuestionnaireResponse.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'QuestionnaireResponse cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [QuestionnaireResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireResponse.fromJsonString(
    String source,
  ) {
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

  /// [status]
  /// The position of the questionnaire response within its overall
  /// lifecycle.
  final QuestionnaireResponseStatus status;

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
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    if (questionnaire != null) {
      final fieldJson10 = questionnaire!.toJson();
      json['questionnaire'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_questionnaire'] = fieldJson10['_value'];
      }
    }

    json['status'] = status.toJson();

    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (authored != null) {
      final fieldJson14 = authored!.toJson();
      json['authored'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_authored'] = fieldJson14['_value'];
      }
    }

    if (author != null) {
      json['author'] = author!.toJson();
    }

    if (source != null) {
      json['source'] = source!.toJson();
    }

    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((e) => e.toJson()).toList();
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    FhirCanonical? questionnaire,
    QuestionnaireResponseStatus? status,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? authored,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      questionnaire: questionnaire ?? this.questionnaire,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      authored: authored ?? this.authored,
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
    this.definition,
    this.text,
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
  factory QuestionnaireResponseItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireResponseItem(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      linkId: FhirString.fromJson({
        'value': json['linkId'],
        '_value': json['_linkId'],
      }),
      definition: json['definition'] != null
          ? FhirUri.fromJson({
              'value': json['definition'],
              '_value': json['_definition'],
            })
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      answer: json['answer'] != null
          ? (json['answer'] as List<dynamic>)
              .map<QuestionnaireResponseAnswer>(
                (v) => QuestionnaireResponseAnswer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<QuestionnaireResponseItem>(
                (v) => QuestionnaireResponseItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [QuestionnaireResponseItem] from a [String]
  /// or [YamlMap] object
  factory QuestionnaireResponseItem.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? QuestionnaireResponseItem.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? QuestionnaireResponseItem.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'QuestionnaireResponseItem cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [QuestionnaireResponseItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireResponseItem.fromJsonString(
    String source,
  ) {
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

  /// [definition]
  /// A reference to an [ElementDefinition](elementdefinition.html) that
  /// provides the details for the item.
  final FhirUri? definition;

  /// [text]
  /// Text that is displayed above the contents of the group or as the text
  /// of the question being answered.
  final FhirString? text;

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
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = linkId.toJson();
    json['linkId'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_linkId'] = fieldJson2['_value'];
    }

    if (definition != null) {
      final fieldJson3 = definition!.toJson();
      json['definition'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_definition'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (answer != null && answer!.isNotEmpty) {
      json['answer'] = answer!.map((e) => e.toJson()).toList();
    }

    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((e) => e.toJson()).toList();
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
    FhirUri? definition,
    FhirString? text,
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
      definition: definition ?? this.definition,
      text: text ?? this.text,
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
    this.valueDecimal,
    this.valueInteger,
    this.valueDate,
    this.valueDateTime,
    this.valueTime,
    this.valueString,
    this.valueUri,
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
  factory QuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireResponseAnswer(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['valueDecimal'],
              '_value': json['_valueDecimal'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson({
              'value': json['valueDate'],
              '_value': json['_valueDate'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson({
              'value': json['valueTime'],
              '_value': json['_valueTime'],
            })
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueUri: json['valueUri'] != null
          ? FhirUri.fromJson({
              'value': json['valueUri'],
              '_value': json['_valueUri'],
            })
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
                (v) => QuestionnaireResponseItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [QuestionnaireResponseAnswer] from a [String]
  /// or [YamlMap] object
  factory QuestionnaireResponseAnswer.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? QuestionnaireResponseAnswer.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? QuestionnaireResponseAnswer.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'QuestionnaireResponseAnswer cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [QuestionnaireResponseAnswer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireResponseAnswer.fromJsonString(
    String source,
  ) {
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

  /// [valueDecimal]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDecimal? valueDecimal;

  /// [valueInteger]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirInteger? valueInteger;

  /// [valueDate]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDate? valueDate;

  /// [valueDateTime]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirDateTime? valueDateTime;

  /// [valueTime]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirTime? valueTime;

  /// [valueString]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirString? valueString;

  /// [valueUri]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final FhirUri? valueUri;

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
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (valueBoolean != null) {
      final fieldJson2 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_valueBoolean'] = fieldJson2['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson3 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_valueDecimal'] = fieldJson3['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson4 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueInteger'] = fieldJson4['_value'];
      }
    }

    if (valueDate != null) {
      final fieldJson5 = valueDate!.toJson();
      json['valueDate'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueDate'] = fieldJson5['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson6 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueDateTime'] = fieldJson6['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson7 = valueTime!.toJson();
      json['valueTime'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueTime'] = fieldJson7['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson8 = valueString!.toJson();
      json['valueString'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueString'] = fieldJson8['_value'];
      }
    }

    if (valueUri != null) {
      final fieldJson9 = valueUri!.toJson();
      json['valueUri'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueUri'] = fieldJson9['_value'];
      }
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
      json['item'] = item!.map((e) => e.toJson()).toList();
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
    FhirDecimal? valueDecimal,
    FhirInteger? valueInteger,
    FhirDate? valueDate,
    FhirDateTime? valueDateTime,
    FhirTime? valueTime,
    FhirString? valueString,
    FhirUri? valueUri,
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
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueInteger: valueInteger ?? this.valueInteger,
      valueDate: valueDate ?? this.valueDate,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueTime: valueTime ?? this.valueTime,
      valueString: valueString ?? this.valueString,
      valueUri: valueUri ?? this.valueUri,
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
