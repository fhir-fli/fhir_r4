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
  }) : super(
          resourceType: R4ResourceType.Citation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Citation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Citation(
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
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
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
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
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      summary: (json['summary'] as List<dynamic>?)
          ?.map<CitationSummary>(
            (v) => CitationSummary.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CitationClassification>(
            (v) => CitationClassification.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      currentState: (json['currentState'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      statusDate: (json['statusDate'] as List<dynamic>?)
          ?.map<CitationStatusDate>(
            (v) => CitationStatusDate.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<CitationRelatesTo>(
            (v) => CitationRelatesTo.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      citedArtifact: JsonParser.parseObject<CitationCitedArtifact>(
        json,
        'citedArtifact',
        CitationCitedArtifact.fromJson,
      ),
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
    addField('url', url);
    addField('identifier', identifier);
    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('effectivePeriod', effectivePeriod);
    addField('author', author);
    addField('editor', editor);
    addField('reviewer', reviewer);
    addField('endorser', endorser);
    addField('summary', summary);
    addField('classification', classification);
    addField('note', note);
    addField('currentState', currentState);
    addField('statusDate', statusDate);
    addField('relatesTo', relatesTo);
    addField('citedArtifact', citedArtifact);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationSummary.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationSummary(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      style: JsonParser.parseObject<CodeableConcept>(
        json,
        'style',
        CodeableConcept.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
      )!,
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
    addField('style', style);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationClassification.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationClassification(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    addField('type', type);
    addField('classifier', classifier);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationStatusDate(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      activity: JsonParser.parseObject<CodeableConcept>(
        json,
        'activity',
        CodeableConcept.fromJson,
      )!,
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      )!,
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
    addField('activity', activity);
    addField('actual', actual);
    addField('period', period);
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
    required this.targetX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationRelatesTo(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relationshipType: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationshipType',
        CodeableConcept.fromJson,
      )!,
      targetClassifier: (json['targetClassifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      targetX: JsonParser.parsePolymorphic<TargetXCitationRelatesTo>(json, {
        'targetUri': FhirUri.fromJson,
        'targetIdentifier': Identifier.fromJson,
        'targetReference': Reference.fromJson,
        'targetAttachment': Attachment.fromJson,
      })!,
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

  /// [targetX]
  /// The article or artifact that the Citation Resource is related to.
  final TargetXCitationRelatesTo targetX;
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
    addField('relationshipType', relationshipType);
    addField('targetClassifier', targetClassifier);
    final targetXFhirType = targetX.fhirType;
    addField('target${targetXFhirType.capitalize()}', targetX);

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
    TargetXCitationRelatesTo? targetX,
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
      targetX: targetX ?? this.targetX,
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationCitedArtifact.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationCitedArtifact(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relatedIdentifier: (json['relatedIdentifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      dateAccessed: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateAccessed',
        FhirDateTime.fromJson,
      ),
      version: JsonParser.parseObject<CitationVersion>(
        json,
        'version',
        CitationVersion.fromJson,
      ),
      currentState: (json['currentState'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      statusDate: (json['statusDate'] as List<dynamic>?)
          ?.map<CitationStatusDate>(
            (v) => CitationStatusDate.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      title: (json['title'] as List<dynamic>?)
          ?.map<CitationTitle>(
            (v) => CitationTitle.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      abstract_: (json['abstract'] as List<dynamic>?)
          ?.map<CitationAbstract>(
            (v) => CitationAbstract.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      part_: JsonParser.parseObject<CitationPart>(
        json,
        'part',
        CitationPart.fromJson,
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<CitationRelatesTo>(
            (v) => CitationRelatesTo.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      publicationForm: (json['publicationForm'] as List<dynamic>?)
          ?.map<CitationPublicationForm>(
            (v) => CitationPublicationForm.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      webLocation: (json['webLocation'] as List<dynamic>?)
          ?.map<CitationWebLocation>(
            (v) => CitationWebLocation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CitationClassification>(
            (v) => CitationClassification.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      contributorship: JsonParser.parseObject<CitationContributorship>(
        json,
        'contributorship',
        CitationContributorship.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    addField('identifier', identifier);
    addField('relatedIdentifier', relatedIdentifier);
    addField('dateAccessed', dateAccessed);
    addField('version', version);
    addField('currentState', currentState);
    addField('statusDate', statusDate);
    addField('title', title);
    addField('abstract', abstract_);
    addField('part', part_);
    addField('relatesTo', relatesTo);
    addField('publicationForm', publicationForm);
    addField('webLocation', webLocation);
    addField('classification', classification);
    addField('contributorship', contributorship);
    addField('note', note);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationVersion(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
      baseCitation: JsonParser.parseObject<Reference>(
        json,
        'baseCitation',
        Reference.fromJson,
      ),
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
    addField('value', value);
    addField('baseCitation', baseCitation);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationStatusDate1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      activity: JsonParser.parseObject<CodeableConcept>(
        json,
        'activity',
        CodeableConcept.fromJson,
      )!,
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      )!,
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
    addField('activity', activity);
    addField('actual', actual);
    addField('period', period);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationTitle.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationTitle(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
      )!,
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
    addField('type', type);
    addField('language', language);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationAbstract.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationAbstract(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
      )!,
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
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
    addField('type', type);
    addField('language', language);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPart.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPart(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      ),
      baseCitation: JsonParser.parseObject<Reference>(
        json,
        'baseCitation',
        Reference.fromJson,
      ),
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
    addField('type', type);
    addField('value', value);
    addField('baseCitation', baseCitation);
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
    required this.targetX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationRelatesTo1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      relationshipType: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationshipType',
        CodeableConcept.fromJson,
      )!,
      targetClassifier: (json['targetClassifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      targetX: JsonParser.parsePolymorphic<TargetXCitationRelatesTo1>(json, {
        'targetUri': FhirUri.fromJson,
        'targetIdentifier': Identifier.fromJson,
        'targetReference': Reference.fromJson,
        'targetAttachment': Attachment.fromJson,
      })!,
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

  /// [targetX]
  /// The article or artifact that the cited artifact is related to.
  final TargetXCitationRelatesTo1 targetX;
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
    addField('relationshipType', relationshipType);
    addField('targetClassifier', targetClassifier);
    final targetXFhirType = targetX.fhirType;
    addField('target${targetXFhirType.capitalize()}', targetX);

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
    TargetXCitationRelatesTo1? targetX,
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
      targetX: targetX ?? this.targetX,
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPublicationForm.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPublicationForm(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      publishedIn: JsonParser.parseObject<CitationPublishedIn>(
        json,
        'publishedIn',
        CitationPublishedIn.fromJson,
      ),
      periodicRelease: JsonParser.parseObject<CitationPeriodicRelease>(
        json,
        'periodicRelease',
        CitationPeriodicRelease.fromJson,
      ),
      articleDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'articleDate',
        FhirDateTime.fromJson,
      ),
      lastRevisionDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastRevisionDate',
        FhirDateTime.fromJson,
      ),
      language: (json['language'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      accessionNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'accessionNumber',
        FhirString.fromJson,
      ),
      pageString: JsonParser.parsePrimitive<FhirString>(
        json,
        'pageString',
        FhirString.fromJson,
      ),
      firstPage: JsonParser.parsePrimitive<FhirString>(
        json,
        'firstPage',
        FhirString.fromJson,
      ),
      lastPage: JsonParser.parsePrimitive<FhirString>(
        json,
        'lastPage',
        FhirString.fromJson,
      ),
      pageCount: JsonParser.parsePrimitive<FhirString>(
        json,
        'pageCount',
        FhirString.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
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
    addField('publishedIn', publishedIn);
    addField('periodicRelease', periodicRelease);
    addField('articleDate', articleDate);
    addField('lastRevisionDate', lastRevisionDate);
    addField('language', language);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPublishedIn.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPublishedIn(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      publisher: JsonParser.parseObject<Reference>(
        json,
        'publisher',
        Reference.fromJson,
      ),
      publisherLocation: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisherLocation',
        FhirString.fromJson,
      ),
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
    addField('type', type);
    addField('identifier', identifier);
    addField('title', title);
    addField('publisher', publisher);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPeriodicRelease.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationPeriodicRelease(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      citedMedium: JsonParser.parseObject<CodeableConcept>(
        json,
        'citedMedium',
        CodeableConcept.fromJson,
      ),
      volume: JsonParser.parsePrimitive<FhirString>(
        json,
        'volume',
        FhirString.fromJson,
      ),
      issue: JsonParser.parsePrimitive<FhirString>(
        json,
        'issue',
        FhirString.fromJson,
      ),
      dateOfPublication: JsonParser.parseObject<CitationDateOfPublication>(
        json,
        'dateOfPublication',
        CitationDateOfPublication.fromJson,
      ),
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
    addField('citedMedium', citedMedium);
    addField('volume', volume);
    addField('issue', issue);
    addField('dateOfPublication', dateOfPublication);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationDateOfPublication.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationDateOfPublication(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
      ),
      year: JsonParser.parsePrimitive<FhirString>(
        json,
        'year',
        FhirString.fromJson,
      ),
      month: JsonParser.parsePrimitive<FhirString>(
        json,
        'month',
        FhirString.fromJson,
      ),
      day: JsonParser.parsePrimitive<FhirString>(
        json,
        'day',
        FhirString.fromJson,
      ),
      season: JsonParser.parsePrimitive<FhirString>(
        json,
        'season',
        FhirString.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationWebLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationWebLocation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
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
    addField('type', type);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationClassification1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationClassification1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      whoClassified: JsonParser.parseObject<CitationWhoClassified>(
        json,
        'whoClassified',
        CitationWhoClassified.fromJson,
      ),
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
    addField('type', type);
    addField('classifier', classifier);
    addField('whoClassified', whoClassified);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationWhoClassified.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationWhoClassified(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      person: JsonParser.parseObject<Reference>(
        json,
        'person',
        Reference.fromJson,
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      ),
      publisher: JsonParser.parseObject<Reference>(
        json,
        'publisher',
        Reference.fromJson,
      ),
      classifierCopyright: JsonParser.parsePrimitive<FhirString>(
        json,
        'classifierCopyright',
        FhirString.fromJson,
      ),
      freeToShare: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'freeToShare',
        FhirBoolean.fromJson,
      ),
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
    addField('person', person);
    addField('organization', organization);
    addField('publisher', publisher);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationContributorship.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationContributorship(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      complete: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'complete',
        FhirBoolean.fromJson,
      ),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<CitationEntry>(
            (v) => CitationEntry.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      summary: (json['summary'] as List<dynamic>?)
          ?.map<CitationSummary>(
            (v) => CitationSummary.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    addField('complete', complete);
    addField('entry', entry);
    addField('summary', summary);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationEntry(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      name: JsonParser.parseObject<HumanName>(
        json,
        'name',
        HumanName.fromJson,
      ),
      initials: JsonParser.parsePrimitive<FhirString>(
        json,
        'initials',
        FhirString.fromJson,
      ),
      collectiveName: JsonParser.parsePrimitive<FhirString>(
        json,
        'collectiveName',
        FhirString.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      affiliationInfo: (json['affiliationInfo'] as List<dynamic>?)
          ?.map<CitationAffiliationInfo>(
            (v) => CitationAffiliationInfo.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      address: (json['address'] as List<dynamic>?)
          ?.map<Address>(
            (v) => Address.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      contributionType: (json['contributionType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      contributionInstance: (json['contributionInstance'] as List<dynamic>?)
          ?.map<CitationContributionInstance>(
            (v) => CitationContributionInstance.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      correspondingContact: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'correspondingContact',
        FhirBoolean.fromJson,
      ),
      listOrder: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'listOrder',
        FhirPositiveInt.fromJson,
      ),
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
    addField('name', name);
    addField('initials', initials);
    addField('collectiveName', collectiveName);
    addField('identifier', identifier);
    addField('affiliationInfo', affiliationInfo);
    addField('address', address);
    addField('telecom', telecom);
    addField('contributionType', contributionType);
    addField('role', role);
    addField('contributionInstance', contributionInstance);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationAffiliationInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationAffiliationInfo(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      affiliation: JsonParser.parsePrimitive<FhirString>(
        json,
        'affiliation',
        FhirString.fromJson,
      ),
      role: JsonParser.parsePrimitive<FhirString>(
        json,
        'role',
        FhirString.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    addField('affiliation', affiliation);
    addField('role', role);
    addField('identifier', identifier);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationContributionInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationContributionInstance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      time: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'time',
        FhirDateTime.fromJson,
      ),
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
    addField('type', type);
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationSummary1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CitationSummary1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      style: JsonParser.parseObject<CodeableConcept>(
        json,
        'style',
        CodeableConcept.fromJson,
      ),
      source: JsonParser.parseObject<CodeableConcept>(
        json,
        'source',
        CodeableConcept.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'value',
        FhirMarkdown.fromJson,
      )!,
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
    addField('type', type);
    addField('style', style);
    addField('source', source);
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
    );
  }
}
