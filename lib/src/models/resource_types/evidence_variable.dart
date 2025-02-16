import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EvidenceVariable]
/// The EvidenceVariable resource describes an element that knowledge
/// (Evidence) is about.
class EvidenceVariable extends DomainResource {
  /// Primary constructor for
  /// [EvidenceVariable]

  const EvidenceVariable({
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
    this.date,
    this.description,
    this.note,
    this.useContext,
    this.publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.actual,
    this.characteristicCombination,
    this.characteristic,
    this.handling,
    this.category,
  }) : super(
          objectPath: 'EvidenceVariable',
          resourceType: R4ResourceType.EvidenceVariable,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceVariable.empty() => EvidenceVariable(
        status: PublicationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariable.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable';
    return EvidenceVariable(
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
      shortTitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'shortTitle',
        FhirString.fromJson,
        '$objectPath.shortTitle',
      ),
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
        FhirString.fromJson,
        '$objectPath.subtitle',
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
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
        '$objectPath.actual',
      ),
      characteristicCombination:
          JsonParser.parsePrimitive<CharacteristicCombination>(
        json,
        'characteristicCombination',
        CharacteristicCombination.fromJson,
        '$objectPath.characteristicCombination',
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<EvidenceVariableCharacteristic>(
            (v) => EvidenceVariableCharacteristic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
      handling: JsonParser.parsePrimitive<EvidenceVariableHandling>(
        json,
        'handling',
        EvidenceVariableHandling.fromJson,
        '$objectPath.handling',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<EvidenceVariableCategory>(
            (v) => EvidenceVariableCategory.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceVariable]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariable.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariable.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariable.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariable '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariable';

  /// [url]
  /// An absolute URI that is used to identify this evidence variable when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this evidence variable is (or will be) published. This URL can be
  /// the target of a canonical reference. It SHALL remain the same when the
  /// evidence variable is stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this evidence variable
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the evidence
  /// variable when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the evidence variable
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence. To provide a version consistent with the
  /// Decision Support Service specification, use the format
  /// Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  /// knowledge assets, refer to the Decision Support Service specification.
  /// Note that a version is required for non-experimental active artifacts.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the evidence variable. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the evidence variable.
  final FhirString? title;

  /// [shortTitle]
  /// The short title provides an alternate title for use in informal
  /// descriptive contexts where the full, formal title is not necessary.
  final FhirString? shortTitle;

  /// [subtitle]
  /// An explanatory or alternate title for the EvidenceVariable giving
  /// additional information about its content.
  final FhirString? subtitle;

  /// [status]
  /// The status of this evidence variable. Enables tracking the life-cycle
  /// of the content.
  final PublicationStatus status;

  /// [date]
  /// The date (and optionally time) when the evidence variable was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the evidence variable changes.
  final FhirDateTime? date;

  /// [description]
  /// A free text natural language description of the evidence variable from
  /// a consumer's perspective.
  final FhirMarkdown? description;

  /// [note]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
  final List<Annotation>? note;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate evidence variable instances.
  final List<UsageContext>? useContext;

  /// [publisher]
  /// The name of the organization or individual that published the evidence
  /// variable.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

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

  /// [actual]
  /// True if the actual variable measured, false if a conceptual
  /// representation of the intended variable.
  final FhirBoolean? actual;

  /// [characteristicCombination]
  /// Used to specify if two or more characteristics are combined with OR or
  /// AND.
  final CharacteristicCombination? characteristicCombination;

  /// [characteristic]
  /// A characteristic that defines the members of the evidence element.
  /// Multiple characteristics are applied with "and" semantics.
  final List<EvidenceVariableCharacteristic>? characteristic;

  /// [handling]
  /// Used for an outcome to classify.
  final EvidenceVariableHandling? handling;

  /// [category]
  /// A grouping (or set of values) described along with other groupings to
  /// specify the set of groupings allowed for the variable.
  final List<EvidenceVariableCategory>? category;
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
    addField('shortTitle', shortTitle);
    addField('subtitle', subtitle);
    addField('status', status);
    addField('date', date);
    addField('description', description);
    addField('note', note);
    addField('useContext', useContext);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('author', author);
    addField('editor', editor);
    addField('reviewer', reviewer);
    addField('endorser', endorser);
    addField('relatedArtifact', relatedArtifact);
    addField('actual', actual);
    addField('characteristicCombination', characteristicCombination);
    addField('characteristic', characteristic);
    addField('handling', handling);
    addField('category', category);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
      'shortTitle',
      'subtitle',
      'status',
      'date',
      'description',
      'note',
      'useContext',
      'publisher',
      'contact',
      'author',
      'editor',
      'reviewer',
      'endorser',
      'relatedArtifact',
      'actual',
      'characteristicCombination',
      'characteristic',
      'handling',
      'category',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'shortTitle':
        if (shortTitle != null) {
          fields.add(shortTitle!);
        }
      case 'subtitle':
        if (subtitle != null) {
          fields.add(subtitle!);
        }
      case 'status':
        fields.add(status);
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
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
      case 'actual':
        if (actual != null) {
          fields.add(actual!);
        }
      case 'characteristicCombination':
        if (characteristicCombination != null) {
          fields.add(characteristicCombination!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'handling':
        if (handling != null) {
          fields.add(handling!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EvidenceVariable clone() => throw UnimplementedError();
  @override
  EvidenceVariable copyWith({
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
    FhirDateTime? date,
    FhirMarkdown? description,
    List<Annotation>? note,
    List<UsageContext>? useContext,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirBoolean? actual,
    CharacteristicCombination? characteristicCombination,
    List<EvidenceVariableCharacteristic>? characteristic,
    EvidenceVariableHandling? handling,
    List<EvidenceVariableCategory>? category,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return EvidenceVariable(
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
      shortTitle: shortTitle?.copyWith(
            objectPath: '$newObjectPath.shortTitle',
          ) ??
          this.shortTitle,
      subtitle: subtitle?.copyWith(
            objectPath: '$newObjectPath.subtitle',
          ) ??
          this.subtitle,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
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
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
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
      actual: actual?.copyWith(
            objectPath: '$newObjectPath.actual',
          ) ??
          this.actual,
      characteristicCombination: characteristicCombination?.copyWith(
            objectPath: '$newObjectPath.characteristicCombination',
          ) ??
          this.characteristicCombination,
      characteristic: characteristic
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.characteristic',
                ),
              )
              .toList() ??
          this.characteristic,
      handling: handling?.copyWith(
            objectPath: '$newObjectPath.handling',
          ) ??
          this.handling,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariable) {
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
    if (!equalsDeepWithNull(shortTitle, o.shortTitle)) {
      return false;
    }
    if (!equalsDeepWithNull(subtitle, o.subtitle)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
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
    if (!equalsDeepWithNull(actual, o.actual)) {
      return false;
    }
    if (!equalsDeepWithNull(
        characteristicCombination, o.characteristicCombination)) {
      return false;
    }
    if (!listEquals<EvidenceVariableCharacteristic>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(handling, o.handling)) {
      return false;
    }
    if (!listEquals<EvidenceVariableCategory>(
      category,
      o.category,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableCharacteristic]
/// A characteristic that defines the members of the evidence element.
/// Multiple characteristics are applied with "and" semantics.
class EvidenceVariableCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableCharacteristic]

  const EvidenceVariableCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    required this.definitionX,
    this.method,
    this.device,
    this.exclude,
    this.timeFromStart,
    this.groupMeasure,
    super.disallowExtensions,
  }) : super(
          objectPath: 'EvidenceVariable.characteristic',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceVariableCharacteristic.empty() =>
      EvidenceVariableCharacteristic(
        definitionX: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.characteristic';
    return EvidenceVariableCharacteristic(
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
      definitionX: JsonParser.parsePolymorphic<
          DefinitionXEvidenceVariableCharacteristic>(
        json,
        {
          'definitionReference': Reference.fromJson,
          'definitionCanonical': FhirCanonical.fromJson,
          'definitionCodeableConcept': CodeableConcept.fromJson,
          'definitionExpression': FhirExpression.fromJson,
        },
        objectPath,
      )!,
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
        '$objectPath.device',
      ),
      exclude: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exclude',
        FhirBoolean.fromJson,
        '$objectPath.exclude',
      ),
      timeFromStart: JsonParser.parseObject<EvidenceVariableTimeFromStart>(
        json,
        'timeFromStart',
        EvidenceVariableTimeFromStart.fromJson,
        '$objectPath.timeFromStart',
      ),
      groupMeasure: JsonParser.parsePrimitive<GroupMeasure>(
        json,
        'groupMeasure',
        GroupMeasure.fromJson,
        '$objectPath.groupMeasure',
      ),
    );
  }

  /// Deserialize [EvidenceVariableCharacteristic]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableCharacteristic';

  /// [description]
  /// A short, natural language description of the characteristic that could
  /// be used to communicate the criteria to an end-user.
  final FhirString? description;

  /// [definitionX]
  /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final DefinitionXEvidenceVariableCharacteristic definitionX;

  /// Getter for [definitionReference] as a Reference
  Reference? get definitionReference => definitionX.isAs<Reference>();

  /// Getter for [definitionCanonical] as a FhirCanonical
  FhirCanonical? get definitionCanonical => definitionX.isAs<FhirCanonical>();

  /// Getter for [definitionCodeableConcept] as a CodeableConcept
  CodeableConcept? get definitionCodeableConcept =>
      definitionX.isAs<CodeableConcept>();

  /// Getter for [definitionExpression] as a FhirExpression
  FhirExpression? get definitionExpression =>
      definitionX.isAs<FhirExpression>();

  /// [method]
  /// Method used for describing characteristic.
  final CodeableConcept? method;

  /// [device]
  /// Device used for determining characteristic.
  final Reference? device;

  /// [exclude]
  /// When true, members with this characteristic are excluded from the
  /// element.
  final FhirBoolean? exclude;

  /// [timeFromStart]
  /// Indicates duration, period, or point of observation from the
  /// participant's study entry.
  final EvidenceVariableTimeFromStart? timeFromStart;

  /// [groupMeasure]
  /// Indicates how elements are aggregated within the study effective
  /// period.
  final GroupMeasure? groupMeasure;
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
    addField('description', description);
    final definitionXFhirType = definitionX.fhirType;
    addField('definition${definitionXFhirType.capitalize()}', definitionX);

    addField('method', method);
    addField('device', device);
    addField('exclude', exclude);
    addField('timeFromStart', timeFromStart);
    addField('groupMeasure', groupMeasure);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'definitionX',
      'method',
      'device',
      'exclude',
      'timeFromStart',
      'groupMeasure',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'definition':
        fields.add(definitionX);
      case 'definitionX':
        fields.add(definitionX);
      case 'definitionReference':
        if (definitionX is Reference) {
          fields.add(definitionX);
        }
      case 'definitionCanonical':
        if (definitionX is FhirCanonical) {
          fields.add(definitionX);
        }
      case 'definitionCodeableConcept':
        if (definitionX is CodeableConcept) {
          fields.add(definitionX);
        }
      case 'definitionExpression':
        if (definitionX is FhirExpression) {
          fields.add(definitionX);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'exclude':
        if (exclude != null) {
          fields.add(exclude!);
        }
      case 'timeFromStart':
        if (timeFromStart != null) {
          fields.add(timeFromStart!);
        }
      case 'groupMeasure':
        if (groupMeasure != null) {
          fields.add(groupMeasure!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EvidenceVariableCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceVariableCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    DefinitionXEvidenceVariableCharacteristic? definitionX,
    CodeableConcept? method,
    Reference? device,
    FhirBoolean? exclude,
    EvidenceVariableTimeFromStart? timeFromStart,
    GroupMeasure? groupMeasure,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceVariableCharacteristic(
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
      definitionX: definitionX?.copyWith(
            objectPath: '$newObjectPath.definitionX',
          ) as DefinitionXEvidenceVariableCharacteristic? ??
          this.definitionX,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      device: device?.copyWith(
            objectPath: '$newObjectPath.device',
          ) ??
          this.device,
      exclude: exclude?.copyWith(
            objectPath: '$newObjectPath.exclude',
          ) ??
          this.exclude,
      timeFromStart: timeFromStart?.copyWith(
            objectPath: '$newObjectPath.timeFromStart',
          ) ??
          this.timeFromStart,
      groupMeasure: groupMeasure?.copyWith(
            objectPath: '$newObjectPath.groupMeasure',
          ) ??
          this.groupMeasure,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableCharacteristic) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(definitionX, o.definitionX)) {
      return false;
    }
    if (!equalsDeepWithNull(method, o.method)) {
      return false;
    }
    if (!equalsDeepWithNull(device, o.device)) {
      return false;
    }
    if (!equalsDeepWithNull(exclude, o.exclude)) {
      return false;
    }
    if (!equalsDeepWithNull(timeFromStart, o.timeFromStart)) {
      return false;
    }
    if (!equalsDeepWithNull(groupMeasure, o.groupMeasure)) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableTimeFromStart]
/// Indicates duration, period, or point of observation from the
/// participant's study entry.
class EvidenceVariableTimeFromStart extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableTimeFromStart]

  const EvidenceVariableTimeFromStart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.quantity,
    this.range,
    this.note,
    super.disallowExtensions,
  }) : super(
          objectPath: 'EvidenceVariable.characteristic.timeFromStart',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceVariableTimeFromStart.empty() =>
      EvidenceVariableTimeFromStart();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableTimeFromStart.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.characteristic.timeFromStart';
    return EvidenceVariableTimeFromStart(
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
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      range: JsonParser.parseObject<Range>(
        json,
        'range',
        Range.fromJson,
        '$objectPath.range',
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

  /// Deserialize [EvidenceVariableTimeFromStart]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableTimeFromStart.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableTimeFromStart.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableTimeFromStart.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableTimeFromStart '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableTimeFromStart]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableTimeFromStart.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableTimeFromStart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableTimeFromStart';

  /// [description]
  /// A short, natural language description.
  final FhirString? description;

  /// [quantity]
  /// Used to express the observation at a defined amount of time after the
  /// study start.
  final Quantity? quantity;

  /// [range]
  /// Used to express the observation within a period after the study start.
  final Range? range;

  /// [note]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
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
    addField('description', description);
    addField('quantity', quantity);
    addField('range', range);
    addField('note', note);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'quantity',
      'range',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'range':
        if (range != null) {
          fields.add(range!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EvidenceVariableTimeFromStart clone() => throw UnimplementedError();
  @override
  EvidenceVariableTimeFromStart copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Quantity? quantity,
    Range? range,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceVariableTimeFromStart(
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
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      range: range?.copyWith(
            objectPath: '$newObjectPath.range',
          ) ??
          this.range,
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
    if (o is! EvidenceVariableTimeFromStart) {
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
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(quantity, o.quantity)) {
      return false;
    }
    if (!equalsDeepWithNull(range, o.range)) {
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

/// [EvidenceVariableCategory]
/// A grouping (or set of values) described along with other groupings to
/// specify the set of groupings allowed for the variable.
class EvidenceVariableCategory extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableCategory]

  const EvidenceVariableCategory({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'EvidenceVariable.category',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory EvidenceVariableCategory.empty() => EvidenceVariableCategory();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.category';
    return EvidenceVariableCategory(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXEvidenceVariableCategory>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [EvidenceVariableCategory]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableCategory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableCategory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableCategory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableCategory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableCategory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableCategory.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableCategory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableCategory';

  /// [name]
  /// A human-readable title or representation of the grouping.
  final FhirString? name;

  /// [valueX]
  /// Value or set of values that define the grouping.
  final ValueXEvidenceVariableCategory? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EvidenceVariableCategory clone() => throw UnimplementedError();
  @override
  EvidenceVariableCategory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    ValueXEvidenceVariableCategory? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return EvidenceVariableCategory(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXEvidenceVariableCategory? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableCategory) {
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
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    return true;
  }
}
