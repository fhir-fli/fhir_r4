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

  const Evidence({
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
    this.citeAsX,
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
  }) : super(
          objectPath: 'Evidence',
          resourceType: R4ResourceType.Evidence,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Evidence.empty() => Evidence(
        status: PublicationStatus.values.first,
        variableDefinition: <EvidenceVariableDefinition>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Evidence.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence';
    return Evidence(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      citeAsX: JsonParser.parsePolymorphic<CiteAsXEvidence>(
        json,
        {
          'citeAsReference': Reference.fromJson,
          'citeAsMarkdown': FhirMarkdown.fromJson,
        },
        objectPath,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      )!,
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
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
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
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
      assertion: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'assertion',
        FhirMarkdown.fromJson,
        '$objectPath.assertion',
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
      variableDefinition: (json['variableDefinition'] as List<dynamic>)
          .map<EvidenceVariableDefinition>(
            (v) => EvidenceVariableDefinition.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.variableDefinition',
              },
            ),
          )
          .toList(),
      synthesisType: JsonParser.parseObject<CodeableConcept>(
        json,
        'synthesisType',
        CodeableConcept.fromJson,
        '$objectPath.synthesisType',
      ),
      studyType: JsonParser.parseObject<CodeableConcept>(
        json,
        'studyType',
        CodeableConcept.fromJson,
        '$objectPath.studyType',
      ),
      statistic: (json['statistic'] as List<dynamic>?)
          ?.map<EvidenceStatistic>(
            (v) => EvidenceStatistic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statistic',
              },
            ),
          )
          .toList(),
      certainty: (json['certainty'] as List<dynamic>?)
          ?.map<EvidenceCertainty>(
            (v) => EvidenceCertainty.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.certainty',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return Evidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// [citeAsX]
  /// Citation Resource or display of suggested citation for this evidence.
  final CiteAsXEvidence? citeAsX;

  /// Getter for [citeAsReference] as a Reference
  Reference? get citeAsReference => citeAsX?.isAs<Reference>();

  /// Getter for [citeAsMarkdown] as a FhirMarkdown
  FhirMarkdown? get citeAsMarkdown => citeAsX?.isAs<FhirMarkdown>();

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
      'title',
      title,
    );
    if (citeAsX != null) {
      final fhirType = citeAsX!.fhirType;
      addField(
        'citeAs${fhirType.capitalize()}',
        citeAsX,
      );
    }

    addField(
      'status',
      status,
    );
    addField(
      'date',
      date,
    );
    addField(
      'useContext',
      useContext,
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
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'author',
      author,
    );
    addField(
      'editor',
      editor,
    );
    addField(
      'reviewer',
      reviewer,
    );
    addField(
      'endorser',
      endorser,
    );
    addField(
      'relatedArtifact',
      relatedArtifact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'assertion',
      assertion,
    );
    addField(
      'note',
      note,
    );
    addField(
      'variableDefinition',
      variableDefinition,
    );
    addField(
      'synthesisType',
      synthesisType,
    );
    addField(
      'studyType',
      studyType,
    );
    addField(
      'statistic',
      statistic,
    );
    addField(
      'certainty',
      certainty,
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
      'title',
      'citeAsX',
      'status',
      'date',
      'useContext',
      'approvalDate',
      'lastReviewDate',
      'publisher',
      'contact',
      'author',
      'editor',
      'reviewer',
      'endorser',
      'relatedArtifact',
      'description',
      'assertion',
      'note',
      'variableDefinition',
      'synthesisType',
      'studyType',
      'statistic',
      'certainty',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'citeAs':
        fields.add(citeAsX!);
      case 'citeAsX':
        fields.add(citeAsX!);
      case 'citeAsReference':
        if (citeAsX is Reference) {
          fields.add(citeAsX!);
        }
      case 'citeAsMarkdown':
        if (citeAsX is FhirMarkdown) {
          fields.add(citeAsX!);
        }
      case 'status':
        fields.add(status);
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
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
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'assertion':
        if (assertion != null) {
          fields.add(assertion!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'variableDefinition':
        fields.addAll(variableDefinition);
      case 'synthesisType':
        if (synthesisType != null) {
          fields.add(synthesisType!);
        }
      case 'studyType':
        if (studyType != null) {
          fields.add(studyType!);
        }
      case 'statistic':
        if (statistic != null) {
          fields.addAll(statistic!);
        }
      case 'certainty':
        if (certainty != null) {
          fields.addAll(certainty!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'citeAsX':
        {
          if (child is CiteAsXEvidence) {
            return copyWith(citeAsX: child);
          } else {
            if (child is Reference) {
              return copyWith(citeAsX: child);
            }
            if (child is FhirMarkdown) {
              return copyWith(citeAsX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'citeAsReference':
        {
          if (child is Reference) {
            return copyWith(citeAsX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'citeAsFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(citeAsX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            // Add all elements from passed list
            final newList = [...?useContext, ...child];
            return copyWith(useContext: newList);
          } else if (child is UsageContext) {
            // Add single element to existing list or create new list
            final newList = [...?useContext, child];
            return copyWith(useContext: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'approvalDate':
        {
          if (child is FhirDate) {
            return copyWith(approvalDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lastReviewDate':
        {
          if (child is FhirDate) {
            return copyWith(lastReviewDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?contact, ...child];
            return copyWith(contact: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?contact, child];
            return copyWith(contact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'author':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?author, ...child];
            return copyWith(author: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?author, child];
            return copyWith(author: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'editor':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?editor, ...child];
            return copyWith(editor: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?editor, child];
            return copyWith(editor: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reviewer':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?reviewer, ...child];
            return copyWith(reviewer: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?reviewer, child];
            return copyWith(reviewer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endorser':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?endorser, ...child];
            return copyWith(endorser: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?endorser, child];
            return copyWith(endorser: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifact>) {
            // Add all elements from passed list
            final newList = [...?relatedArtifact, ...child];
            return copyWith(relatedArtifact: newList);
          } else if (child is RelatedArtifact) {
            // Add single element to existing list or create new list
            final newList = [...?relatedArtifact, child];
            return copyWith(relatedArtifact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'assertion':
        {
          if (child is FhirMarkdown) {
            return copyWith(assertion: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variableDefinition':
        {
          if (child is List<EvidenceVariableDefinition>) {
            // Add all elements from passed list
            final newList = [...variableDefinition, ...child];
            return copyWith(variableDefinition: newList);
          } else if (child is EvidenceVariableDefinition) {
            // Add single element to existing list or create new list
            final newList = [...variableDefinition, child];
            return copyWith(variableDefinition: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'synthesisType':
        {
          if (child is CodeableConcept) {
            return copyWith(synthesisType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'studyType':
        {
          if (child is CodeableConcept) {
            return copyWith(studyType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statistic':
        {
          if (child is List<EvidenceStatistic>) {
            // Add all elements from passed list
            final newList = [...?statistic, ...child];
            return copyWith(statistic: newList);
          } else if (child is EvidenceStatistic) {
            // Add single element to existing list or create new list
            final newList = [...?statistic, child];
            return copyWith(statistic: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'certainty':
        {
          if (child is List<EvidenceCertainty>) {
            // Add all elements from passed list
            final newList = [...?certainty, ...child];
            return copyWith(certainty: newList);
          } else if (child is EvidenceCertainty) {
            // Add single element to existing list or create new list
            final newList = [...?certainty, child];
            return copyWith(certainty: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'title':
        return ['FhirString'];
      case 'citeAs':
      case 'citeAsX':
        return ['Reference', 'FhirMarkdown'];
      case 'citeAsReference':
        return ['Reference'];
      case 'citeAsMarkdown':
        return ['FhirMarkdown'];
      case 'status':
        return ['FhirCode'];
      case 'date':
        return ['FhirDateTime'];
      case 'useContext':
        return ['UsageContext'];
      case 'approvalDate':
        return ['FhirDate'];
      case 'lastReviewDate':
        return ['FhirDate'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'author':
        return ['ContactDetail'];
      case 'editor':
        return ['ContactDetail'];
      case 'reviewer':
        return ['ContactDetail'];
      case 'endorser':
        return ['ContactDetail'];
      case 'relatedArtifact':
        return ['RelatedArtifact'];
      case 'description':
        return ['FhirMarkdown'];
      case 'assertion':
        return ['FhirMarkdown'];
      case 'note':
        return ['Annotation'];
      case 'variableDefinition':
        return ['EvidenceVariableDefinition'];
      case 'synthesisType':
        return ['CodeableConcept'];
      case 'studyType':
        return ['CodeableConcept'];
      case 'statistic':
        return ['EvidenceStatistic'];
      case 'certainty':
        return ['EvidenceCertainty'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Evidence]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Evidence createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'citeAs':
      case 'citeAsX':
      case 'citeAsReference':
        {
          return copyWith(
            citeAsX: Reference.empty(),
          );
        }
      case 'citeAsMarkdown':
        {
          return copyWith(
            citeAsX: FhirMarkdown.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'useContext':
        {
          return copyWith(
            useContext: <UsageContext>[],
          );
        }
      case 'approvalDate':
        {
          return copyWith(
            approvalDate: FhirDate.empty(),
          );
        }
      case 'lastReviewDate':
        {
          return copyWith(
            lastReviewDate: FhirDate.empty(),
          );
        }
      case 'publisher':
        {
          return copyWith(
            publisher: FhirString.empty(),
          );
        }
      case 'contact':
        {
          return copyWith(
            contact: <ContactDetail>[],
          );
        }
      case 'author':
        {
          return copyWith(
            author: <ContactDetail>[],
          );
        }
      case 'editor':
        {
          return copyWith(
            editor: <ContactDetail>[],
          );
        }
      case 'reviewer':
        {
          return copyWith(
            reviewer: <ContactDetail>[],
          );
        }
      case 'endorser':
        {
          return copyWith(
            endorser: <ContactDetail>[],
          );
        }
      case 'relatedArtifact':
        {
          return copyWith(
            relatedArtifact: <RelatedArtifact>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'assertion':
        {
          return copyWith(
            assertion: FhirMarkdown.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'variableDefinition':
        {
          return copyWith(
            variableDefinition: <EvidenceVariableDefinition>[],
          );
        }
      case 'synthesisType':
        {
          return copyWith(
            synthesisType: CodeableConcept.empty(),
          );
        }
      case 'studyType':
        {
          return copyWith(
            studyType: CodeableConcept.empty(),
          );
        }
      case 'statistic':
        {
          return copyWith(
            statistic: <EvidenceStatistic>[],
          );
        }
      case 'certainty':
        {
          return copyWith(
            certainty: <EvidenceCertainty>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Evidence clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool identifier = false,
    bool version = false,
    bool title = false,
    bool citeAs = false,
    bool date = false,
    bool useContext = false,
    bool approvalDate = false,
    bool lastReviewDate = false,
    bool publisher = false,
    bool contact = false,
    bool author = false,
    bool editor = false,
    bool reviewer = false,
    bool endorser = false,
    bool relatedArtifact = false,
    bool description = false,
    bool assertion = false,
    bool note = false,
    bool synthesisType = false,
    bool studyType = false,
    bool statistic = false,
    bool certainty = false,
  }) {
    return Evidence(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url ? null : this.url,
      identifier: identifier ? null : this.identifier,
      version: version ? null : this.version,
      title: title ? null : this.title,
      citeAsX: citeAs ? null : citeAsX,
      status: status,
      date: date ? null : this.date,
      useContext: useContext ? null : this.useContext,
      approvalDate: approvalDate ? null : this.approvalDate,
      lastReviewDate: lastReviewDate ? null : this.lastReviewDate,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      author: author ? null : this.author,
      editor: editor ? null : this.editor,
      reviewer: reviewer ? null : this.reviewer,
      endorser: endorser ? null : this.endorser,
      relatedArtifact: relatedArtifact ? null : this.relatedArtifact,
      description: description ? null : this.description,
      assertion: assertion ? null : this.assertion,
      note: note ? null : this.note,
      variableDefinition: variableDefinition,
      synthesisType: synthesisType ? null : this.synthesisType,
      studyType: studyType ? null : this.studyType,
      statistic: statistic ? null : this.statistic,
      certainty: certainty ? null : this.certainty,
    );
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
    CiteAsXEvidence? citeAsX,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Evidence(
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
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      citeAsX: citeAsX?.copyWith(
            objectPath: '$newObjectPath.citeAsX',
          ) as CiteAsXEvidence? ??
          this.citeAsX,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      approvalDate: approvalDate?.copyWith(
            objectPath: '$newObjectPath.approvalDate',
          ) ??
          this.approvalDate,
      lastReviewDate: lastReviewDate?.copyWith(
            objectPath: '$newObjectPath.lastReviewDate',
          ) ??
          this.lastReviewDate,
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
      relatedArtifact: relatedArtifact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatedArtifact',
                ),
              )
              .toList() ??
          this.relatedArtifact,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      assertion: assertion?.copyWith(
            objectPath: '$newObjectPath.assertion',
          ) ??
          this.assertion,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      variableDefinition: variableDefinition
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.variableDefinition',
                ),
              )
              .toList() ??
          this.variableDefinition,
      synthesisType: synthesisType?.copyWith(
            objectPath: '$newObjectPath.synthesisType',
          ) ??
          this.synthesisType,
      studyType: studyType?.copyWith(
            objectPath: '$newObjectPath.studyType',
          ) ??
          this.studyType,
      statistic: statistic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.statistic',
                ),
              )
              .toList() ??
          this.statistic,
      certainty: certainty
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.certainty',
                ),
              )
              .toList() ??
          this.certainty,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Evidence) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citeAsX,
      o.citeAsX,
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
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
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
    if (!listEquals<RelatedArtifact>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      assertion,
      o.assertion,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableDefinition>(
      variableDefinition,
      o.variableDefinition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      synthesisType,
      o.synthesisType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      studyType,
      o.studyType,
    )) {
      return false;
    }
    if (!listEquals<EvidenceStatistic>(
      statistic,
      o.statistic,
    )) {
      return false;
    }
    if (!listEquals<EvidenceCertainty>(
      certainty,
      o.certainty,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableDefinition]
/// Evidence variable such as population, exposure, or outcome.
class EvidenceVariableDefinition extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableDefinition]

  const EvidenceVariableDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    required this.variableRole,
    this.observed,
    this.intended,
    this.directnessMatch,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.variableDefinition',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceVariableDefinition.empty() => EvidenceVariableDefinition(
        variableRole: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.variableDefinition';
    return EvidenceVariableDefinition(
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
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
      variableRole: JsonParser.parseObject<CodeableConcept>(
        json,
        'variableRole',
        CodeableConcept.fromJson,
        '$objectPath.variableRole',
      )!,
      observed: JsonParser.parseObject<Reference>(
        json,
        'observed',
        Reference.fromJson,
        '$objectPath.observed',
      ),
      intended: JsonParser.parseObject<Reference>(
        json,
        'intended',
        Reference.fromJson,
        '$objectPath.intended',
      ),
      directnessMatch: JsonParser.parseObject<CodeableConcept>(
        json,
        'directnessMatch',
        CodeableConcept.fromJson,
        '$objectPath.directnessMatch',
      ),
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
    if (json is Map<String, dynamic>) {
      return EvidenceVariableDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'variableRole',
      variableRole,
    );
    addField(
      'observed',
      observed,
    );
    addField(
      'intended',
      intended,
    );
    addField(
      'directnessMatch',
      directnessMatch,
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
      'description',
      'note',
      'variableRole',
      'observed',
      'intended',
      'directnessMatch',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'variableRole':
        fields.add(variableRole);
      case 'observed':
        if (observed != null) {
          fields.add(observed!);
        }
      case 'intended':
        if (intended != null) {
          fields.add(intended!);
        }
      case 'directnessMatch':
        if (directnessMatch != null) {
          fields.add(directnessMatch!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variableRole':
        {
          if (child is CodeableConcept) {
            return copyWith(variableRole: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'observed':
        {
          if (child is Reference) {
            return copyWith(observed: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'intended':
        {
          if (child is Reference) {
            return copyWith(intended: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'directnessMatch':
        {
          if (child is CodeableConcept) {
            return copyWith(directnessMatch: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'description':
        return ['FhirMarkdown'];
      case 'note':
        return ['Annotation'];
      case 'variableRole':
        return ['CodeableConcept'];
      case 'observed':
        return ['Reference'];
      case 'intended':
        return ['Reference'];
      case 'directnessMatch':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceVariableDefinition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'variableRole':
        {
          return copyWith(
            variableRole: CodeableConcept.empty(),
          );
        }
      case 'observed':
        {
          return copyWith(
            observed: Reference.empty(),
          );
        }
      case 'intended':
        {
          return copyWith(
            intended: Reference.empty(),
          );
        }
      case 'directnessMatch':
        {
          return copyWith(
            directnessMatch: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceVariableDefinition clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool observed = false,
    bool intended = false,
    bool directnessMatch = false,
  }) {
    return EvidenceVariableDefinition(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      note: note ? null : this.note,
      variableRole: variableRole,
      observed: observed ? null : this.observed,
      intended: intended ? null : this.intended,
      directnessMatch: directnessMatch ? null : this.directnessMatch,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceVariableDefinition(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      variableRole: variableRole?.copyWith(
            objectPath: '$newObjectPath.variableRole',
          ) ??
          this.variableRole,
      observed: observed?.copyWith(
            objectPath: '$newObjectPath.observed',
          ) ??
          this.observed,
      intended: intended?.copyWith(
            objectPath: '$newObjectPath.intended',
          ) ??
          this.intended,
      directnessMatch: directnessMatch?.copyWith(
            objectPath: '$newObjectPath.directnessMatch',
          ) ??
          this.directnessMatch,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableDefinition) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      variableRole,
      o.variableRole,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      observed,
      o.observed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intended,
      o.intended,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      directnessMatch,
      o.directnessMatch,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceStatistic]
/// Values and parameters for a single statistic.
class EvidenceStatistic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceStatistic]

  const EvidenceStatistic({
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
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceStatistic.empty() => const EvidenceStatistic();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceStatistic.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic';
    return EvidenceStatistic(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
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
      statisticType: JsonParser.parseObject<CodeableConcept>(
        json,
        'statisticType',
        CodeableConcept.fromJson,
        '$objectPath.statisticType',
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      numberOfEvents: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfEvents',
        FhirUnsignedInt.fromJson,
        '$objectPath.numberOfEvents',
      ),
      numberAffected: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberAffected',
        FhirUnsignedInt.fromJson,
        '$objectPath.numberAffected',
      ),
      sampleSize: JsonParser.parseObject<EvidenceSampleSize>(
        json,
        'sampleSize',
        EvidenceSampleSize.fromJson,
        '$objectPath.sampleSize',
      ),
      attributeEstimate: (json['attributeEstimate'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimate>(
            (v) => EvidenceAttributeEstimate.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attributeEstimate',
              },
            ),
          )
          .toList(),
      modelCharacteristic: (json['modelCharacteristic'] as List<dynamic>?)
          ?.map<EvidenceModelCharacteristic>(
            (v) => EvidenceModelCharacteristic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modelCharacteristic',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return EvidenceStatistic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'statisticType',
      statisticType,
    );
    addField(
      'category',
      category,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'numberOfEvents',
      numberOfEvents,
    );
    addField(
      'numberAffected',
      numberAffected,
    );
    addField(
      'sampleSize',
      sampleSize,
    );
    addField(
      'attributeEstimate',
      attributeEstimate,
    );
    addField(
      'modelCharacteristic',
      modelCharacteristic,
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
      'description',
      'note',
      'statisticType',
      'category',
      'quantity',
      'numberOfEvents',
      'numberAffected',
      'sampleSize',
      'attributeEstimate',
      'modelCharacteristic',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'statisticType':
        if (statisticType != null) {
          fields.add(statisticType!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'numberOfEvents':
        if (numberOfEvents != null) {
          fields.add(numberOfEvents!);
        }
      case 'numberAffected':
        if (numberAffected != null) {
          fields.add(numberAffected!);
        }
      case 'sampleSize':
        if (sampleSize != null) {
          fields.add(sampleSize!);
        }
      case 'attributeEstimate':
        if (attributeEstimate != null) {
          fields.addAll(attributeEstimate!);
        }
      case 'modelCharacteristic':
        if (modelCharacteristic != null) {
          fields.addAll(modelCharacteristic!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statisticType':
        {
          if (child is CodeableConcept) {
            return copyWith(statisticType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numberOfEvents':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(numberOfEvents: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numberAffected':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(numberAffected: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sampleSize':
        {
          if (child is EvidenceSampleSize) {
            return copyWith(sampleSize: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'attributeEstimate':
        {
          if (child is List<EvidenceAttributeEstimate>) {
            // Add all elements from passed list
            final newList = [...?attributeEstimate, ...child];
            return copyWith(attributeEstimate: newList);
          } else if (child is EvidenceAttributeEstimate) {
            // Add single element to existing list or create new list
            final newList = [...?attributeEstimate, child];
            return copyWith(attributeEstimate: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modelCharacteristic':
        {
          if (child is List<EvidenceModelCharacteristic>) {
            // Add all elements from passed list
            final newList = [...?modelCharacteristic, ...child];
            return copyWith(modelCharacteristic: newList);
          } else if (child is EvidenceModelCharacteristic) {
            // Add single element to existing list or create new list
            final newList = [...?modelCharacteristic, child];
            return copyWith(modelCharacteristic: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'description':
        return ['FhirString'];
      case 'note':
        return ['Annotation'];
      case 'statisticType':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'numberOfEvents':
        return ['FhirUnsignedInt'];
      case 'numberAffected':
        return ['FhirUnsignedInt'];
      case 'sampleSize':
        return ['EvidenceSampleSize'];
      case 'attributeEstimate':
        return ['EvidenceAttributeEstimate'];
      case 'modelCharacteristic':
        return ['EvidenceModelCharacteristic'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceStatistic]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceStatistic createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'statisticType':
        {
          return copyWith(
            statisticType: CodeableConcept.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'numberOfEvents':
        {
          return copyWith(
            numberOfEvents: FhirUnsignedInt.empty(),
          );
        }
      case 'numberAffected':
        {
          return copyWith(
            numberAffected: FhirUnsignedInt.empty(),
          );
        }
      case 'sampleSize':
        {
          return copyWith(
            sampleSize: EvidenceSampleSize.empty(),
          );
        }
      case 'attributeEstimate':
        {
          return copyWith(
            attributeEstimate: <EvidenceAttributeEstimate>[],
          );
        }
      case 'modelCharacteristic':
        {
          return copyWith(
            modelCharacteristic: <EvidenceModelCharacteristic>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceStatistic clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool statisticType = false,
    bool category = false,
    bool quantity = false,
    bool numberOfEvents = false,
    bool numberAffected = false,
    bool sampleSize = false,
    bool attributeEstimate = false,
    bool modelCharacteristic = false,
  }) {
    return EvidenceStatistic(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      note: note ? null : this.note,
      statisticType: statisticType ? null : this.statisticType,
      category: category ? null : this.category,
      quantity: quantity ? null : this.quantity,
      numberOfEvents: numberOfEvents ? null : this.numberOfEvents,
      numberAffected: numberAffected ? null : this.numberAffected,
      sampleSize: sampleSize ? null : this.sampleSize,
      attributeEstimate: attributeEstimate ? null : this.attributeEstimate,
      modelCharacteristic:
          modelCharacteristic ? null : this.modelCharacteristic,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceStatistic(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      statisticType: statisticType?.copyWith(
            objectPath: '$newObjectPath.statisticType',
          ) ??
          this.statisticType,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      numberOfEvents: numberOfEvents?.copyWith(
            objectPath: '$newObjectPath.numberOfEvents',
          ) ??
          this.numberOfEvents,
      numberAffected: numberAffected?.copyWith(
            objectPath: '$newObjectPath.numberAffected',
          ) ??
          this.numberAffected,
      sampleSize: sampleSize?.copyWith(
            objectPath: '$newObjectPath.sampleSize',
          ) ??
          this.sampleSize,
      attributeEstimate: attributeEstimate
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.attributeEstimate',
                ),
              )
              .toList() ??
          this.attributeEstimate,
      modelCharacteristic: modelCharacteristic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modelCharacteristic',
                ),
              )
              .toList() ??
          this.modelCharacteristic,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceStatistic) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statisticType,
      o.statisticType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfEvents,
      o.numberOfEvents,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberAffected,
      o.numberAffected,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sampleSize,
      o.sampleSize,
    )) {
      return false;
    }
    if (!listEquals<EvidenceAttributeEstimate>(
      attributeEstimate,
      o.attributeEstimate,
    )) {
      return false;
    }
    if (!listEquals<EvidenceModelCharacteristic>(
      modelCharacteristic,
      o.modelCharacteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceSampleSize]
/// Number of samples in the statistic.
class EvidenceSampleSize extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceSampleSize]

  const EvidenceSampleSize({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.numberOfStudies,
    this.numberOfParticipants,
    this.knownDataCount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic.sampleSize',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceSampleSize.empty() => const EvidenceSampleSize();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceSampleSize.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic.sampleSize';
    return EvidenceSampleSize(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
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
      numberOfStudies: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfStudies',
        FhirUnsignedInt.fromJson,
        '$objectPath.numberOfStudies',
      ),
      numberOfParticipants: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfParticipants',
        FhirUnsignedInt.fromJson,
        '$objectPath.numberOfParticipants',
      ),
      knownDataCount: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'knownDataCount',
        FhirUnsignedInt.fromJson,
        '$objectPath.knownDataCount',
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
    if (json is Map<String, dynamic>) {
      return EvidenceSampleSize.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'numberOfStudies',
      numberOfStudies,
    );
    addField(
      'numberOfParticipants',
      numberOfParticipants,
    );
    addField(
      'knownDataCount',
      knownDataCount,
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
      'description',
      'note',
      'numberOfStudies',
      'numberOfParticipants',
      'knownDataCount',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'numberOfStudies':
        if (numberOfStudies != null) {
          fields.add(numberOfStudies!);
        }
      case 'numberOfParticipants':
        if (numberOfParticipants != null) {
          fields.add(numberOfParticipants!);
        }
      case 'knownDataCount':
        if (knownDataCount != null) {
          fields.add(knownDataCount!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numberOfStudies':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(numberOfStudies: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numberOfParticipants':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(numberOfParticipants: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'knownDataCount':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(knownDataCount: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'description':
        return ['FhirString'];
      case 'note':
        return ['Annotation'];
      case 'numberOfStudies':
        return ['FhirUnsignedInt'];
      case 'numberOfParticipants':
        return ['FhirUnsignedInt'];
      case 'knownDataCount':
        return ['FhirUnsignedInt'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceSampleSize]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceSampleSize createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'numberOfStudies':
        {
          return copyWith(
            numberOfStudies: FhirUnsignedInt.empty(),
          );
        }
      case 'numberOfParticipants':
        {
          return copyWith(
            numberOfParticipants: FhirUnsignedInt.empty(),
          );
        }
      case 'knownDataCount':
        {
          return copyWith(
            knownDataCount: FhirUnsignedInt.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceSampleSize clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool numberOfStudies = false,
    bool numberOfParticipants = false,
    bool knownDataCount = false,
  }) {
    return EvidenceSampleSize(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      note: note ? null : this.note,
      numberOfStudies: numberOfStudies ? null : this.numberOfStudies,
      numberOfParticipants:
          numberOfParticipants ? null : this.numberOfParticipants,
      knownDataCount: knownDataCount ? null : this.knownDataCount,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceSampleSize(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      numberOfStudies: numberOfStudies?.copyWith(
            objectPath: '$newObjectPath.numberOfStudies',
          ) ??
          this.numberOfStudies,
      numberOfParticipants: numberOfParticipants?.copyWith(
            objectPath: '$newObjectPath.numberOfParticipants',
          ) ??
          this.numberOfParticipants,
      knownDataCount: knownDataCount?.copyWith(
            objectPath: '$newObjectPath.knownDataCount',
          ) ??
          this.knownDataCount,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceSampleSize) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfStudies,
      o.numberOfStudies,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfParticipants,
      o.numberOfParticipants,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      knownDataCount,
      o.knownDataCount,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceAttributeEstimate]
/// A statistical attribute of the statistic such as a measure of
/// heterogeneity.
class EvidenceAttributeEstimate extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceAttributeEstimate]

  const EvidenceAttributeEstimate({
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
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic.attributeEstimate',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceAttributeEstimate.empty() =>
      const EvidenceAttributeEstimate();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceAttributeEstimate.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic.attributeEstimate';
    return EvidenceAttributeEstimate(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      level: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'level',
        FhirDecimal.fromJson,
        '$objectPath.level',
      ),
      range: JsonParser.parseObject<Range>(
        json,
        'range',
        Range.fromJson,
        '$objectPath.range',
      ),
      attributeEstimate: (json['attributeEstimate'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimate>(
            (v) => EvidenceAttributeEstimate.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attributeEstimate',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return EvidenceAttributeEstimate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'type',
      type,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'level',
      level,
    );
    addField(
      'range',
      range,
    );
    addField(
      'attributeEstimate',
      attributeEstimate,
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
      'description',
      'note',
      'type',
      'quantity',
      'level',
      'range',
      'attributeEstimate',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'level':
        if (level != null) {
          fields.add(level!);
        }
      case 'range':
        if (range != null) {
          fields.add(range!);
        }
      case 'attributeEstimate':
        if (attributeEstimate != null) {
          fields.addAll(attributeEstimate!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'level':
        {
          if (child is FhirDecimal) {
            return copyWith(level: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'range':
        {
          if (child is Range) {
            return copyWith(range: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'attributeEstimate':
        {
          if (child is List<EvidenceAttributeEstimate>) {
            // Add all elements from passed list
            final newList = [...?attributeEstimate, ...child];
            return copyWith(attributeEstimate: newList);
          } else if (child is EvidenceAttributeEstimate) {
            // Add single element to existing list or create new list
            final newList = [...?attributeEstimate, child];
            return copyWith(attributeEstimate: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'description':
        return ['FhirString'];
      case 'note':
        return ['Annotation'];
      case 'type':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'level':
        return ['FhirDecimal'];
      case 'range':
        return ['Range'];
      case 'attributeEstimate':
        return ['EvidenceAttributeEstimate'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceAttributeEstimate]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceAttributeEstimate createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'level':
        {
          return copyWith(
            level: FhirDecimal.empty(),
          );
        }
      case 'range':
        {
          return copyWith(
            range: Range.empty(),
          );
        }
      case 'attributeEstimate':
        {
          return copyWith(
            attributeEstimate: <EvidenceAttributeEstimate>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceAttributeEstimate clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool type = false,
    bool quantity = false,
    bool level = false,
    bool range = false,
    bool attributeEstimate = false,
  }) {
    return EvidenceAttributeEstimate(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      note: note ? null : this.note,
      type: type ? null : this.type,
      quantity: quantity ? null : this.quantity,
      level: level ? null : this.level,
      range: range ? null : this.range,
      attributeEstimate: attributeEstimate ? null : this.attributeEstimate,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceAttributeEstimate(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      level: level?.copyWith(
            objectPath: '$newObjectPath.level',
          ) ??
          this.level,
      range: range?.copyWith(
            objectPath: '$newObjectPath.range',
          ) ??
          this.range,
      attributeEstimate: attributeEstimate
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.attributeEstimate',
                ),
              )
              .toList() ??
          this.attributeEstimate,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceAttributeEstimate) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      level,
      o.level,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      range,
      o.range,
    )) {
      return false;
    }
    if (!listEquals<EvidenceAttributeEstimate>(
      attributeEstimate,
      o.attributeEstimate,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceModelCharacteristic]
/// A component of the method to generate the statistic.
class EvidenceModelCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceModelCharacteristic]

  const EvidenceModelCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.value,
    this.variable,
    this.attributeEstimate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic.modelCharacteristic',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceModelCharacteristic.empty() => EvidenceModelCharacteristic(
        code: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic.modelCharacteristic';
    return EvidenceModelCharacteristic(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      value: JsonParser.parseObject<Quantity>(
        json,
        'value',
        Quantity.fromJson,
        '$objectPath.value',
      ),
      variable: (json['variable'] as List<dynamic>?)
          ?.map<EvidenceModelCharacteristicVariable>(
            (v) => EvidenceModelCharacteristicVariable.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.variable',
              },
            ),
          )
          .toList(),
      attributeEstimate: (json['attributeEstimate'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimate>(
            (v) => EvidenceAttributeEstimate.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attributeEstimate',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return EvidenceModelCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'code',
      code,
    );
    addField(
      'value',
      value,
    );
    addField(
      'variable',
      variable,
    );
    addField(
      'attributeEstimate',
      attributeEstimate,
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
      'code',
      'value',
      'variable',
      'attributeEstimate',
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
      case 'code':
        fields.add(code);
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'variable':
        if (variable != null) {
          fields.addAll(variable!);
        }
      case 'attributeEstimate':
        if (attributeEstimate != null) {
          fields.addAll(attributeEstimate!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is Quantity) {
            return copyWith(value: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variable':
        {
          if (child is List<EvidenceModelCharacteristicVariable>) {
            // Add all elements from passed list
            final newList = [...?variable, ...child];
            return copyWith(variable: newList);
          } else if (child is EvidenceModelCharacteristicVariable) {
            // Add single element to existing list or create new list
            final newList = [...?variable, child];
            return copyWith(variable: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'attributeEstimate':
        {
          if (child is List<EvidenceAttributeEstimate>) {
            // Add all elements from passed list
            final newList = [...?attributeEstimate, ...child];
            return copyWith(attributeEstimate: newList);
          } else if (child is EvidenceAttributeEstimate) {
            // Add single element to existing list or create new list
            final newList = [...?attributeEstimate, child];
            return copyWith(attributeEstimate: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'code':
        return ['CodeableConcept'];
      case 'value':
        return ['Quantity'];
      case 'variable':
        return ['EvidenceModelCharacteristicVariable'];
      case 'attributeEstimate':
        return ['EvidenceAttributeEstimate'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceModelCharacteristic]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceModelCharacteristic createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: Quantity.empty(),
          );
        }
      case 'variable':
        {
          return copyWith(
            variable: <EvidenceModelCharacteristicVariable>[],
          );
        }
      case 'attributeEstimate':
        {
          return copyWith(
            attributeEstimate: <EvidenceAttributeEstimate>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceModelCharacteristic clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool value = false,
    bool variable = false,
    bool attributeEstimate = false,
  }) {
    return EvidenceModelCharacteristic(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      value: value ? null : this.value,
      variable: variable ? null : this.variable,
      attributeEstimate: attributeEstimate ? null : this.attributeEstimate,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceModelCharacteristic(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      variable: variable
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.variable',
                ),
              )
              .toList() ??
          this.variable,
      attributeEstimate: attributeEstimate
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.attributeEstimate',
                ),
              )
              .toList() ??
          this.attributeEstimate,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceModelCharacteristic) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    if (!listEquals<EvidenceModelCharacteristicVariable>(
      variable,
      o.variable,
    )) {
      return false;
    }
    if (!listEquals<EvidenceAttributeEstimate>(
      attributeEstimate,
      o.attributeEstimate,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceModelCharacteristicVariable]
/// A variable adjusted for in the adjusted analysis.
class EvidenceModelCharacteristicVariable extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceModelCharacteristicVariable]

  const EvidenceModelCharacteristicVariable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.variableDefinition,
    this.handling,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.statistic.modelCharacteristic.variable',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceModelCharacteristicVariable.empty() =>
      EvidenceModelCharacteristicVariable(
        variableDefinition: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristicVariable.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.statistic.modelCharacteristic.variable';
    return EvidenceModelCharacteristicVariable(
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
      variableDefinition: JsonParser.parseObject<Reference>(
        json,
        'variableDefinition',
        Reference.fromJson,
        '$objectPath.variableDefinition',
      )!,
      handling: JsonParser.parsePrimitive<EvidenceVariableHandling>(
        json,
        'handling',
        EvidenceVariableHandling.fromJson,
        '$objectPath.handling',
      ),
      valueCategory: (json['valueCategory'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueCategory',
              },
            ),
          )
          .toList(),
      valueQuantity: (json['valueQuantity'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueQuantity',
              },
            ),
          )
          .toList(),
      valueRange: (json['valueRange'] as List<dynamic>?)
          ?.map<Range>(
            (v) => Range.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueRange',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return EvidenceModelCharacteristicVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'variableDefinition',
      variableDefinition,
    );
    addField(
      'handling',
      handling,
    );
    addField(
      'valueCategory',
      valueCategory,
    );
    addField(
      'valueQuantity',
      valueQuantity,
    );
    addField(
      'valueRange',
      valueRange,
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
      'variableDefinition',
      'handling',
      'valueCategory',
      'valueQuantity',
      'valueRange',
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
      case 'variableDefinition':
        fields.add(variableDefinition);
      case 'handling':
        if (handling != null) {
          fields.add(handling!);
        }
      case 'valueCategory':
        if (valueCategory != null) {
          fields.addAll(valueCategory!);
        }
      case 'valueQuantity':
        if (valueQuantity != null) {
          fields.addAll(valueQuantity!);
        }
      case 'valueRange':
        if (valueRange != null) {
          fields.addAll(valueRange!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variableDefinition':
        {
          if (child is Reference) {
            return copyWith(variableDefinition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'handling':
        {
          if (child is EvidenceVariableHandling) {
            return copyWith(handling: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCategory':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?valueCategory, ...child];
            return copyWith(valueCategory: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?valueCategory, child];
            return copyWith(valueCategory: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is List<Quantity>) {
            // Add all elements from passed list
            final newList = [...?valueQuantity, ...child];
            return copyWith(valueQuantity: newList);
          } else if (child is Quantity) {
            // Add single element to existing list or create new list
            final newList = [...?valueQuantity, child];
            return copyWith(valueQuantity: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is List<Range>) {
            // Add all elements from passed list
            final newList = [...?valueRange, ...child];
            return copyWith(valueRange: newList);
          } else if (child is Range) {
            // Add single element to existing list or create new list
            final newList = [...?valueRange, child];
            return copyWith(valueRange: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'variableDefinition':
        return ['Reference'];
      case 'handling':
        return ['FhirCode'];
      case 'valueCategory':
        return ['CodeableConcept'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueRange':
        return ['Range'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceModelCharacteristicVariable]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceModelCharacteristicVariable createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'variableDefinition':
        {
          return copyWith(
            variableDefinition: Reference.empty(),
          );
        }
      case 'handling':
        {
          return copyWith(
            handling: EvidenceVariableHandling.empty(),
          );
        }
      case 'valueCategory':
        {
          return copyWith(
            valueCategory: <CodeableConcept>[],
          );
        }
      case 'valueQuantity':
        {
          return copyWith(
            valueQuantity: <Quantity>[],
          );
        }
      case 'valueRange':
        {
          return copyWith(
            valueRange: <Range>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceModelCharacteristicVariable clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool handling = false,
    bool valueCategory = false,
    bool valueQuantity = false,
    bool valueRange = false,
  }) {
    return EvidenceModelCharacteristicVariable(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      variableDefinition: variableDefinition,
      handling: handling ? null : this.handling,
      valueCategory: valueCategory ? null : this.valueCategory,
      valueQuantity: valueQuantity ? null : this.valueQuantity,
      valueRange: valueRange ? null : this.valueRange,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceModelCharacteristicVariable(
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
      variableDefinition: variableDefinition?.copyWith(
            objectPath: '$newObjectPath.variableDefinition',
          ) ??
          this.variableDefinition,
      handling: handling?.copyWith(
            objectPath: '$newObjectPath.handling',
          ) ??
          this.handling,
      valueCategory: valueCategory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.valueCategory',
                ),
              )
              .toList() ??
          this.valueCategory,
      valueQuantity: valueQuantity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.valueQuantity',
                ),
              )
              .toList() ??
          this.valueQuantity,
      valueRange: valueRange
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.valueRange',
                ),
              )
              .toList() ??
          this.valueRange,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceModelCharacteristicVariable) {
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
      variableDefinition,
      o.variableDefinition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      valueCategory,
      o.valueCategory,
    )) {
      return false;
    }
    if (!listEquals<Quantity>(
      valueQuantity,
      o.valueQuantity,
    )) {
      return false;
    }
    if (!listEquals<Range>(
      valueRange,
      o.valueRange,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceCertainty]
/// Assessment of certainty, confidence in the estimates, or quality of the
/// evidence.
class EvidenceCertainty extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceCertainty]

  const EvidenceCertainty({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.subcomponent,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Evidence.certainty',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceCertainty.empty() => const EvidenceCertainty();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceCertainty.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Evidence.certainty';
    return EvidenceCertainty(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      rating: JsonParser.parseObject<CodeableConcept>(
        json,
        'rating',
        CodeableConcept.fromJson,
        '$objectPath.rating',
      ),
      rater: JsonParser.parsePrimitive<FhirString>(
        json,
        'rater',
        FhirString.fromJson,
        '$objectPath.rater',
      ),
      subcomponent: (json['subcomponent'] as List<dynamic>?)
          ?.map<EvidenceCertainty>(
            (v) => EvidenceCertainty.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subcomponent',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return EvidenceCertainty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'type',
      type,
    );
    addField(
      'rating',
      rating,
    );
    addField(
      'rater',
      rater,
    );
    addField(
      'subcomponent',
      subcomponent,
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
      'description',
      'note',
      'type',
      'rating',
      'rater',
      'subcomponent',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'rating':
        if (rating != null) {
          fields.add(rating!);
        }
      case 'rater':
        if (rater != null) {
          fields.add(rater!);
        }
      case 'subcomponent':
        if (subcomponent != null) {
          fields.addAll(subcomponent!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rating':
        {
          if (child is CodeableConcept) {
            return copyWith(rating: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rater':
        {
          if (child is FhirString) {
            return copyWith(rater: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subcomponent':
        {
          if (child is List<EvidenceCertainty>) {
            // Add all elements from passed list
            final newList = [...?subcomponent, ...child];
            return copyWith(subcomponent: newList);
          } else if (child is EvidenceCertainty) {
            // Add single element to existing list or create new list
            final newList = [...?subcomponent, child];
            return copyWith(subcomponent: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
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
      case 'description':
        return ['FhirString'];
      case 'note':
        return ['Annotation'];
      case 'type':
        return ['CodeableConcept'];
      case 'rating':
        return ['CodeableConcept'];
      case 'rater':
        return ['FhirString'];
      case 'subcomponent':
        return ['EvidenceCertainty'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceCertainty]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  EvidenceCertainty createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'rating':
        {
          return copyWith(
            rating: CodeableConcept.empty(),
          );
        }
      case 'rater':
        {
          return copyWith(
            rater: FhirString.empty(),
          );
        }
      case 'subcomponent':
        {
          return copyWith(
            subcomponent: <EvidenceCertainty>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  EvidenceCertainty clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool note = false,
    bool type = false,
    bool rating = false,
    bool rater = false,
    bool subcomponent = false,
  }) {
    return EvidenceCertainty(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      description: description ? null : this.description,
      note: note ? null : this.note,
      type: type ? null : this.type,
      rating: rating ? null : this.rating,
      rater: rater ? null : this.rater,
      subcomponent: subcomponent ? null : this.subcomponent,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceCertainty(
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
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      rating: rating?.copyWith(
            objectPath: '$newObjectPath.rating',
          ) ??
          this.rating,
      rater: rater?.copyWith(
            objectPath: '$newObjectPath.rater',
          ) ??
          this.rater,
      subcomponent: subcomponent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subcomponent',
                ),
              )
              .toList() ??
          this.subcomponent,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceCertainty) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rating,
      o.rating,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rater,
      o.rater,
    )) {
      return false;
    }
    if (!listEquals<EvidenceCertainty>(
      subcomponent,
      o.subcomponent,
    )) {
      return false;
    }
    return true;
  }
}
