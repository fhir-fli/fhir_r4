import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'questionnaire.g.dart';

/// [Questionnaire]
/// A structured set of questions intended to guide the collection of
/// answers from end-users. Questionnaires provide detailed control over
/// order, presentation, phraseology and grouping to allow coherent,
/// consistent data collection.
class Questionnaire extends CanonicalResource {
  /// Primary constructor for
  /// [Questionnaire]

  const Questionnaire({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    this.name,
    this.title,
    this.derivedFrom,
    required super.status,
    super.experimental,
    this.subjectType,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.code,
    this.item,
  }) : super(
          resourceType: R4ResourceType.Questionnaire,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Questionnaire.fromJson(
    Map<String, dynamic> json,
  ) {
    return Questionnaire(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      derivedFrom: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'derivedFrom',
        FhirCanonical.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      subjectType: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'subjectType',
        FhirCode.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireItem>(
            (v) => QuestionnaireItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Questionnaire]
  /// from a [String] or [YamlMap] object
  factory Questionnaire.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Questionnaire.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Questionnaire.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Questionnaire '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Questionnaire]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Questionnaire.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Questionnaire.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Questionnaire';

  /// [identifier]
  /// A formal identifier that is used to identify this questionnaire when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the questionnaire. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the questionnaire.
  final FhirString? title;

  /// [derivedFrom]
  /// The URL of a Questionnaire that this Questionnaire is based on.
  final List<FhirCanonical>? derivedFrom;

  /// [subjectType]
  /// The types of subjects that can be the subject of responses created for
  /// the questionnaire.
  final List<FhirCode>? subjectType;

  /// [purpose]
  /// Explanation of why this questionnaire is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the questionnaire and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the questionnaire.
  final FhirMarkdown? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  final FhirDate? lastReviewDate;

  /// [effectivePeriod]
  /// The period during which the questionnaire content was or is planned to
  /// be in active use.
  final Period? effectivePeriod;

  /// [code]
  /// An identifier for this question or group of questions in a particular
  /// terminology such as LOINC.
  final List<Coding>? code;

  /// [item]
  /// A particular question, question grouping or display text that is part
  /// of the questionnaire.
  final List<QuestionnaireItem>? item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'subjectType',
      subjectType,
    );
    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'approvalDate',
      approvalDate,
    );
    addField(
      'lastReviewDate',
      lastReviewDate,
    );
    addField(
      'effectivePeriod',
      effectivePeriod,
    );
    addField(
      'code',
      code,
    );
    addField(
      'item',
      item,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'url',
      'identifier',
      'version',
      'name',
      'title',
      'derivedFrom',
      'status',
      'experimental',
      'subjectType',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'code',
      'item',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'subjectType':
        if (subjectType != null) {
          fields.addAll(subjectType!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'effectivePeriod':
        if (effectivePeriod != null) {
          fields.add(effectivePeriod!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Questionnaire clone() => copyWith();

  /// Copy function for [Questionnaire]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $QuestionnaireCopyWith<Questionnaire> get copyWith =>
      _$QuestionnaireCopyWithImpl<Questionnaire>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Questionnaire) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
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
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!listEquals<FhirCode>(
      subjectType,
      o.subjectType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectivePeriod,
      o.effectivePeriod,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireItem]
/// A particular question, question grouping or display text that is part
/// of the questionnaire.
class QuestionnaireItem extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireItem]

  const QuestionnaireItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.linkId,
    this.definition,
    this.code,
    this.prefix,
    this.text,
    required this.type,
    this.enableWhen,
    this.enableBehavior,
    this.required_,
    this.repeats,
    this.readOnly,
    this.maxLength,
    this.answerValueSet,
    this.answerOption,
    this.initial,
    this.item,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      linkId: JsonParser.parsePrimitive<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
      )!,
      definition: JsonParser.parsePrimitive<FhirUri>(
        json,
        'definition',
        FhirUri.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      prefix: JsonParser.parsePrimitive<FhirString>(
        json,
        'prefix',
        FhirString.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
      type: JsonParser.parsePrimitive<QuestionnaireItemType>(
        json,
        'type',
        QuestionnaireItemType.fromJson,
      )!,
      enableWhen: (json['enableWhen'] as List<dynamic>?)
          ?.map<QuestionnaireEnableWhen>(
            (v) => QuestionnaireEnableWhen.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      enableBehavior: JsonParser.parsePrimitive<EnableWhenBehavior>(
        json,
        'enableBehavior',
        EnableWhenBehavior.fromJson,
      ),
      required_: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'required',
        FhirBoolean.fromJson,
      ),
      repeats: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'repeats',
        FhirBoolean.fromJson,
      ),
      readOnly: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'readOnly',
        FhirBoolean.fromJson,
      ),
      maxLength: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'maxLength',
        FhirInteger.fromJson,
      ),
      answerValueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'answerValueSet',
        FhirCanonical.fromJson,
      ),
      answerOption: (json['answerOption'] as List<dynamic>?)
          ?.map<QuestionnaireAnswerOption>(
            (v) => QuestionnaireAnswerOption.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      initial: (json['initial'] as List<dynamic>?)
          ?.map<QuestionnaireInitial>(
            (v) => QuestionnaireInitial.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireItem>(
            (v) => QuestionnaireItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [QuestionnaireItem]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireItem';

  /// [linkId]
  /// An identifier that is unique within the Questionnaire allowing linkage
  /// to the equivalent item in a QuestionnaireResponse resource.
  final FhirString linkId;

  /// [definition]
  /// This element is a URI that refers to an
  /// [ElementDefinition](elementdefinition.html) that provides information
  /// about this item, including information that might otherwise be included
  /// in the instance of the Questionnaire resource. A detailed description
  /// of the construction of the URI is shown in Comments, below. If this
  /// element is present then the following element values MAY be derived
  /// from the Element Definition if the corresponding elements of this
  /// Questionnaire resource instance have no value:
  ///
  /// * code (ElementDefinition.code)
  /// * type (ElementDefinition.type)
  /// * required (ElementDefinition.min)
  /// * repeats (ElementDefinition.max)
  /// * maxLength (ElementDefinition.maxLength)
  /// * answerValueSet (ElementDefinition.binding)
  /// * options (ElementDefinition.binding).
  final FhirUri? definition;

  /// [code]
  /// A terminology code that corresponds to this group or question (e.g. a
  /// code from LOINC, which defines many questions and answers).
  final List<Coding>? code;

  /// [prefix]
  /// A short label for a particular group, question or set of display text
  /// within the questionnaire used for reference by the individual
  /// completing the questionnaire.
  final FhirString? prefix;

  /// [text]
  /// The name of a section, the text of a question or text content for a
  /// display item.
  final FhirString? text;

  /// [type]
  /// The type of questionnaire item this is - whether text for display, a
  /// grouping of other items or a particular type of data to be captured
  /// (string, integer, coded choice, etc.).
  final QuestionnaireItemType type;

  /// [enableWhen]
  /// A constraint indicating that this item should only be enabled
  /// (displayed/allow answers to be captured) when the specified condition
  /// is true.
  final List<QuestionnaireEnableWhen>? enableWhen;

  /// [enableBehavior]
  /// Controls how multiple enableWhen values are interpreted - whether all
  /// or any must be true.
  final EnableWhenBehavior? enableBehavior;

  /// [required_]
  /// An indication, if true, that the item must be present in a "completed"
  /// QuestionnaireResponse. If false, the item may be skipped when answering
  /// the questionnaire.
  final FhirBoolean? required_;

  /// [repeats]
  /// An indication, if true, that the item may occur multiple times in the
  /// response, collecting multiple answers for questions or multiple sets of
  /// answers for groups.
  final FhirBoolean? repeats;

  /// [readOnly]
  /// An indication, when true, that the value cannot be changed by a human
  /// respondent to the Questionnaire.
  final FhirBoolean? readOnly;

  /// [maxLength]
  /// The maximum number of characters that are permitted in the answer to be
  /// considered a "valid" QuestionnaireResponse.
  final FhirInteger? maxLength;

  /// [answerValueSet]
  /// A reference to a value set containing a list of codes representing
  /// permitted answers for a "choice" or "open-choice" question.
  final FhirCanonical? answerValueSet;

  /// [answerOption]
  /// One of the permitted answers for a "choice" or "open-choice" question.
  final List<QuestionnaireAnswerOption>? answerOption;

  /// [initial]
  /// One or more values that should be pre-populated in the answer when
  /// initially rendering the questionnaire for user input.
  final List<QuestionnaireInitial>? initial;

  /// [item]
  /// Text, questions and other groups to be nested beneath a question or
  /// group.
  final List<QuestionnaireItem>? item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'linkId',
      linkId,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'code',
      code,
    );
    addField(
      'prefix',
      prefix,
    );
    addField(
      'text',
      text,
    );
    addField(
      'type',
      type,
    );
    addField(
      'enableWhen',
      enableWhen,
    );
    addField(
      'enableBehavior',
      enableBehavior,
    );
    addField(
      'required',
      required_,
    );
    addField(
      'repeats',
      repeats,
    );
    addField(
      'readOnly',
      readOnly,
    );
    addField(
      'maxLength',
      maxLength,
    );
    addField(
      'answerValueSet',
      answerValueSet,
    );
    addField(
      'answerOption',
      answerOption,
    );
    addField(
      'initial',
      initial,
    );
    addField(
      'item',
      item,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'linkId',
      'definition',
      'code',
      'prefix',
      'text',
      'type',
      'enableWhen',
      'enableBehavior',
      'required',
      'repeats',
      'readOnly',
      'maxLength',
      'answerValueSet',
      'answerOption',
      'initial',
      'item',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'prefix':
        if (prefix != null) {
          fields.add(prefix!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'type':
        fields.add(type);
      case 'enableWhen':
        if (enableWhen != null) {
          fields.addAll(enableWhen!);
        }
      case 'enableBehavior':
        if (enableBehavior != null) {
          fields.add(enableBehavior!);
        }
      case 'required':
        if (required_ != null) {
          fields.add(required_!);
        }
      case 'repeats':
        if (repeats != null) {
          fields.add(repeats!);
        }
      case 'readOnly':
        if (readOnly != null) {
          fields.add(readOnly!);
        }
      case 'maxLength':
        if (maxLength != null) {
          fields.add(maxLength!);
        }
      case 'answerValueSet':
        if (answerValueSet != null) {
          fields.add(answerValueSet!);
        }
      case 'answerOption':
        if (answerOption != null) {
          fields.addAll(answerOption!);
        }
      case 'initial':
        if (initial != null) {
          fields.addAll(initial!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  QuestionnaireItem clone() => copyWith();

  /// Copy function for [QuestionnaireItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $QuestionnaireItemCopyWith<QuestionnaireItem> get copyWith =>
      _$QuestionnaireItemCopyWithImpl<QuestionnaireItem>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireItem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      prefix,
      o.prefix,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireEnableWhen>(
      enableWhen,
      o.enableWhen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enableBehavior,
      o.enableBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      required_,
      o.required_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      repeats,
      o.repeats,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      readOnly,
      o.readOnly,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxLength,
      o.maxLength,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      answerValueSet,
      o.answerValueSet,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireAnswerOption>(
      answerOption,
      o.answerOption,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireInitial>(
      initial,
      o.initial,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireEnableWhen]
/// A constraint indicating that this item should only be enabled
/// (displayed/allow answers to be captured) when the specified condition
/// is true.
class QuestionnaireEnableWhen extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireEnableWhen]

  const QuestionnaireEnableWhen({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.question,
    required this.operator_,
    required this.answerX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireEnableWhen(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      question: JsonParser.parsePrimitive<FhirString>(
        json,
        'question',
        FhirString.fromJson,
      )!,
      operator_: JsonParser.parsePrimitive<QuestionnaireItemOperator>(
        json,
        'operator',
        QuestionnaireItemOperator.fromJson,
      )!,
      answerX: JsonParser.parsePolymorphic<AnswerXQuestionnaireEnableWhen>(
        json,
        {
          'answerBoolean': FhirBoolean.fromJson,
          'answerDecimal': FhirDecimal.fromJson,
          'answerInteger': FhirInteger.fromJson,
          'answerDate': FhirDate.fromJson,
          'answerDateTime': FhirDateTime.fromJson,
          'answerTime': FhirTime.fromJson,
          'answerString': FhirString.fromJson,
          'answerCoding': Coding.fromJson,
          'answerQuantity': Quantity.fromJson,
          'answerReference': Reference.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [QuestionnaireEnableWhen]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireEnableWhen.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireEnableWhen.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireEnableWhen.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireEnableWhen '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireEnableWhen]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireEnableWhen.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireEnableWhen.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireEnableWhen';

  /// [question]
  /// The linkId for the question whose answer (or lack of answer) governs
  /// whether this item is enabled.
  final FhirString question;

  /// [operator_]
  /// Specifies the criteria by which the question is enabled.
  final QuestionnaireItemOperator operator_;

  /// [answerX]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final AnswerXQuestionnaireEnableWhen answerX;

  /// Getter for [answerBoolean] as a FhirBoolean
  FhirBoolean? get answerBoolean => answerX.isAs<FhirBoolean>();

  /// Getter for [answerDecimal] as a FhirDecimal
  FhirDecimal? get answerDecimal => answerX.isAs<FhirDecimal>();

  /// Getter for [answerInteger] as a FhirInteger
  FhirInteger? get answerInteger => answerX.isAs<FhirInteger>();

  /// Getter for [answerDate] as a FhirDate
  FhirDate? get answerDate => answerX.isAs<FhirDate>();

  /// Getter for [answerDateTime] as a FhirDateTime
  FhirDateTime? get answerDateTime => answerX.isAs<FhirDateTime>();

  /// Getter for [answerTime] as a FhirTime
  FhirTime? get answerTime => answerX.isAs<FhirTime>();

  /// Getter for [answerString] as a FhirString
  FhirString? get answerString => answerX.isAs<FhirString>();

  /// Getter for [answerCoding] as a Coding
  Coding? get answerCoding => answerX.isAs<Coding>();

  /// Getter for [answerQuantity] as a Quantity
  Quantity? get answerQuantity => answerX.isAs<Quantity>();

  /// Getter for [answerReference] as a Reference
  Reference? get answerReference => answerX.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'question',
      question,
    );
    addField(
      'operator',
      operator_,
    );
    final answerXFhirType = answerX.fhirType;
    addField(
      'answer${answerXFhirType.capitalize()}',
      answerX,
    );

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'question',
      'operator',
      'answerX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'question':
        fields.add(question);
      case 'operator':
        fields.add(operator_);
      case 'answer':
        fields.add(answerX);
      case 'answerX':
        fields.add(answerX);
      case 'answerBoolean':
        if (answerX is FhirBoolean) {
          fields.add(answerX);
        }
      case 'answerDecimal':
        if (answerX is FhirDecimal) {
          fields.add(answerX);
        }
      case 'answerInteger':
        if (answerX is FhirInteger) {
          fields.add(answerX);
        }
      case 'answerDate':
        if (answerX is FhirDate) {
          fields.add(answerX);
        }
      case 'answerDateTime':
        if (answerX is FhirDateTime) {
          fields.add(answerX);
        }
      case 'answerTime':
        if (answerX is FhirTime) {
          fields.add(answerX);
        }
      case 'answerString':
        if (answerX is FhirString) {
          fields.add(answerX);
        }
      case 'answerCoding':
        if (answerX is Coding) {
          fields.add(answerX);
        }
      case 'answerQuantity':
        if (answerX is Quantity) {
          fields.add(answerX);
        }
      case 'answerReference':
        if (answerX is Reference) {
          fields.add(answerX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  QuestionnaireEnableWhen clone() => copyWith();

  /// Copy function for [QuestionnaireEnableWhen]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $QuestionnaireEnableWhenCopyWith<QuestionnaireEnableWhen> get copyWith =>
      _$QuestionnaireEnableWhenCopyWithImpl<QuestionnaireEnableWhen>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireEnableWhen) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      question,
      o.question,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operator_,
      o.operator_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      answerX,
      o.answerX,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireAnswerOption]
/// One of the permitted answers for a "choice" or "open-choice" question.
class QuestionnaireAnswerOption extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireAnswerOption]

  const QuestionnaireAnswerOption({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueX,
    this.initialSelected,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireAnswerOption(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXQuestionnaireAnswerOption>(
        json,
        {
          'valueInteger': FhirInteger.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueTime': FhirTime.fromJson,
          'valueString': FhirString.fromJson,
          'valueCoding': Coding.fromJson,
          'valueReference': Reference.fromJson,
        },
      )!,
      initialSelected: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'initialSelected',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [QuestionnaireAnswerOption]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireAnswerOption.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireAnswerOption.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireAnswerOption.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireAnswerOption '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireAnswerOption]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireAnswerOption.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireAnswerOption.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireAnswerOption';

  /// [valueX]
  /// A potential answer that's allowed as the answer to this question.
  final ValueXQuestionnaireAnswerOption valueX;

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX.isAs<FhirDate>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();

  /// [initialSelected]
  /// Indicates whether the answer value is selected when the list of
  /// possible answers is initially shown.
  final FhirBoolean? initialSelected;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
    );

    addField(
      'initialSelected',
      initialSelected,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'valueX',
      'initialSelected',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
        }
      case 'initialSelected':
        if (initialSelected != null) {
          fields.add(initialSelected!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  QuestionnaireAnswerOption clone() => copyWith();

  /// Copy function for [QuestionnaireAnswerOption]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $QuestionnaireAnswerOptionCopyWith<QuestionnaireAnswerOption> get copyWith =>
      _$QuestionnaireAnswerOptionCopyWithImpl<QuestionnaireAnswerOption>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireAnswerOption) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      initialSelected,
      o.initialSelected,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireInitial]
/// One or more values that should be pre-populated in the answer when
/// initially rendering the questionnaire for user input.
class QuestionnaireInitial extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireInitial]

  const QuestionnaireInitial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireInitial(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXQuestionnaireInitial>(
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
      )!,
    );
  }

  /// Deserialize [QuestionnaireInitial]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireInitial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireInitial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireInitial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireInitial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireInitial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireInitial.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireInitial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireInitial';

  /// [valueX]
  /// The actual value to for an initial answer.
  final ValueXQuestionnaireInitial valueX;

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX.isAs<FhirDecimal>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX.isAs<FhirDate>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX.isAs<Attachment>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
    );

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  QuestionnaireInitial clone() => copyWith();

  /// Copy function for [QuestionnaireInitial]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $QuestionnaireInitialCopyWith<QuestionnaireInitial> get copyWith =>
      _$QuestionnaireInitialCopyWithImpl<QuestionnaireInitial>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireInitial) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
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
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
