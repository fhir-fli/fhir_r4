import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
      url: (json['url'] != null || json['_url'] != null)
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version: (json['version'] != null || json['_version'] != null)
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      title: (json['title'] != null || json['_title'] != null)
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      derivedFrom: parsePrimitiveList<FhirCanonical>(
        json['derivedFrom'] as List<dynamic>?,
        json['_derivedFrom'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental:
          (json['experimental'] != null || json['_experimental'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['experimental'],
                  '_value': json['_experimental'],
                })
              : null,
      subjectType: parsePrimitiveList<FhirCode>(
        json['subjectType'] as List<dynamic>?,
        json['_subjectType'] as List<dynamic>?,
        fromJson: FhirCode.fromJson,
      ),
      date: (json['date'] != null || json['_date'] != null)
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: (json['publisher'] != null || json['_publisher'] != null)
          ? FhirString.fromJson({
              'value': json['publisher'],
              '_value': json['_publisher'],
            })
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: (json['purpose'] != null || json['_purpose'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      copyright: (json['copyright'] != null || json['_copyright'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      approvalDate:
          (json['approvalDate'] != null || json['_approvalDate'] != null)
              ? FhirDate.fromJson({
                  'value': json['approvalDate'],
                  '_value': json['_approvalDate'],
                })
              : null,
      lastReviewDate:
          (json['lastReviewDate'] != null || json['_lastReviewDate'] != null)
              ? FhirDate.fromJson({
                  'value': json['lastReviewDate'],
                  '_value': json['_lastReviewDate'],
                })
              : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<QuestionnaireItem>(
                (v) => QuestionnaireItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return Questionnaire.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

    addField('url', url);
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('version', version);
    addField('name', name);
    addField('title', title);
    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      final fieldJson0 = derivedFrom!.map((e) => e.toJson()).toList();
      json['derivedFrom'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_derivedFrom'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('status', status);
    addField('experimental', experimental);
    if (subjectType != null && subjectType!.isNotEmpty) {
      final fieldJson1 = subjectType!.map((e) => e.toJson()).toList();
      json['subjectType'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_subjectType'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    addField('date', date);
    addField('publisher', publisher);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Questionnaire clone() => throw UnimplementedError();
  @override
  Questionnaire copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    List<FhirCanonical>? derivedFrom,
    PublicationStatus? status,
    FhirBoolean? experimental,
    List<FhirCode>? subjectType,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<Coding>? code,
    List<QuestionnaireItem>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Questionnaire(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      subjectType: subjectType ?? this.subjectType,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      code: code ?? this.code,
      item: item ?? this.item,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireItem(
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
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      prefix: (json['prefix'] != null || json['_prefix'] != null)
          ? FhirString.fromJson({
              'value': json['prefix'],
              '_value': json['_prefix'],
            })
          : null,
      text: (json['text'] != null || json['_text'] != null)
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      type: QuestionnaireItemType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      enableWhen: json['enableWhen'] != null
          ? (json['enableWhen'] as List<dynamic>)
              .map<QuestionnaireEnableWhen>(
                (v) => QuestionnaireEnableWhen.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      enableBehavior:
          (json['enableBehavior'] != null || json['_enableBehavior'] != null)
              ? EnableWhenBehavior.fromJson({
                  'value': json['enableBehavior'],
                  '_value': json['_enableBehavior'],
                })
              : null,
      required_: (json['required'] != null || json['_required'] != null)
          ? FhirBoolean.fromJson({
              'value': json['required'],
              '_value': json['_required'],
            })
          : null,
      repeats: (json['repeats'] != null || json['_repeats'] != null)
          ? FhirBoolean.fromJson({
              'value': json['repeats'],
              '_value': json['_repeats'],
            })
          : null,
      readOnly: (json['readOnly'] != null || json['_readOnly'] != null)
          ? FhirBoolean.fromJson({
              'value': json['readOnly'],
              '_value': json['_readOnly'],
            })
          : null,
      maxLength: (json['maxLength'] != null || json['_maxLength'] != null)
          ? FhirInteger.fromJson({
              'value': json['maxLength'],
              '_value': json['_maxLength'],
            })
          : null,
      answerValueSet:
          (json['answerValueSet'] != null || json['_answerValueSet'] != null)
              ? FhirCanonical.fromJson({
                  'value': json['answerValueSet'],
                  '_value': json['_answerValueSet'],
                })
              : null,
      answerOption: json['answerOption'] != null
          ? (json['answerOption'] as List<dynamic>)
              .map<QuestionnaireAnswerOption>(
                (v) => QuestionnaireAnswerOption.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      initial: json['initial'] != null
          ? (json['initial'] as List<dynamic>)
              .map<QuestionnaireInitial>(
                (v) => QuestionnaireInitial.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<QuestionnaireItem>(
                (v) => QuestionnaireItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return QuestionnaireItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    addField('prefix', prefix);
    addField('text', text);
    addField('type', type);
    if (enableWhen != null && enableWhen!.isNotEmpty) {
      json['enableWhen'] = enableWhen!.map((e) => e.toJson()).toList();
    }

    addField('enableBehavior', enableBehavior);
    addField('required', required_);
    addField('repeats', repeats);
    addField('readOnly', readOnly);
    addField('maxLength', maxLength);
    addField('answerValueSet', answerValueSet);
    if (answerOption != null && answerOption!.isNotEmpty) {
      json['answerOption'] = answerOption!.map((e) => e.toJson()).toList();
    }

    if (initial != null && initial!.isNotEmpty) {
      json['initial'] = initial!.map((e) => e.toJson()).toList();
    }

    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  QuestionnaireItem clone() => throw UnimplementedError();
  @override
  QuestionnaireItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    FhirUri? definition,
    List<Coding>? code,
    FhirString? prefix,
    FhirString? text,
    QuestionnaireItemType? type,
    List<QuestionnaireEnableWhen>? enableWhen,
    EnableWhenBehavior? enableBehavior,
    FhirBoolean? required_,
    FhirBoolean? repeats,
    FhirBoolean? readOnly,
    FhirInteger? maxLength,
    FhirCanonical? answerValueSet,
    List<QuestionnaireAnswerOption>? answerOption,
    List<QuestionnaireInitial>? initial,
    List<QuestionnaireItem>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return QuestionnaireItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      definition: definition ?? this.definition,
      code: code ?? this.code,
      prefix: prefix ?? this.prefix,
      text: text ?? this.text,
      type: type ?? this.type,
      enableWhen: enableWhen ?? this.enableWhen,
      enableBehavior: enableBehavior ?? this.enableBehavior,
      required_: required_ ?? this.required_,
      repeats: repeats ?? this.repeats,
      readOnly: readOnly ?? this.readOnly,
      maxLength: maxLength ?? this.maxLength,
      answerValueSet: answerValueSet ?? this.answerValueSet,
      answerOption: answerOption ?? this.answerOption,
      initial: initial ?? this.initial,
      item: item ?? this.item,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireEnableWhen(
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
      question: FhirString.fromJson({
        'value': json['question'],
        '_value': json['_question'],
      }),
      operator_: QuestionnaireItemOperator.fromJson({
        'value': json['operator'],
        '_value': json['_operator'],
      }),
      answerX: json['answerBoolean'] != null || json['_answerBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['answerBoolean'],
              '_value': json['_answerBoolean'],
            })
          : json['answerDecimal'] != null || json['_answerDecimal'] != null
              ? FhirDecimal.fromJson({
                  'value': json['answerDecimal'],
                  '_value': json['_answerDecimal'],
                })
              : json['answerInteger'] != null || json['_answerInteger'] != null
                  ? FhirInteger.fromJson({
                      'value': json['answerInteger'],
                      '_value': json['_answerInteger'],
                    })
                  : json['answerDate'] != null || json['_answerDate'] != null
                      ? FhirDate.fromJson({
                          'value': json['answerDate'],
                          '_value': json['_answerDate'],
                        })
                      : json['answerDateTime'] != null ||
                              json['_answerDateTime'] != null
                          ? FhirDateTime.fromJson({
                              'value': json['answerDateTime'],
                              '_value': json['_answerDateTime'],
                            })
                          : json['answerTime'] != null ||
                                  json['_answerTime'] != null
                              ? FhirTime.fromJson({
                                  'value': json['answerTime'],
                                  '_value': json['_answerTime'],
                                })
                              : json['answerString'] != null ||
                                      json['_answerString'] != null
                                  ? FhirString.fromJson({
                                      'value': json['answerString'],
                                      '_value': json['_answerString'],
                                    })
                                  : json['answerCoding'] != null ||
                                          json['_answerCoding'] != null
                                      ? Coding.fromJson({
                                          'value': json['answerCoding'],
                                          '_value': json['_answerCoding'],
                                        })
                                      : json['answerQuantity'] != null ||
                                              json['_answerQuantity'] != null
                                          ? Quantity.fromJson({
                                              'value': json['answerQuantity'],
                                              '_value': json['_answerQuantity'],
                                            })
                                          : Reference.fromJson(
                                              json['answerReference']
                                                  as Map<String, dynamic>,
                                            ),
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
    if (json is Map<String, Object?>) {
      return QuestionnaireEnableWhen.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

    addField('question', question);
    addField('operator', operator_);
    addField('answer${answerX.fhirType.capitalize()}', answerX);
    return json;
  }

  @override
  QuestionnaireEnableWhen clone() => throw UnimplementedError();
  @override
  QuestionnaireEnableWhen copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? question,
    QuestionnaireItemOperator? operator_,
    AnswerXQuestionnaireEnableWhen? answerX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return QuestionnaireEnableWhen(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      question: question ?? this.question,
      operator_: operator_ ?? this.operator_,
      answerX: answerX ?? this.answerX,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireAnswerOption(
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
      valueX: json['valueInteger'] != null || json['_valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : json['valueDate'] != null || json['_valueDate'] != null
              ? FhirDate.fromJson({
                  'value': json['valueDate'],
                  '_value': json['_valueDate'],
                })
              : json['valueTime'] != null || json['_valueTime'] != null
                  ? FhirTime.fromJson({
                      'value': json['valueTime'],
                      '_value': json['_valueTime'],
                    })
                  : json['valueString'] != null || json['_valueString'] != null
                      ? FhirString.fromJson({
                          'value': json['valueString'],
                          '_value': json['_valueString'],
                        })
                      : json['valueCoding'] != null ||
                              json['_valueCoding'] != null
                          ? Coding.fromJson({
                              'value': json['valueCoding'],
                              '_value': json['_valueCoding'],
                            })
                          : Reference.fromJson(
                              json['valueReference'] as Map<String, dynamic>,
                            ),
      initialSelected:
          (json['initialSelected'] != null || json['_initialSelected'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['initialSelected'],
                  '_value': json['_initialSelected'],
                })
              : null,
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
    if (json is Map<String, Object?>) {
      return QuestionnaireAnswerOption.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireAnswerOption';

  /// [valueX]
  /// A potential answer that's allowed as the answer to this question.
  final ValueXQuestionnaireAnswerOption valueX;

  /// [initialSelected]
  /// Indicates whether the answer value is selected when the list of
  /// possible answers is initially shown.
  final FhirBoolean? initialSelected;
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

    addField('value${valueX.fhirType.capitalize()}', valueX);
    addField('initialSelected', initialSelected);
    return json;
  }

  @override
  QuestionnaireAnswerOption clone() => throw UnimplementedError();
  @override
  QuestionnaireAnswerOption copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXQuestionnaireAnswerOption? valueX,
    FhirBoolean? initialSelected,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return QuestionnaireAnswerOption(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ?? this.valueX,
      initialSelected: initialSelected ?? this.initialSelected,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuestionnaireInitial(
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
                                                  : Reference.fromJson(
                                                      json['valueReference']
                                                          as Map<String,
                                                              dynamic>,
                                                    ),
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
    if (json is Map<String, Object?>) {
      return QuestionnaireInitial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireInitial';

  /// [valueX]
  /// The actual value to for an initial answer.
  final ValueXQuestionnaireInitial valueX;
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

    addField('value${valueX.fhirType.capitalize()}', valueX);
    return json;
  }

  @override
  QuestionnaireInitial clone() => throw UnimplementedError();
  @override
  QuestionnaireInitial copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXQuestionnaireInitial? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return QuestionnaireInitial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ?? this.valueX,
    );
  }
}
