import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ResearchElementDefinition]
/// The ResearchElementDefinition resource describes a "PICO" element that
/// knowledge (evidence, assertion, recommendation) is about.
class ResearchElementDefinition extends DomainResource {
  /// Primary constructor for
  /// [ResearchElementDefinition]

  ResearchElementDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  factory ResearchElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ResearchElementDefinition(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      url: parseField<FhirUri>(
        json['url'],
        json['_url'],
        FhirUri.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      version: parseField<FhirString>(
        json['version'],
        json['_version'],
        FhirString.fromJson,
      ),
      name: parseField<FhirString>(
        json['name'],
        json['_name'],
        FhirString.fromJson,
      ),
      title: parseField<FhirString>(
        json['title'],
        json['_title'],
        FhirString.fromJson,
      ),
      shortTitle: parseField<FhirString>(
        json['shortTitle'],
        json['_shortTitle'],
        FhirString.fromJson,
      ),
      subtitle: parseField<FhirString>(
        json['subtitle'],
        json['_subtitle'],
        FhirString.fromJson,
      ),
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental: parseField<FhirBoolean>(
        json['experimental'],
        json['_experimental'],
        FhirBoolean.fromJson,
      ),
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
      date: parseField<FhirDateTime>(
        json['date'],
        json['_date'],
        FhirDateTime.fromJson,
      ),
      publisher: parseField<FhirString>(
        json['publisher'],
        json['_publisher'],
        FhirString.fromJson,
      ),
      contact: parseList<ContactDetail>(
        json['contact'] as List<dynamic>?,
        json['_contact'] as List<dynamic>?,
        ContactDetail.fromJson,
      ),
      description: parseField<FhirMarkdown>(
        json['description'],
        json['_description'],
        FhirMarkdown.fromJson,
      ),
      comment: parseList<FhirString>(
        json['comment'] as List<dynamic>?,
        json['_comment'] as List<dynamic>?,
        FhirString.fromJson,
      ),
      useContext: parseList<UsageContext>(
        json['useContext'] as List<dynamic>?,
        json['_useContext'] as List<dynamic>?,
        UsageContext.fromJson,
      ),
      jurisdiction: parseList<CodeableConcept>(
        json['jurisdiction'] as List<dynamic>?,
        json['_jurisdiction'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      purpose: parseField<FhirMarkdown>(
        json['purpose'],
        json['_purpose'],
        FhirMarkdown.fromJson,
      ),
      usage: parseField<FhirString>(
        json['usage'],
        json['_usage'],
        FhirString.fromJson,
      ),
      copyright: parseField<FhirMarkdown>(
        json['copyright'],
        json['_copyright'],
        FhirMarkdown.fromJson,
      ),
      approvalDate: parseField<FhirDate>(
        json['approvalDate'],
        json['_approvalDate'],
        FhirDate.fromJson,
      ),
      lastReviewDate: parseField<FhirDate>(
        json['lastReviewDate'],
        json['_lastReviewDate'],
        FhirDate.fromJson,
      ),
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      topic: parseList<CodeableConcept>(
        json['topic'] as List<dynamic>?,
        json['_topic'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      author: parseList<ContactDetail>(
        json['author'] as List<dynamic>?,
        json['_author'] as List<dynamic>?,
        ContactDetail.fromJson,
      ),
      editor: parseList<ContactDetail>(
        json['editor'] as List<dynamic>?,
        json['_editor'] as List<dynamic>?,
        ContactDetail.fromJson,
      ),
      reviewer: parseList<ContactDetail>(
        json['reviewer'] as List<dynamic>?,
        json['_reviewer'] as List<dynamic>?,
        ContactDetail.fromJson,
      ),
      endorser: parseList<ContactDetail>(
        json['endorser'] as List<dynamic>?,
        json['_endorser'] as List<dynamic>?,
        ContactDetail.fromJson,
      ),
      relatedArtifact: parseList<RelatedArtifact>(
        json['relatedArtifact'] as List<dynamic>?,
        json['_relatedArtifact'] as List<dynamic>?,
        RelatedArtifact.fromJson,
      ),
      library_: parseList<FhirCanonical>(
        json['library'] as List<dynamic>?,
        json['_library'] as List<dynamic>?,
        FhirCanonical.fromJson,
      ),
      type: ResearchElementType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      variableType: parseField<VariableType>(
        json['variableType'],
        json['_variableType'],
        VariableType.fromJson,
      ),
      characteristic: parseList<ResearchElementDefinitionCharacteristic>(
        json['characteristic'] as List<dynamic>?,
        json['_characteristic'] as List<dynamic>?,
        ResearchElementDefinitionCharacteristic.fromJson,
      )!,
    );
  }

  /// Deserialize [ResearchElementDefinition]
  /// from a [String] or [YamlMap] object
  factory ResearchElementDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchElementDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchElementDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchElementDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchElementDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchElementDefinition.fromJsonString(
    String source,
  ) {
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
    addField('shortTitle', shortTitle);
    addField('subtitle', subtitle);
    addField('status', status);
    addField('experimental', experimental);
    if (subjectCodeableConcept != null) {
      json['subjectCodeableConcept'] = subjectCodeableConcept!.toJson();
    }

    if (subjectReference != null) {
      json['subjectReference'] = subjectReference!.toJson();
    }

    addField('date', date);
    addField('publisher', publisher);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    if (comment != null && comment!.isNotEmpty) {
      final fieldJson0 = comment!.map((e) => e.toJson()).toList();
      json['comment'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_comment'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    addField('purpose', purpose);
    addField('usage', usage);
    addField('copyright', copyright);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }

    if (topic != null && topic!.isNotEmpty) {
      json['topic'] = topic!.map((e) => e.toJson()).toList();
    }

    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((e) => e.toJson()).toList();
    }

    if (editor != null && editor!.isNotEmpty) {
      json['editor'] = editor!.map((e) => e.toJson()).toList();
    }

    if (reviewer != null && reviewer!.isNotEmpty) {
      json['reviewer'] = reviewer!.map((e) => e.toJson()).toList();
    }

    if (endorser != null && endorser!.isNotEmpty) {
      json['endorser'] = endorser!.map((e) => e.toJson()).toList();
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] =
          relatedArtifact!.map((e) => e.toJson()).toList();
    }

    if (library_ != null && library_!.isNotEmpty) {
      final fieldJson1 = library_!.map((e) => e.toJson()).toList();
      json['library'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_library'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    addField('type', type);
    addField('variableType', variableType);
    if (characteristic.isNotEmpty) {
      json['characteristic'] = characteristic.map((e) => e.toJson()).toList();
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
  /// Primary constructor for
  /// [ResearchElementDefinitionCharacteristic]

  ResearchElementDefinitionCharacteristic({
    super.id,
    super.extension_,
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
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ResearchElementDefinitionCharacteristic(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      definitionCodeableConcept: json['definitionCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['definitionCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      definitionCanonical: parseField<FhirCanonical>(
        json['definitionCanonical'],
        json['_definitionCanonical'],
        FhirCanonical.fromJson,
      ),
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
      usageContext: parseList<UsageContext>(
        json['usageContext'] as List<dynamic>?,
        json['_usageContext'] as List<dynamic>?,
        UsageContext.fromJson,
      ),
      exclude: parseField<FhirBoolean>(
        json['exclude'],
        json['_exclude'],
        FhirBoolean.fromJson,
      ),
      unitOfMeasure: json['unitOfMeasure'] != null
          ? CodeableConcept.fromJson(
              json['unitOfMeasure'] as Map<String, dynamic>,
            )
          : null,
      studyEffectiveDescription: parseField<FhirString>(
        json['studyEffectiveDescription'],
        json['_studyEffectiveDescription'],
        FhirString.fromJson,
      ),
      studyEffectiveDateTime: parseField<FhirDateTime>(
        json['studyEffectiveDateTime'],
        json['_studyEffectiveDateTime'],
        FhirDateTime.fromJson,
      ),
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
      studyEffectiveGroupMeasure: parseField<GroupMeasure>(
        json['studyEffectiveGroupMeasure'],
        json['_studyEffectiveGroupMeasure'],
        GroupMeasure.fromJson,
      ),
      participantEffectiveDescription: parseField<FhirString>(
        json['participantEffectiveDescription'],
        json['_participantEffectiveDescription'],
        FhirString.fromJson,
      ),
      participantEffectiveDateTime: parseField<FhirDateTime>(
        json['participantEffectiveDateTime'],
        json['_participantEffectiveDateTime'],
        FhirDateTime.fromJson,
      ),
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
      participantEffectiveGroupMeasure: parseField<GroupMeasure>(
        json['participantEffectiveGroupMeasure'],
        json['_participantEffectiveGroupMeasure'],
        GroupMeasure.fromJson,
      ),
    );
  }

  /// Deserialize [ResearchElementDefinitionCharacteristic]
  /// from a [String] or [YamlMap] object
  factory ResearchElementDefinitionCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchElementDefinitionCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchElementDefinitionCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchElementDefinitionCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchElementDefinitionCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchElementDefinitionCharacteristic.fromJsonString(
    String source,
  ) {
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

    if (definitionCodeableConcept != null) {
      json['definitionCodeableConcept'] = definitionCodeableConcept!.toJson();
    }

    addField('definitionCanonical', definitionCanonical);
    if (definitionExpression != null) {
      json['definitionExpression'] = definitionExpression!.toJson();
    }

    if (definitionDataRequirement != null) {
      json['definitionDataRequirement'] = definitionDataRequirement!.toJson();
    }

    if (usageContext != null && usageContext!.isNotEmpty) {
      json['usageContext'] = usageContext!.map((e) => e.toJson()).toList();
    }

    addField('exclude', exclude);
    if (unitOfMeasure != null) {
      json['unitOfMeasure'] = unitOfMeasure!.toJson();
    }

    addField('studyEffectiveDescription', studyEffectiveDescription);
    addField('studyEffectiveDateTime', studyEffectiveDateTime);
    if (studyEffectivePeriod != null) {
      json['studyEffectivePeriod'] = studyEffectivePeriod!.toJson();
    }

    if (studyEffectiveDuration != null) {
      json['studyEffectiveDuration'] = studyEffectiveDuration!.toJson();
    }

    if (studyEffectiveTiming != null) {
      json['studyEffectiveTiming'] = studyEffectiveTiming!.toJson();
    }

    if (studyEffectiveTimeFromStart != null) {
      json['studyEffectiveTimeFromStart'] =
          studyEffectiveTimeFromStart!.toJson();
    }

    addField('studyEffectiveGroupMeasure', studyEffectiveGroupMeasure);
    addField(
        'participantEffectiveDescription', participantEffectiveDescription);
    addField('participantEffectiveDateTime', participantEffectiveDateTime);
    if (participantEffectivePeriod != null) {
      json['participantEffectivePeriod'] = participantEffectivePeriod!.toJson();
    }

    if (participantEffectiveDuration != null) {
      json['participantEffectiveDuration'] =
          participantEffectiveDuration!.toJson();
    }

    if (participantEffectiveTiming != null) {
      json['participantEffectiveTiming'] = participantEffectiveTiming!.toJson();
    }

    if (participantEffectiveTimeFromStart != null) {
      json['participantEffectiveTimeFromStart'] =
          participantEffectiveTimeFromStart!.toJson();
    }

    addField(
        'participantEffectiveGroupMeasure', participantEffectiveGroupMeasure);
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
