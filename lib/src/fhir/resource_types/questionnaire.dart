import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Questionnaire]
/// A structured set of questions intended to guide the collection of
/// answers from end-users. Questionnaires provide detailed control over
/// order, presentation, phraseology and grouping to allow coherent,
/// consistent data collection.
class Questionnaire extends DomainResource {
  /// Primary constructor for [Questionnaire]

  Questionnaire({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.derivedFrom,
    required this.status,
    this.experimental,
    this.subjectType,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.code,
    this.item,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Questionnaire,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Questionnaire.fromJson(Map<String, dynamic> json) {
    return Questionnaire(
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
      url: json['url'] != null
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
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      derivedFrom: parsePrimitiveList<FhirCanonical>(
          json['derivedFrom'] as List<dynamic>?,
          json['_derivedFrom'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson({
              'value': json['experimental'],
              '_value': json['_experimental'],
            })
          : null,
      subjectType: parsePrimitiveList<FhirCode>(
          json['subjectType'] as List<dynamic>?,
          json['_subjectType'] as List<dynamic>?,
          fromJson: FhirCode.fromJson),
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: json['publisher'] != null
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
      description: json['description'] != null
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
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson({
              'value': json['approvalDate'],
              '_value': json['_approvalDate'],
            })
          : null,
      lastReviewDate: json['lastReviewDate'] != null
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

  /// Deserialize [Questionnaire] from a [String]
  /// or [YamlMap] object
  factory Questionnaire.fromYaml(dynamic yaml) => yaml is String
      ? Questionnaire.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Questionnaire.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Questionnaire cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Questionnaire]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Questionnaire.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this questionnaire when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this questionnaire is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// questionnaire is stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this questionnaire when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the
  /// questionnaire when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the questionnaire
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  final FhirString? version;

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

  /// [status]
  /// The status of this questionnaire. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this questionnaire is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [subjectType]
  /// The types of subjects that can be the subject of responses created for
  /// the questionnaire.
  final List<FhirCode>? subjectType;

  /// [date]
  /// The date (and optionally time) when the questionnaire was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the questionnaire changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the
  /// questionnaire.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the questionnaire from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate questionnaire instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the questionnaire is intended to
  /// be used.
  final List<CodeableConcept>? jurisdiction;

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
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      json['derivedFrom'] =
          derivedFrom!.map((FhirCanonical v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.toJson();
    }
    if (subjectType != null && subjectType!.isNotEmpty) {
      json['subjectType'] =
          subjectType!.map((FhirCode v) => v.toJson()).toList();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] =
          jurisdiction!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (approvalDate?.value != null) {
      json['approvalDate'] = approvalDate!.toJson();
    }
    if (lastReviewDate?.value != null) {
      json['lastReviewDate'] = lastReviewDate!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((Coding v) => v.toJson()).toList();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((QuestionnaireItem v) => v.toJson()).toList();
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [QuestionnaireItem]
/// A particular question, question grouping or display text that is part
/// of the questionnaire.
class QuestionnaireItem extends BackboneElement {
  /// Primary constructor for [QuestionnaireItem]

  QuestionnaireItem({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireItem.fromJson(Map<String, dynamic> json) {
    return QuestionnaireItem(
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
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      prefix: json['prefix'] != null
          ? FhirString.fromJson({
              'value': json['prefix'],
              '_value': json['_prefix'],
            })
          : null,
      text: json['text'] != null
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
      enableBehavior: json['enableBehavior'] != null
          ? EnableWhenBehavior.fromJson({
              'value': json['enableBehavior'],
              '_value': json['_enableBehavior'],
            })
          : null,
      required_: json['required'] != null
          ? FhirBoolean.fromJson({
              'value': json['required'],
              '_value': json['_required'],
            })
          : null,
      repeats: json['repeats'] != null
          ? FhirBoolean.fromJson({
              'value': json['repeats'],
              '_value': json['_repeats'],
            })
          : null,
      readOnly: json['readOnly'] != null
          ? FhirBoolean.fromJson({
              'value': json['readOnly'],
              '_value': json['_readOnly'],
            })
          : null,
      maxLength: json['maxLength'] != null
          ? FhirInteger.fromJson({
              'value': json['maxLength'],
              '_value': json['_maxLength'],
            })
          : null,
      answerValueSet: json['answerValueSet'] != null
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

  /// Deserialize [QuestionnaireItem] from a [String]
  /// or [YamlMap] object
  factory QuestionnaireItem.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? QuestionnaireItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('QuestionnaireItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [QuestionnaireItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireItem.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (definition?.value != null) {
      json['definition'] = definition!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((Coding v) => v.toJson()).toList();
    }
    if (prefix?.value != null) {
      json['prefix'] = prefix!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    json['type'] = type.toJson();
    if (enableWhen != null && enableWhen!.isNotEmpty) {
      json['enableWhen'] =
          enableWhen!.map((QuestionnaireEnableWhen v) => v.toJson()).toList();
    }
    if (enableBehavior != null) {
      json['enableBehavior'] = enableBehavior!.toJson();
    }
    if (required_?.value != null) {
      json['required'] = required_!.toJson();
    }
    if (repeats?.value != null) {
      json['repeats'] = repeats!.toJson();
    }
    if (readOnly?.value != null) {
      json['readOnly'] = readOnly!.toJson();
    }
    if (maxLength?.value != null) {
      json['maxLength'] = maxLength!.toJson();
    }
    if (answerValueSet?.value != null) {
      json['answerValueSet'] = answerValueSet!.toJson();
    }
    if (answerOption != null && answerOption!.isNotEmpty) {
      json['answerOption'] = answerOption!
          .map((QuestionnaireAnswerOption v) => v.toJson())
          .toList();
    }
    if (initial != null && initial!.isNotEmpty) {
      json['initial'] =
          initial!.map((QuestionnaireInitial v) => v.toJson()).toList();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((QuestionnaireItem v) => v.toJson()).toList();
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [QuestionnaireEnableWhen]
/// A constraint indicating that this item should only be enabled
/// (displayed/allow answers to be captured) when the specified condition
/// is true.
class QuestionnaireEnableWhen extends BackboneElement {
  /// Primary constructor for [QuestionnaireEnableWhen]

  QuestionnaireEnableWhen({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.question,
    required this.operator_,
    this.answerBoolean,
    this.answerDecimal,
    this.answerInteger,
    this.answerDate,
    this.answerDateTime,
    this.answerTime,
    this.answerString,
    this.answerCoding,
    this.answerQuantity,
    this.answerReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireEnableWhen.fromJson(Map<String, dynamic> json) {
    return QuestionnaireEnableWhen(
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
      question: FhirString.fromJson({
        'value': json['question'],
        '_value': json['_question'],
      }),
      operator_: QuestionnaireItemOperator.fromJson({
        'value': json['operator'],
        '_value': json['_operator'],
      }),
      answerBoolean: json['answerBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['answerBoolean'],
              '_value': json['_answerBoolean'],
            })
          : null,
      answerDecimal: json['answerDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['answerDecimal'],
              '_value': json['_answerDecimal'],
            })
          : null,
      answerInteger: json['answerInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['answerInteger'],
              '_value': json['_answerInteger'],
            })
          : null,
      answerDate: json['answerDate'] != null
          ? FhirDate.fromJson({
              'value': json['answerDate'],
              '_value': json['_answerDate'],
            })
          : null,
      answerDateTime: json['answerDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['answerDateTime'],
              '_value': json['_answerDateTime'],
            })
          : null,
      answerTime: json['answerTime'] != null
          ? FhirTime.fromJson({
              'value': json['answerTime'],
              '_value': json['_answerTime'],
            })
          : null,
      answerString: json['answerString'] != null
          ? FhirString.fromJson({
              'value': json['answerString'],
              '_value': json['_answerString'],
            })
          : null,
      answerCoding: json['answerCoding'] != null
          ? Coding.fromJson(
              json['answerCoding'] as Map<String, dynamic>,
            )
          : null,
      answerQuantity: json['answerQuantity'] != null
          ? Quantity.fromJson(
              json['answerQuantity'] as Map<String, dynamic>,
            )
          : null,
      answerReference: json['answerReference'] != null
          ? Reference.fromJson(
              json['answerReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [QuestionnaireEnableWhen] from a [String]
  /// or [YamlMap] object
  factory QuestionnaireEnableWhen.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireEnableWhen.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? QuestionnaireEnableWhen.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'QuestionnaireEnableWhen cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [QuestionnaireEnableWhen]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireEnableWhen.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [question]
  /// The linkId for the question whose answer (or lack of answer) governs
  /// whether this item is enabled.
  final FhirString question;

  /// [operator_]
  /// Specifies the criteria by which the question is enabled.
  final QuestionnaireItemOperator operator_;

  /// [answerBoolean]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final FhirBoolean? answerBoolean;

  /// [answerDecimal]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final FhirDecimal? answerDecimal;

  /// [answerInteger]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final FhirInteger? answerInteger;

  /// [answerDate]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final FhirDate? answerDate;

  /// [answerDateTime]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final FhirDateTime? answerDateTime;

  /// [answerTime]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final FhirTime? answerTime;

  /// [answerString]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final FhirString? answerString;

  /// [answerCoding]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final Coding? answerCoding;

  /// [answerQuantity]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final Quantity? answerQuantity;

  /// [answerReference]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final Reference? answerReference;
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
    json['question'] = question.toJson();
    json['operator'] = operator_.toJson();
    if (answerBoolean?.value != null) {
      json['answerBoolean'] = answerBoolean!.toJson();
    }
    if (answerDecimal?.value != null) {
      json['answerDecimal'] = answerDecimal!.toJson();
    }
    if (answerInteger?.value != null) {
      json['answerInteger'] = answerInteger!.toJson();
    }
    if (answerDate?.value != null) {
      json['answerDate'] = answerDate!.toJson();
    }
    if (answerDateTime?.value != null) {
      json['answerDateTime'] = answerDateTime!.toJson();
    }
    if (answerTime?.value != null) {
      json['answerTime'] = answerTime!.toJson();
    }
    if (answerString?.value != null) {
      json['answerString'] = answerString!.toJson();
    }
    if (answerCoding != null) {
      json['answerCoding'] = answerCoding!.toJson();
    }
    if (answerQuantity != null) {
      json['answerQuantity'] = answerQuantity!.toJson();
    }
    if (answerReference != null) {
      json['answerReference'] = answerReference!.toJson();
    }
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
    FhirBoolean? answerBoolean,
    FhirDecimal? answerDecimal,
    FhirInteger? answerInteger,
    FhirDate? answerDate,
    FhirDateTime? answerDateTime,
    FhirTime? answerTime,
    FhirString? answerString,
    Coding? answerCoding,
    Quantity? answerQuantity,
    Reference? answerReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return QuestionnaireEnableWhen(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      question: question ?? this.question,
      operator_: operator_ ?? this.operator_,
      answerBoolean: answerBoolean ?? this.answerBoolean,
      answerDecimal: answerDecimal ?? this.answerDecimal,
      answerInteger: answerInteger ?? this.answerInteger,
      answerDate: answerDate ?? this.answerDate,
      answerDateTime: answerDateTime ?? this.answerDateTime,
      answerTime: answerTime ?? this.answerTime,
      answerString: answerString ?? this.answerString,
      answerCoding: answerCoding ?? this.answerCoding,
      answerQuantity: answerQuantity ?? this.answerQuantity,
      answerReference: answerReference ?? this.answerReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [QuestionnaireAnswerOption]
/// One of the permitted answers for a "choice" or "open-choice" question.
class QuestionnaireAnswerOption extends BackboneElement {
  /// Primary constructor for [QuestionnaireAnswerOption]

  QuestionnaireAnswerOption({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.valueInteger,
    this.valueDate,
    this.valueTime,
    this.valueString,
    this.valueCoding,
    this.valueReference,
    this.initialSelected,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireAnswerOption.fromJson(Map<String, dynamic> json) {
    return QuestionnaireAnswerOption(
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
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              json['valueCoding'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      initialSelected: json['initialSelected'] != null
          ? FhirBoolean.fromJson({
              'value': json['initialSelected'],
              '_value': json['_initialSelected'],
            })
          : null,
    );
  }

  /// Deserialize [QuestionnaireAnswerOption] from a [String]
  /// or [YamlMap] object
  factory QuestionnaireAnswerOption.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireAnswerOption.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? QuestionnaireAnswerOption.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'QuestionnaireAnswerOption cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [QuestionnaireAnswerOption]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireAnswerOption.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [valueInteger]
  /// A potential answer that's allowed as the answer to this question.
  final FhirInteger? valueInteger;

  /// [valueDate]
  /// A potential answer that's allowed as the answer to this question.
  final FhirDate? valueDate;

  /// [valueTime]
  /// A potential answer that's allowed as the answer to this question.
  final FhirTime? valueTime;

  /// [valueString]
  /// A potential answer that's allowed as the answer to this question.
  final FhirString? valueString;

  /// [valueCoding]
  /// A potential answer that's allowed as the answer to this question.
  final Coding? valueCoding;

  /// [valueReference]
  /// A potential answer that's allowed as the answer to this question.
  final Reference? valueReference;

  /// [initialSelected]
  /// Indicates whether the answer value is selected when the list of
  /// possible answers is initially shown.
  final FhirBoolean? initialSelected;
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
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
    }
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    if (initialSelected?.value != null) {
      json['initialSelected'] = initialSelected!.toJson();
    }
    return json;
  }

  @override
  QuestionnaireAnswerOption clone() => throw UnimplementedError();
  @override
  QuestionnaireAnswerOption copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? valueInteger,
    FhirDate? valueDate,
    FhirTime? valueTime,
    FhirString? valueString,
    Coding? valueCoding,
    Reference? valueReference,
    FhirBoolean? initialSelected,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return QuestionnaireAnswerOption(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueInteger: valueInteger ?? this.valueInteger,
      valueDate: valueDate ?? this.valueDate,
      valueTime: valueTime ?? this.valueTime,
      valueString: valueString ?? this.valueString,
      valueCoding: valueCoding ?? this.valueCoding,
      valueReference: valueReference ?? this.valueReference,
      initialSelected: initialSelected ?? this.initialSelected,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [QuestionnaireInitial]
/// One or more values that should be pre-populated in the answer when
/// initially rendering the questionnaire for user input.
class QuestionnaireInitial extends BackboneElement {
  /// Primary constructor for [QuestionnaireInitial]

  QuestionnaireInitial({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireInitial.fromJson(Map<String, dynamic> json) {
    return QuestionnaireInitial(
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
    );
  }

  /// Deserialize [QuestionnaireInitial] from a [String]
  /// or [YamlMap] object
  factory QuestionnaireInitial.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireInitial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? QuestionnaireInitial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'QuestionnaireInitial cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [QuestionnaireInitial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireInitial.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [valueBoolean]
  /// The actual value to for an initial answer.
  final FhirBoolean? valueBoolean;

  /// [valueDecimal]
  /// The actual value to for an initial answer.
  final FhirDecimal? valueDecimal;

  /// [valueInteger]
  /// The actual value to for an initial answer.
  final FhirInteger? valueInteger;

  /// [valueDate]
  /// The actual value to for an initial answer.
  final FhirDate? valueDate;

  /// [valueDateTime]
  /// The actual value to for an initial answer.
  final FhirDateTime? valueDateTime;

  /// [valueTime]
  /// The actual value to for an initial answer.
  final FhirTime? valueTime;

  /// [valueString]
  /// The actual value to for an initial answer.
  final FhirString? valueString;

  /// [valueUri]
  /// The actual value to for an initial answer.
  final FhirUri? valueUri;

  /// [valueAttachment]
  /// The actual value to for an initial answer.
  final Attachment? valueAttachment;

  /// [valueCoding]
  /// The actual value to for an initial answer.
  final Coding? valueCoding;

  /// [valueQuantity]
  /// The actual value to for an initial answer.
  final Quantity? valueQuantity;

  /// [valueReference]
  /// The actual value to for an initial answer.
  final Reference? valueReference;
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
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.toJson();
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
    return json;
  }

  @override
  QuestionnaireInitial clone() => throw UnimplementedError();
  @override
  QuestionnaireInitial copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return QuestionnaireInitial(
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
