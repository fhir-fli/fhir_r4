import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Citation]
/// The Citation Resource enables reference to any knowledge artifact for
/// purposes of identification and attribution. The Citation Resource
/// supports existing reference structures and developing publication
/// practices such as versioning, expressing complex contributorship roles,
/// and referencing computable resources.
class Citation extends DomainResource {
  /// Primary constructor for
  /// [Citation]

  const Citation({
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
    required this.status,
    this.experimental,
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
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.summary,
    this.classification,
    this.note,
    this.currentState,
    this.statusDate,
    this.relatesTo,
    this.citedArtifact,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.Citation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Citation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Citation(
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
      summary: json['summary'] != null
          ? (json['summary'] as List<dynamic>)
              .map<CitationSummary>(
                (v) => CitationSummary.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      classification: json['classification'] != null
          ? (json['classification'] as List<dynamic>)
              .map<CitationClassification>(
                (v) => CitationClassification.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      currentState: json['currentState'] != null
          ? (json['currentState'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      statusDate: json['statusDate'] != null
          ? (json['statusDate'] as List<dynamic>)
              .map<CitationStatusDate>(
                (v) => CitationStatusDate.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<CitationRelatesTo>(
                (v) => CitationRelatesTo.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      citedArtifact: json['citedArtifact'] != null
          ? CitationCitedArtifact.fromJson(
              json['citedArtifact'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Citation]
  /// from a [String] or [YamlMap] object
  factory Citation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Citation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Citation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Citation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Citation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Citation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Citation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Citation';

  /// [url]
  /// An absolute URI that is used to identify this citation when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this summary is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the summary is
  /// stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this citation when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the citation
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the citation author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the citation. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the citation.
  final FhirString? title;

  /// [status]
  /// The status of this summary. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this citation is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be
  /// used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the citation was published. The
  /// date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the citation changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the citation.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the citation from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate citation instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the citation is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this citation is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// Use and/or publishing restrictions for the Citation, not for the cited
  /// artifact.
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
  /// The period during which the citation content was or is planned to be in
  /// active use.
  final Period? effectivePeriod;

  /// [author]
  /// Who authored the Citation.
  final List<ContactDetail>? author;

  /// [editor]
  /// Who edited the Citation.
  final List<ContactDetail>? editor;

  /// [reviewer]
  /// Who reviewed the Citation.
  final List<ContactDetail>? reviewer;

  /// [endorser]
  /// Who endorsed the Citation.
  final List<ContactDetail>? endorser;

  /// [summary]
  /// A human-readable display of the citation.
  final List<CitationSummary>? summary;

  /// [classification]
  /// The assignment to an organizing scheme.
  final List<CitationClassification>? classification;

  /// [note]
  /// Used for general notes and annotations not coded elsewhere.
  final List<Annotation>? note;

  /// [currentState]
  /// The status of the citation.
  final List<CodeableConcept>? currentState;

  /// [statusDate]
  /// An effective date or period for a status of the citation.
  final List<CitationStatusDate>? statusDate;

  /// [relatesTo]
  /// Artifact related to the Citation Resource.
  final List<CitationRelatesTo>? relatesTo;

  /// [citedArtifact]
  /// The article or artifact being described.
  final CitationCitedArtifact? citedArtifact;
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
    addField('status', status);
    addField('experimental', experimental);
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

    if (summary != null && summary!.isNotEmpty) {
      json['summary'] = summary!.map((e) => e.toJson()).toList();
    }

    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (currentState != null && currentState!.isNotEmpty) {
      json['currentState'] = currentState!.map((e) => e.toJson()).toList();
    }

    if (statusDate != null && statusDate!.isNotEmpty) {
      json['statusDate'] = statusDate!.map((e) => e.toJson()).toList();
    }

    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] = relatesTo!.map((e) => e.toJson()).toList();
    }

    if (citedArtifact != null) {
      json['citedArtifact'] = citedArtifact!.toJson();
    }

    return json;
  }

  @override
  Citation clone() => throw UnimplementedError();
  @override
  Citation copyWith({
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
    PublicationStatus? status,
    FhirBoolean? experimental,
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
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<CitationSummary>? summary,
    List<CitationClassification>? classification,
    List<Annotation>? note,
    List<CodeableConcept>? currentState,
    List<CitationStatusDate>? statusDate,
    List<CitationRelatesTo>? relatesTo,
    CitationCitedArtifact? citedArtifact,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Citation(
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
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
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
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      summary: summary ?? this.summary,
      classification: classification ?? this.classification,
      note: note ?? this.note,
      currentState: currentState ?? this.currentState,
      statusDate: statusDate ?? this.statusDate,
      relatesTo: relatesTo ?? this.relatesTo,
      citedArtifact: citedArtifact ?? this.citedArtifact,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationSummary]
/// A human-readable display of the citation.
class CitationSummary extends BackboneElement {
  /// Primary constructor for
  /// [CitationSummary]

  const CitationSummary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.style,
    required this.text,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationSummary.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationSummary(
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
      style: json['style'] != null
          ? CodeableConcept.fromJson(
              json['style'] as Map<String, dynamic>,
            )
          : null,
      text: FhirMarkdown.fromJson({
        'value': json['text'],
        '_value': json['_text'],
      }),
    );
  }

  /// Deserialize [CitationSummary]
  /// from a [String] or [YamlMap] object
  factory CitationSummary.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationSummary.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationSummary.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationSummary '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationSummary]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationSummary.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationSummary.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationSummary';

  /// [style]
  /// Format for display of the citation.
  final CodeableConcept? style;

  /// [text]
  /// The human-readable display of the citation.
  final FhirMarkdown text;
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

    if (style != null) {
      json['style'] = style!.toJson();
    }

    addField('text', text);
    return json;
  }

  @override
  CitationSummary clone() => throw UnimplementedError();
  @override
  CitationSummary copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? style,
    FhirMarkdown? text,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationSummary(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      style: style ?? this.style,
      text: text ?? this.text,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationClassification]
/// The assignment to an organizing scheme.
class CitationClassification extends BackboneElement {
  /// Primary constructor for
  /// [CitationClassification]

  const CitationClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationClassification.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationClassification(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      classifier: json['classifier'] != null
          ? (json['classifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CitationClassification]
  /// from a [String] or [YamlMap] object
  factory CitationClassification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationClassification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationClassification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationClassification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationClassification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationClassification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationClassification';

  /// [type]
  /// The kind of classifier (e.g. publication type, keyword).
  final CodeableConcept? type;

  /// [classifier]
  /// The specific classification value.
  final List<CodeableConcept>? classifier;
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (classifier != null && classifier!.isNotEmpty) {
      json['classifier'] = classifier!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CitationClassification clone() => throw UnimplementedError();
  @override
  CitationClassification copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationClassification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      classifier: classifier ?? this.classifier,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationStatusDate]
/// An effective date or period for a status of the citation.
class CitationStatusDate extends BackboneElement {
  /// Primary constructor for
  /// [CitationStatusDate]

  const CitationStatusDate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationStatusDate(
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
      activity: CodeableConcept.fromJson(
        json['activity'] as Map<String, dynamic>,
      ),
      actual: (json['actual'] != null || json['_actual'] != null)
          ? FhirBoolean.fromJson({
              'value': json['actual'],
              '_value': json['_actual'],
            })
          : null,
      period: Period.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [CitationStatusDate]
  /// from a [String] or [YamlMap] object
  factory CitationStatusDate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationStatusDate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationStatusDate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationStatusDate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationStatusDate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationStatusDate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationStatusDate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationStatusDate';

  /// [activity]
  /// Classification of the status.
  final CodeableConcept activity;

  /// [actual]
  /// Either occurred or expected.
  final FhirBoolean? actual;

  /// [period]
  /// When the status started and/or ended.
  final Period period;
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

    json['activity'] = activity.toJson();

    addField('actual', actual);
    json['period'] = period.toJson();

    return json;
  }

  @override
  CitationStatusDate clone() => throw UnimplementedError();
  @override
  CitationStatusDate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? activity,
    FhirBoolean? actual,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationStatusDate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      activity: activity ?? this.activity,
      actual: actual ?? this.actual,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationRelatesTo]
/// Artifact related to the Citation Resource.
class CitationRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [CitationRelatesTo]

  const CitationRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationRelatesTo(
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
      relationshipType: CodeableConcept.fromJson(
        json['relationshipType'] as Map<String, dynamic>,
      ),
      targetClassifier: json['targetClassifier'] != null
          ? (json['targetClassifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      targetUri: (json['targetUri'] != null || json['_targetUri'] != null)
          ? FhirUri.fromJson({
              'value': json['targetUri'],
              '_value': json['_targetUri'],
            })
          : null,
      targetIdentifier: json['targetIdentifier'] != null
          ? Identifier.fromJson(
              json['targetIdentifier'] as Map<String, dynamic>,
            )
          : null,
      targetReference: json['targetReference'] != null
          ? Reference.fromJson(
              json['targetReference'] as Map<String, dynamic>,
            )
          : null,
      targetAttachment: json['targetAttachment'] != null
          ? Attachment.fromJson(
              json['targetAttachment'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CitationRelatesTo]
  /// from a [String] or [YamlMap] object
  factory CitationRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationRelatesTo';

  /// [relationshipType]
  /// How the Citation resource relates to the target artifact.
  final CodeableConcept relationshipType;

  /// [targetClassifier]
  /// The clasification of the related artifact.
  final List<CodeableConcept>? targetClassifier;

  /// [targetUri]
  /// The article or artifact that the Citation Resource is related to.
  final FhirUri? targetUri;

  /// [targetIdentifier]
  /// The article or artifact that the Citation Resource is related to.
  final Identifier? targetIdentifier;

  /// [targetReference]
  /// The article or artifact that the Citation Resource is related to.
  final Reference? targetReference;

  /// [targetAttachment]
  /// The article or artifact that the Citation Resource is related to.
  final Attachment? targetAttachment;
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

    json['relationshipType'] = relationshipType.toJson();

    if (targetClassifier != null && targetClassifier!.isNotEmpty) {
      json['targetClassifier'] =
          targetClassifier!.map((e) => e.toJson()).toList();
    }

    addField('targetUri', targetUri);
    if (targetIdentifier != null) {
      json['targetIdentifier'] = targetIdentifier!.toJson();
    }

    if (targetReference != null) {
      json['targetReference'] = targetReference!.toJson();
    }

    if (targetAttachment != null) {
      json['targetAttachment'] = targetAttachment!.toJson();
    }

    return json;
  }

  @override
  CitationRelatesTo clone() => throw UnimplementedError();
  @override
  CitationRelatesTo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    List<CodeableConcept>? targetClassifier,
    FhirUri? targetUri,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Attachment? targetAttachment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationshipType: relationshipType ?? this.relationshipType,
      targetClassifier: targetClassifier ?? this.targetClassifier,
      targetUri: targetUri ?? this.targetUri,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
      targetAttachment: targetAttachment ?? this.targetAttachment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationCitedArtifact]
/// The article or artifact being described.
class CitationCitedArtifact extends BackboneElement {
  /// Primary constructor for
  /// [CitationCitedArtifact]

  const CitationCitedArtifact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.relatedIdentifier,
    this.dateAccessed,
    this.version,
    this.currentState,
    this.statusDate,
    this.title,
    this.abstract_,
    this.part_,
    this.relatesTo,
    this.publicationForm,
    this.webLocation,
    this.classification,
    this.contributorship,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationCitedArtifact.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationCitedArtifact(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedIdentifier: json['relatedIdentifier'] != null
          ? (json['relatedIdentifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dateAccessed:
          (json['dateAccessed'] != null || json['_dateAccessed'] != null)
              ? FhirDateTime.fromJson({
                  'value': json['dateAccessed'],
                  '_value': json['_dateAccessed'],
                })
              : null,
      version: json['version'] != null
          ? CitationVersion.fromJson(
              json['version'] as Map<String, dynamic>,
            )
          : null,
      currentState: json['currentState'] != null
          ? (json['currentState'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      statusDate: json['statusDate'] != null
          ? (json['statusDate'] as List<dynamic>)
              .map<CitationStatusDate>(
                (v) => CitationStatusDate.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      title: json['title'] != null
          ? (json['title'] as List<dynamic>)
              .map<CitationTitle>(
                (v) => CitationTitle.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      abstract_: json['abstract'] != null
          ? (json['abstract'] as List<dynamic>)
              .map<CitationAbstract>(
                (v) => CitationAbstract.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      part_: json['part'] != null
          ? CitationPart.fromJson(
              json['part'] as Map<String, dynamic>,
            )
          : null,
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<CitationRelatesTo>(
                (v) => CitationRelatesTo.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      publicationForm: json['publicationForm'] != null
          ? (json['publicationForm'] as List<dynamic>)
              .map<CitationPublicationForm>(
                (v) => CitationPublicationForm.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      webLocation: json['webLocation'] != null
          ? (json['webLocation'] as List<dynamic>)
              .map<CitationWebLocation>(
                (v) => CitationWebLocation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      classification: json['classification'] != null
          ? (json['classification'] as List<dynamic>)
              .map<CitationClassification>(
                (v) => CitationClassification.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contributorship: json['contributorship'] != null
          ? CitationContributorship.fromJson(
              json['contributorship'] as Map<String, dynamic>,
            )
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CitationCitedArtifact]
  /// from a [String] or [YamlMap] object
  factory CitationCitedArtifact.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationCitedArtifact.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationCitedArtifact.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationCitedArtifact '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationCitedArtifact]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationCitedArtifact.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationCitedArtifact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationCitedArtifact';

  /// [identifier]
  /// A formal identifier that is used to identify this citation when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [relatedIdentifier]
  /// A formal identifier that is used to identify things closely related to
  /// this citation.
  final List<Identifier>? relatedIdentifier;

  /// [dateAccessed]
  /// When the cited artifact was accessed.
  final FhirDateTime? dateAccessed;

  /// [version]
  /// The defined version of the cited artifact.
  final CitationVersion? version;

  /// [currentState]
  /// The status of the cited artifact.
  final List<CodeableConcept>? currentState;

  /// [statusDate]
  /// An effective date or period for a status of the cited artifact.
  final List<CitationStatusDate>? statusDate;

  /// [title]
  /// The title details of the article or artifact.
  final List<CitationTitle>? title;

  /// [abstract_]
  /// Summary of the article or artifact.
  final List<CitationAbstract>? abstract_;

  /// [part_]
  /// The component of the article or artifact.
  final CitationPart? part_;

  /// [relatesTo]
  /// The artifact related to the cited artifact.
  final List<CitationRelatesTo>? relatesTo;

  /// [publicationForm]
  /// If multiple, used to represent alternative forms of the article that
  /// are not separate citations.
  final List<CitationPublicationForm>? publicationForm;

  /// [webLocation]
  /// Used for any URL for the article or artifact cited.
  final List<CitationWebLocation>? webLocation;

  /// [classification]
  /// The assignment to an organizing scheme.
  final List<CitationClassification>? classification;

  /// [contributorship]
  /// This element is used to list authors and other contributors, their
  /// contact information, specific contributions, and summary statements.
  final CitationContributorship? contributorship;

  /// [note]
  /// Any additional information or content for the article or artifact.
  final List<Annotation>? note;
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (relatedIdentifier != null && relatedIdentifier!.isNotEmpty) {
      json['relatedIdentifier'] =
          relatedIdentifier!.map((e) => e.toJson()).toList();
    }

    addField('dateAccessed', dateAccessed);
    if (version != null) {
      json['version'] = version!.toJson();
    }

    if (currentState != null && currentState!.isNotEmpty) {
      json['currentState'] = currentState!.map((e) => e.toJson()).toList();
    }

    if (statusDate != null && statusDate!.isNotEmpty) {
      json['statusDate'] = statusDate!.map((e) => e.toJson()).toList();
    }

    if (title != null && title!.isNotEmpty) {
      json['title'] = title!.map((e) => e.toJson()).toList();
    }

    if (abstract_ != null && abstract_!.isNotEmpty) {
      json['abstract'] = abstract_!.map((e) => e.toJson()).toList();
    }

    if (part_ != null) {
      json['part'] = part_!.toJson();
    }

    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] = relatesTo!.map((e) => e.toJson()).toList();
    }

    if (publicationForm != null && publicationForm!.isNotEmpty) {
      json['publicationForm'] =
          publicationForm!.map((e) => e.toJson()).toList();
    }

    if (webLocation != null && webLocation!.isNotEmpty) {
      json['webLocation'] = webLocation!.map((e) => e.toJson()).toList();
    }

    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!.map((e) => e.toJson()).toList();
    }

    if (contributorship != null) {
      json['contributorship'] = contributorship!.toJson();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CitationCitedArtifact clone() => throw UnimplementedError();
  @override
  CitationCitedArtifact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    FhirDateTime? dateAccessed,
    CitationVersion? version,
    List<CodeableConcept>? currentState,
    List<CitationStatusDate>? statusDate,
    List<CitationTitle>? title,
    List<CitationAbstract>? abstract_,
    CitationPart? part_,
    List<CitationRelatesTo>? relatesTo,
    List<CitationPublicationForm>? publicationForm,
    List<CitationWebLocation>? webLocation,
    List<CitationClassification>? classification,
    CitationContributorship? contributorship,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationCitedArtifact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      relatedIdentifier: relatedIdentifier ?? this.relatedIdentifier,
      dateAccessed: dateAccessed ?? this.dateAccessed,
      version: version ?? this.version,
      currentState: currentState ?? this.currentState,
      statusDate: statusDate ?? this.statusDate,
      title: title ?? this.title,
      abstract_: abstract_ ?? this.abstract_,
      part_: part_ ?? this.part_,
      relatesTo: relatesTo ?? this.relatesTo,
      publicationForm: publicationForm ?? this.publicationForm,
      webLocation: webLocation ?? this.webLocation,
      classification: classification ?? this.classification,
      contributorship: contributorship ?? this.contributorship,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationVersion]
/// The defined version of the cited artifact.
class CitationVersion extends BackboneElement {
  /// Primary constructor for
  /// [CitationVersion]

  const CitationVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.value,
    this.baseCitation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationVersion(
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
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
      baseCitation: json['baseCitation'] != null
          ? Reference.fromJson(
              json['baseCitation'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CitationVersion]
  /// from a [String] or [YamlMap] object
  factory CitationVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationVersion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationVersion';

  /// [value]
  /// The version number or other version identifier.
  final FhirString value;

  /// [baseCitation]
  /// Citation for the main version of the cited artifact.
  final Reference? baseCitation;
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

    addField('value', value);
    if (baseCitation != null) {
      json['baseCitation'] = baseCitation!.toJson();
    }

    return json;
  }

  @override
  CitationVersion clone() => throw UnimplementedError();
  @override
  CitationVersion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? value,
    Reference? baseCitation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      baseCitation: baseCitation ?? this.baseCitation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationStatusDate1]
/// An effective date or period for a status of the cited artifact.
class CitationStatusDate1 extends BackboneElement {
  /// Primary constructor for
  /// [CitationStatusDate1]

  const CitationStatusDate1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationStatusDate1(
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
      activity: CodeableConcept.fromJson(
        json['activity'] as Map<String, dynamic>,
      ),
      actual: (json['actual'] != null || json['_actual'] != null)
          ? FhirBoolean.fromJson({
              'value': json['actual'],
              '_value': json['_actual'],
            })
          : null,
      period: Period.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [CitationStatusDate1]
  /// from a [String] or [YamlMap] object
  factory CitationStatusDate1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationStatusDate1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationStatusDate1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationStatusDate1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationStatusDate1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationStatusDate1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationStatusDate1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationStatusDate1';

  /// [activity]
  /// Classification of the status.
  final CodeableConcept activity;

  /// [actual]
  /// Either occurred or expected.
  final FhirBoolean? actual;

  /// [period]
  /// When the status started and/or ended.
  final Period period;
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

    json['activity'] = activity.toJson();

    addField('actual', actual);
    json['period'] = period.toJson();

    return json;
  }

  @override
  CitationStatusDate1 clone() => throw UnimplementedError();
  @override
  CitationStatusDate1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? activity,
    FhirBoolean? actual,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationStatusDate1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      activity: activity ?? this.activity,
      actual: actual ?? this.actual,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationTitle]
/// The title details of the article or artifact.
class CitationTitle extends BackboneElement {
  /// Primary constructor for
  /// [CitationTitle]

  const CitationTitle({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationTitle.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationTitle(
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
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      language: json['language'] != null
          ? CodeableConcept.fromJson(
              json['language'] as Map<String, dynamic>,
            )
          : null,
      text: FhirMarkdown.fromJson({
        'value': json['text'],
        '_value': json['_text'],
      }),
    );
  }

  /// Deserialize [CitationTitle]
  /// from a [String] or [YamlMap] object
  factory CitationTitle.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationTitle.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationTitle.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationTitle '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationTitle]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationTitle.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationTitle.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationTitle';

  /// [type]
  /// Used to express the reason or specific aspect for the title.
  final List<CodeableConcept>? type;

  /// [language]
  /// Used to express the specific language.
  final CodeableConcept? language;

  /// [text]
  /// The title of the article or artifact.
  final FhirMarkdown text;
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

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    addField('text', text);
    return json;
  }

  @override
  CitationTitle clone() => throw UnimplementedError();
  @override
  CitationTitle copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationTitle(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      language: language ?? this.language,
      text: text ?? this.text,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationAbstract]
/// Summary of the article or artifact.
class CitationAbstract extends BackboneElement {
  /// Primary constructor for
  /// [CitationAbstract]

  const CitationAbstract({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
    this.copyright,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationAbstract.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationAbstract(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CodeableConcept.fromJson(
              json['language'] as Map<String, dynamic>,
            )
          : null,
      text: FhirMarkdown.fromJson({
        'value': json['text'],
        '_value': json['_text'],
      }),
      copyright: (json['copyright'] != null || json['_copyright'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
    );
  }

  /// Deserialize [CitationAbstract]
  /// from a [String] or [YamlMap] object
  factory CitationAbstract.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationAbstract.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationAbstract.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationAbstract '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationAbstract]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationAbstract.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationAbstract.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationAbstract';

  /// [type]
  /// Used to express the reason or specific aspect for the abstract.
  final CodeableConcept? type;

  /// [language]
  /// Used to express the specific language.
  final CodeableConcept? language;

  /// [text]
  /// Abstract content.
  final FhirMarkdown text;

  /// [copyright]
  /// Copyright notice for the abstract.
  final FhirMarkdown? copyright;
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    addField('text', text);
    addField('copyright', copyright);
    return json;
  }

  @override
  CitationAbstract clone() => throw UnimplementedError();
  @override
  CitationAbstract copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    FhirMarkdown? copyright,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationAbstract(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      language: language ?? this.language,
      text: text ?? this.text,
      copyright: copyright ?? this.copyright,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationPart]
/// The component of the article or artifact.
class CitationPart extends BackboneElement {
  /// Primary constructor for
  /// [CitationPart]

  const CitationPart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.value,
    this.baseCitation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPart.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPart(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      value: (json['value'] != null || json['_value'] != null)
          ? FhirString.fromJson({
              'value': json['value'],
              '_value': json['_value'],
            })
          : null,
      baseCitation: json['baseCitation'] != null
          ? Reference.fromJson(
              json['baseCitation'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CitationPart]
  /// from a [String] or [YamlMap] object
  factory CitationPart.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationPart.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationPart.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationPart '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationPart]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationPart.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationPart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationPart';

  /// [type]
  /// The kind of component.
  final CodeableConcept? type;

  /// [value]
  /// The specification of the component.
  final FhirString? value;

  /// [baseCitation]
  /// The citation for the full article or artifact.
  final Reference? baseCitation;
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    addField('value', value);
    if (baseCitation != null) {
      json['baseCitation'] = baseCitation!.toJson();
    }

    return json;
  }

  @override
  CitationPart clone() => throw UnimplementedError();
  @override
  CitationPart copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? value,
    Reference? baseCitation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationPart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
      baseCitation: baseCitation ?? this.baseCitation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationRelatesTo1]
/// The artifact related to the cited artifact.
class CitationRelatesTo1 extends BackboneElement {
  /// Primary constructor for
  /// [CitationRelatesTo1]

  const CitationRelatesTo1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationRelatesTo1(
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
      relationshipType: CodeableConcept.fromJson(
        json['relationshipType'] as Map<String, dynamic>,
      ),
      targetClassifier: json['targetClassifier'] != null
          ? (json['targetClassifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      targetUri: (json['targetUri'] != null || json['_targetUri'] != null)
          ? FhirUri.fromJson({
              'value': json['targetUri'],
              '_value': json['_targetUri'],
            })
          : null,
      targetIdentifier: json['targetIdentifier'] != null
          ? Identifier.fromJson(
              json['targetIdentifier'] as Map<String, dynamic>,
            )
          : null,
      targetReference: json['targetReference'] != null
          ? Reference.fromJson(
              json['targetReference'] as Map<String, dynamic>,
            )
          : null,
      targetAttachment: json['targetAttachment'] != null
          ? Attachment.fromJson(
              json['targetAttachment'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CitationRelatesTo1]
  /// from a [String] or [YamlMap] object
  factory CitationRelatesTo1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationRelatesTo1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationRelatesTo1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationRelatesTo1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationRelatesTo1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationRelatesTo1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationRelatesTo1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationRelatesTo1';

  /// [relationshipType]
  /// How the cited artifact relates to the target artifact.
  final CodeableConcept relationshipType;

  /// [targetClassifier]
  /// The clasification of the related artifact.
  final List<CodeableConcept>? targetClassifier;

  /// [targetUri]
  /// The article or artifact that the cited artifact is related to.
  final FhirUri? targetUri;

  /// [targetIdentifier]
  /// The article or artifact that the cited artifact is related to.
  final Identifier? targetIdentifier;

  /// [targetReference]
  /// The article or artifact that the cited artifact is related to.
  final Reference? targetReference;

  /// [targetAttachment]
  /// The article or artifact that the cited artifact is related to.
  final Attachment? targetAttachment;
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

    json['relationshipType'] = relationshipType.toJson();

    if (targetClassifier != null && targetClassifier!.isNotEmpty) {
      json['targetClassifier'] =
          targetClassifier!.map((e) => e.toJson()).toList();
    }

    addField('targetUri', targetUri);
    if (targetIdentifier != null) {
      json['targetIdentifier'] = targetIdentifier!.toJson();
    }

    if (targetReference != null) {
      json['targetReference'] = targetReference!.toJson();
    }

    if (targetAttachment != null) {
      json['targetAttachment'] = targetAttachment!.toJson();
    }

    return json;
  }

  @override
  CitationRelatesTo1 clone() => throw UnimplementedError();
  @override
  CitationRelatesTo1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    List<CodeableConcept>? targetClassifier,
    FhirUri? targetUri,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Attachment? targetAttachment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationRelatesTo1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationshipType: relationshipType ?? this.relationshipType,
      targetClassifier: targetClassifier ?? this.targetClassifier,
      targetUri: targetUri ?? this.targetUri,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
      targetAttachment: targetAttachment ?? this.targetAttachment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationPublicationForm]
/// If multiple, used to represent alternative forms of the article that
/// are not separate citations.
class CitationPublicationForm extends BackboneElement {
  /// Primary constructor for
  /// [CitationPublicationForm]

  const CitationPublicationForm({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.publishedIn,
    this.periodicRelease,
    this.articleDate,
    this.lastRevisionDate,
    this.language,
    this.accessionNumber,
    this.pageString,
    this.firstPage,
    this.lastPage,
    this.pageCount,
    this.copyright,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPublicationForm.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPublicationForm(
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
      publishedIn: json['publishedIn'] != null
          ? CitationPublishedIn.fromJson(
              json['publishedIn'] as Map<String, dynamic>,
            )
          : null,
      periodicRelease: json['periodicRelease'] != null
          ? CitationPeriodicRelease.fromJson(
              json['periodicRelease'] as Map<String, dynamic>,
            )
          : null,
      articleDate: (json['articleDate'] != null || json['_articleDate'] != null)
          ? FhirDateTime.fromJson({
              'value': json['articleDate'],
              '_value': json['_articleDate'],
            })
          : null,
      lastRevisionDate: (json['lastRevisionDate'] != null ||
              json['_lastRevisionDate'] != null)
          ? FhirDateTime.fromJson({
              'value': json['lastRevisionDate'],
              '_value': json['_lastRevisionDate'],
            })
          : null,
      language: json['language'] != null
          ? (json['language'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      accessionNumber:
          (json['accessionNumber'] != null || json['_accessionNumber'] != null)
              ? FhirString.fromJson({
                  'value': json['accessionNumber'],
                  '_value': json['_accessionNumber'],
                })
              : null,
      pageString: (json['pageString'] != null || json['_pageString'] != null)
          ? FhirString.fromJson({
              'value': json['pageString'],
              '_value': json['_pageString'],
            })
          : null,
      firstPage: (json['firstPage'] != null || json['_firstPage'] != null)
          ? FhirString.fromJson({
              'value': json['firstPage'],
              '_value': json['_firstPage'],
            })
          : null,
      lastPage: (json['lastPage'] != null || json['_lastPage'] != null)
          ? FhirString.fromJson({
              'value': json['lastPage'],
              '_value': json['_lastPage'],
            })
          : null,
      pageCount: (json['pageCount'] != null || json['_pageCount'] != null)
          ? FhirString.fromJson({
              'value': json['pageCount'],
              '_value': json['_pageCount'],
            })
          : null,
      copyright: (json['copyright'] != null || json['_copyright'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
    );
  }

  /// Deserialize [CitationPublicationForm]
  /// from a [String] or [YamlMap] object
  factory CitationPublicationForm.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationPublicationForm.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationPublicationForm.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationPublicationForm '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationPublicationForm]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationPublicationForm.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationPublicationForm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationPublicationForm';

  /// [publishedIn]
  /// The collection the cited article or artifact is published in.
  final CitationPublishedIn? publishedIn;

  /// [periodicRelease]
  /// The specific issue in which the cited article resides.
  final CitationPeriodicRelease? periodicRelease;

  /// [articleDate]
  /// The date the article was added to the database, or the date the article
  /// was released (which may differ from the journal issue publication
  /// date).
  final FhirDateTime? articleDate;

  /// [lastRevisionDate]
  /// The date the article was last revised or updated in the database.
  final FhirDateTime? lastRevisionDate;

  /// [language]
  /// Language in which this form of the article is published.
  final List<CodeableConcept>? language;

  /// [accessionNumber]
  /// Entry number or identifier for inclusion in a database.
  final FhirString? accessionNumber;

  /// [pageString]
  /// Used for full display of pagination.
  final FhirString? pageString;

  /// [firstPage]
  /// Used for isolated representation of first page.
  final FhirString? firstPage;

  /// [lastPage]
  /// Used for isolated representation of last page.
  final FhirString? lastPage;

  /// [pageCount]
  /// Actual or approximate number of pages or screens.
  final FhirString? pageCount;

  /// [copyright]
  /// Copyright notice for the full article or artifact.
  final FhirMarkdown? copyright;
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

    if (publishedIn != null) {
      json['publishedIn'] = publishedIn!.toJson();
    }

    if (periodicRelease != null) {
      json['periodicRelease'] = periodicRelease!.toJson();
    }

    addField('articleDate', articleDate);
    addField('lastRevisionDate', lastRevisionDate);
    if (language != null && language!.isNotEmpty) {
      json['language'] = language!.map((e) => e.toJson()).toList();
    }

    addField('accessionNumber', accessionNumber);
    addField('pageString', pageString);
    addField('firstPage', firstPage);
    addField('lastPage', lastPage);
    addField('pageCount', pageCount);
    addField('copyright', copyright);
    return json;
  }

  @override
  CitationPublicationForm clone() => throw UnimplementedError();
  @override
  CitationPublicationForm copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CitationPublishedIn? publishedIn,
    CitationPeriodicRelease? periodicRelease,
    FhirDateTime? articleDate,
    FhirDateTime? lastRevisionDate,
    List<CodeableConcept>? language,
    FhirString? accessionNumber,
    FhirString? pageString,
    FhirString? firstPage,
    FhirString? lastPage,
    FhirString? pageCount,
    FhirMarkdown? copyright,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationPublicationForm(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      publishedIn: publishedIn ?? this.publishedIn,
      periodicRelease: periodicRelease ?? this.periodicRelease,
      articleDate: articleDate ?? this.articleDate,
      lastRevisionDate: lastRevisionDate ?? this.lastRevisionDate,
      language: language ?? this.language,
      accessionNumber: accessionNumber ?? this.accessionNumber,
      pageString: pageString ?? this.pageString,
      firstPage: firstPage ?? this.firstPage,
      lastPage: lastPage ?? this.lastPage,
      pageCount: pageCount ?? this.pageCount,
      copyright: copyright ?? this.copyright,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationPublishedIn]
/// The collection the cited article or artifact is published in.
class CitationPublishedIn extends BackboneElement {
  /// Primary constructor for
  /// [CitationPublishedIn]

  const CitationPublishedIn({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.identifier,
    this.title,
    this.publisher,
    this.publisherLocation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPublishedIn.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPublishedIn(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
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
      title: (json['title'] != null || json['_title'] != null)
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      publisher: json['publisher'] != null
          ? Reference.fromJson(
              json['publisher'] as Map<String, dynamic>,
            )
          : null,
      publisherLocation: (json['publisherLocation'] != null ||
              json['_publisherLocation'] != null)
          ? FhirString.fromJson({
              'value': json['publisherLocation'],
              '_value': json['_publisherLocation'],
            })
          : null,
    );
  }

  /// Deserialize [CitationPublishedIn]
  /// from a [String] or [YamlMap] object
  factory CitationPublishedIn.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationPublishedIn.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationPublishedIn.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationPublishedIn '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationPublishedIn]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationPublishedIn.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationPublishedIn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationPublishedIn';

  /// [type]
  /// Kind of container (e.g. Periodical, database, or book).
  final CodeableConcept? type;

  /// [identifier]
  /// Journal identifiers include ISSN, ISO Abbreviation and NLMuniqueID;
  /// Book identifiers include ISBN.
  final List<Identifier>? identifier;

  /// [title]
  /// Name of the database or title of the book or journal.
  final FhirString? title;

  /// [publisher]
  /// Name of the publisher.
  final Reference? publisher;

  /// [publisherLocation]
  /// Geographic location of the publisher.
  final FhirString? publisherLocation;
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('title', title);
    if (publisher != null) {
      json['publisher'] = publisher!.toJson();
    }

    addField('publisherLocation', publisherLocation);
    return json;
  }

  @override
  CitationPublishedIn clone() => throw UnimplementedError();
  @override
  CitationPublishedIn copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Identifier>? identifier,
    FhirString? title,
    Reference? publisher,
    FhirString? publisherLocation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationPublishedIn(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
      title: title ?? this.title,
      publisher: publisher ?? this.publisher,
      publisherLocation: publisherLocation ?? this.publisherLocation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationPeriodicRelease]
/// The specific issue in which the cited article resides.
class CitationPeriodicRelease extends BackboneElement {
  /// Primary constructor for
  /// [CitationPeriodicRelease]

  const CitationPeriodicRelease({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.citedMedium,
    this.volume,
    this.issue,
    this.dateOfPublication,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPeriodicRelease.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPeriodicRelease(
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
      citedMedium: json['citedMedium'] != null
          ? CodeableConcept.fromJson(
              json['citedMedium'] as Map<String, dynamic>,
            )
          : null,
      volume: (json['volume'] != null || json['_volume'] != null)
          ? FhirString.fromJson({
              'value': json['volume'],
              '_value': json['_volume'],
            })
          : null,
      issue: (json['issue'] != null || json['_issue'] != null)
          ? FhirString.fromJson({
              'value': json['issue'],
              '_value': json['_issue'],
            })
          : null,
      dateOfPublication: json['dateOfPublication'] != null
          ? CitationDateOfPublication.fromJson(
              json['dateOfPublication'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CitationPeriodicRelease]
  /// from a [String] or [YamlMap] object
  factory CitationPeriodicRelease.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationPeriodicRelease.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationPeriodicRelease.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationPeriodicRelease '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationPeriodicRelease]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationPeriodicRelease.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationPeriodicRelease.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationPeriodicRelease';

  /// [citedMedium]
  /// Describes the form of the medium cited. Common codes are "Internet" or
  /// "Print".
  final CodeableConcept? citedMedium;

  /// [volume]
  /// Volume number of journal in which the article is published.
  final FhirString? volume;

  /// [issue]
  /// Issue, part or supplement of journal in which the article is published.
  final FhirString? issue;

  /// [dateOfPublication]
  /// Defining the date on which the issue of the journal was published.
  final CitationDateOfPublication? dateOfPublication;
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

    if (citedMedium != null) {
      json['citedMedium'] = citedMedium!.toJson();
    }

    addField('volume', volume);
    addField('issue', issue);
    if (dateOfPublication != null) {
      json['dateOfPublication'] = dateOfPublication!.toJson();
    }

    return json;
  }

  @override
  CitationPeriodicRelease clone() => throw UnimplementedError();
  @override
  CitationPeriodicRelease copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? citedMedium,
    FhirString? volume,
    FhirString? issue,
    CitationDateOfPublication? dateOfPublication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationPeriodicRelease(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      citedMedium: citedMedium ?? this.citedMedium,
      volume: volume ?? this.volume,
      issue: issue ?? this.issue,
      dateOfPublication: dateOfPublication ?? this.dateOfPublication,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationDateOfPublication]
/// Defining the date on which the issue of the journal was published.
class CitationDateOfPublication extends BackboneElement {
  /// Primary constructor for
  /// [CitationDateOfPublication]

  const CitationDateOfPublication({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.year,
    this.month,
    this.day,
    this.season,
    this.text,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationDateOfPublication.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationDateOfPublication(
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
      date: (json['date'] != null || json['_date'] != null)
          ? FhirDate.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      year: (json['year'] != null || json['_year'] != null)
          ? FhirString.fromJson({
              'value': json['year'],
              '_value': json['_year'],
            })
          : null,
      month: (json['month'] != null || json['_month'] != null)
          ? FhirString.fromJson({
              'value': json['month'],
              '_value': json['_month'],
            })
          : null,
      day: (json['day'] != null || json['_day'] != null)
          ? FhirString.fromJson({
              'value': json['day'],
              '_value': json['_day'],
            })
          : null,
      season: (json['season'] != null || json['_season'] != null)
          ? FhirString.fromJson({
              'value': json['season'],
              '_value': json['_season'],
            })
          : null,
      text: (json['text'] != null || json['_text'] != null)
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
    );
  }

  /// Deserialize [CitationDateOfPublication]
  /// from a [String] or [YamlMap] object
  factory CitationDateOfPublication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationDateOfPublication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationDateOfPublication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationDateOfPublication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationDateOfPublication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationDateOfPublication.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationDateOfPublication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationDateOfPublication';

  /// [date]
  /// Date on which the issue of the journal was published.
  final FhirDate? date;

  /// [year]
  /// Year on which the issue of the journal was published.
  final FhirString? year;

  /// [month]
  /// Month on which the issue of the journal was published.
  final FhirString? month;

  /// [day]
  /// Day on which the issue of the journal was published.
  final FhirString? day;

  /// [season]
  /// Spring, Summer, Fall/Autumn, Winter.
  final FhirString? season;

  /// [text]
  /// Text representation of the date of which the issue of the journal was
  /// published.
  final FhirString? text;
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

    addField('date', date);
    addField('year', year);
    addField('month', month);
    addField('day', day);
    addField('season', season);
    addField('text', text);
    return json;
  }

  @override
  CitationDateOfPublication clone() => throw UnimplementedError();
  @override
  CitationDateOfPublication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    FhirString? year,
    FhirString? month,
    FhirString? day,
    FhirString? season,
    FhirString? text,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationDateOfPublication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      year: year ?? this.year,
      month: month ?? this.month,
      day: day ?? this.day,
      season: season ?? this.season,
      text: text ?? this.text,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationWebLocation]
/// Used for any URL for the article or artifact cited.
class CitationWebLocation extends BackboneElement {
  /// Primary constructor for
  /// [CitationWebLocation]

  const CitationWebLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.url,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationWebLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationWebLocation(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      url: (json['url'] != null || json['_url'] != null)
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
    );
  }

  /// Deserialize [CitationWebLocation]
  /// from a [String] or [YamlMap] object
  factory CitationWebLocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationWebLocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationWebLocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationWebLocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationWebLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationWebLocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationWebLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationWebLocation';

  /// [type]
  /// Code the reason for different URLs, e.g. abstract and full-text.
  final CodeableConcept? type;

  /// [url]
  /// The specific URL.
  final FhirUri? url;
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    addField('url', url);
    return json;
  }

  @override
  CitationWebLocation clone() => throw UnimplementedError();
  @override
  CitationWebLocation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUri? url,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationWebLocation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      url: url ?? this.url,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationClassification1]
/// The assignment to an organizing scheme.
class CitationClassification1 extends BackboneElement {
  /// Primary constructor for
  /// [CitationClassification1]

  const CitationClassification1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
    this.whoClassified,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationClassification1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationClassification1(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      classifier: json['classifier'] != null
          ? (json['classifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      whoClassified: json['whoClassified'] != null
          ? CitationWhoClassified.fromJson(
              json['whoClassified'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CitationClassification1]
  /// from a [String] or [YamlMap] object
  factory CitationClassification1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationClassification1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationClassification1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationClassification1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationClassification1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationClassification1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationClassification1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationClassification1';

  /// [type]
  /// The kind of classifier (e.g. publication type, keyword).
  final CodeableConcept? type;

  /// [classifier]
  /// The specific classification value.
  final List<CodeableConcept>? classifier;

  /// [whoClassified]
  /// Provenance and copyright of classification.
  final CitationWhoClassified? whoClassified;
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (classifier != null && classifier!.isNotEmpty) {
      json['classifier'] = classifier!.map((e) => e.toJson()).toList();
    }

    if (whoClassified != null) {
      json['whoClassified'] = whoClassified!.toJson();
    }

    return json;
  }

  @override
  CitationClassification1 clone() => throw UnimplementedError();
  @override
  CitationClassification1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    CitationWhoClassified? whoClassified,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationClassification1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      classifier: classifier ?? this.classifier,
      whoClassified: whoClassified ?? this.whoClassified,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationWhoClassified]
/// Provenance and copyright of classification.
class CitationWhoClassified extends BackboneElement {
  /// Primary constructor for
  /// [CitationWhoClassified]

  const CitationWhoClassified({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.person,
    this.organization,
    this.publisher,
    this.classifierCopyright,
    this.freeToShare,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationWhoClassified.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationWhoClassified(
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
      person: json['person'] != null
          ? Reference.fromJson(
              json['person'] as Map<String, dynamic>,
            )
          : null,
      organization: json['organization'] != null
          ? Reference.fromJson(
              json['organization'] as Map<String, dynamic>,
            )
          : null,
      publisher: json['publisher'] != null
          ? Reference.fromJson(
              json['publisher'] as Map<String, dynamic>,
            )
          : null,
      classifierCopyright: (json['classifierCopyright'] != null ||
              json['_classifierCopyright'] != null)
          ? FhirString.fromJson({
              'value': json['classifierCopyright'],
              '_value': json['_classifierCopyright'],
            })
          : null,
      freeToShare: (json['freeToShare'] != null || json['_freeToShare'] != null)
          ? FhirBoolean.fromJson({
              'value': json['freeToShare'],
              '_value': json['_freeToShare'],
            })
          : null,
    );
  }

  /// Deserialize [CitationWhoClassified]
  /// from a [String] or [YamlMap] object
  factory CitationWhoClassified.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationWhoClassified.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationWhoClassified.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationWhoClassified '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationWhoClassified]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationWhoClassified.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationWhoClassified.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationWhoClassified';

  /// [person]
  /// Person who created the classification.
  final Reference? person;

  /// [organization]
  /// Organization who created the classification.
  final Reference? organization;

  /// [publisher]
  /// The publisher of the classification, not the publisher of the article
  /// or artifact being cited.
  final Reference? publisher;

  /// [classifierCopyright]
  /// Rights management statement for the classification.
  final FhirString? classifierCopyright;

  /// [freeToShare]
  /// Acceptable to re-use the classification.
  final FhirBoolean? freeToShare;
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

    if (person != null) {
      json['person'] = person!.toJson();
    }

    if (organization != null) {
      json['organization'] = organization!.toJson();
    }

    if (publisher != null) {
      json['publisher'] = publisher!.toJson();
    }

    addField('classifierCopyright', classifierCopyright);
    addField('freeToShare', freeToShare);
    return json;
  }

  @override
  CitationWhoClassified clone() => throw UnimplementedError();
  @override
  CitationWhoClassified copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? person,
    Reference? organization,
    Reference? publisher,
    FhirString? classifierCopyright,
    FhirBoolean? freeToShare,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationWhoClassified(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      person: person ?? this.person,
      organization: organization ?? this.organization,
      publisher: publisher ?? this.publisher,
      classifierCopyright: classifierCopyright ?? this.classifierCopyright,
      freeToShare: freeToShare ?? this.freeToShare,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationContributorship]
/// This element is used to list authors and other contributors, their
/// contact information, specific contributions, and summary statements.
class CitationContributorship extends BackboneElement {
  /// Primary constructor for
  /// [CitationContributorship]

  const CitationContributorship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.complete,
    this.entry,
    this.summary,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationContributorship.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationContributorship(
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
      complete: (json['complete'] != null || json['_complete'] != null)
          ? FhirBoolean.fromJson({
              'value': json['complete'],
              '_value': json['_complete'],
            })
          : null,
      entry: json['entry'] != null
          ? (json['entry'] as List<dynamic>)
              .map<CitationEntry>(
                (v) => CitationEntry.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      summary: json['summary'] != null
          ? (json['summary'] as List<dynamic>)
              .map<CitationSummary>(
                (v) => CitationSummary.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CitationContributorship]
  /// from a [String] or [YamlMap] object
  factory CitationContributorship.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationContributorship.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationContributorship.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationContributorship '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationContributorship]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationContributorship.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationContributorship.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationContributorship';

  /// [complete]
  /// Indicates if the list includes all authors and/or contributors.
  final FhirBoolean? complete;

  /// [entry]
  /// An individual entity named in the author list or contributor list.
  final List<CitationEntry>? entry;

  /// [summary]
  /// Used to record a display of the author/contributor list without
  /// separate coding for each list member.
  final List<CitationSummary>? summary;
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

    addField('complete', complete);
    if (entry != null && entry!.isNotEmpty) {
      json['entry'] = entry!.map((e) => e.toJson()).toList();
    }

    if (summary != null && summary!.isNotEmpty) {
      json['summary'] = summary!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CitationContributorship clone() => throw UnimplementedError();
  @override
  CitationContributorship copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? complete,
    List<CitationEntry>? entry,
    List<CitationSummary>? summary,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationContributorship(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      complete: complete ?? this.complete,
      entry: entry ?? this.entry,
      summary: summary ?? this.summary,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationEntry]
/// An individual entity named in the author list or contributor list.
class CitationEntry extends BackboneElement {
  /// Primary constructor for
  /// [CitationEntry]

  const CitationEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.initials,
    this.collectiveName,
    this.identifier,
    this.affiliationInfo,
    this.address,
    this.telecom,
    this.contributionType,
    this.role,
    this.contributionInstance,
    this.correspondingContact,
    this.listOrder,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationEntry(
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
      name: json['name'] != null
          ? HumanName.fromJson(
              json['name'] as Map<String, dynamic>,
            )
          : null,
      initials: (json['initials'] != null || json['_initials'] != null)
          ? FhirString.fromJson({
              'value': json['initials'],
              '_value': json['_initials'],
            })
          : null,
      collectiveName:
          (json['collectiveName'] != null || json['_collectiveName'] != null)
              ? FhirString.fromJson({
                  'value': json['collectiveName'],
                  '_value': json['_collectiveName'],
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
      affiliationInfo: json['affiliationInfo'] != null
          ? (json['affiliationInfo'] as List<dynamic>)
              .map<CitationAffiliationInfo>(
                (v) => CitationAffiliationInfo.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      address: json['address'] != null
          ? (json['address'] as List<dynamic>)
              .map<Address>(
                (v) => Address.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>(
                (v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contributionType: json['contributionType'] != null
          ? (json['contributionType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
      contributionInstance: json['contributionInstance'] != null
          ? (json['contributionInstance'] as List<dynamic>)
              .map<CitationContributionInstance>(
                (v) => CitationContributionInstance.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      correspondingContact: (json['correspondingContact'] != null ||
              json['_correspondingContact'] != null)
          ? FhirBoolean.fromJson({
              'value': json['correspondingContact'],
              '_value': json['_correspondingContact'],
            })
          : null,
      listOrder: (json['listOrder'] != null || json['_listOrder'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['listOrder'],
              '_value': json['_listOrder'],
            })
          : null,
    );
  }

  /// Deserialize [CitationEntry]
  /// from a [String] or [YamlMap] object
  factory CitationEntry.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationEntry.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationEntry.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationEntry '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationEntry]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationEntry.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationEntry';

  /// [name]
  /// A name associated with the individual.
  final HumanName? name;

  /// [initials]
  /// Initials for forename.
  final FhirString? initials;

  /// [collectiveName]
  /// Used for collective or corporate name as an author.
  final FhirString? collectiveName;

  /// [identifier]
  /// Unique person identifier.
  final List<Identifier>? identifier;

  /// [affiliationInfo]
  /// Organization affiliated with the entity.
  final List<CitationAffiliationInfo>? affiliationInfo;

  /// [address]
  /// Physical mailing address for the author or contributor.
  final List<Address>? address;

  /// [telecom]
  /// Email or telephone contact methods for the author or contributor.
  final List<ContactPoint>? telecom;

  /// [contributionType]
  /// This element identifies the specific nature of an individual’s
  /// contribution with respect to the cited work.
  final List<CodeableConcept>? contributionType;

  /// [role]
  /// The role of the contributor (e.g. author, editor, reviewer).
  final CodeableConcept? role;

  /// [contributionInstance]
  /// Contributions with accounting for time or number.
  final List<CitationContributionInstance>? contributionInstance;

  /// [correspondingContact]
  /// Indication of which contributor is the corresponding contributor for
  /// the role.
  final FhirBoolean? correspondingContact;

  /// [listOrder]
  /// Used to code order of authors.
  final FhirPositiveInt? listOrder;
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

    if (name != null) {
      json['name'] = name!.toJson();
    }

    addField('initials', initials);
    addField('collectiveName', collectiveName);
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (affiliationInfo != null && affiliationInfo!.isNotEmpty) {
      json['affiliationInfo'] =
          affiliationInfo!.map((e) => e.toJson()).toList();
    }

    if (address != null && address!.isNotEmpty) {
      json['address'] = address!.map((e) => e.toJson()).toList();
    }

    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((e) => e.toJson()).toList();
    }

    if (contributionType != null && contributionType!.isNotEmpty) {
      json['contributionType'] =
          contributionType!.map((e) => e.toJson()).toList();
    }

    if (role != null) {
      json['role'] = role!.toJson();
    }

    if (contributionInstance != null && contributionInstance!.isNotEmpty) {
      json['contributionInstance'] =
          contributionInstance!.map((e) => e.toJson()).toList();
    }

    addField('correspondingContact', correspondingContact);
    addField('listOrder', listOrder);
    return json;
  }

  @override
  CitationEntry clone() => throw UnimplementedError();
  @override
  CitationEntry copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    HumanName? name,
    FhirString? initials,
    FhirString? collectiveName,
    List<Identifier>? identifier,
    List<CitationAffiliationInfo>? affiliationInfo,
    List<Address>? address,
    List<ContactPoint>? telecom,
    List<CodeableConcept>? contributionType,
    CodeableConcept? role,
    List<CitationContributionInstance>? contributionInstance,
    FhirBoolean? correspondingContact,
    FhirPositiveInt? listOrder,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationEntry(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      initials: initials ?? this.initials,
      collectiveName: collectiveName ?? this.collectiveName,
      identifier: identifier ?? this.identifier,
      affiliationInfo: affiliationInfo ?? this.affiliationInfo,
      address: address ?? this.address,
      telecom: telecom ?? this.telecom,
      contributionType: contributionType ?? this.contributionType,
      role: role ?? this.role,
      contributionInstance: contributionInstance ?? this.contributionInstance,
      correspondingContact: correspondingContact ?? this.correspondingContact,
      listOrder: listOrder ?? this.listOrder,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationAffiliationInfo]
/// Organization affiliated with the entity.
class CitationAffiliationInfo extends BackboneElement {
  /// Primary constructor for
  /// [CitationAffiliationInfo]

  const CitationAffiliationInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.affiliation,
    this.role,
    this.identifier,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationAffiliationInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationAffiliationInfo(
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
      affiliation: (json['affiliation'] != null || json['_affiliation'] != null)
          ? FhirString.fromJson({
              'value': json['affiliation'],
              '_value': json['_affiliation'],
            })
          : null,
      role: (json['role'] != null || json['_role'] != null)
          ? FhirString.fromJson({
              'value': json['role'],
              '_value': json['_role'],
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
    );
  }

  /// Deserialize [CitationAffiliationInfo]
  /// from a [String] or [YamlMap] object
  factory CitationAffiliationInfo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationAffiliationInfo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationAffiliationInfo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationAffiliationInfo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationAffiliationInfo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationAffiliationInfo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationAffiliationInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationAffiliationInfo';

  /// [affiliation]
  /// Display for the organization.
  final FhirString? affiliation;

  /// [role]
  /// Role within the organization, such as professional title.
  final FhirString? role;

  /// [identifier]
  /// Identifier for the organization.
  final List<Identifier>? identifier;
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

    addField('affiliation', affiliation);
    addField('role', role);
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CitationAffiliationInfo clone() => throw UnimplementedError();
  @override
  CitationAffiliationInfo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? affiliation,
    FhirString? role,
    List<Identifier>? identifier,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationAffiliationInfo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      affiliation: affiliation ?? this.affiliation,
      role: role ?? this.role,
      identifier: identifier ?? this.identifier,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationContributionInstance]
/// Contributions with accounting for time or number.
class CitationContributionInstance extends BackboneElement {
  /// Primary constructor for
  /// [CitationContributionInstance]

  const CitationContributionInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.time,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationContributionInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationContributionInstance(
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
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      time: (json['time'] != null || json['_time'] != null)
          ? FhirDateTime.fromJson({
              'value': json['time'],
              '_value': json['_time'],
            })
          : null,
    );
  }

  /// Deserialize [CitationContributionInstance]
  /// from a [String] or [YamlMap] object
  factory CitationContributionInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationContributionInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationContributionInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationContributionInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationContributionInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationContributionInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationContributionInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationContributionInstance';

  /// [type]
  /// The specific contribution.
  final CodeableConcept type;

  /// [time]
  /// The time that the contribution was made.
  final FhirDateTime? time;
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

    json['type'] = type.toJson();

    addField('time', time);
    return json;
  }

  @override
  CitationContributionInstance clone() => throw UnimplementedError();
  @override
  CitationContributionInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirDateTime? time,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationContributionInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      time: time ?? this.time,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CitationSummary1]
/// Used to record a display of the author/contributor list without
/// separate coding for each list member.
class CitationSummary1 extends BackboneElement {
  /// Primary constructor for
  /// [CitationSummary1]

  const CitationSummary1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.style,
    this.source,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationSummary1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationSummary1(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      style: json['style'] != null
          ? CodeableConcept.fromJson(
              json['style'] as Map<String, dynamic>,
            )
          : null,
      source: json['source'] != null
          ? CodeableConcept.fromJson(
              json['source'] as Map<String, dynamic>,
            )
          : null,
      value: FhirMarkdown.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [CitationSummary1]
  /// from a [String] or [YamlMap] object
  factory CitationSummary1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CitationSummary1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CitationSummary1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CitationSummary1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CitationSummary1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CitationSummary1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationSummary1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CitationSummary1';

  /// [type]
  /// Used most commonly to express an author list or a contributorship
  /// statement.
  final CodeableConcept? type;

  /// [style]
  /// The format for the display string.
  final CodeableConcept? style;

  /// [source]
  /// Used to code the producer or rule for creating the display string.
  final CodeableConcept? source;

  /// [value]
  /// The display string for the author list, contributor list, or
  /// contributorship statement.
  final FhirMarkdown value;
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (style != null) {
      json['style'] = style!.toJson();
    }

    if (source != null) {
      json['source'] = source!.toJson();
    }

    addField('value', value);
    return json;
  }

  @override
  CitationSummary1 clone() => throw UnimplementedError();
  @override
  CitationSummary1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? style,
    CodeableConcept? source,
    FhirMarkdown? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CitationSummary1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      style: style ?? this.style,
      source: source ?? this.source,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
