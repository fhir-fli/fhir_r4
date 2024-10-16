import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ResearchElementDefinition]
/// The ResearchElementDefinition resource describes a "PICO" element that
/// knowledge (evidence, assertion, recommendation) is about.
class ResearchElementDefinition extends DomainResource {
  /// Primary constructor for [ResearchElementDefinition]

  ResearchElementDefinition({
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
    this.shortTitle,
    this.subtitle,
    required this.status,
    this.experimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.comment,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.usage,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    required this.type,
    this.variableType,
    required this.characteristic,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ResearchElementDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchElementDefinition.fromJson(Map<String, dynamic> json) {
    return ResearchElementDefinition(
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
      shortTitle: json['shortTitle'] != null
          ? FhirString.fromJson({
              'value': json['shortTitle'],
              '_value': json['_shortTitle'],
            })
          : null,
      subtitle: json['subtitle'] != null
          ? FhirString.fromJson({
              'value': json['subtitle'],
              '_value': json['_subtitle'],
            })
          : null,
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
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(
              json['subjectReference'] as Map<String, dynamic>,
            )
          : null,
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
      comment: parsePrimitiveList<FhirString>(
          json['comment'] as List<dynamic>?, json['_comment'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
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
      usage: json['usage'] != null
          ? FhirString.fromJson({
              'value': json['usage'],
              '_value': json['_usage'],
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
      topic: json['topic'] != null
          ? (json['topic'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      editor: json['editor'] != null
          ? (json['editor'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reviewer: json['reviewer'] != null
          ? (json['reviewer'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      endorser: json['endorser'] != null
          ? (json['endorser'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>(
                (v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      library_: parsePrimitiveList<FhirCanonical>(
          json['library'] as List<dynamic>?, json['_library'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      type: ResearchElementType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      variableType: json['variableType'] != null
          ? VariableType.fromJson({
              'value': json['variableType'],
              '_value': json['_variableType'],
            })
          : null,
      characteristic:
          ensureNonNullList((json['characteristic'] as List<dynamic>)
              .map<ResearchElementDefinitionCharacteristic>(
                (v) => ResearchElementDefinitionCharacteristic.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()),
    );
  }

  /// Deserialize [ResearchElementDefinition] from a [String]
  /// or [YamlMap] object
  factory ResearchElementDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ResearchElementDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ResearchElementDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ResearchElementDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ResearchElementDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchElementDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchElementDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ResearchElementDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this research element
  /// definition when it is referenced in a specification, model, design or
  /// an instance; also called its canonical identifier. This SHOULD be
  /// globally unique and SHOULD be a literal address at which at which an
  /// authoritative instance of this research element definition is (or will
  /// be) published. This URL can be the target of a canonical reference. It
  /// SHALL remain the same when the research element definition is stored on
  /// different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this research element
  /// definition when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the research
  /// element definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the research
  /// element definition author and is not expected to be globally unique.
  /// For example, it might be a timestamp (e.g. yyyymmdd) if a managed
  /// version is not available. There is also no expectation that versions
  /// can be placed in a lexicographical sequence. To provide a version
  /// consistent with the Decision Support Service specification, use the
  /// format Major.Minor.Revision (e.g. 1.0.0). For more information on
  /// versioning knowledge assets, refer to the Decision Support Service
  /// specification. Note that a version is required for non-experimental
  /// active artifacts.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the research element definition.
  /// This name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the research element
  /// definition.
  final FhirString? title;

  /// [shortTitle]
  /// The short title provides an alternate title for use in informal
  /// descriptive contexts where the full, formal title is not necessary.
  final FhirString? shortTitle;

  /// [subtitle]
  /// An explanatory or alternate title for the ResearchElementDefinition
  /// giving additional information about its content.
  final FhirString? subtitle;

  /// [status]
  /// The status of this research element definition. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this research element definition is
  /// authored for testing purposes (or education/evaluation/marketing) and
  /// is not intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [subjectCodeableConcept]
  /// The intended subjects for the ResearchElementDefinition. If this
  /// element is not provided, a Patient subject is assumed, but the subject
  /// of the ResearchElementDefinition can be anything.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference]
  /// The intended subjects for the ResearchElementDefinition. If this
  /// element is not provided, a Patient subject is assumed, but the subject
  /// of the ResearchElementDefinition can be anything.
  final Reference? subjectReference;

  /// [date]
  /// The date (and optionally time) when the research element definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the research element definition
  /// changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the research
  /// element definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the research element
  /// definition from a consumer's perspective.
  final FhirMarkdown? description;

  /// [comment]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
  final List<FhirString>? comment;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate research element definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the research element definition
  /// is intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this research element definition is needed and why
  /// it has been designed as it has.
  final FhirMarkdown? purpose;

  /// [usage]
  /// A detailed description, from a clinical perspective, of how the
  /// ResearchElementDefinition is used.
  final FhirString? usage;

  /// [copyright]
  /// A copyright statement relating to the research element definition
  /// and/or its contents. Copyright statements are generally legal
  /// restrictions on the use and publishing of the research element
  /// definition.
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
  /// The period during which the research element definition content was or
  /// is planned to be in active use.
  final Period? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the content of the
  /// ResearchElementDefinition. Topics provide a high-level categorization
  /// grouping types of ResearchElementDefinitions that can be useful for
  /// filtering and searching.
  final List<CodeableConcept>? topic;

  /// [author]
  /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor]
  /// An individual or organization primarily responsible for internal
  /// coherence of the content.
  final List<ContactDetail>? editor;

  /// [reviewer]
  /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser]
  /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatedArtifact]
  /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  final List<RelatedArtifact>? relatedArtifact;

  /// [library_]
  /// A reference to a Library resource containing the formal logic used by
  /// the ResearchElementDefinition.
  final List<FhirCanonical>? library_;

  /// [type]
  /// The type of research element, a population, an exposure, or an outcome.
  final ResearchElementType type;

  /// [variableType]
  /// The type of the outcome (e.g. Dichotomous, Continuous, or Descriptive).
  final VariableType? variableType;

  /// [characteristic]
  /// A characteristic that defines the members of the research element.
  /// Multiple characteristics are applied with "and" semantics.
  final List<ResearchElementDefinitionCharacteristic> characteristic;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (url != null) {
      final fieldJson8 = url!.toJson();
      json['url'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_url'] = fieldJson8['_value'];
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson9 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (version != null) {
      final fieldJson10 = version!.toJson();
      json['version'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_version'] = fieldJson10['_value'];
      }
    }

    if (name != null) {
      final fieldJson11 = name!.toJson();
      json['name'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_name'] = fieldJson11['_value'];
      }
    }

    if (title != null) {
      final fieldJson12 = title!.toJson();
      json['title'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_title'] = fieldJson12['_value'];
      }
    }

    if (shortTitle != null) {
      final fieldJson13 = shortTitle!.toJson();
      json['shortTitle'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_shortTitle'] = fieldJson13['_value'];
      }
    }

    if (subtitle != null) {
      final fieldJson14 = subtitle!.toJson();
      json['subtitle'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_subtitle'] = fieldJson14['_value'];
      }
    }

    final fieldJson15 = status.toJson();
    json['status'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_status'] = fieldJson15['_value'];
    }

    if (experimental != null) {
      final fieldJson16 = experimental!.toJson();
      json['experimental'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_experimental'] = fieldJson16['_value'];
      }
    }

    if (subjectCodeableConcept != null) {
      final fieldJson17 = subjectCodeableConcept!.toJson();
      json['subjectCodeableConcept'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_subjectCodeableConcept'] = fieldJson17['_value'];
      }
    }

    if (subjectReference != null) {
      final fieldJson18 = subjectReference!.toJson();
      json['subjectReference'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_subjectReference'] = fieldJson18['_value'];
      }
    }

    if (date != null) {
      final fieldJson19 = date!.toJson();
      json['date'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_date'] = fieldJson19['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson20 = publisher!.toJson();
      json['publisher'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_publisher'] = fieldJson20['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson21 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson22 = description!.toJson();
      json['description'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_description'] = fieldJson22['_value'];
      }
    }

    if (comment != null && comment!.isNotEmpty) {
      final fieldJson23 = comment!.map((e) => e.toJson()).toList();
      json['comment'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_comment'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      final fieldJson24 = useContext!.map((e) => e.toJson()).toList();
      json['useContext'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_useContext'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      final fieldJson25 = jurisdiction!.map((e) => e.toJson()).toList();
      json['jurisdiction'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_jurisdiction'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (purpose != null) {
      final fieldJson26 = purpose!.toJson();
      json['purpose'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_purpose'] = fieldJson26['_value'];
      }
    }

    if (usage != null) {
      final fieldJson27 = usage!.toJson();
      json['usage'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_usage'] = fieldJson27['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson28 = copyright!.toJson();
      json['copyright'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_copyright'] = fieldJson28['_value'];
      }
    }

    if (approvalDate != null) {
      final fieldJson29 = approvalDate!.toJson();
      json['approvalDate'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_approvalDate'] = fieldJson29['_value'];
      }
    }

    if (lastReviewDate != null) {
      final fieldJson30 = lastReviewDate!.toJson();
      json['lastReviewDate'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_lastReviewDate'] = fieldJson30['_value'];
      }
    }

    if (effectivePeriod != null) {
      final fieldJson31 = effectivePeriod!.toJson();
      json['effectivePeriod'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_effectivePeriod'] = fieldJson31['_value'];
      }
    }

    if (topic != null && topic!.isNotEmpty) {
      final fieldJson32 = topic!.map((e) => e.toJson()).toList();
      json['topic'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_topic'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (author != null && author!.isNotEmpty) {
      final fieldJson33 = author!.map((e) => e.toJson()).toList();
      json['author'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_author'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (editor != null && editor!.isNotEmpty) {
      final fieldJson34 = editor!.map((e) => e.toJson()).toList();
      json['editor'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_editor'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (reviewer != null && reviewer!.isNotEmpty) {
      final fieldJson35 = reviewer!.map((e) => e.toJson()).toList();
      json['reviewer'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_reviewer'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (endorser != null && endorser!.isNotEmpty) {
      final fieldJson36 = endorser!.map((e) => e.toJson()).toList();
      json['endorser'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_endorser'] = fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      final fieldJson37 = relatedArtifact!.map((e) => e.toJson()).toList();
      json['relatedArtifact'] = fieldJson37.map((e) => e['value']).toList();
      if (fieldJson37.any((e) => e['_value'] != null)) {
        json['_relatedArtifact'] = fieldJson37.map((e) => e['_value']).toList();
      }
    }

    if (library_ != null && library_!.isNotEmpty) {
      final fieldJson38 = library_!.map((e) => e.toJson()).toList();
      json['library'] = fieldJson38.map((e) => e['value']).toList();
      if (fieldJson38.any((e) => e['_value'] != null)) {
        json['_library'] = fieldJson38.map((e) => e['_value']).toList();
      }
    }

    final fieldJson39 = type.toJson();
    json['type'] = fieldJson39['value'];
    if (fieldJson39['_value'] != null) {
      json['_type'] = fieldJson39['_value'];
    }

    if (variableType != null) {
      final fieldJson40 = variableType!.toJson();
      json['variableType'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_variableType'] = fieldJson40['_value'];
      }
    }

    final fieldJson41 = characteristic.map((e) => e.toJson()).toList();
    json['characteristic'] = fieldJson41.map((e) => e['value']).toList();
    if (fieldJson41.any((e) => e['_value'] != null)) {
      json['_characteristic'] = fieldJson41.map((e) => e['_value']).toList();
    }

    return json;
  }

  @override
  ResearchElementDefinition clone() => throw UnimplementedError();
  @override
  ResearchElementDefinition copyWith({
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
    FhirString? shortTitle,
    FhirString? subtitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<FhirString>? comment,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirString? usage,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    List<FhirCanonical>? library_,
    ResearchElementType? type,
    VariableType? variableType,
    List<ResearchElementDefinitionCharacteristic>? characteristic,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ResearchElementDefinition(
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
      shortTitle: shortTitle ?? this.shortTitle,
      subtitle: subtitle ?? this.subtitle,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      comment: comment ?? this.comment,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      usage: usage ?? this.usage,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      topic: topic ?? this.topic,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      library_: library_ ?? this.library_,
      type: type ?? this.type,
      variableType: variableType ?? this.variableType,
      characteristic: characteristic ?? this.characteristic,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ResearchElementDefinitionCharacteristic]
/// A characteristic that defines the members of the research element.
/// Multiple characteristics are applied with "and" semantics.
class ResearchElementDefinitionCharacteristic extends BackboneElement {
  /// Primary constructor for [ResearchElementDefinitionCharacteristic]

  ResearchElementDefinitionCharacteristic({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.definitionCodeableConcept,
    this.definitionCanonical,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.studyEffectiveDateTime,
    this.studyEffectivePeriod,
    this.studyEffectiveDuration,
    this.studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.participantEffectiveDescription,
    this.participantEffectiveDateTime,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchElementDefinitionCharacteristic.fromJson(
      Map<String, dynamic> json) {
    return ResearchElementDefinitionCharacteristic(
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
      definitionCodeableConcept: json['definitionCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['definitionCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      definitionCanonical: json['definitionCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['definitionCanonical'],
              '_value': json['_definitionCanonical'],
            })
          : null,
      definitionExpression: json['definitionExpression'] != null
          ? FhirExpression.fromJson(
              json['definitionExpression'] as Map<String, dynamic>,
            )
          : null,
      definitionDataRequirement: json['definitionDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['definitionDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      usageContext: json['usageContext'] != null
          ? (json['usageContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      exclude: json['exclude'] != null
          ? FhirBoolean.fromJson({
              'value': json['exclude'],
              '_value': json['_exclude'],
            })
          : null,
      unitOfMeasure: json['unitOfMeasure'] != null
          ? CodeableConcept.fromJson(
              json['unitOfMeasure'] as Map<String, dynamic>,
            )
          : null,
      studyEffectiveDescription: json['studyEffectiveDescription'] != null
          ? FhirString.fromJson({
              'value': json['studyEffectiveDescription'],
              '_value': json['_studyEffectiveDescription'],
            })
          : null,
      studyEffectiveDateTime: json['studyEffectiveDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['studyEffectiveDateTime'],
              '_value': json['_studyEffectiveDateTime'],
            })
          : null,
      studyEffectivePeriod: json['studyEffectivePeriod'] != null
          ? Period.fromJson(
              json['studyEffectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      studyEffectiveDuration: json['studyEffectiveDuration'] != null
          ? FhirDuration.fromJson(
              json['studyEffectiveDuration'] as Map<String, dynamic>,
            )
          : null,
      studyEffectiveTiming: json['studyEffectiveTiming'] != null
          ? Timing.fromJson(
              json['studyEffectiveTiming'] as Map<String, dynamic>,
            )
          : null,
      studyEffectiveTimeFromStart: json['studyEffectiveTimeFromStart'] != null
          ? FhirDuration.fromJson(
              json['studyEffectiveTimeFromStart'] as Map<String, dynamic>,
            )
          : null,
      studyEffectiveGroupMeasure: json['studyEffectiveGroupMeasure'] != null
          ? GroupMeasure.fromJson({
              'value': json['studyEffectiveGroupMeasure'],
              '_value': json['_studyEffectiveGroupMeasure'],
            })
          : null,
      participantEffectiveDescription:
          json['participantEffectiveDescription'] != null
              ? FhirString.fromJson({
                  'value': json['participantEffectiveDescription'],
                  '_value': json['_participantEffectiveDescription'],
                })
              : null,
      participantEffectiveDateTime: json['participantEffectiveDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['participantEffectiveDateTime'],
              '_value': json['_participantEffectiveDateTime'],
            })
          : null,
      participantEffectivePeriod: json['participantEffectivePeriod'] != null
          ? Period.fromJson(
              json['participantEffectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      participantEffectiveDuration: json['participantEffectiveDuration'] != null
          ? FhirDuration.fromJson(
              json['participantEffectiveDuration'] as Map<String, dynamic>,
            )
          : null,
      participantEffectiveTiming: json['participantEffectiveTiming'] != null
          ? Timing.fromJson(
              json['participantEffectiveTiming'] as Map<String, dynamic>,
            )
          : null,
      participantEffectiveTimeFromStart:
          json['participantEffectiveTimeFromStart'] != null
              ? FhirDuration.fromJson(
                  json['participantEffectiveTimeFromStart']
                      as Map<String, dynamic>,
                )
              : null,
      participantEffectiveGroupMeasure:
          json['participantEffectiveGroupMeasure'] != null
              ? GroupMeasure.fromJson({
                  'value': json['participantEffectiveGroupMeasure'],
                  '_value': json['_participantEffectiveGroupMeasure'],
                })
              : null,
    );
  }

  /// Deserialize [ResearchElementDefinitionCharacteristic] from a [String]
  /// or [YamlMap] object
  factory ResearchElementDefinitionCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? ResearchElementDefinitionCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ResearchElementDefinitionCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ResearchElementDefinitionCharacteristic cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ResearchElementDefinitionCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchElementDefinitionCharacteristic.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchElementDefinitionCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ResearchElementDefinitionCharacteristic';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [definitionCodeableConcept]
  /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final CodeableConcept? definitionCodeableConcept;

  /// [definitionCanonical]
  /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final FhirCanonical? definitionCanonical;

  /// [definitionExpression]
  /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final FhirExpression? definitionExpression;

  /// [definitionDataRequirement]
  /// Define members of the research element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final DataRequirement? definitionDataRequirement;

  /// [usageContext]
  /// Use UsageContext to define the members of the population, such as Age
  /// Ranges, Genders, Settings.
  final List<UsageContext>? usageContext;

  /// [exclude]
  /// When true, members with this characteristic are excluded from the
  /// element.
  final FhirBoolean? exclude;

  /// [unitOfMeasure]
  /// Specifies the UCUM unit for the outcome.
  final CodeableConcept? unitOfMeasure;

  /// [studyEffectiveDescription]
  /// A narrative description of the time period the study covers.
  final FhirString? studyEffectiveDescription;

  /// [studyEffectiveDateTime]
  /// Indicates what effective period the study covers.
  final FhirDateTime? studyEffectiveDateTime;

  /// [studyEffectivePeriod]
  /// Indicates what effective period the study covers.
  final Period? studyEffectivePeriod;

  /// [studyEffectiveDuration]
  /// Indicates what effective period the study covers.
  final FhirDuration? studyEffectiveDuration;

  /// [studyEffectiveTiming]
  /// Indicates what effective period the study covers.
  final Timing? studyEffectiveTiming;

  /// [studyEffectiveTimeFromStart]
  /// Indicates duration from the study initiation.
  final FhirDuration? studyEffectiveTimeFromStart;

  /// [studyEffectiveGroupMeasure]
  /// Indicates how elements are aggregated within the study effective
  /// period.
  final GroupMeasure? studyEffectiveGroupMeasure;

  /// [participantEffectiveDescription]
  /// A narrative description of the time period the study covers.
  final FhirString? participantEffectiveDescription;

  /// [participantEffectiveDateTime]
  /// Indicates what effective period the study covers.
  final FhirDateTime? participantEffectiveDateTime;

  /// [participantEffectivePeriod]
  /// Indicates what effective period the study covers.
  final Period? participantEffectivePeriod;

  /// [participantEffectiveDuration]
  /// Indicates what effective period the study covers.
  final FhirDuration? participantEffectiveDuration;

  /// [participantEffectiveTiming]
  /// Indicates what effective period the study covers.
  final Timing? participantEffectiveTiming;

  /// [participantEffectiveTimeFromStart]
  /// Indicates duration from the participant's study entry.
  final FhirDuration? participantEffectiveTimeFromStart;

  /// [participantEffectiveGroupMeasure]
  /// Indicates how elements are aggregated within the study effective
  /// period.
  final GroupMeasure? participantEffectiveGroupMeasure;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (definitionCodeableConcept != null) {
      final fieldJson3 = definitionCodeableConcept!.toJson();
      json['definitionCodeableConcept'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_definitionCodeableConcept'] = fieldJson3['_value'];
      }
    }

    if (definitionCanonical != null) {
      final fieldJson4 = definitionCanonical!.toJson();
      json['definitionCanonical'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_definitionCanonical'] = fieldJson4['_value'];
      }
    }

    if (definitionExpression != null) {
      final fieldJson5 = definitionExpression!.toJson();
      json['definitionExpression'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_definitionExpression'] = fieldJson5['_value'];
      }
    }

    if (definitionDataRequirement != null) {
      final fieldJson6 = definitionDataRequirement!.toJson();
      json['definitionDataRequirement'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_definitionDataRequirement'] = fieldJson6['_value'];
      }
    }

    if (usageContext != null && usageContext!.isNotEmpty) {
      final fieldJson7 = usageContext!.map((e) => e.toJson()).toList();
      json['usageContext'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_usageContext'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (exclude != null) {
      final fieldJson8 = exclude!.toJson();
      json['exclude'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_exclude'] = fieldJson8['_value'];
      }
    }

    if (unitOfMeasure != null) {
      final fieldJson9 = unitOfMeasure!.toJson();
      json['unitOfMeasure'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_unitOfMeasure'] = fieldJson9['_value'];
      }
    }

    if (studyEffectiveDescription != null) {
      final fieldJson10 = studyEffectiveDescription!.toJson();
      json['studyEffectiveDescription'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_studyEffectiveDescription'] = fieldJson10['_value'];
      }
    }

    if (studyEffectiveDateTime != null) {
      final fieldJson11 = studyEffectiveDateTime!.toJson();
      json['studyEffectiveDateTime'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_studyEffectiveDateTime'] = fieldJson11['_value'];
      }
    }

    if (studyEffectivePeriod != null) {
      final fieldJson12 = studyEffectivePeriod!.toJson();
      json['studyEffectivePeriod'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_studyEffectivePeriod'] = fieldJson12['_value'];
      }
    }

    if (studyEffectiveDuration != null) {
      final fieldJson13 = studyEffectiveDuration!.toJson();
      json['studyEffectiveDuration'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_studyEffectiveDuration'] = fieldJson13['_value'];
      }
    }

    if (studyEffectiveTiming != null) {
      final fieldJson14 = studyEffectiveTiming!.toJson();
      json['studyEffectiveTiming'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_studyEffectiveTiming'] = fieldJson14['_value'];
      }
    }

    if (studyEffectiveTimeFromStart != null) {
      final fieldJson15 = studyEffectiveTimeFromStart!.toJson();
      json['studyEffectiveTimeFromStart'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_studyEffectiveTimeFromStart'] = fieldJson15['_value'];
      }
    }

    if (studyEffectiveGroupMeasure != null) {
      final fieldJson16 = studyEffectiveGroupMeasure!.toJson();
      json['studyEffectiveGroupMeasure'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_studyEffectiveGroupMeasure'] = fieldJson16['_value'];
      }
    }

    if (participantEffectiveDescription != null) {
      final fieldJson17 = participantEffectiveDescription!.toJson();
      json['participantEffectiveDescription'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_participantEffectiveDescription'] = fieldJson17['_value'];
      }
    }

    if (participantEffectiveDateTime != null) {
      final fieldJson18 = participantEffectiveDateTime!.toJson();
      json['participantEffectiveDateTime'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_participantEffectiveDateTime'] = fieldJson18['_value'];
      }
    }

    if (participantEffectivePeriod != null) {
      final fieldJson19 = participantEffectivePeriod!.toJson();
      json['participantEffectivePeriod'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_participantEffectivePeriod'] = fieldJson19['_value'];
      }
    }

    if (participantEffectiveDuration != null) {
      final fieldJson20 = participantEffectiveDuration!.toJson();
      json['participantEffectiveDuration'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_participantEffectiveDuration'] = fieldJson20['_value'];
      }
    }

    if (participantEffectiveTiming != null) {
      final fieldJson21 = participantEffectiveTiming!.toJson();
      json['participantEffectiveTiming'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_participantEffectiveTiming'] = fieldJson21['_value'];
      }
    }

    if (participantEffectiveTimeFromStart != null) {
      final fieldJson22 = participantEffectiveTimeFromStart!.toJson();
      json['participantEffectiveTimeFromStart'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_participantEffectiveTimeFromStart'] = fieldJson22['_value'];
      }
    }

    if (participantEffectiveGroupMeasure != null) {
      final fieldJson23 = participantEffectiveGroupMeasure!.toJson();
      json['participantEffectiveGroupMeasure'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_participantEffectiveGroupMeasure'] = fieldJson23['_value'];
      }
    }

    return json;
  }

  @override
  ResearchElementDefinitionCharacteristic clone() => throw UnimplementedError();
  @override
  ResearchElementDefinitionCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? definitionCodeableConcept,
    FhirCanonical? definitionCanonical,
    FhirExpression? definitionExpression,
    DataRequirement? definitionDataRequirement,
    List<UsageContext>? usageContext,
    FhirBoolean? exclude,
    CodeableConcept? unitOfMeasure,
    FhirString? studyEffectiveDescription,
    FhirDateTime? studyEffectiveDateTime,
    Period? studyEffectivePeriod,
    FhirDuration? studyEffectiveDuration,
    Timing? studyEffectiveTiming,
    FhirDuration? studyEffectiveTimeFromStart,
    GroupMeasure? studyEffectiveGroupMeasure,
    FhirString? participantEffectiveDescription,
    FhirDateTime? participantEffectiveDateTime,
    Period? participantEffectivePeriod,
    FhirDuration? participantEffectiveDuration,
    Timing? participantEffectiveTiming,
    FhirDuration? participantEffectiveTimeFromStart,
    GroupMeasure? participantEffectiveGroupMeasure,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ResearchElementDefinitionCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      definitionCodeableConcept:
          definitionCodeableConcept ?? this.definitionCodeableConcept,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionExpression: definitionExpression ?? this.definitionExpression,
      definitionDataRequirement:
          definitionDataRequirement ?? this.definitionDataRequirement,
      usageContext: usageContext ?? this.usageContext,
      exclude: exclude ?? this.exclude,
      unitOfMeasure: unitOfMeasure ?? this.unitOfMeasure,
      studyEffectiveDescription:
          studyEffectiveDescription ?? this.studyEffectiveDescription,
      studyEffectiveDateTime:
          studyEffectiveDateTime ?? this.studyEffectiveDateTime,
      studyEffectivePeriod: studyEffectivePeriod ?? this.studyEffectivePeriod,
      studyEffectiveDuration:
          studyEffectiveDuration ?? this.studyEffectiveDuration,
      studyEffectiveTiming: studyEffectiveTiming ?? this.studyEffectiveTiming,
      studyEffectiveTimeFromStart:
          studyEffectiveTimeFromStart ?? this.studyEffectiveTimeFromStart,
      studyEffectiveGroupMeasure:
          studyEffectiveGroupMeasure ?? this.studyEffectiveGroupMeasure,
      participantEffectiveDescription: participantEffectiveDescription ??
          this.participantEffectiveDescription,
      participantEffectiveDateTime:
          participantEffectiveDateTime ?? this.participantEffectiveDateTime,
      participantEffectivePeriod:
          participantEffectivePeriod ?? this.participantEffectivePeriod,
      participantEffectiveDuration:
          participantEffectiveDuration ?? this.participantEffectiveDuration,
      participantEffectiveTiming:
          participantEffectiveTiming ?? this.participantEffectiveTiming,
      participantEffectiveTimeFromStart: participantEffectiveTimeFromStart ??
          this.participantEffectiveTimeFromStart,
      participantEffectiveGroupMeasure: participantEffectiveGroupMeasure ??
          this.participantEffectiveGroupMeasure,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
