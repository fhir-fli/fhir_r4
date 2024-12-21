import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [QuestionnaireResponse]
/// A structured set of questions and their answers. The questions are
/// ordered and grouped into coherent subsets, corresponding to the
/// structure of the grouping of the questionnaire being responded to.
class QuestionnaireResponse extends DomainResource {
  /// Primary constructor for
  /// [QuestionnaireResponse]

  const QuestionnaireResponse({
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
  }) : super(
          resourceType: R4ResourceType.QuestionnaireResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireResponse(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      questionnaire:
          (json['questionnaire'] != null || json['_questionnaire'] != null)
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
      authored: (json['authored'] != null || json['_authored'] != null)
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

  /// Deserialize [QuestionnaireResponse]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireResponse]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    addField('questionnaire', questionnaire);
    addField('status', status);
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('authored', authored);
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
    );
  }
}

/// [QuestionnaireResponseItem]
/// A group or question item from the original questionnaire for which
/// answers are provided.
class QuestionnaireResponseItem extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireResponseItem]

  const QuestionnaireResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.linkId,
    this.definition,
    this.text,
    this.answer,
    this.item,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponseItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireResponseItem(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      definition: (json['definition'] != null || json['_definition'] != null)
          ? FhirUri.fromJson({
              'value': json['definition'],
              '_value': json['_definition'],
            })
          : null,
      text: (json['text'] != null || json['_text'] != null)
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

  /// Deserialize [QuestionnaireResponseItem]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireResponseItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireResponseItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireResponseItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireResponseItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireResponseItem]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('linkId', linkId);
    addField('definition', definition);
    addField('text', text);
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
    );
  }
}

/// [QuestionnaireResponseAnswer]
/// The respondent's answer(s) to the question.
class QuestionnaireResponseAnswer extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireResponseAnswer]

  const QuestionnaireResponseAnswer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueX,
    this.item,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireResponseAnswer(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      valueX: json['valueBoolean'] != null || json['_valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : json['valueDecimal'] != null || json['_valueDecimal'] != null
              ? FhirDecimal.fromJson({
                  'value': json['valueDecimal'],
                  '_value': json['_valueDecimal'],
                })
              : json['valueInteger'] != null || json['_valueInteger'] != null
                  ? FhirInteger.fromJson({
                      'value': json['valueInteger'],
                      '_value': json['_valueInteger'],
                    })
                  : json['valueDate'] != null || json['_valueDate'] != null
                      ? FhirDate.fromJson({
                          'value': json['valueDate'],
                          '_value': json['_valueDate'],
                        })
                      : json['valueDateTime'] != null ||
                              json['_valueDateTime'] != null
                          ? FhirDateTime.fromJson({
                              'value': json['valueDateTime'],
                              '_value': json['_valueDateTime'],
                            })
                          : json['valueTime'] != null ||
                                  json['_valueTime'] != null
                              ? FhirTime.fromJson({
                                  'value': json['valueTime'],
                                  '_value': json['_valueTime'],
                                })
                              : json['valueString'] != null ||
                                      json['_valueString'] != null
                                  ? FhirString.fromJson({
                                      'value': json['valueString'],
                                      '_value': json['_valueString'],
                                    })
                                  : json['valueUri'] != null ||
                                          json['_valueUri'] != null
                                      ? FhirUri.fromJson({
                                          'value': json['valueUri'],
                                          '_value': json['_valueUri'],
                                        })
                                      : json['valueAttachment'] != null ||
                                              json['_valueAttachment'] != null
                                          ? Attachment.fromJson({
                                              'value': json['valueAttachment'],
                                              '_value':
                                                  json['_valueAttachment'],
                                            })
                                          : json['valueCoding'] != null ||
                                                  json['_valueCoding'] != null
                                              ? Coding.fromJson({
                                                  'value': json['valueCoding'],
                                                  '_value':
                                                      json['_valueCoding'],
                                                })
                                              : json['valueQuantity'] != null ||
                                                      json['_valueQuantity'] !=
                                                          null
                                                  ? Quantity.fromJson({
                                                      'value':
                                                          json['valueQuantity'],
                                                      '_value': json[
                                                          '_valueQuantity'],
                                                    })
                                                  : json['valueReference'] !=
                                                          null
                                                      ? Reference.fromJson(
                                                          json['valueReference']
                                                              as Map<String,
                                                                  dynamic>,
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

  /// Deserialize [QuestionnaireResponseAnswer]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireResponseAnswer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireResponseAnswer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireResponseAnswer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireResponseAnswer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireResponseAnswer]
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

  /// [valueX]
  /// The answer (or one of the answers) provided by the respondent to the
  /// question.
  final ValueXQuestionnaireResponseAnswer? valueX;

  /// [item]
  /// Nested groups and/or questions found within this particular answer.
  final List<QuestionnaireResponseItem>? item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('value${valueX!.fhirType.capitalize()}', valueX);
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
    ValueXQuestionnaireResponseAnswer? valueX,
    List<QuestionnaireResponseItem>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return QuestionnaireResponseAnswer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ?? this.valueX,
      item: item ?? this.item,
    );
  }
}
