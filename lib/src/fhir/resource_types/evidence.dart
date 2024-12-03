import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Evidence]
/// The Evidence Resource provides a machine-interpretable expression of an
/// evidence concept including the evidence variables (eg population,
/// exposures/interventions, comparators, outcomes, measured variables,
/// confounding variables), the statistics, and the certainty of this
/// evidence.
class Evidence extends DomainResource {
  /// Primary constructor for
  /// [Evidence]

  Evidence({
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
    this.title,
    this.citeAsReference,
    this.citeAsMarkdown,
    required this.status,
    this.date,
    this.useContext,
    this.approvalDate,
    this.lastReviewDate,
    this.publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.description,
    this.assertion,
    this.note,
    required this.variableDefinition,
    this.synthesisType,
    this.studyType,
    this.statistic,
    this.certainty,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Evidence,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Evidence.fromJson(
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
    return Evidence(
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
      title: parseField<FhirString>(
        json['title'],
        json['_title'],
        FhirString.fromJson,
      ),
      citeAsReference: json['citeAsReference'] != null
          ? Reference.fromJson(
              json['citeAsReference'] as Map<String, dynamic>,
            )
          : null,
      citeAsMarkdown: parseField<FhirMarkdown>(
        json['citeAsMarkdown'],
        json['_citeAsMarkdown'],
        FhirMarkdown.fromJson,
      ),
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      date: parseField<FhirDateTime>(
        json['date'],
        json['_date'],
        FhirDateTime.fromJson,
      ),
      useContext: parseList<UsageContext>(
        json['useContext'] as List<dynamic>?,
        json['_useContext'] as List<dynamic>?,
        UsageContext.fromJson,
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
      description: parseField<FhirMarkdown>(
        json['description'],
        json['_description'],
        FhirMarkdown.fromJson,
      ),
      assertion: parseField<FhirMarkdown>(
        json['assertion'],
        json['_assertion'],
        FhirMarkdown.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      variableDefinition: parseList<EvidenceVariableDefinition>(
        json['variableDefinition'] as List<dynamic>?,
        json['_variableDefinition'] as List<dynamic>?,
        EvidenceVariableDefinition.fromJson,
      )!,
      synthesisType: json['synthesisType'] != null
          ? CodeableConcept.fromJson(
              json['synthesisType'] as Map<String, dynamic>,
            )
          : null,
      studyType: json['studyType'] != null
          ? CodeableConcept.fromJson(
              json['studyType'] as Map<String, dynamic>,
            )
          : null,
      statistic: parseList<EvidenceStatistic>(
        json['statistic'] as List<dynamic>?,
        json['_statistic'] as List<dynamic>?,
        EvidenceStatistic.fromJson,
      ),
      certainty: parseList<EvidenceCertainty>(
        json['certainty'] as List<dynamic>?,
        json['_certainty'] as List<dynamic>?,
        EvidenceCertainty.fromJson,
      ),
    );
  }

  /// Deserialize [Evidence]
  /// from a [String] or [YamlMap] object
  factory Evidence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Evidence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Evidence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Evidence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Evidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Evidence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Evidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Evidence';

  /// [url]
  /// An absolute URI that is used to identify this evidence when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this summary is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the summary is
  /// stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this summary when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the summary
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the summary author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;

  /// [title]
  /// A short, descriptive, user-friendly title for the summary.
  final FhirString? title;

  /// [citeAsReference]
  /// Citation Resource or display of suggested citation for this evidence.
  final Reference? citeAsReference;

  /// [citeAsMarkdown]
  /// Citation Resource or display of suggested citation for this evidence.
  final FhirMarkdown? citeAsMarkdown;

  /// [status]
  /// The status of this summary. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [date]
  /// The date (and optionally time) when the summary was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the summary changes.
  final FhirDateTime? date;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate evidence instances.
  final List<UsageContext>? useContext;

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

  /// [publisher]
  /// The name of the organization or individual that published the evidence.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [author]
  /// An individiual, organization, or device primarily involved in the
  /// creation and maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor]
  /// An individiual, organization, or device primarily responsible for
  /// internal coherence of the content.
  final List<ContactDetail>? editor;

  /// [reviewer]
  /// An individiual, organization, or device primarily responsible for
  /// review of some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser]
  /// An individiual, organization, or device responsible for officially
  /// endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatedArtifact]
  /// Link or citation to artifact associated with the summary.
  final List<RelatedArtifact>? relatedArtifact;

  /// [description]
  /// A free text natural language description of the evidence from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [assertion]
  /// Declarative description of the Evidence.
  final FhirMarkdown? assertion;

  /// [note]
  /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [variableDefinition]
  /// Evidence variable such as population, exposure, or outcome.
  final List<EvidenceVariableDefinition> variableDefinition;

  /// [synthesisType]
  /// The method to combine studies.
  final CodeableConcept? synthesisType;

  /// [studyType]
  /// The type of study that produced this evidence.
  final CodeableConcept? studyType;

  /// [statistic]
  /// Values and parameters for a single statistic.
  final List<EvidenceStatistic>? statistic;

  /// [certainty]
  /// Assessment of certainty, confidence in the estimates, or quality of the
  /// evidence.
  final List<EvidenceCertainty>? certainty;
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
    addField('title', title);
    if (citeAsReference != null) {
      json['citeAsReference'] = citeAsReference!.toJson();
    }

    addField('citeAsMarkdown', citeAsMarkdown);
    addField('status', status);
    addField('date', date);
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('publisher', publisher);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
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

    addField('description', description);
    addField('assertion', assertion);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (variableDefinition.isNotEmpty) {
      json['variableDefinition'] =
          variableDefinition.map((e) => e.toJson()).toList();
    }

    if (synthesisType != null) {
      json['synthesisType'] = synthesisType!.toJson();
    }

    if (studyType != null) {
      json['studyType'] = studyType!.toJson();
    }

    if (statistic != null && statistic!.isNotEmpty) {
      json['statistic'] = statistic!.map((e) => e.toJson()).toList();
    }

    if (certainty != null && certainty!.isNotEmpty) {
      json['certainty'] = certainty!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Evidence clone() => throw UnimplementedError();
  @override
  Evidence copyWith({
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
    FhirString? title,
    Reference? citeAsReference,
    FhirMarkdown? citeAsMarkdown,
    PublicationStatus? status,
    FhirDateTime? date,
    List<UsageContext>? useContext,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirMarkdown? description,
    FhirMarkdown? assertion,
    List<Annotation>? note,
    List<EvidenceVariableDefinition>? variableDefinition,
    CodeableConcept? synthesisType,
    CodeableConcept? studyType,
    List<EvidenceStatistic>? statistic,
    List<EvidenceCertainty>? certainty,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Evidence(
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
      title: title ?? this.title,
      citeAsReference: citeAsReference ?? this.citeAsReference,
      citeAsMarkdown: citeAsMarkdown ?? this.citeAsMarkdown,
      status: status ?? this.status,
      date: date ?? this.date,
      useContext: useContext ?? this.useContext,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      description: description ?? this.description,
      assertion: assertion ?? this.assertion,
      note: note ?? this.note,
      variableDefinition: variableDefinition ?? this.variableDefinition,
      synthesisType: synthesisType ?? this.synthesisType,
      studyType: studyType ?? this.studyType,
      statistic: statistic ?? this.statistic,
      certainty: certainty ?? this.certainty,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceVariableDefinition]
/// Evidence variable such as population, exposure, or outcome.
class EvidenceVariableDefinition extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableDefinition]

  EvidenceVariableDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    required this.variableRole,
    this.observed,
    this.intended,
    this.directnessMatch,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDefinition.fromJson(
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
    return EvidenceVariableDefinition(
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
      description: parseField<FhirMarkdown>(
        json['description'],
        json['_description'],
        FhirMarkdown.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      variableRole: CodeableConcept.fromJson(
        json['variableRole'] as Map<String, dynamic>,
      ),
      observed: json['observed'] != null
          ? Reference.fromJson(
              json['observed'] as Map<String, dynamic>,
            )
          : null,
      intended: json['intended'] != null
          ? Reference.fromJson(
              json['intended'] as Map<String, dynamic>,
            )
          : null,
      directnessMatch: json['directnessMatch'] != null
          ? CodeableConcept.fromJson(
              json['directnessMatch'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EvidenceVariableDefinition]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableDefinition';

  /// [description]
  /// A text description or summary of the variable.
  final FhirMarkdown? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [variableRole]
  /// population | subpopulation | exposure | referenceExposure |
  /// measuredVariable | confounder.
  final CodeableConcept variableRole;

  /// [observed]
  /// Definition of the actual variable related to the statistic(s).
  final Reference? observed;

  /// [intended]
  /// Definition of the intended variable related to the Evidence.
  final Reference? intended;

  /// [directnessMatch]
  /// Indication of quality of match between intended variable to actual
  /// variable.
  final CodeableConcept? directnessMatch;
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

    addField('description', description);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    json['variableRole'] = variableRole.toJson();

    if (observed != null) {
      json['observed'] = observed!.toJson();
    }

    if (intended != null) {
      json['intended'] = intended!.toJson();
    }

    if (directnessMatch != null) {
      json['directnessMatch'] = directnessMatch!.toJson();
    }

    return json;
  }

  @override
  EvidenceVariableDefinition clone() => throw UnimplementedError();
  @override
  EvidenceVariableDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    List<Annotation>? note,
    CodeableConcept? variableRole,
    Reference? observed,
    Reference? intended,
    CodeableConcept? directnessMatch,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      variableRole: variableRole ?? this.variableRole,
      observed: observed ?? this.observed,
      intended: intended ?? this.intended,
      directnessMatch: directnessMatch ?? this.directnessMatch,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceStatistic]
/// Values and parameters for a single statistic.
class EvidenceStatistic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceStatistic]

  EvidenceStatistic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.numberAffected,
    this.sampleSize,
    this.attributeEstimate,
    this.modelCharacteristic,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceStatistic.fromJson(
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
    return EvidenceStatistic(
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
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      statisticType: json['statisticType'] != null
          ? CodeableConcept.fromJson(
              json['statisticType'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      numberOfEvents: parseField<FhirUnsignedInt>(
        json['numberOfEvents'],
        json['_numberOfEvents'],
        FhirUnsignedInt.fromJson,
      ),
      numberAffected: parseField<FhirUnsignedInt>(
        json['numberAffected'],
        json['_numberAffected'],
        FhirUnsignedInt.fromJson,
      ),
      sampleSize: json['sampleSize'] != null
          ? EvidenceSampleSize.fromJson(
              json['sampleSize'] as Map<String, dynamic>,
            )
          : null,
      attributeEstimate: parseList<EvidenceAttributeEstimate>(
        json['attributeEstimate'] as List<dynamic>?,
        json['_attributeEstimate'] as List<dynamic>?,
        EvidenceAttributeEstimate.fromJson,
      ),
      modelCharacteristic: parseList<EvidenceModelCharacteristic>(
        json['modelCharacteristic'] as List<dynamic>?,
        json['_modelCharacteristic'] as List<dynamic>?,
        EvidenceModelCharacteristic.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceStatistic]
  /// from a [String] or [YamlMap] object
  factory EvidenceStatistic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceStatistic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceStatistic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceStatistic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceStatistic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceStatistic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceStatistic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceStatistic';

  /// [description]
  /// A description of the content value of the statistic.
  final FhirString? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [statisticType]
  /// Type of statistic, eg relative risk.
  final CodeableConcept? statisticType;

  /// [category]
  /// When the measured variable is handled categorically, the category
  /// element is used to define which category the statistic is reporting.
  final CodeableConcept? category;

  /// [quantity]
  /// Statistic value.
  final Quantity? quantity;

  /// [numberOfEvents]
  /// The number of events associated with the statistic, where the unit of
  /// analysis is different from numberAffected, sampleSize.knownDataCount
  /// and sampleSize.numberOfParticipants.
  final FhirUnsignedInt? numberOfEvents;

  /// [numberAffected]
  /// The number of participants affected where the unit of analysis is the
  /// same as sampleSize.knownDataCount and sampleSize.numberOfParticipants.
  final FhirUnsignedInt? numberAffected;

  /// [sampleSize]
  /// Number of samples in the statistic.
  final EvidenceSampleSize? sampleSize;

  /// [attributeEstimate]
  /// A statistical attribute of the statistic such as a measure of
  /// heterogeneity.
  final List<EvidenceAttributeEstimate>? attributeEstimate;

  /// [modelCharacteristic]
  /// A component of the method to generate the statistic.
  final List<EvidenceModelCharacteristic>? modelCharacteristic;
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

    addField('description', description);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (statisticType != null) {
      json['statisticType'] = statisticType!.toJson();
    }

    if (category != null) {
      json['category'] = category!.toJson();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    addField('numberOfEvents', numberOfEvents);
    addField('numberAffected', numberAffected);
    if (sampleSize != null) {
      json['sampleSize'] = sampleSize!.toJson();
    }

    if (attributeEstimate != null && attributeEstimate!.isNotEmpty) {
      json['attributeEstimate'] =
          attributeEstimate!.map((e) => e.toJson()).toList();
    }

    if (modelCharacteristic != null && modelCharacteristic!.isNotEmpty) {
      json['modelCharacteristic'] =
          modelCharacteristic!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  EvidenceStatistic clone() => throw UnimplementedError();
  @override
  EvidenceStatistic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    List<Annotation>? note,
    CodeableConcept? statisticType,
    CodeableConcept? category,
    Quantity? quantity,
    FhirUnsignedInt? numberOfEvents,
    FhirUnsignedInt? numberAffected,
    EvidenceSampleSize? sampleSize,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    List<EvidenceModelCharacteristic>? modelCharacteristic,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceStatistic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      statisticType: statisticType ?? this.statisticType,
      category: category ?? this.category,
      quantity: quantity ?? this.quantity,
      numberOfEvents: numberOfEvents ?? this.numberOfEvents,
      numberAffected: numberAffected ?? this.numberAffected,
      sampleSize: sampleSize ?? this.sampleSize,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
      modelCharacteristic: modelCharacteristic ?? this.modelCharacteristic,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceSampleSize]
/// Number of samples in the statistic.
class EvidenceSampleSize extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceSampleSize]

  EvidenceSampleSize({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.numberOfStudies,
    this.numberOfParticipants,
    this.knownDataCount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceSampleSize.fromJson(
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
    return EvidenceSampleSize(
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
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      numberOfStudies: parseField<FhirUnsignedInt>(
        json['numberOfStudies'],
        json['_numberOfStudies'],
        FhirUnsignedInt.fromJson,
      ),
      numberOfParticipants: parseField<FhirUnsignedInt>(
        json['numberOfParticipants'],
        json['_numberOfParticipants'],
        FhirUnsignedInt.fromJson,
      ),
      knownDataCount: parseField<FhirUnsignedInt>(
        json['knownDataCount'],
        json['_knownDataCount'],
        FhirUnsignedInt.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceSampleSize]
  /// from a [String] or [YamlMap] object
  factory EvidenceSampleSize.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceSampleSize.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceSampleSize.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceSampleSize '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceSampleSize]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceSampleSize.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceSampleSize.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceSampleSize';

  /// [description]
  /// Human-readable summary of population sample size.
  final FhirString? description;

  /// [note]
  /// Footnote or explanatory note about the sample size.
  final List<Annotation>? note;

  /// [numberOfStudies]
  /// Number of participants in the population.
  final FhirUnsignedInt? numberOfStudies;

  /// [numberOfParticipants]
  /// A human-readable string to clarify or explain concepts about the sample
  /// size.
  final FhirUnsignedInt? numberOfParticipants;

  /// [knownDataCount]
  /// Number of participants with known results for measured variables.
  final FhirUnsignedInt? knownDataCount;
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

    addField('description', description);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    addField('numberOfStudies', numberOfStudies);
    addField('numberOfParticipants', numberOfParticipants);
    addField('knownDataCount', knownDataCount);
    return json;
  }

  @override
  EvidenceSampleSize clone() => throw UnimplementedError();
  @override
  EvidenceSampleSize copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    List<Annotation>? note,
    FhirUnsignedInt? numberOfStudies,
    FhirUnsignedInt? numberOfParticipants,
    FhirUnsignedInt? knownDataCount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceSampleSize(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      numberOfStudies: numberOfStudies ?? this.numberOfStudies,
      numberOfParticipants: numberOfParticipants ?? this.numberOfParticipants,
      knownDataCount: knownDataCount ?? this.knownDataCount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceAttributeEstimate]
/// A statistical attribute of the statistic such as a measure of
/// heterogeneity.
class EvidenceAttributeEstimate extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceAttributeEstimate]

  EvidenceAttributeEstimate({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.range,
    this.attributeEstimate,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceAttributeEstimate.fromJson(
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
    return EvidenceAttributeEstimate(
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
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      level: parseField<FhirDecimal>(
        json['level'],
        json['_level'],
        FhirDecimal.fromJson,
      ),
      range: json['range'] != null
          ? Range.fromJson(
              json['range'] as Map<String, dynamic>,
            )
          : null,
      attributeEstimate: parseList<EvidenceAttributeEstimate>(
        json['attributeEstimate'] as List<dynamic>?,
        json['_attributeEstimate'] as List<dynamic>?,
        EvidenceAttributeEstimate.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceAttributeEstimate]
  /// from a [String] or [YamlMap] object
  factory EvidenceAttributeEstimate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceAttributeEstimate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceAttributeEstimate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceAttributeEstimate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceAttributeEstimate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceAttributeEstimate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceAttributeEstimate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceAttributeEstimate';

  /// [description]
  /// Human-readable summary of the estimate.
  final FhirString? description;

  /// [note]
  /// Footnote or explanatory note about the estimate.
  final List<Annotation>? note;

  /// [type]
  /// The type of attribute estimate, eg confidence interval or p value.
  final CodeableConcept? type;

  /// [quantity]
  /// The singular quantity of the attribute estimate, for attribute
  /// estimates represented as single values; also used to report unit of
  /// measure.
  final Quantity? quantity;

  /// [level]
  /// Use 95 for a 95% confidence interval.
  final FhirDecimal? level;

  /// [range]
  /// Lower bound of confidence interval.
  final Range? range;

  /// [attributeEstimate]
  /// A nested attribute estimate; which is the attribute estimate of an
  /// attribute estimate.
  final List<EvidenceAttributeEstimate>? attributeEstimate;
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

    addField('description', description);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    addField('level', level);
    if (range != null) {
      json['range'] = range!.toJson();
    }

    if (attributeEstimate != null && attributeEstimate!.isNotEmpty) {
      json['attributeEstimate'] =
          attributeEstimate!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  EvidenceAttributeEstimate clone() => throw UnimplementedError();
  @override
  EvidenceAttributeEstimate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    List<Annotation>? note,
    CodeableConcept? type,
    Quantity? quantity,
    FhirDecimal? level,
    Range? range,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceAttributeEstimate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      level: level ?? this.level,
      range: range ?? this.range,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceModelCharacteristic]
/// A component of the method to generate the statistic.
class EvidenceModelCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceModelCharacteristic]

  EvidenceModelCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.value,
    this.variable,
    this.attributeEstimate,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristic.fromJson(
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
    return EvidenceModelCharacteristic(
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
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      value: json['value'] != null
          ? Quantity.fromJson(
              json['value'] as Map<String, dynamic>,
            )
          : null,
      variable: parseList<EvidenceModelCharacteristicVariable>(
        json['variable'] as List<dynamic>?,
        json['_variable'] as List<dynamic>?,
        EvidenceModelCharacteristicVariable.fromJson,
      ),
      attributeEstimate: parseList<EvidenceAttributeEstimate>(
        json['attributeEstimate'] as List<dynamic>?,
        json['_attributeEstimate'] as List<dynamic>?,
        EvidenceAttributeEstimate.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceModelCharacteristic]
  /// from a [String] or [YamlMap] object
  factory EvidenceModelCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceModelCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceModelCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceModelCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceModelCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceModelCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceModelCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceModelCharacteristic';

  /// [code]
  /// Description of a component of the method to generate the statistic.
  final CodeableConcept code;

  /// [value]
  /// Further specification of the quantified value of the component of the
  /// method to generate the statistic.
  final Quantity? value;

  /// [variable]
  /// A variable adjusted for in the adjusted analysis.
  final List<EvidenceModelCharacteristicVariable>? variable;

  /// [attributeEstimate]
  /// An attribute of the statistic used as a model characteristic.
  final List<EvidenceAttributeEstimate>? attributeEstimate;
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

    json['code'] = code.toJson();

    if (value != null) {
      json['value'] = value!.toJson();
    }

    if (variable != null && variable!.isNotEmpty) {
      json['variable'] = variable!.map((e) => e.toJson()).toList();
    }

    if (attributeEstimate != null && attributeEstimate!.isNotEmpty) {
      json['attributeEstimate'] =
          attributeEstimate!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  EvidenceModelCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceModelCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? value,
    List<EvidenceModelCharacteristicVariable>? variable,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceModelCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
      variable: variable ?? this.variable,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceModelCharacteristicVariable]
/// A variable adjusted for in the adjusted analysis.
class EvidenceModelCharacteristicVariable extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceModelCharacteristicVariable]

  EvidenceModelCharacteristicVariable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.variableDefinition,
    this.handling,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristicVariable.fromJson(
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
    return EvidenceModelCharacteristicVariable(
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
      variableDefinition: Reference.fromJson(
        json['variableDefinition'] as Map<String, dynamic>,
      ),
      handling: parseField<EvidenceVariableHandling>(
        json['handling'],
        json['_handling'],
        EvidenceVariableHandling.fromJson,
      ),
      valueCategory: parseList<CodeableConcept>(
        json['valueCategory'] as List<dynamic>?,
        json['_valueCategory'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      valueQuantity: parseList<Quantity>(
        json['valueQuantity'] as List<dynamic>?,
        json['_valueQuantity'] as List<dynamic>?,
        Quantity.fromJson,
      ),
      valueRange: parseList<Range>(
        json['valueRange'] as List<dynamic>?,
        json['_valueRange'] as List<dynamic>?,
        Range.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceModelCharacteristicVariable]
  /// from a [String] or [YamlMap] object
  factory EvidenceModelCharacteristicVariable.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceModelCharacteristicVariable.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceModelCharacteristicVariable.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceModelCharacteristicVariable '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceModelCharacteristicVariable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceModelCharacteristicVariable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceModelCharacteristicVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceModelCharacteristicVariable';

  /// [variableDefinition]
  /// Description of the variable.
  final Reference variableDefinition;

  /// [handling]
  /// How the variable is classified for use in adjusted analysis.
  final EvidenceVariableHandling? handling;

  /// [valueCategory]
  /// Description for grouping of ordinal or polychotomous variables.
  final List<CodeableConcept>? valueCategory;

  /// [valueQuantity]
  /// Discrete value for grouping of ordinal or polychotomous variables.
  final List<Quantity>? valueQuantity;

  /// [valueRange]
  /// Range of values for grouping of ordinal or polychotomous variables.
  final List<Range>? valueRange;
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

    json['variableDefinition'] = variableDefinition.toJson();

    addField('handling', handling);
    if (valueCategory != null && valueCategory!.isNotEmpty) {
      json['valueCategory'] = valueCategory!.map((e) => e.toJson()).toList();
    }

    if (valueQuantity != null && valueQuantity!.isNotEmpty) {
      json['valueQuantity'] = valueQuantity!.map((e) => e.toJson()).toList();
    }

    if (valueRange != null && valueRange!.isNotEmpty) {
      json['valueRange'] = valueRange!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  EvidenceModelCharacteristicVariable clone() => throw UnimplementedError();
  @override
  EvidenceModelCharacteristicVariable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? variableDefinition,
    EvidenceVariableHandling? handling,
    List<CodeableConcept>? valueCategory,
    List<Quantity>? valueQuantity,
    List<Range>? valueRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceModelCharacteristicVariable(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      variableDefinition: variableDefinition ?? this.variableDefinition,
      handling: handling ?? this.handling,
      valueCategory: valueCategory ?? this.valueCategory,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceCertainty]
/// Assessment of certainty, confidence in the estimates, or quality of the
/// evidence.
class EvidenceCertainty extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceCertainty]

  EvidenceCertainty({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.subcomponent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceCertainty.fromJson(
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
    return EvidenceCertainty(
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
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      rating: json['rating'] != null
          ? CodeableConcept.fromJson(
              json['rating'] as Map<String, dynamic>,
            )
          : null,
      rater: parseField<FhirString>(
        json['rater'],
        json['_rater'],
        FhirString.fromJson,
      ),
      subcomponent: parseList<EvidenceCertainty>(
        json['subcomponent'] as List<dynamic>?,
        json['_subcomponent'] as List<dynamic>?,
        EvidenceCertainty.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceCertainty]
  /// from a [String] or [YamlMap] object
  factory EvidenceCertainty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceCertainty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceCertainty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceCertainty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceCertainty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceCertainty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceCertainty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceCertainty';

  /// [description]
  /// Textual description of certainty.
  final FhirString? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [type]
  /// Aspect of certainty being rated.
  final CodeableConcept? type;

  /// [rating]
  /// Assessment or judgement of the aspect.
  final CodeableConcept? rating;

  /// [rater]
  /// Individual or group who did the rating.
  final FhirString? rater;

  /// [subcomponent]
  /// A domain or subdomain of certainty.
  final List<EvidenceCertainty>? subcomponent;
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

    addField('description', description);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (rating != null) {
      json['rating'] = rating!.toJson();
    }

    addField('rater', rater);
    if (subcomponent != null && subcomponent!.isNotEmpty) {
      json['subcomponent'] = subcomponent!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  EvidenceCertainty clone() => throw UnimplementedError();
  @override
  EvidenceCertainty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    List<Annotation>? note,
    CodeableConcept? type,
    CodeableConcept? rating,
    FhirString? rater,
    List<EvidenceCertainty>? subcomponent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceCertainty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      note: note ?? this.note,
      type: type ?? this.type,
      rating: rating ?? this.rating,
      rater: rater ?? this.rater,
      subcomponent: subcomponent ?? this.subcomponent,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
