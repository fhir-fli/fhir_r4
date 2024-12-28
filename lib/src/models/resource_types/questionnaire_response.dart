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
          objectPath: 'QuestionnaireResponse',
          resourceType: R4ResourceType.QuestionnaireResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'QuestionnaireResponse';
    return QuestionnaireResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      questionnaire: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'questionnaire',
        FhirCanonical.fromJson,
        '$objectPath.questionnaire',
      ),
      status: JsonParser.parsePrimitive<QuestionnaireResponseStatus>(
        json,
        'status',
        QuestionnaireResponseStatus.fromJson,
        '$objectPath.status',
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      authored: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authored',
        FhirDateTime.fromJson,
        '$objectPath.authored',
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
      source: JsonParser.parseObject<Reference>(
        json,
        'source',
        Reference.fromJson,
        '$objectPath.source',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireResponseItem>(
            (v) => QuestionnaireResponseItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return QuestionnaireResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('questionnaire', questionnaire);
    addField('status', status);
    addField('subject', subject);
    addField('encounter', encounter);
    addField('authored', authored);
    addField('author', author);
    addField('source', source);
    addField('item', item);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'basedOn',
      'partOf',
      'questionnaire',
      'status',
      'subject',
      'encounter',
      'authored',
      'author',
      'source',
      'item',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'questionnaire':
        if (questionnaire != null) {
          fields.add(questionnaire!);
        }
      case 'status':
        fields.add(status);
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'authored':
        if (authored != null) {
          fields.add(authored!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return QuestionnaireResponse(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      questionnaire: questionnaire?.copyWith(
            objectPath: '$newObjectPath.questionnaire',
          ) ??
          this.questionnaire,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      authored: authored?.copyWith(
            objectPath: '$newObjectPath.authored',
          ) ??
          this.authored,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireResponse) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (meta != o.meta) {
      return false;
    }
    if (implicitRules != o.implicitRules) {
      return false;
    }
    if (language != o.language) {
      return false;
    }
    if (text != o.text) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (identifier != o.identifier) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (questionnaire != o.questionnaire) {
      return false;
    }
    if (status != o.status) {
      return false;
    }
    if (subject != o.subject) {
      return false;
    }
    if (encounter != o.encounter) {
      return false;
    }
    if (authored != o.authored) {
      return false;
    }
    if (author != o.author) {
      return false;
    }
    if (source != o.source) {
      return false;
    }
    if (!listEquals<QuestionnaireResponseItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'QuestionnaireResponse.item',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponseItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'QuestionnaireResponse.item';
    return QuestionnaireResponseItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      linkId: JsonParser.parsePrimitive<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
        '$objectPath.linkId',
      )!,
      definition: JsonParser.parsePrimitive<FhirUri>(
        json,
        'definition',
        FhirUri.fromJson,
        '$objectPath.definition',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      answer: (json['answer'] as List<dynamic>?)
          ?.map<QuestionnaireResponseAnswer>(
            (v) => QuestionnaireResponseAnswer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.answer',
              },
            ),
          )
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireResponseItem>(
            (v) => QuestionnaireResponseItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return QuestionnaireResponseItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('linkId', linkId);
    addField('definition', definition);
    addField('text', text);
    addField('answer', answer);
    addField('item', item);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'linkId',
      'definition',
      'text',
      'answer',
      'item',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'linkId':
        fields.add(linkId);
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'answer':
        if (answer != null) {
          fields.addAll(answer!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return QuestionnaireResponseItem(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      linkId: linkId?.copyWith(
            objectPath: '$newObjectPath.linkId',
          ) ??
          this.linkId,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      answer: answer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.answer',
                ),
              )
              .toList() ??
          this.answer,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireResponseItem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (linkId != o.linkId) {
      return false;
    }
    if (definition != o.definition) {
      return false;
    }
    if (text != o.text) {
      return false;
    }
    if (!listEquals<QuestionnaireResponseAnswer>(
      answer,
      o.answer,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireResponseItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'QuestionnaireResponse.item.answer',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireResponseAnswer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'QuestionnaireResponse.item.answer';
    return QuestionnaireResponseAnswer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXQuestionnaireResponseAnswer>(
        json,
        {
          'valueBoolean': FhirBoolean.fromJson,
          'valueDecimal': FhirDecimal.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueDateTime': FhirDateTime.fromJson,
          'valueTime': FhirTime.fromJson,
          'valueString': FhirString.fromJson,
          'valueUri': FhirUri.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueCoding': Coding.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueReference': Reference.fromJson,
        },
        objectPath,
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireResponseItem>(
            (v) => QuestionnaireResponseItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return QuestionnaireResponseAnswer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    addField('item', item);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'valueX',
      'item',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return QuestionnaireResponseAnswer(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXQuestionnaireResponseAnswer? ??
          this.valueX,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireResponseAnswer) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (valueX != o.valueX) {
      return false;
    }
    if (!listEquals<QuestionnaireResponseItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}
