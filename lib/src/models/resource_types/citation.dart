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
          objectPath: 'Citation',
          resourceType: R4ResourceType.Citation,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Citation.empty() => Citation(
        status: PublicationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Citation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation';
    return Citation(
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
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
        '$objectPath.lastReviewDate',
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
        '$objectPath.effectivePeriod',
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.editor',
              },
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reviewer',
              },
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endorser',
              },
            ),
          )
          .toList(),
      summary: (json['summary'] as List<dynamic>?)
          ?.map<CitationSummary>(
            (v) => CitationSummary.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.summary',
              },
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CitationClassification>(
            (v) => CitationClassification.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      currentState: (json['currentState'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.currentState',
              },
            ),
          )
          .toList(),
      statusDate: (json['statusDate'] as List<dynamic>?)
          ?.map<CitationStatusDate>(
            (v) => CitationStatusDate.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusDate',
              },
            ),
          )
          .toList(),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<CitationRelatesTo>(
            (v) => CitationRelatesTo.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatesTo',
              },
            ),
          )
          .toList(),
      citedArtifact: JsonParser.parseObject<CitationCitedArtifact>(
        json,
        'citedArtifact',
        CitationCitedArtifact.fromJson,
        '$objectPath.citedArtifact',
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
    if (json is Map<String, dynamic>) {
      return Citation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'status',
      'experimental',
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
      'author',
      'editor',
      'reviewer',
      'endorser',
      'summary',
      'classification',
      'note',
      'currentState',
      'statusDate',
      'relatesTo',
      'citedArtifact',
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
      case 'status':
        fields.add(status);
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
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
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'editor':
        if (editor != null) {
          fields.addAll(editor!);
        }
      case 'reviewer':
        if (reviewer != null) {
          fields.addAll(reviewer!);
        }
      case 'endorser':
        if (endorser != null) {
          fields.addAll(endorser!);
        }
      case 'summary':
        if (summary != null) {
          fields.addAll(summary!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'currentState':
        if (currentState != null) {
          fields.addAll(currentState!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.addAll(statusDate!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'citedArtifact':
        if (citedArtifact != null) {
          fields.add(citedArtifact!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            return copyWith(contact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            return copyWith(useContext: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(jurisdiction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'approvalDate':
        {
          if (child is FhirDate) {
            return copyWith(approvalDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lastReviewDate':
        {
          if (child is FhirDate) {
            return copyWith(lastReviewDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'effectivePeriod':
        {
          if (child is Period) {
            return copyWith(effectivePeriod: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'author':
        {
          if (child is List<ContactDetail>) {
            return copyWith(author: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'editor':
        {
          if (child is List<ContactDetail>) {
            return copyWith(editor: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reviewer':
        {
          if (child is List<ContactDetail>) {
            return copyWith(reviewer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'endorser':
        {
          if (child is List<ContactDetail>) {
            return copyWith(endorser: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'summary':
        {
          if (child is List<CitationSummary>) {
            return copyWith(summary: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'classification':
        {
          if (child is List<CitationClassification>) {
            return copyWith(classification: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'currentState':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(currentState: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'statusDate':
        {
          if (child is List<CitationStatusDate>) {
            return copyWith(statusDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatesTo':
        {
          if (child is List<CitationRelatesTo>) {
            return copyWith(relatesTo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'citedArtifact':
        {
          if (child is CitationCitedArtifact) {
            return copyWith(citedArtifact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'url':
        return ['FhirUri'];
      case 'identifier':
        return ['Identifier'];
      case 'version':
        return ['FhirString'];
      case 'name':
        return ['FhirString'];
      case 'title':
        return ['FhirString'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'date':
        return ['FhirDateTime'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'description':
        return ['FhirMarkdown'];
      case 'useContext':
        return ['UsageContext'];
      case 'jurisdiction':
        return ['CodeableConcept'];
      case 'purpose':
        return ['FhirMarkdown'];
      case 'copyright':
        return ['FhirMarkdown'];
      case 'approvalDate':
        return ['FhirDate'];
      case 'lastReviewDate':
        return ['FhirDate'];
      case 'effectivePeriod':
        return ['Period'];
      case 'author':
        return ['ContactDetail'];
      case 'editor':
        return ['ContactDetail'];
      case 'reviewer':
        return ['ContactDetail'];
      case 'endorser':
        return ['ContactDetail'];
      case 'summary':
        return ['CitationSummary'];
      case 'classification':
        return ['CitationClassification'];
      case 'note':
        return ['Annotation'];
      case 'currentState':
        return ['CodeableConcept'];
      case 'statusDate':
        return ['CitationStatusDate'];
      case 'relatesTo':
        return ['CitationRelatesTo'];
      case 'citedArtifact':
        return ['CitationCitedArtifact'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Citation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Citation createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'url':
        {
          return copyWith(url: FhirUri.empty());
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'version':
        {
          return copyWith(version: FhirString.empty());
        }
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'title':
        {
          return copyWith(title: FhirString.empty());
        }
      case 'status':
        {
          return copyWith(status: PublicationStatus.empty());
        }
      case 'experimental':
        {
          return copyWith(experimental: FhirBoolean.empty());
        }
      case 'date':
        {
          return copyWith(date: FhirDateTime.empty());
        }
      case 'publisher':
        {
          return copyWith(publisher: FhirString.empty());
        }
      case 'contact':
        {
          return copyWith(contact: <ContactDetail>[]);
        }
      case 'description':
        {
          return copyWith(description: FhirMarkdown.empty());
        }
      case 'useContext':
        {
          return copyWith(useContext: <UsageContext>[]);
        }
      case 'jurisdiction':
        {
          return copyWith(jurisdiction: <CodeableConcept>[]);
        }
      case 'purpose':
        {
          return copyWith(purpose: FhirMarkdown.empty());
        }
      case 'copyright':
        {
          return copyWith(copyright: FhirMarkdown.empty());
        }
      case 'approvalDate':
        {
          return copyWith(approvalDate: FhirDate.empty());
        }
      case 'lastReviewDate':
        {
          return copyWith(lastReviewDate: FhirDate.empty());
        }
      case 'effectivePeriod':
        {
          return copyWith(effectivePeriod: Period.empty());
        }
      case 'author':
        {
          return copyWith(author: <ContactDetail>[]);
        }
      case 'editor':
        {
          return copyWith(editor: <ContactDetail>[]);
        }
      case 'reviewer':
        {
          return copyWith(reviewer: <ContactDetail>[]);
        }
      case 'endorser':
        {
          return copyWith(endorser: <ContactDetail>[]);
        }
      case 'summary':
        {
          return copyWith(summary: <CitationSummary>[]);
        }
      case 'classification':
        {
          return copyWith(classification: <CitationClassification>[]);
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      case 'currentState':
        {
          return copyWith(currentState: <CodeableConcept>[]);
        }
      case 'statusDate':
        {
          return copyWith(statusDate: <CitationStatusDate>[]);
        }
      case 'relatesTo':
        {
          return copyWith(relatesTo: <CitationRelatesTo>[]);
        }
      case 'citedArtifact':
        {
          return copyWith(citedArtifact: CitationCitedArtifact.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Citation(
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
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      experimental: experimental?.copyWith(
            objectPath: '$newObjectPath.experimental',
          ) ??
          this.experimental,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      jurisdiction: jurisdiction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.jurisdiction',
                ),
              )
              .toList() ??
          this.jurisdiction,
      purpose: purpose?.copyWith(
            objectPath: '$newObjectPath.purpose',
          ) ??
          this.purpose,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
      approvalDate: approvalDate?.copyWith(
            objectPath: '$newObjectPath.approvalDate',
          ) ??
          this.approvalDate,
      lastReviewDate: lastReviewDate?.copyWith(
            objectPath: '$newObjectPath.lastReviewDate',
          ) ??
          this.lastReviewDate,
      effectivePeriod: effectivePeriod?.copyWith(
            objectPath: '$newObjectPath.effectivePeriod',
          ) ??
          this.effectivePeriod,
      author: author
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.author',
                ),
              )
              .toList() ??
          this.author,
      editor: editor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.editor',
                ),
              )
              .toList() ??
          this.editor,
      reviewer: reviewer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reviewer',
                ),
              )
              .toList() ??
          this.reviewer,
      endorser: endorser
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endorser',
                ),
              )
              .toList() ??
          this.endorser,
      summary: summary
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.summary',
                ),
              )
              .toList() ??
          this.summary,
      classification: classification
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.classification',
                ),
              )
              .toList() ??
          this.classification,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      currentState: currentState
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.currentState',
                ),
              )
              .toList() ??
          this.currentState,
      statusDate: statusDate
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.statusDate',
                ),
              )
              .toList() ??
          this.statusDate,
      relatesTo: relatesTo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatesTo',
                ),
              )
              .toList() ??
          this.relatesTo,
      citedArtifact: citedArtifact?.copyWith(
            objectPath: '$newObjectPath.citedArtifact',
          ) ??
          this.citedArtifact,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Citation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(version, o.version)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(title, o.title)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(experimental, o.experimental)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(publisher, o.publisher)) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
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
    if (!equalsDeepWithNull(purpose, o.purpose)) {
      return false;
    }
    if (!equalsDeepWithNull(copyright, o.copyright)) {
      return false;
    }
    if (!equalsDeepWithNull(approvalDate, o.approvalDate)) {
      return false;
    }
    if (!equalsDeepWithNull(lastReviewDate, o.lastReviewDate)) {
      return false;
    }
    if (!equalsDeepWithNull(effectivePeriod, o.effectivePeriod)) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!listEquals<CitationSummary>(
      summary,
      o.summary,
    )) {
      return false;
    }
    if (!listEquals<CitationClassification>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      currentState,
      o.currentState,
    )) {
      return false;
    }
    if (!listEquals<CitationStatusDate>(
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!listEquals<CitationRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(citedArtifact, o.citedArtifact)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.summary',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationSummary.empty() => CitationSummary(
        text: FhirMarkdown.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationSummary.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.summary';
    return CitationSummary(
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
      style: JsonParser.parseObject<CodeableConcept>(
        json,
        'style',
        CodeableConcept.fromJson,
        '$objectPath.style',
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
        '$objectPath.text',
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
    if (json is Map<String, dynamic>) {
      return CitationSummary.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'style',
      'text',
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
      case 'style':
        if (style != null) {
          fields.add(style!);
        }
      case 'text':
        fields.add(text);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'style':
        {
          if (child is CodeableConcept) {
            return copyWith(style: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is FhirMarkdown) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'style':
        return ['CodeableConcept'];
      case 'text':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationSummary]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationSummary createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'style':
        {
          return copyWith(style: CodeableConcept.empty());
        }
      case 'text':
        {
          return copyWith(text: FhirMarkdown.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationSummary(
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
      style: style?.copyWith(
            objectPath: '$newObjectPath.style',
          ) ??
          this.style,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationSummary) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(style, o.style)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.classification',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationClassification.empty() => const CitationClassification();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationClassification.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.classification';
    return CitationClassification(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classifier',
              },
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
    if (json is Map<String, dynamic>) {
      return CitationClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'classifier',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'classifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(classifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'classifier':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationClassification]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationClassification createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'classifier':
        {
          return copyWith(classifier: <CodeableConcept>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationClassification(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      classifier: classifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.classifier',
                ),
              )
              .toList() ??
          this.classifier,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationClassification) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.statusDate',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationStatusDate.empty() => CitationStatusDate(
        activity: CodeableConcept.empty(),
        period: Period.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.statusDate';
    return CitationStatusDate(
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
      activity: JsonParser.parseObject<CodeableConcept>(
        json,
        'activity',
        CodeableConcept.fromJson,
        '$objectPath.activity',
      )!,
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
        '$objectPath.actual',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
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
    if (json is Map<String, dynamic>) {
      return CitationStatusDate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'activity',
      'actual',
      'period',
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
      case 'activity':
        fields.add(activity);
      case 'actual':
        if (actual != null) {
          fields.add(actual!);
        }
      case 'period':
        fields.add(period);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'activity':
        {
          if (child is CodeableConcept) {
            return copyWith(activity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'actual':
        {
          if (child is FhirBoolean) {
            return copyWith(actual: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'activity':
        return ['CodeableConcept'];
      case 'actual':
        return ['FhirBoolean'];
      case 'period':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationStatusDate]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationStatusDate createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'activity':
        {
          return copyWith(activity: CodeableConcept.empty());
        }
      case 'actual':
        {
          return copyWith(actual: FhirBoolean.empty());
        }
      case 'period':
        {
          return copyWith(period: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationStatusDate(
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
      activity: activity?.copyWith(
            objectPath: '$newObjectPath.activity',
          ) ??
          this.activity,
      actual: actual?.copyWith(
            objectPath: '$newObjectPath.actual',
          ) ??
          this.actual,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationStatusDate) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(activity, o.activity)) {
      return false;
    }
    if (!equalsDeepWithNull(actual, o.actual)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.relatesTo',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationRelatesTo.empty() => CitationRelatesTo(
        relationshipType: CodeableConcept.empty(),
        targetX: FhirUri.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.relatesTo';
    return CitationRelatesTo(
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
      relationshipType: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationshipType',
        CodeableConcept.fromJson,
        '$objectPath.relationshipType',
      )!,
      targetClassifier: (json['targetClassifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.targetClassifier',
              },
            ),
          )
          .toList(),
      targetX: JsonParser.parsePolymorphic<TargetXCitationRelatesTo>(
        json,
        {
          'targetUri': FhirUri.fromJson,
          'targetIdentifier': Identifier.fromJson,
          'targetReference': Reference.fromJson,
          'targetAttachment': Attachment.fromJson,
        },
        objectPath,
      )!,
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
    if (json is Map<String, dynamic>) {
      return CitationRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [targetUri] as a FhirUri
  FhirUri? get targetUri => targetX.isAs<FhirUri>();

  /// Getter for [targetIdentifier] as a Identifier
  Identifier? get targetIdentifier => targetX.isAs<Identifier>();

  /// Getter for [targetReference] as a Reference
  Reference? get targetReference => targetX.isAs<Reference>();

  /// Getter for [targetAttachment] as a Attachment
  Attachment? get targetAttachment => targetX.isAs<Attachment>();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relationshipType',
      'targetClassifier',
      'targetX',
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
      case 'relationshipType':
        fields.add(relationshipType);
      case 'targetClassifier':
        if (targetClassifier != null) {
          fields.addAll(targetClassifier!);
        }
      case 'target':
        fields.add(targetX);
      case 'targetX':
        fields.add(targetX);
      case 'targetUri':
        if (targetX is FhirUri) {
          fields.add(targetX);
        }
      case 'targetIdentifier':
        if (targetX is Identifier) {
          fields.add(targetX);
        }
      case 'targetReference':
        if (targetX is Reference) {
          fields.add(targetX);
        }
      case 'targetAttachment':
        if (targetX is Attachment) {
          fields.add(targetX);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relationshipType':
        {
          if (child is CodeableConcept) {
            return copyWith(relationshipType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetClassifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(targetClassifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetX':
        {
          if (child is TargetXCitationRelatesTo) {
            // child is e.g. SubjectX union
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetIdentifier':
        {
          if (child is Identifier) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetReference':
        {
          if (child is Reference) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetAttachment':
        {
          if (child is Attachment) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'relationshipType':
        return ['CodeableConcept'];
      case 'targetClassifier':
        return ['CodeableConcept'];
      case 'target':
      case 'targetX':
        return ['FhirUri', 'Identifier', 'Reference', 'Attachment'];
      case 'targetUri':
        return ['FhirUri'];
      case 'targetIdentifier':
        return ['Identifier'];
      case 'targetReference':
        return ['Reference'];
      case 'targetAttachment':
        return ['Attachment'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationRelatesTo]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationRelatesTo createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'relationshipType':
        {
          return copyWith(relationshipType: CodeableConcept.empty());
        }
      case 'targetClassifier':
        {
          return copyWith(targetClassifier: <CodeableConcept>[]);
        }
      case 'target':
      case 'targetX':
      case 'targetUri':
        {
          return copyWith(targetX: FhirUri.empty());
        }
      case 'targetIdentifier':
        {
          return copyWith(targetX: Identifier.empty());
        }
      case 'targetReference':
        {
          return copyWith(targetX: Reference.empty());
        }
      case 'targetAttachment':
        {
          return copyWith(targetX: Attachment.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationRelatesTo(
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
      relationshipType: relationshipType?.copyWith(
            objectPath: '$newObjectPath.relationshipType',
          ) ??
          this.relationshipType,
      targetClassifier: targetClassifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.targetClassifier',
                ),
              )
              .toList() ??
          this.targetClassifier,
      targetX: targetX?.copyWith(
            objectPath: '$newObjectPath.targetX',
          ) as TargetXCitationRelatesTo? ??
          this.targetX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationRelatesTo) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(relationshipType, o.relationshipType)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      targetClassifier,
      o.targetClassifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(targetX, o.targetX)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationCitedArtifact.empty() => const CitationCitedArtifact();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationCitedArtifact.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact';
    return CitationCitedArtifact(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      relatedIdentifier: (json['relatedIdentifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedIdentifier',
              },
            ),
          )
          .toList(),
      dateAccessed: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateAccessed',
        FhirDateTime.fromJson,
        '$objectPath.dateAccessed',
      ),
      version: JsonParser.parseObject<CitationVersion>(
        json,
        'version',
        CitationVersion.fromJson,
        '$objectPath.version',
      ),
      currentState: (json['currentState'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.currentState',
              },
            ),
          )
          .toList(),
      statusDate: (json['statusDate'] as List<dynamic>?)
          ?.map<CitationStatusDate>(
            (v) => CitationStatusDate.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusDate',
              },
            ),
          )
          .toList(),
      title: (json['title'] as List<dynamic>?)
          ?.map<CitationTitle>(
            (v) => CitationTitle.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.title',
              },
            ),
          )
          .toList(),
      abstract_: (json['abstract'] as List<dynamic>?)
          ?.map<CitationAbstract>(
            (v) => CitationAbstract.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.abstract',
              },
            ),
          )
          .toList(),
      part_: JsonParser.parseObject<CitationPart>(
        json,
        'part',
        CitationPart.fromJson,
        '$objectPath.part',
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<CitationRelatesTo>(
            (v) => CitationRelatesTo.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatesTo',
              },
            ),
          )
          .toList(),
      publicationForm: (json['publicationForm'] as List<dynamic>?)
          ?.map<CitationPublicationForm>(
            (v) => CitationPublicationForm.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.publicationForm',
              },
            ),
          )
          .toList(),
      webLocation: (json['webLocation'] as List<dynamic>?)
          ?.map<CitationWebLocation>(
            (v) => CitationWebLocation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.webLocation',
              },
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CitationClassification>(
            (v) => CitationClassification.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
      contributorship: JsonParser.parseObject<CitationContributorship>(
        json,
        'contributorship',
        CitationContributorship.fromJson,
        '$objectPath.contributorship',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
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
    if (json is Map<String, dynamic>) {
      return CitationCitedArtifact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'relatedIdentifier',
      'dateAccessed',
      'version',
      'currentState',
      'statusDate',
      'title',
      'abstract',
      'part',
      'relatesTo',
      'publicationForm',
      'webLocation',
      'classification',
      'contributorship',
      'note',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'relatedIdentifier':
        if (relatedIdentifier != null) {
          fields.addAll(relatedIdentifier!);
        }
      case 'dateAccessed':
        if (dateAccessed != null) {
          fields.add(dateAccessed!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'currentState':
        if (currentState != null) {
          fields.addAll(currentState!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.addAll(statusDate!);
        }
      case 'title':
        if (title != null) {
          fields.addAll(title!);
        }
      case 'abstract':
        if (abstract_ != null) {
          fields.addAll(abstract_!);
        }
      case 'part':
        if (part_ != null) {
          fields.add(part_!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'publicationForm':
        if (publicationForm != null) {
          fields.addAll(publicationForm!);
        }
      case 'webLocation':
        if (webLocation != null) {
          fields.addAll(webLocation!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
        }
      case 'contributorship':
        if (contributorship != null) {
          fields.add(contributorship!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatedIdentifier':
        {
          if (child is List<Identifier>) {
            return copyWith(relatedIdentifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'dateAccessed':
        {
          if (child is FhirDateTime) {
            return copyWith(dateAccessed: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'version':
        {
          if (child is CitationVersion) {
            return copyWith(version: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'currentState':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(currentState: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'statusDate':
        {
          if (child is List<CitationStatusDate>) {
            return copyWith(statusDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'title':
        {
          if (child is List<CitationTitle>) {
            return copyWith(title: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'abstract':
        {
          if (child is List<CitationAbstract>) {
            return copyWith(abstract_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'part':
        {
          if (child is CitationPart) {
            return copyWith(part_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatesTo':
        {
          if (child is List<CitationRelatesTo>) {
            return copyWith(relatesTo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publicationForm':
        {
          if (child is List<CitationPublicationForm>) {
            return copyWith(publicationForm: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'webLocation':
        {
          if (child is List<CitationWebLocation>) {
            return copyWith(webLocation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'classification':
        {
          if (child is List<CitationClassification>) {
            return copyWith(classification: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contributorship':
        {
          if (child is CitationContributorship) {
            return copyWith(contributorship: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'relatedIdentifier':
        return ['Identifier'];
      case 'dateAccessed':
        return ['FhirDateTime'];
      case 'version':
        return ['CitationVersion'];
      case 'currentState':
        return ['CodeableConcept'];
      case 'statusDate':
        return ['CitationStatusDate'];
      case 'title':
        return ['CitationTitle'];
      case 'abstract':
        return ['CitationAbstract'];
      case 'part':
        return ['CitationPart'];
      case 'relatesTo':
        return ['CitationRelatesTo'];
      case 'publicationForm':
        return ['CitationPublicationForm'];
      case 'webLocation':
        return ['CitationWebLocation'];
      case 'classification':
        return ['CitationClassification'];
      case 'contributorship':
        return ['CitationContributorship'];
      case 'note':
        return ['Annotation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationCitedArtifact]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationCitedArtifact createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'relatedIdentifier':
        {
          return copyWith(relatedIdentifier: <Identifier>[]);
        }
      case 'dateAccessed':
        {
          return copyWith(dateAccessed: FhirDateTime.empty());
        }
      case 'version':
        {
          return copyWith(version: CitationVersion.empty());
        }
      case 'currentState':
        {
          return copyWith(currentState: <CodeableConcept>[]);
        }
      case 'statusDate':
        {
          return copyWith(statusDate: <CitationStatusDate>[]);
        }
      case 'title':
        {
          return copyWith(title: <CitationTitle>[]);
        }
      case 'abstract':
        {
          return copyWith(abstract_: <CitationAbstract>[]);
        }
      case 'part':
        {
          return copyWith(part_: CitationPart.empty());
        }
      case 'relatesTo':
        {
          return copyWith(relatesTo: <CitationRelatesTo>[]);
        }
      case 'publicationForm':
        {
          return copyWith(publicationForm: <CitationPublicationForm>[]);
        }
      case 'webLocation':
        {
          return copyWith(webLocation: <CitationWebLocation>[]);
        }
      case 'classification':
        {
          return copyWith(classification: <CitationClassification>[]);
        }
      case 'contributorship':
        {
          return copyWith(contributorship: CitationContributorship.empty());
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationCitedArtifact(
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
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      relatedIdentifier: relatedIdentifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatedIdentifier',
                ),
              )
              .toList() ??
          this.relatedIdentifier,
      dateAccessed: dateAccessed?.copyWith(
            objectPath: '$newObjectPath.dateAccessed',
          ) ??
          this.dateAccessed,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      currentState: currentState
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.currentState',
                ),
              )
              .toList() ??
          this.currentState,
      statusDate: statusDate
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.statusDate',
                ),
              )
              .toList() ??
          this.statusDate,
      title: title
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.title',
                ),
              )
              .toList() ??
          this.title,
      abstract_: abstract_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.abstract',
                ),
              )
              .toList() ??
          this.abstract_,
      part_: part_?.copyWith(
            objectPath: '$newObjectPath.part',
          ) ??
          this.part_,
      relatesTo: relatesTo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatesTo',
                ),
              )
              .toList() ??
          this.relatesTo,
      publicationForm: publicationForm
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.publicationForm',
                ),
              )
              .toList() ??
          this.publicationForm,
      webLocation: webLocation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.webLocation',
                ),
              )
              .toList() ??
          this.webLocation,
      classification: classification
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.classification',
                ),
              )
              .toList() ??
          this.classification,
      contributorship: contributorship?.copyWith(
            objectPath: '$newObjectPath.contributorship',
          ) ??
          this.contributorship,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationCitedArtifact) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      relatedIdentifier,
      o.relatedIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(dateAccessed, o.dateAccessed)) {
      return false;
    }
    if (!equalsDeepWithNull(version, o.version)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      currentState,
      o.currentState,
    )) {
      return false;
    }
    if (!listEquals<CitationStatusDate>(
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!listEquals<CitationTitle>(
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<CitationAbstract>(
      abstract_,
      o.abstract_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(part_, o.part_)) {
      return false;
    }
    if (!listEquals<CitationRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!listEquals<CitationPublicationForm>(
      publicationForm,
      o.publicationForm,
    )) {
      return false;
    }
    if (!listEquals<CitationWebLocation>(
      webLocation,
      o.webLocation,
    )) {
      return false;
    }
    if (!listEquals<CitationClassification>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(contributorship, o.contributorship)) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.version',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationVersion.empty() => CitationVersion(
        value: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.version';
    return CitationVersion(
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
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      )!,
      baseCitation: JsonParser.parseObject<Reference>(
        json,
        'baseCitation',
        Reference.fromJson,
        '$objectPath.baseCitation',
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
    if (json is Map<String, dynamic>) {
      return CitationVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'value',
      'baseCitation',
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
        fields.add(value);
      case 'baseCitation':
        if (baseCitation != null) {
          fields.add(baseCitation!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'baseCitation':
        {
          if (child is Reference) {
            return copyWith(baseCitation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'value':
        return ['FhirString'];
      case 'baseCitation':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationVersion]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationVersion createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'value':
        {
          return copyWith(value: FhirString.empty());
        }
      case 'baseCitation':
        {
          return copyWith(baseCitation: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationVersion(
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
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      baseCitation: baseCitation?.copyWith(
            objectPath: '$newObjectPath.baseCitation',
          ) ??
          this.baseCitation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationVersion) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    if (!equalsDeepWithNull(baseCitation, o.baseCitation)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.statusDate',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationStatusDate1.empty() => CitationStatusDate1(
        activity: CodeableConcept.empty(),
        period: Period.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.statusDate';
    return CitationStatusDate1(
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
      activity: JsonParser.parseObject<CodeableConcept>(
        json,
        'activity',
        CodeableConcept.fromJson,
        '$objectPath.activity',
      )!,
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
        '$objectPath.actual',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
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
    if (json is Map<String, dynamic>) {
      return CitationStatusDate1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'activity',
      'actual',
      'period',
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
      case 'activity':
        fields.add(activity);
      case 'actual':
        if (actual != null) {
          fields.add(actual!);
        }
      case 'period':
        fields.add(period);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'activity':
        {
          if (child is CodeableConcept) {
            return copyWith(activity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'actual':
        {
          if (child is FhirBoolean) {
            return copyWith(actual: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'activity':
        return ['CodeableConcept'];
      case 'actual':
        return ['FhirBoolean'];
      case 'period':
        return ['Period'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationStatusDate1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationStatusDate1 createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'activity':
        {
          return copyWith(activity: CodeableConcept.empty());
        }
      case 'actual':
        {
          return copyWith(actual: FhirBoolean.empty());
        }
      case 'period':
        {
          return copyWith(period: Period.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationStatusDate1(
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
      activity: activity?.copyWith(
            objectPath: '$newObjectPath.activity',
          ) ??
          this.activity,
      actual: actual?.copyWith(
            objectPath: '$newObjectPath.actual',
          ) ??
          this.actual,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationStatusDate1) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(activity, o.activity)) {
      return false;
    }
    if (!equalsDeepWithNull(actual, o.actual)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.title',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationTitle.empty() => CitationTitle(
        text: FhirMarkdown.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationTitle.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.title';
    return CitationTitle(
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
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
        '$objectPath.text',
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
    if (json is Map<String, dynamic>) {
      return CitationTitle.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'language',
      'text',
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
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        fields.add(text);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CodeableConcept) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is FhirMarkdown) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'language':
        return ['CodeableConcept'];
      case 'text':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationTitle]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationTitle createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: <CodeableConcept>[]);
        }
      case 'language':
        {
          return copyWith(language: CodeableConcept.empty());
        }
      case 'text':
        {
          return copyWith(text: FhirMarkdown.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationTitle(
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
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationTitle) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.abstract',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationAbstract.empty() => CitationAbstract(
        text: FhirMarkdown.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationAbstract.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.abstract';
    return CitationAbstract(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'text',
        FhirMarkdown.fromJson,
        '$objectPath.text',
      )!,
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
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
    if (json is Map<String, dynamic>) {
      return CitationAbstract.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'language',
      'text',
      'copyright',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        fields.add(text);
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CodeableConcept) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is FhirMarkdown) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'language':
        return ['CodeableConcept'];
      case 'text':
        return ['FhirMarkdown'];
      case 'copyright':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationAbstract]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationAbstract createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'language':
        {
          return copyWith(language: CodeableConcept.empty());
        }
      case 'text':
        {
          return copyWith(text: FhirMarkdown.empty());
        }
      case 'copyright':
        {
          return copyWith(copyright: FhirMarkdown.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationAbstract(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationAbstract) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!equalsDeepWithNull(copyright, o.copyright)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.part',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationPart.empty() => const CitationPart();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPart.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.part';
    return CitationPart(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      ),
      baseCitation: JsonParser.parseObject<Reference>(
        json,
        'baseCitation',
        Reference.fromJson,
        '$objectPath.baseCitation',
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
    if (json is Map<String, dynamic>) {
      return CitationPart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'value',
      'baseCitation',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'baseCitation':
        if (baseCitation != null) {
          fields.add(baseCitation!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'baseCitation':
        {
          if (child is Reference) {
            return copyWith(baseCitation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'value':
        return ['FhirString'];
      case 'baseCitation':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationPart]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationPart createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'value':
        {
          return copyWith(value: FhirString.empty());
        }
      case 'baseCitation':
        {
          return copyWith(baseCitation: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationPart(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      baseCitation: baseCitation?.copyWith(
            objectPath: '$newObjectPath.baseCitation',
          ) ??
          this.baseCitation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationPart) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    if (!equalsDeepWithNull(baseCitation, o.baseCitation)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.relatesTo',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationRelatesTo1.empty() => CitationRelatesTo1(
        relationshipType: CodeableConcept.empty(),
        targetX: FhirUri.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.relatesTo';
    return CitationRelatesTo1(
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
      relationshipType: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationshipType',
        CodeableConcept.fromJson,
        '$objectPath.relationshipType',
      )!,
      targetClassifier: (json['targetClassifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.targetClassifier',
              },
            ),
          )
          .toList(),
      targetX: JsonParser.parsePolymorphic<TargetXCitationRelatesTo1>(
        json,
        {
          'targetUri': FhirUri.fromJson,
          'targetIdentifier': Identifier.fromJson,
          'targetReference': Reference.fromJson,
          'targetAttachment': Attachment.fromJson,
        },
        objectPath,
      )!,
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
    if (json is Map<String, dynamic>) {
      return CitationRelatesTo1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [targetUri] as a FhirUri
  FhirUri? get targetUri => targetX.isAs<FhirUri>();

  /// Getter for [targetIdentifier] as a Identifier
  Identifier? get targetIdentifier => targetX.isAs<Identifier>();

  /// Getter for [targetReference] as a Reference
  Reference? get targetReference => targetX.isAs<Reference>();

  /// Getter for [targetAttachment] as a Attachment
  Attachment? get targetAttachment => targetX.isAs<Attachment>();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relationshipType',
      'targetClassifier',
      'targetX',
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
      case 'relationshipType':
        fields.add(relationshipType);
      case 'targetClassifier':
        if (targetClassifier != null) {
          fields.addAll(targetClassifier!);
        }
      case 'target':
        fields.add(targetX);
      case 'targetX':
        fields.add(targetX);
      case 'targetUri':
        if (targetX is FhirUri) {
          fields.add(targetX);
        }
      case 'targetIdentifier':
        if (targetX is Identifier) {
          fields.add(targetX);
        }
      case 'targetReference':
        if (targetX is Reference) {
          fields.add(targetX);
        }
      case 'targetAttachment':
        if (targetX is Attachment) {
          fields.add(targetX);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relationshipType':
        {
          if (child is CodeableConcept) {
            return copyWith(relationshipType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetClassifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(targetClassifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetX':
        {
          if (child is TargetXCitationRelatesTo1) {
            // child is e.g. SubjectX union
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetIdentifier':
        {
          if (child is Identifier) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetReference':
        {
          if (child is Reference) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'targetAttachment':
        {
          if (child is Attachment) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'relationshipType':
        return ['CodeableConcept'];
      case 'targetClassifier':
        return ['CodeableConcept'];
      case 'target':
      case 'targetX':
        return ['FhirUri', 'Identifier', 'Reference', 'Attachment'];
      case 'targetUri':
        return ['FhirUri'];
      case 'targetIdentifier':
        return ['Identifier'];
      case 'targetReference':
        return ['Reference'];
      case 'targetAttachment':
        return ['Attachment'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationRelatesTo1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationRelatesTo1 createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'relationshipType':
        {
          return copyWith(relationshipType: CodeableConcept.empty());
        }
      case 'targetClassifier':
        {
          return copyWith(targetClassifier: <CodeableConcept>[]);
        }
      case 'target':
      case 'targetX':
      case 'targetUri':
        {
          return copyWith(targetX: FhirUri.empty());
        }
      case 'targetIdentifier':
        {
          return copyWith(targetX: Identifier.empty());
        }
      case 'targetReference':
        {
          return copyWith(targetX: Reference.empty());
        }
      case 'targetAttachment':
        {
          return copyWith(targetX: Attachment.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationRelatesTo1(
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
      relationshipType: relationshipType?.copyWith(
            objectPath: '$newObjectPath.relationshipType',
          ) ??
          this.relationshipType,
      targetClassifier: targetClassifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.targetClassifier',
                ),
              )
              .toList() ??
          this.targetClassifier,
      targetX: targetX?.copyWith(
            objectPath: '$newObjectPath.targetX',
          ) as TargetXCitationRelatesTo1? ??
          this.targetX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationRelatesTo1) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(relationshipType, o.relationshipType)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      targetClassifier,
      o.targetClassifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(targetX, o.targetX)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.publicationForm',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationPublicationForm.empty() => const CitationPublicationForm();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPublicationForm.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.publicationForm';
    return CitationPublicationForm(
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
      publishedIn: JsonParser.parseObject<CitationPublishedIn>(
        json,
        'publishedIn',
        CitationPublishedIn.fromJson,
        '$objectPath.publishedIn',
      ),
      periodicRelease: JsonParser.parseObject<CitationPeriodicRelease>(
        json,
        'periodicRelease',
        CitationPeriodicRelease.fromJson,
        '$objectPath.periodicRelease',
      ),
      articleDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'articleDate',
        FhirDateTime.fromJson,
        '$objectPath.articleDate',
      ),
      lastRevisionDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastRevisionDate',
        FhirDateTime.fromJson,
        '$objectPath.lastRevisionDate',
      ),
      language: (json['language'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.language',
              },
            ),
          )
          .toList(),
      accessionNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'accessionNumber',
        FhirString.fromJson,
        '$objectPath.accessionNumber',
      ),
      pageString: JsonParser.parsePrimitive<FhirString>(
        json,
        'pageString',
        FhirString.fromJson,
        '$objectPath.pageString',
      ),
      firstPage: JsonParser.parsePrimitive<FhirString>(
        json,
        'firstPage',
        FhirString.fromJson,
        '$objectPath.firstPage',
      ),
      lastPage: JsonParser.parsePrimitive<FhirString>(
        json,
        'lastPage',
        FhirString.fromJson,
        '$objectPath.lastPage',
      ),
      pageCount: JsonParser.parsePrimitive<FhirString>(
        json,
        'pageCount',
        FhirString.fromJson,
        '$objectPath.pageCount',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
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
    if (json is Map<String, dynamic>) {
      return CitationPublicationForm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'publishedIn',
      'periodicRelease',
      'articleDate',
      'lastRevisionDate',
      'language',
      'accessionNumber',
      'pageString',
      'firstPage',
      'lastPage',
      'pageCount',
      'copyright',
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
      case 'publishedIn':
        if (publishedIn != null) {
          fields.add(publishedIn!);
        }
      case 'periodicRelease':
        if (periodicRelease != null) {
          fields.add(periodicRelease!);
        }
      case 'articleDate':
        if (articleDate != null) {
          fields.add(articleDate!);
        }
      case 'lastRevisionDate':
        if (lastRevisionDate != null) {
          fields.add(lastRevisionDate!);
        }
      case 'language':
        if (language != null) {
          fields.addAll(language!);
        }
      case 'accessionNumber':
        if (accessionNumber != null) {
          fields.add(accessionNumber!);
        }
      case 'pageString':
        if (pageString != null) {
          fields.add(pageString!);
        }
      case 'firstPage':
        if (firstPage != null) {
          fields.add(firstPage!);
        }
      case 'lastPage':
        if (lastPage != null) {
          fields.add(lastPage!);
        }
      case 'pageCount':
        if (pageCount != null) {
          fields.add(pageCount!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publishedIn':
        {
          if (child is CitationPublishedIn) {
            return copyWith(publishedIn: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'periodicRelease':
        {
          if (child is CitationPeriodicRelease) {
            return copyWith(periodicRelease: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'articleDate':
        {
          if (child is FhirDateTime) {
            return copyWith(articleDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lastRevisionDate':
        {
          if (child is FhirDateTime) {
            return copyWith(lastRevisionDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'accessionNumber':
        {
          if (child is FhirString) {
            return copyWith(accessionNumber: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'pageString':
        {
          if (child is FhirString) {
            return copyWith(pageString: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'firstPage':
        {
          if (child is FhirString) {
            return copyWith(firstPage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lastPage':
        {
          if (child is FhirString) {
            return copyWith(lastPage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'pageCount':
        {
          if (child is FhirString) {
            return copyWith(pageCount: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'publishedIn':
        return ['CitationPublishedIn'];
      case 'periodicRelease':
        return ['CitationPeriodicRelease'];
      case 'articleDate':
        return ['FhirDateTime'];
      case 'lastRevisionDate':
        return ['FhirDateTime'];
      case 'language':
        return ['CodeableConcept'];
      case 'accessionNumber':
        return ['FhirString'];
      case 'pageString':
        return ['FhirString'];
      case 'firstPage':
        return ['FhirString'];
      case 'lastPage':
        return ['FhirString'];
      case 'pageCount':
        return ['FhirString'];
      case 'copyright':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationPublicationForm]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationPublicationForm createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'publishedIn':
        {
          return copyWith(publishedIn: CitationPublishedIn.empty());
        }
      case 'periodicRelease':
        {
          return copyWith(periodicRelease: CitationPeriodicRelease.empty());
        }
      case 'articleDate':
        {
          return copyWith(articleDate: FhirDateTime.empty());
        }
      case 'lastRevisionDate':
        {
          return copyWith(lastRevisionDate: FhirDateTime.empty());
        }
      case 'language':
        {
          return copyWith(language: <CodeableConcept>[]);
        }
      case 'accessionNumber':
        {
          return copyWith(accessionNumber: FhirString.empty());
        }
      case 'pageString':
        {
          return copyWith(pageString: FhirString.empty());
        }
      case 'firstPage':
        {
          return copyWith(firstPage: FhirString.empty());
        }
      case 'lastPage':
        {
          return copyWith(lastPage: FhirString.empty());
        }
      case 'pageCount':
        {
          return copyWith(pageCount: FhirString.empty());
        }
      case 'copyright':
        {
          return copyWith(copyright: FhirMarkdown.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationPublicationForm(
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
      publishedIn: publishedIn?.copyWith(
            objectPath: '$newObjectPath.publishedIn',
          ) ??
          this.publishedIn,
      periodicRelease: periodicRelease?.copyWith(
            objectPath: '$newObjectPath.periodicRelease',
          ) ??
          this.periodicRelease,
      articleDate: articleDate?.copyWith(
            objectPath: '$newObjectPath.articleDate',
          ) ??
          this.articleDate,
      lastRevisionDate: lastRevisionDate?.copyWith(
            objectPath: '$newObjectPath.lastRevisionDate',
          ) ??
          this.lastRevisionDate,
      language: language
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.language',
                ),
              )
              .toList() ??
          this.language,
      accessionNumber: accessionNumber?.copyWith(
            objectPath: '$newObjectPath.accessionNumber',
          ) ??
          this.accessionNumber,
      pageString: pageString?.copyWith(
            objectPath: '$newObjectPath.pageString',
          ) ??
          this.pageString,
      firstPage: firstPage?.copyWith(
            objectPath: '$newObjectPath.firstPage',
          ) ??
          this.firstPage,
      lastPage: lastPage?.copyWith(
            objectPath: '$newObjectPath.lastPage',
          ) ??
          this.lastPage,
      pageCount: pageCount?.copyWith(
            objectPath: '$newObjectPath.pageCount',
          ) ??
          this.pageCount,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationPublicationForm) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(publishedIn, o.publishedIn)) {
      return false;
    }
    if (!equalsDeepWithNull(periodicRelease, o.periodicRelease)) {
      return false;
    }
    if (!equalsDeepWithNull(articleDate, o.articleDate)) {
      return false;
    }
    if (!equalsDeepWithNull(lastRevisionDate, o.lastRevisionDate)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(accessionNumber, o.accessionNumber)) {
      return false;
    }
    if (!equalsDeepWithNull(pageString, o.pageString)) {
      return false;
    }
    if (!equalsDeepWithNull(firstPage, o.firstPage)) {
      return false;
    }
    if (!equalsDeepWithNull(lastPage, o.lastPage)) {
      return false;
    }
    if (!equalsDeepWithNull(pageCount, o.pageCount)) {
      return false;
    }
    if (!equalsDeepWithNull(copyright, o.copyright)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.publicationForm.publishedIn',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationPublishedIn.empty() => const CitationPublishedIn();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPublishedIn.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.publicationForm.publishedIn';
    return CitationPublishedIn(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      publisher: JsonParser.parseObject<Reference>(
        json,
        'publisher',
        Reference.fromJson,
        '$objectPath.publisher',
      ),
      publisherLocation: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisherLocation',
        FhirString.fromJson,
        '$objectPath.publisherLocation',
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
    if (json is Map<String, dynamic>) {
      return CitationPublishedIn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'identifier',
      'title',
      'publisher',
      'publisherLocation',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'publisherLocation':
        if (publisherLocation != null) {
          fields.add(publisherLocation!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publisher':
        {
          if (child is Reference) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publisherLocation':
        {
          if (child is FhirString) {
            return copyWith(publisherLocation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'identifier':
        return ['Identifier'];
      case 'title':
        return ['FhirString'];
      case 'publisher':
        return ['Reference'];
      case 'publisherLocation':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationPublishedIn]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationPublishedIn createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'title':
        {
          return copyWith(title: FhirString.empty());
        }
      case 'publisher':
        {
          return copyWith(publisher: Reference.empty());
        }
      case 'publisherLocation':
        {
          return copyWith(publisherLocation: FhirString.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationPublishedIn(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      publisherLocation: publisherLocation?.copyWith(
            objectPath: '$newObjectPath.publisherLocation',
          ) ??
          this.publisherLocation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationPublishedIn) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(title, o.title)) {
      return false;
    }
    if (!equalsDeepWithNull(publisher, o.publisher)) {
      return false;
    }
    if (!equalsDeepWithNull(publisherLocation, o.publisherLocation)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.publicationForm.periodicRelease',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationPeriodicRelease.empty() => const CitationPeriodicRelease();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationPeriodicRelease.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.publicationForm.periodicRelease';
    return CitationPeriodicRelease(
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
      citedMedium: JsonParser.parseObject<CodeableConcept>(
        json,
        'citedMedium',
        CodeableConcept.fromJson,
        '$objectPath.citedMedium',
      ),
      volume: JsonParser.parsePrimitive<FhirString>(
        json,
        'volume',
        FhirString.fromJson,
        '$objectPath.volume',
      ),
      issue: JsonParser.parsePrimitive<FhirString>(
        json,
        'issue',
        FhirString.fromJson,
        '$objectPath.issue',
      ),
      dateOfPublication: JsonParser.parseObject<CitationDateOfPublication>(
        json,
        'dateOfPublication',
        CitationDateOfPublication.fromJson,
        '$objectPath.dateOfPublication',
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
    if (json is Map<String, dynamic>) {
      return CitationPeriodicRelease.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'citedMedium',
      'volume',
      'issue',
      'dateOfPublication',
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
      case 'citedMedium':
        if (citedMedium != null) {
          fields.add(citedMedium!);
        }
      case 'volume':
        if (volume != null) {
          fields.add(volume!);
        }
      case 'issue':
        if (issue != null) {
          fields.add(issue!);
        }
      case 'dateOfPublication':
        if (dateOfPublication != null) {
          fields.add(dateOfPublication!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'citedMedium':
        {
          if (child is CodeableConcept) {
            return copyWith(citedMedium: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'volume':
        {
          if (child is FhirString) {
            return copyWith(volume: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'issue':
        {
          if (child is FhirString) {
            return copyWith(issue: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'dateOfPublication':
        {
          if (child is CitationDateOfPublication) {
            return copyWith(dateOfPublication: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'citedMedium':
        return ['CodeableConcept'];
      case 'volume':
        return ['FhirString'];
      case 'issue':
        return ['FhirString'];
      case 'dateOfPublication':
        return ['CitationDateOfPublication'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationPeriodicRelease]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationPeriodicRelease createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'citedMedium':
        {
          return copyWith(citedMedium: CodeableConcept.empty());
        }
      case 'volume':
        {
          return copyWith(volume: FhirString.empty());
        }
      case 'issue':
        {
          return copyWith(issue: FhirString.empty());
        }
      case 'dateOfPublication':
        {
          return copyWith(dateOfPublication: CitationDateOfPublication.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationPeriodicRelease(
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
      citedMedium: citedMedium?.copyWith(
            objectPath: '$newObjectPath.citedMedium',
          ) ??
          this.citedMedium,
      volume: volume?.copyWith(
            objectPath: '$newObjectPath.volume',
          ) ??
          this.volume,
      issue: issue?.copyWith(
            objectPath: '$newObjectPath.issue',
          ) ??
          this.issue,
      dateOfPublication: dateOfPublication?.copyWith(
            objectPath: '$newObjectPath.dateOfPublication',
          ) ??
          this.dateOfPublication,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationPeriodicRelease) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(citedMedium, o.citedMedium)) {
      return false;
    }
    if (!equalsDeepWithNull(volume, o.volume)) {
      return false;
    }
    if (!equalsDeepWithNull(issue, o.issue)) {
      return false;
    }
    if (!equalsDeepWithNull(dateOfPublication, o.dateOfPublication)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath:
              'Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationDateOfPublication.empty() => const CitationDateOfPublication();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationDateOfPublication.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication';
    return CitationDateOfPublication(
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
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
        '$objectPath.date',
      ),
      year: JsonParser.parsePrimitive<FhirString>(
        json,
        'year',
        FhirString.fromJson,
        '$objectPath.year',
      ),
      month: JsonParser.parsePrimitive<FhirString>(
        json,
        'month',
        FhirString.fromJson,
        '$objectPath.month',
      ),
      day: JsonParser.parsePrimitive<FhirString>(
        json,
        'day',
        FhirString.fromJson,
        '$objectPath.day',
      ),
      season: JsonParser.parsePrimitive<FhirString>(
        json,
        'season',
        FhirString.fromJson,
        '$objectPath.season',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
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
    if (json is Map<String, dynamic>) {
      return CitationDateOfPublication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'date',
      'year',
      'month',
      'day',
      'season',
      'text',
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
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'year':
        if (year != null) {
          fields.add(year!);
        }
      case 'month':
        if (month != null) {
          fields.add(month!);
        }
      case 'day':
        if (day != null) {
          fields.add(day!);
        }
      case 'season':
        if (season != null) {
          fields.add(season!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirDate) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'year':
        {
          if (child is FhirString) {
            return copyWith(year: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'month':
        {
          if (child is FhirString) {
            return copyWith(month: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'day':
        {
          if (child is FhirString) {
            return copyWith(day: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'season':
        {
          if (child is FhirString) {
            return copyWith(season: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'date':
        return ['FhirDate'];
      case 'year':
        return ['FhirString'];
      case 'month':
        return ['FhirString'];
      case 'day':
        return ['FhirString'];
      case 'season':
        return ['FhirString'];
      case 'text':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationDateOfPublication]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationDateOfPublication createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'date':
        {
          return copyWith(date: FhirDate.empty());
        }
      case 'year':
        {
          return copyWith(year: FhirString.empty());
        }
      case 'month':
        {
          return copyWith(month: FhirString.empty());
        }
      case 'day':
        {
          return copyWith(day: FhirString.empty());
        }
      case 'season':
        {
          return copyWith(season: FhirString.empty());
        }
      case 'text':
        {
          return copyWith(text: FhirString.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationDateOfPublication(
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
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      year: year?.copyWith(
            objectPath: '$newObjectPath.year',
          ) ??
          this.year,
      month: month?.copyWith(
            objectPath: '$newObjectPath.month',
          ) ??
          this.month,
      day: day?.copyWith(
            objectPath: '$newObjectPath.day',
          ) ??
          this.day,
      season: season?.copyWith(
            objectPath: '$newObjectPath.season',
          ) ??
          this.season,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationDateOfPublication) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(year, o.year)) {
      return false;
    }
    if (!equalsDeepWithNull(month, o.month)) {
      return false;
    }
    if (!equalsDeepWithNull(day, o.day)) {
      return false;
    }
    if (!equalsDeepWithNull(season, o.season)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.webLocation',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationWebLocation.empty() => const CitationWebLocation();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationWebLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.webLocation';
    return CitationWebLocation(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
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
    if (json is Map<String, dynamic>) {
      return CitationWebLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'url',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'url':
        return ['FhirUri'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationWebLocation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationWebLocation createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'url':
        {
          return copyWith(url: FhirUri.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationWebLocation(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationWebLocation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.classification',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationClassification1.empty() => const CitationClassification1();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationClassification1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.classification';
    return CitationClassification1(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classifier',
              },
            ),
          )
          .toList(),
      whoClassified: JsonParser.parseObject<CitationWhoClassified>(
        json,
        'whoClassified',
        CitationWhoClassified.fromJson,
        '$objectPath.whoClassified',
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
    if (json is Map<String, dynamic>) {
      return CitationClassification1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'classifier',
      'whoClassified',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'whoClassified':
        if (whoClassified != null) {
          fields.add(whoClassified!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'classifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(classifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'whoClassified':
        {
          if (child is CitationWhoClassified) {
            return copyWith(whoClassified: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'classifier':
        return ['CodeableConcept'];
      case 'whoClassified':
        return ['CitationWhoClassified'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationClassification1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationClassification1 createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'classifier':
        {
          return copyWith(classifier: <CodeableConcept>[]);
        }
      case 'whoClassified':
        {
          return copyWith(whoClassified: CitationWhoClassified.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationClassification1(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      classifier: classifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.classifier',
                ),
              )
              .toList() ??
          this.classifier,
      whoClassified: whoClassified?.copyWith(
            objectPath: '$newObjectPath.whoClassified',
          ) ??
          this.whoClassified,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationClassification1) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(whoClassified, o.whoClassified)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.classification.whoClassified',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationWhoClassified.empty() => const CitationWhoClassified();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationWhoClassified.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.classification.whoClassified';
    return CitationWhoClassified(
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
      person: JsonParser.parseObject<Reference>(
        json,
        'person',
        Reference.fromJson,
        '$objectPath.person',
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
        '$objectPath.organization',
      ),
      publisher: JsonParser.parseObject<Reference>(
        json,
        'publisher',
        Reference.fromJson,
        '$objectPath.publisher',
      ),
      classifierCopyright: JsonParser.parsePrimitive<FhirString>(
        json,
        'classifierCopyright',
        FhirString.fromJson,
        '$objectPath.classifierCopyright',
      ),
      freeToShare: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'freeToShare',
        FhirBoolean.fromJson,
        '$objectPath.freeToShare',
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
    if (json is Map<String, dynamic>) {
      return CitationWhoClassified.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'person',
      'organization',
      'publisher',
      'classifierCopyright',
      'freeToShare',
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
      case 'person':
        if (person != null) {
          fields.add(person!);
        }
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'classifierCopyright':
        if (classifierCopyright != null) {
          fields.add(classifierCopyright!);
        }
      case 'freeToShare':
        if (freeToShare != null) {
          fields.add(freeToShare!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'person':
        {
          if (child is Reference) {
            return copyWith(person: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'organization':
        {
          if (child is Reference) {
            return copyWith(organization: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'publisher':
        {
          if (child is Reference) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'classifierCopyright':
        {
          if (child is FhirString) {
            return copyWith(classifierCopyright: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'freeToShare':
        {
          if (child is FhirBoolean) {
            return copyWith(freeToShare: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'person':
        return ['Reference'];
      case 'organization':
        return ['Reference'];
      case 'publisher':
        return ['Reference'];
      case 'classifierCopyright':
        return ['FhirString'];
      case 'freeToShare':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationWhoClassified]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationWhoClassified createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'person':
        {
          return copyWith(person: Reference.empty());
        }
      case 'organization':
        {
          return copyWith(organization: Reference.empty());
        }
      case 'publisher':
        {
          return copyWith(publisher: Reference.empty());
        }
      case 'classifierCopyright':
        {
          return copyWith(classifierCopyright: FhirString.empty());
        }
      case 'freeToShare':
        {
          return copyWith(freeToShare: FhirBoolean.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationWhoClassified(
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
      person: person?.copyWith(
            objectPath: '$newObjectPath.person',
          ) ??
          this.person,
      organization: organization?.copyWith(
            objectPath: '$newObjectPath.organization',
          ) ??
          this.organization,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      classifierCopyright: classifierCopyright?.copyWith(
            objectPath: '$newObjectPath.classifierCopyright',
          ) ??
          this.classifierCopyright,
      freeToShare: freeToShare?.copyWith(
            objectPath: '$newObjectPath.freeToShare',
          ) ??
          this.freeToShare,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationWhoClassified) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(person, o.person)) {
      return false;
    }
    if (!equalsDeepWithNull(organization, o.organization)) {
      return false;
    }
    if (!equalsDeepWithNull(publisher, o.publisher)) {
      return false;
    }
    if (!equalsDeepWithNull(classifierCopyright, o.classifierCopyright)) {
      return false;
    }
    if (!equalsDeepWithNull(freeToShare, o.freeToShare)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.contributorship',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationContributorship.empty() => const CitationContributorship();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationContributorship.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.contributorship';
    return CitationContributorship(
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
      complete: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'complete',
        FhirBoolean.fromJson,
        '$objectPath.complete',
      ),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<CitationEntry>(
            (v) => CitationEntry.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entry',
              },
            ),
          )
          .toList(),
      summary: (json['summary'] as List<dynamic>?)
          ?.map<CitationSummary>(
            (v) => CitationSummary.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.summary',
              },
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
    if (json is Map<String, dynamic>) {
      return CitationContributorship.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'complete',
      'entry',
      'summary',
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
      case 'complete':
        if (complete != null) {
          fields.add(complete!);
        }
      case 'entry':
        if (entry != null) {
          fields.addAll(entry!);
        }
      case 'summary':
        if (summary != null) {
          fields.addAll(summary!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'complete':
        {
          if (child is FhirBoolean) {
            return copyWith(complete: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'entry':
        {
          if (child is List<CitationEntry>) {
            return copyWith(entry: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'summary':
        {
          if (child is List<CitationSummary>) {
            return copyWith(summary: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'complete':
        return ['FhirBoolean'];
      case 'entry':
        return ['CitationEntry'];
      case 'summary':
        return ['CitationSummary'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationContributorship]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationContributorship createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'complete':
        {
          return copyWith(complete: FhirBoolean.empty());
        }
      case 'entry':
        {
          return copyWith(entry: <CitationEntry>[]);
        }
      case 'summary':
        {
          return copyWith(summary: <CitationSummary>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationContributorship(
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
      complete: complete?.copyWith(
            objectPath: '$newObjectPath.complete',
          ) ??
          this.complete,
      entry: entry
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.entry',
                ),
              )
              .toList() ??
          this.entry,
      summary: summary
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.summary',
                ),
              )
              .toList() ??
          this.summary,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationContributorship) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(complete, o.complete)) {
      return false;
    }
    if (!listEquals<CitationEntry>(
      entry,
      o.entry,
    )) {
      return false;
    }
    if (!listEquals<CitationSummary>(
      summary,
      o.summary,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.contributorship.entry',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationEntry.empty() => const CitationEntry();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.contributorship.entry';
    return CitationEntry(
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
      name: JsonParser.parseObject<HumanName>(
        json,
        'name',
        HumanName.fromJson,
        '$objectPath.name',
      ),
      initials: JsonParser.parsePrimitive<FhirString>(
        json,
        'initials',
        FhirString.fromJson,
        '$objectPath.initials',
      ),
      collectiveName: JsonParser.parsePrimitive<FhirString>(
        json,
        'collectiveName',
        FhirString.fromJson,
        '$objectPath.collectiveName',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      affiliationInfo: (json['affiliationInfo'] as List<dynamic>?)
          ?.map<CitationAffiliationInfo>(
            (v) => CitationAffiliationInfo.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.affiliationInfo',
              },
            ),
          )
          .toList(),
      address: (json['address'] as List<dynamic>?)
          ?.map<Address>(
            (v) => Address.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.address',
              },
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      contributionType: (json['contributionType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contributionType',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
        '$objectPath.role',
      ),
      contributionInstance: (json['contributionInstance'] as List<dynamic>?)
          ?.map<CitationContributionInstance>(
            (v) => CitationContributionInstance.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contributionInstance',
              },
            ),
          )
          .toList(),
      correspondingContact: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'correspondingContact',
        FhirBoolean.fromJson,
        '$objectPath.correspondingContact',
      ),
      listOrder: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'listOrder',
        FhirPositiveInt.fromJson,
        '$objectPath.listOrder',
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
    if (json is Map<String, dynamic>) {
      return CitationEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'initials',
      'collectiveName',
      'identifier',
      'affiliationInfo',
      'address',
      'telecom',
      'contributionType',
      'role',
      'contributionInstance',
      'correspondingContact',
      'listOrder',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'initials':
        if (initials != null) {
          fields.add(initials!);
        }
      case 'collectiveName':
        if (collectiveName != null) {
          fields.add(collectiveName!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'affiliationInfo':
        if (affiliationInfo != null) {
          fields.addAll(affiliationInfo!);
        }
      case 'address':
        if (address != null) {
          fields.addAll(address!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
        }
      case 'contributionType':
        if (contributionType != null) {
          fields.addAll(contributionType!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'contributionInstance':
        if (contributionInstance != null) {
          fields.addAll(contributionInstance!);
        }
      case 'correspondingContact':
        if (correspondingContact != null) {
          fields.add(correspondingContact!);
        }
      case 'listOrder':
        if (listOrder != null) {
          fields.add(listOrder!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is HumanName) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'initials':
        {
          if (child is FhirString) {
            return copyWith(initials: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'collectiveName':
        {
          if (child is FhirString) {
            return copyWith(collectiveName: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'affiliationInfo':
        {
          if (child is List<CitationAffiliationInfo>) {
            return copyWith(affiliationInfo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'address':
        {
          if (child is List<Address>) {
            return copyWith(address: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'telecom':
        {
          if (child is List<ContactPoint>) {
            return copyWith(telecom: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contributionType':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(contributionType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'role':
        {
          if (child is CodeableConcept) {
            return copyWith(role: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contributionInstance':
        {
          if (child is List<CitationContributionInstance>) {
            return copyWith(contributionInstance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'correspondingContact':
        {
          if (child is FhirBoolean) {
            return copyWith(correspondingContact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'listOrder':
        {
          if (child is FhirPositiveInt) {
            return copyWith(listOrder: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'name':
        return ['HumanName'];
      case 'initials':
        return ['FhirString'];
      case 'collectiveName':
        return ['FhirString'];
      case 'identifier':
        return ['Identifier'];
      case 'affiliationInfo':
        return ['CitationAffiliationInfo'];
      case 'address':
        return ['Address'];
      case 'telecom':
        return ['ContactPoint'];
      case 'contributionType':
        return ['CodeableConcept'];
      case 'role':
        return ['CodeableConcept'];
      case 'contributionInstance':
        return ['CitationContributionInstance'];
      case 'correspondingContact':
        return ['FhirBoolean'];
      case 'listOrder':
        return ['FhirPositiveInt'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationEntry]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationEntry createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'name':
        {
          return copyWith(name: HumanName.empty());
        }
      case 'initials':
        {
          return copyWith(initials: FhirString.empty());
        }
      case 'collectiveName':
        {
          return copyWith(collectiveName: FhirString.empty());
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'affiliationInfo':
        {
          return copyWith(affiliationInfo: <CitationAffiliationInfo>[]);
        }
      case 'address':
        {
          return copyWith(address: <Address>[]);
        }
      case 'telecom':
        {
          return copyWith(telecom: <ContactPoint>[]);
        }
      case 'contributionType':
        {
          return copyWith(contributionType: <CodeableConcept>[]);
        }
      case 'role':
        {
          return copyWith(role: CodeableConcept.empty());
        }
      case 'contributionInstance':
        {
          return copyWith(
              contributionInstance: <CitationContributionInstance>[],);
        }
      case 'correspondingContact':
        {
          return copyWith(correspondingContact: FhirBoolean.empty());
        }
      case 'listOrder':
        {
          return copyWith(listOrder: FhirPositiveInt.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationEntry(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      initials: initials?.copyWith(
            objectPath: '$newObjectPath.initials',
          ) ??
          this.initials,
      collectiveName: collectiveName?.copyWith(
            objectPath: '$newObjectPath.collectiveName',
          ) ??
          this.collectiveName,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      affiliationInfo: affiliationInfo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.affiliationInfo',
                ),
              )
              .toList() ??
          this.affiliationInfo,
      address: address
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.address',
                ),
              )
              .toList() ??
          this.address,
      telecom: telecom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.telecom',
                ),
              )
              .toList() ??
          this.telecom,
      contributionType: contributionType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contributionType',
                ),
              )
              .toList() ??
          this.contributionType,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      contributionInstance: contributionInstance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contributionInstance',
                ),
              )
              .toList() ??
          this.contributionInstance,
      correspondingContact: correspondingContact?.copyWith(
            objectPath: '$newObjectPath.correspondingContact',
          ) ??
          this.correspondingContact,
      listOrder: listOrder?.copyWith(
            objectPath: '$newObjectPath.listOrder',
          ) ??
          this.listOrder,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationEntry) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(initials, o.initials)) {
      return false;
    }
    if (!equalsDeepWithNull(collectiveName, o.collectiveName)) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<CitationAffiliationInfo>(
      affiliationInfo,
      o.affiliationInfo,
    )) {
      return false;
    }
    if (!listEquals<Address>(
      address,
      o.address,
    )) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      contributionType,
      o.contributionType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(role, o.role)) {
      return false;
    }
    if (!listEquals<CitationContributionInstance>(
      contributionInstance,
      o.contributionInstance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(correspondingContact, o.correspondingContact)) {
      return false;
    }
    if (!equalsDeepWithNull(listOrder, o.listOrder)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath:
              'Citation.citedArtifact.contributorship.entry.affiliationInfo',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationAffiliationInfo.empty() => const CitationAffiliationInfo();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationAffiliationInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'Citation.citedArtifact.contributorship.entry.affiliationInfo';
    return CitationAffiliationInfo(
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
      affiliation: JsonParser.parsePrimitive<FhirString>(
        json,
        'affiliation',
        FhirString.fromJson,
        '$objectPath.affiliation',
      ),
      role: JsonParser.parsePrimitive<FhirString>(
        json,
        'role',
        FhirString.fromJson,
        '$objectPath.role',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
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
    if (json is Map<String, dynamic>) {
      return CitationAffiliationInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'affiliation',
      'role',
      'identifier',
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
      case 'affiliation':
        if (affiliation != null) {
          fields.add(affiliation!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'affiliation':
        {
          if (child is FhirString) {
            return copyWith(affiliation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'role':
        {
          if (child is FhirString) {
            return copyWith(role: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'affiliation':
        return ['FhirString'];
      case 'role':
        return ['FhirString'];
      case 'identifier':
        return ['Identifier'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationAffiliationInfo]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationAffiliationInfo createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'affiliation':
        {
          return copyWith(affiliation: FhirString.empty());
        }
      case 'role':
        {
          return copyWith(role: FhirString.empty());
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationAffiliationInfo(
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
      affiliation: affiliation?.copyWith(
            objectPath: '$newObjectPath.affiliation',
          ) ??
          this.affiliation,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationAffiliationInfo) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(affiliation, o.affiliation)) {
      return false;
    }
    if (!equalsDeepWithNull(role, o.role)) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath:
              'Citation.citedArtifact.contributorship.entry.contributionInstance',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationContributionInstance.empty() => CitationContributionInstance(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationContributionInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'Citation.citedArtifact.contributorship.entry.contributionInstance';
    return CitationContributionInstance(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      time: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'time',
        FhirDateTime.fromJson,
        '$objectPath.time',
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
    if (json is Map<String, dynamic>) {
      return CitationContributionInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'time',
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
      case 'type':
        fields.add(type);
      case 'time':
        if (time != null) {
          fields.add(time!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'time':
        {
          if (child is FhirDateTime) {
            return copyWith(time: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'time':
        return ['FhirDateTime'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationContributionInstance]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationContributionInstance createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'time':
        {
          return copyWith(time: FhirDateTime.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationContributionInstance(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      time: time?.copyWith(
            objectPath: '$newObjectPath.time',
          ) ??
          this.time,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationContributionInstance) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(time, o.time)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Citation.citedArtifact.contributorship.summary',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CitationSummary1.empty() => CitationSummary1(
        value: FhirMarkdown.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CitationSummary1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Citation.citedArtifact.contributorship.summary';
    return CitationSummary1(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      style: JsonParser.parseObject<CodeableConcept>(
        json,
        'style',
        CodeableConcept.fromJson,
        '$objectPath.style',
      ),
      source: JsonParser.parseObject<CodeableConcept>(
        json,
        'source',
        CodeableConcept.fromJson,
        '$objectPath.source',
      ),
      value: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'value',
        FhirMarkdown.fromJson,
        '$objectPath.value',
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
    if (json is Map<String, dynamic>) {
      return CitationSummary1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'style',
      'source',
      'value',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'style':
        if (style != null) {
          fields.add(style!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'value':
        fields.add(value);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'style':
        {
          if (child is CodeableConcept) {
            return copyWith(style: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'source':
        {
          if (child is CodeableConcept) {
            return copyWith(source: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is FhirMarkdown) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'style':
        return ['CodeableConcept'];
      case 'source':
        return ['CodeableConcept'];
      case 'value':
        return ['FhirMarkdown'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CitationSummary1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CitationSummary1 createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'style':
        {
          return copyWith(style: CodeableConcept.empty());
        }
      case 'source':
        {
          return copyWith(source: CodeableConcept.empty());
        }
      case 'value':
        {
          return copyWith(value: FhirMarkdown.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CitationSummary1(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      style: style?.copyWith(
            objectPath: '$newObjectPath.style',
          ) ??
          this.style,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CitationSummary1) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(style, o.style)) {
      return false;
    }
    if (!equalsDeepWithNull(source, o.source)) {
      return false;
    }
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    return true;
  }
}
