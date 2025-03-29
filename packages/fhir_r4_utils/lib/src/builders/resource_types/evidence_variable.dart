import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        EvidenceVariable,
        EvidenceVariableCharacteristic,
        EvidenceVariableTimeFromStart,
        EvidenceVariableCategory;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Extension to change [EvidenceVariable] to a Builder
extension BuilderEvidenceVariable on EvidenceVariable {
  /// Converts [EvidenceVariable] to a [EvidenceVariableBuilder]
  EvidenceVariableBuilder get toBuilder =>
      EvidenceVariableBuilder.fromJson(toJson());
}

/// [EvidenceVariableBuilder]
/// The EvidenceVariable resource describes an element that knowledge
/// (Evidence) is about.
class EvidenceVariableBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [EvidenceVariableBuilder]

  EvidenceVariableBuilder({
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
    this.status,
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
  /// For Builder classes, no fields are required
  factory EvidenceVariableBuilder.empty() => EvidenceVariableBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable';
    return EvidenceVariableBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      shortTitle: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'shortTitle',
        FhirStringBuilder.fromJson,
        '$objectPath.shortTitle',
      ),
      subtitle: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'subtitle',
        FhirStringBuilder.fromJson,
        '$objectPath.subtitle',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      publisher: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'publisher',
        FhirStringBuilder.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.editor',
              },
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reviewer',
              },
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endorser',
              },
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
              },
            ),
          )
          .toList(),
      actual: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'actual',
        FhirBooleanBuilder.fromJson,
        '$objectPath.actual',
      ),
      characteristicCombination:
          JsonParser.parsePrimitive<CharacteristicCombinationBuilder>(
        json,
        'characteristicCombination',
        CharacteristicCombinationBuilder.fromJson,
        '$objectPath.characteristicCombination',
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<EvidenceVariableCharacteristicBuilder>(
            (v) => EvidenceVariableCharacteristicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
      handling: JsonParser.parsePrimitive<EvidenceVariableHandlingBuilder>(
        json,
        'handling',
        EvidenceVariableHandlingBuilder.fromJson,
        '$objectPath.handling',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<EvidenceVariableCategoryBuilder>(
            (v) => EvidenceVariableCategoryBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceVariableBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableBuilder.fromJson(json);
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
  FhirUriBuilder? url;

  /// [identifier]
  /// A formal identifier that is used to identify this evidence variable
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  List<IdentifierBuilder>? identifier;

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
  FhirStringBuilder? version;

  /// [name]
  /// A natural language name identifying the evidence variable. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the evidence variable.
  FhirStringBuilder? title;

  /// [shortTitle]
  /// The short title provides an alternate title for use in informal
  /// descriptive contexts where the full, formal title is not necessary.
  FhirStringBuilder? shortTitle;

  /// [subtitle]
  /// An explanatory or alternate title for the EvidenceVariable giving
  /// additional information about its content.
  FhirStringBuilder? subtitle;

  /// [status]
  /// The status of this evidence variable. Enables tracking the life-cycle
  /// of the content.
  PublicationStatusBuilder? status;

  /// [date]
  /// The date (and optionally time) when the evidence variable was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the evidence variable changes.
  FhirDateTimeBuilder? date;

  /// [description]
  /// A free text natural language description of the evidence variable from
  /// a consumer's perspective.
  FhirMarkdownBuilder? description;

  /// [note]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
  List<AnnotationBuilder>? note;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate evidence variable instances.
  List<UsageContextBuilder>? useContext;

  /// [publisher]
  /// The name of the organization or individual that published the evidence
  /// variable.
  FhirStringBuilder? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  List<ContactDetailBuilder>? contact;

  /// [author]
  /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  List<ContactDetailBuilder>? author;

  /// [editor]
  /// An individual or organization primarily responsible for internal
  /// coherence of the content.
  List<ContactDetailBuilder>? editor;

  /// [reviewer]
  /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  List<ContactDetailBuilder>? reviewer;

  /// [endorser]
  /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  List<ContactDetailBuilder>? endorser;

  /// [relatedArtifact]
  /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  List<RelatedArtifactBuilder>? relatedArtifact;

  /// [actual]
  /// True if the actual variable measured, false if a conceptual
  /// representation of the intended variable.
  FhirBooleanBuilder? actual;

  /// [characteristicCombination]
  /// Used to specify if two or more characteristics are combined with OR or
  /// AND.
  CharacteristicCombinationBuilder? characteristicCombination;

  /// [characteristic]
  /// A characteristic that defines the members of the evidence element.
  /// Multiple characteristics are applied with "and" semantics.
  List<EvidenceVariableCharacteristicBuilder>? characteristic;

  /// [handling]
  /// Used for an outcome to classify.
  EvidenceVariableHandlingBuilder? handling;

  /// [category]
  /// A grouping (or set of values) described along with other groupings to
  /// specify the set of groupings allowed for the variable.
  List<EvidenceVariableCategoryBuilder>? category;

  /// Converts a EvidenceVariableBuilder to [EvidenceVariable]
  EvidenceVariable build() => EvidenceVariable.fromJson(toJson());

  /// Converts a [EvidenceVariableBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'shortTitle':
        {
          if (child is FhirStringBuilder) {
            shortTitle = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subtitle':
        {
          if (child is FhirStringBuilder) {
            subtitle = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [...(useContext ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [...(contact ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'author':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            author = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            author = [...(author ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'editor':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            editor = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            editor = [...(editor ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reviewer':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            reviewer = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            reviewer = [...(reviewer ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endorser':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            endorser = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            endorser = [...(endorser ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            relatedArtifact = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            relatedArtifact = [...(relatedArtifact ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actual':
        {
          if (child is FhirBooleanBuilder) {
            actual = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'characteristicCombination':
        {
          if (child is CharacteristicCombinationBuilder) {
            characteristicCombination = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'characteristic':
        {
          if (child is List<EvidenceVariableCharacteristicBuilder>) {
            // Replace or create new list
            characteristic = child;
            return;
          } else if (child is EvidenceVariableCharacteristicBuilder) {
            // Add single element to existing list or create new list
            characteristic = [...(characteristic ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'handling':
        {
          if (child is EvidenceVariableHandlingBuilder) {
            handling = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<EvidenceVariableCategoryBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is EvidenceVariableCategoryBuilder) {
            // Add single element to existing list or create new list
            category = [...(category ?? []), child];
            return;
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'shortTitle':
        return ['FhirStringBuilder'];
      case 'subtitle':
        return ['FhirStringBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'author':
        return ['ContactDetailBuilder'];
      case 'editor':
        return ['ContactDetailBuilder'];
      case 'reviewer':
        return ['ContactDetailBuilder'];
      case 'endorser':
        return ['ContactDetailBuilder'];
      case 'relatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'actual':
        return ['FhirBooleanBuilder'];
      case 'characteristicCombination':
        return ['FhirCodeEnumBuilder'];
      case 'characteristic':
        return ['EvidenceVariableCharacteristicBuilder'];
      case 'handling':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['EvidenceVariableCategoryBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'shortTitle':
        {
          shortTitle = FhirStringBuilder.empty();
          return;
        }
      case 'subtitle':
        {
          subtitle = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'publisher':
        {
          publisher = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'author':
        {
          author = <ContactDetailBuilder>[];
          return;
        }
      case 'editor':
        {
          editor = <ContactDetailBuilder>[];
          return;
        }
      case 'reviewer':
        {
          reviewer = <ContactDetailBuilder>[];
          return;
        }
      case 'endorser':
        {
          endorser = <ContactDetailBuilder>[];
          return;
        }
      case 'relatedArtifact':
        {
          relatedArtifact = <RelatedArtifactBuilder>[];
          return;
        }
      case 'actual':
        {
          actual = FhirBooleanBuilder.empty();
          return;
        }
      case 'characteristicCombination':
        {
          characteristicCombination = CharacteristicCombinationBuilder.empty();
          return;
        }
      case 'characteristic':
        {
          characteristic = <EvidenceVariableCharacteristicBuilder>[];
          return;
        }
      case 'handling':
        {
          handling = EvidenceVariableHandlingBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <EvidenceVariableCategoryBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    bool name = false,
    bool title = false,
    bool shortTitle = false,
    bool subtitle = false,
    bool status = false,
    bool date = false,
    bool description = false,
    bool note = false,
    bool useContext = false,
    bool publisher = false,
    bool contact = false,
    bool author = false,
    bool editor = false,
    bool reviewer = false,
    bool endorser = false,
    bool relatedArtifact = false,
    bool actual = false,
    bool characteristicCombination = false,
    bool characteristic = false,
    bool handling = false,
    bool category = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (url) this.url = null;
    if (identifier) this.identifier = null;
    if (version) this.version = null;
    if (name) this.name = null;
    if (title) this.title = null;
    if (shortTitle) this.shortTitle = null;
    if (subtitle) this.subtitle = null;
    if (status) this.status = null;
    if (date) this.date = null;
    if (description) this.description = null;
    if (note) this.note = null;
    if (useContext) this.useContext = null;
    if (publisher) this.publisher = null;
    if (contact) this.contact = null;
    if (author) this.author = null;
    if (editor) this.editor = null;
    if (reviewer) this.reviewer = null;
    if (endorser) this.endorser = null;
    if (relatedArtifact) this.relatedArtifact = null;
    if (actual) this.actual = null;
    if (characteristicCombination) this.characteristicCombination = null;
    if (characteristic) this.characteristic = null;
    if (handling) this.handling = null;
    if (category) this.category = null;
  }

  @override
  EvidenceVariableBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    FhirStringBuilder? shortTitle,
    FhirStringBuilder? subtitle,
    PublicationStatusBuilder? status,
    FhirDateTimeBuilder? date,
    FhirMarkdownBuilder? description,
    List<AnnotationBuilder>? note,
    List<UsageContextBuilder>? useContext,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    List<ContactDetailBuilder>? author,
    List<ContactDetailBuilder>? editor,
    List<ContactDetailBuilder>? reviewer,
    List<ContactDetailBuilder>? endorser,
    List<RelatedArtifactBuilder>? relatedArtifact,
    FhirBooleanBuilder? actual,
    CharacteristicCombinationBuilder? characteristicCombination,
    List<EvidenceVariableCharacteristicBuilder>? characteristic,
    EvidenceVariableHandlingBuilder? handling,
    List<EvidenceVariableCategoryBuilder>? category,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = EvidenceVariableBuilder(
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
      date: date ?? this.date,
      description: description ?? this.description,
      note: note ?? this.note,
      useContext: useContext ?? this.useContext,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      actual: actual ?? this.actual,
      characteristicCombination:
          characteristicCombination ?? this.characteristicCombination,
      characteristic: characteristic ?? this.characteristic,
      handling: handling ?? this.handling,
      category: category ?? this.category,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceVariableBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<IdentifierBuilder>(
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
      name,
      o.name,
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
      shortTitle,
      o.shortTitle,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subtitle,
      o.subtitle,
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
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actual,
      o.actual,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      characteristicCombination,
      o.characteristicCombination,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableCharacteristicBuilder>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableCategoryBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [EvidenceVariableCharacteristic] to a Builder
extension BuilderEvidenceVariableCharacteristic
    on EvidenceVariableCharacteristic {
  /// Converts [EvidenceVariableCharacteristic] to a [EvidenceVariableCharacteristicBuilder]
  EvidenceVariableCharacteristicBuilder get toBuilder =>
      EvidenceVariableCharacteristicBuilder.fromJson(toJson());
}

/// [EvidenceVariableCharacteristicBuilder]
/// A characteristic that defines the members of the evidence element.
/// Multiple characteristics are applied with "and" semantics.
class EvidenceVariableCharacteristicBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableCharacteristicBuilder]

  EvidenceVariableCharacteristicBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.definitionX,
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
  /// For Builder classes, no fields are required
  factory EvidenceVariableCharacteristicBuilder.empty() =>
      EvidenceVariableCharacteristicBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.characteristic';
    return EvidenceVariableCharacteristicBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      definitionX: JsonParser.parsePolymorphic<
          DefinitionXEvidenceVariableCharacteristicBuilder>(
        json,
        {
          'definitionReference': ReferenceBuilder.fromJson,
          'definitionCanonical': FhirCanonicalBuilder.fromJson,
          'definitionCodeableConcept': CodeableConceptBuilder.fromJson,
          'definitionExpression': FhirExpressionBuilder.fromJson,
        },
        objectPath,
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      device: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'device',
        ReferenceBuilder.fromJson,
        '$objectPath.device',
      ),
      exclude: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'exclude',
        FhirBooleanBuilder.fromJson,
        '$objectPath.exclude',
      ),
      timeFromStart:
          JsonParser.parseObject<EvidenceVariableTimeFromStartBuilder>(
        json,
        'timeFromStart',
        EvidenceVariableTimeFromStartBuilder.fromJson,
        '$objectPath.timeFromStart',
      ),
      groupMeasure: JsonParser.parsePrimitive<GroupMeasureBuilder>(
        json,
        'groupMeasure',
        GroupMeasureBuilder.fromJson,
        '$objectPath.groupMeasure',
      ),
    );
  }

  /// Deserialize [EvidenceVariableCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableCharacteristicBuilder.fromJson(json);
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
  FhirStringBuilder? description;

  /// [definitionX]
  /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  DefinitionXEvidenceVariableCharacteristicBuilder? definitionX;

  /// Getter for [definitionReference] as a ReferenceBuilder
  ReferenceBuilder? get definitionReference =>
      definitionX?.isAs<ReferenceBuilder>();

  /// Getter for [definitionCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get definitionCanonical =>
      definitionX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [definitionCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get definitionCodeableConcept =>
      definitionX?.isAs<CodeableConceptBuilder>();

  /// Getter for [definitionExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get definitionExpression =>
      definitionX?.isAs<FhirExpressionBuilder>();

  /// [method]
  /// Method used for describing characteristic.
  CodeableConceptBuilder? method;

  /// [device]
  /// Device used for determining characteristic.
  ReferenceBuilder? device;

  /// [exclude]
  /// When true, members with this characteristic are excluded from the
  /// element.
  FhirBooleanBuilder? exclude;

  /// [timeFromStart]
  /// Indicates duration, period, or point of observation from the
  /// participant's study entry.
  EvidenceVariableTimeFromStartBuilder? timeFromStart;

  /// [groupMeasure]
  /// Indicates how elements are aggregated within the study effective
  /// period.
  GroupMeasureBuilder? groupMeasure;

  /// Converts a EvidenceVariableCharacteristicBuilder to [EvidenceVariableCharacteristic]
  EvidenceVariableCharacteristic build() =>
      EvidenceVariableCharacteristic.fromJson(toJson());

  /// Converts a [EvidenceVariableCharacteristicBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('description', description);
    if (definitionX != null) {
      final fhirType = definitionX!.fhirType;
      addField('definition${fhirType.capitalize()}', definitionX);
    }

    addField('method', method);
    addField('device', device);
    addField('exclude', exclude);
    addField('timeFromStart', timeFromStart);
    addField('groupMeasure', groupMeasure);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (definitionX != null) {
          fields.add(definitionX!);
        }
      case 'definitionX':
        if (definitionX != null) {
          fields.add(definitionX!);
        }
      case 'definitionReference':
        if (definitionX is ReferenceBuilder) {
          fields.add(definitionX!);
        }
      case 'definitionCanonical':
        if (definitionX is FhirCanonicalBuilder) {
          fields.add(definitionX!);
        }
      case 'definitionCodeableConcept':
        if (definitionX is CodeableConceptBuilder) {
          fields.add(definitionX!);
        }
      case 'definitionExpression':
        if (definitionX is FhirExpressionBuilder) {
          fields.add(definitionX!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionX':
        {
          if (child is DefinitionXEvidenceVariableCharacteristicBuilder) {
            definitionX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              definitionX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              definitionX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              definitionX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              definitionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definitionReference':
        {
          if (child is ReferenceBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definitionExpression':
        {
          if (child is FhirExpressionBuilder) {
            definitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'device':
        {
          if (child is ReferenceBuilder) {
            device = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exclude':
        {
          if (child is FhirBooleanBuilder) {
            exclude = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timeFromStart':
        {
          if (child is EvidenceVariableTimeFromStartBuilder) {
            timeFromStart = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'groupMeasure':
        {
          if (child is GroupMeasureBuilder) {
            groupMeasure = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'definition':
      case 'definitionX':
        return [
          'ReferenceBuilder',
          'FhirCanonicalBuilder',
          'CodeableConceptBuilder',
          'FhirExpressionBuilder'
        ];
      case 'definitionReference':
        return ['ReferenceBuilder'];
      case 'definitionCanonical':
        return ['FhirCanonicalBuilder'];
      case 'definitionCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'definitionExpression':
        return ['FhirExpressionBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'device':
        return ['ReferenceBuilder'];
      case 'exclude':
        return ['FhirBooleanBuilder'];
      case 'timeFromStart':
        return ['EvidenceVariableTimeFromStartBuilder'];
      case 'groupMeasure':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableCharacteristicBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'definition':
      case 'definitionX':
      case 'definitionReference':
        {
          definitionX = ReferenceBuilder.empty();
          return;
        }
      case 'definitionCanonical':
        {
          definitionX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'definitionCodeableConcept':
        {
          definitionX = CodeableConceptBuilder.empty();
          return;
        }
      case 'definitionExpression':
        {
          definitionX = FhirExpressionBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'device':
        {
          device = ReferenceBuilder.empty();
          return;
        }
      case 'exclude':
        {
          exclude = FhirBooleanBuilder.empty();
          return;
        }
      case 'timeFromStart':
        {
          timeFromStart = EvidenceVariableTimeFromStartBuilder.empty();
          return;
        }
      case 'groupMeasure':
        {
          groupMeasure = GroupMeasureBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool definition = false,
    bool method = false,
    bool device = false,
    bool exclude = false,
    bool timeFromStart = false,
    bool groupMeasure = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (definition) this.definitionX = null;
    if (method) this.method = null;
    if (device) this.device = null;
    if (exclude) this.exclude = null;
    if (timeFromStart) this.timeFromStart = null;
    if (groupMeasure) this.groupMeasure = null;
  }

  @override
  EvidenceVariableCharacteristicBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    DefinitionXEvidenceVariableCharacteristicBuilder? definitionX,
    CodeableConceptBuilder? method,
    ReferenceBuilder? device,
    FhirBooleanBuilder? exclude,
    EvidenceVariableTimeFromStartBuilder? timeFromStart,
    GroupMeasureBuilder? groupMeasure,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableCharacteristicBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      definitionX: definitionX ?? this.definitionX,
      method: method ?? this.method,
      device: device ?? this.device,
      exclude: exclude ?? this.exclude,
      timeFromStart: timeFromStart ?? this.timeFromStart,
      groupMeasure: groupMeasure ?? this.groupMeasure,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceVariableCharacteristicBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!equalsDeepWithNull(
      definitionX,
      o.definitionX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      exclude,
      o.exclude,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timeFromStart,
      o.timeFromStart,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      groupMeasure,
      o.groupMeasure,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [EvidenceVariableTimeFromStart] to a Builder
extension BuilderEvidenceVariableTimeFromStart
    on EvidenceVariableTimeFromStart {
  /// Converts [EvidenceVariableTimeFromStart] to a [EvidenceVariableTimeFromStartBuilder]
  EvidenceVariableTimeFromStartBuilder get toBuilder =>
      EvidenceVariableTimeFromStartBuilder.fromJson(toJson());
}

/// [EvidenceVariableTimeFromStartBuilder]
/// Indicates duration, period, or point of observation from the
/// participant's study entry.
class EvidenceVariableTimeFromStartBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableTimeFromStartBuilder]

  EvidenceVariableTimeFromStartBuilder({
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
  /// For Builder classes, no fields are required
  factory EvidenceVariableTimeFromStartBuilder.empty() =>
      EvidenceVariableTimeFromStartBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableTimeFromStartBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.characteristic.timeFromStart';
    return EvidenceVariableTimeFromStartBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      range: JsonParser.parseObject<RangeBuilder>(
        json,
        'range',
        RangeBuilder.fromJson,
        '$objectPath.range',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceVariableTimeFromStartBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableTimeFromStartBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableTimeFromStartBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableTimeFromStartBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableTimeFromStartBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableTimeFromStartBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableTimeFromStartBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableTimeFromStartBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableTimeFromStart';

  /// [description]
  /// A short, natural language description.
  FhirStringBuilder? description;

  /// [quantity]
  /// Used to express the observation at a defined amount of time after the
  /// study start.
  QuantityBuilder? quantity;

  /// [range]
  /// Used to express the observation within a period after the study start.
  RangeBuilder? range;

  /// [note]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
  List<AnnotationBuilder>? note;

  /// Converts a EvidenceVariableTimeFromStartBuilder to [EvidenceVariableTimeFromStart]
  EvidenceVariableTimeFromStart build() =>
      EvidenceVariableTimeFromStart.fromJson(toJson());

  /// Converts a [EvidenceVariableTimeFromStartBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'range':
        {
          if (child is RangeBuilder) {
            range = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'range':
        return ['RangeBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableTimeFromStartBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'range':
        {
          range = RangeBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool description = false,
    bool quantity = false,
    bool range = false,
    bool note = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (quantity) this.quantity = null;
    if (range) this.range = null;
    if (note) this.note = null;
  }

  @override
  EvidenceVariableTimeFromStartBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableTimeFromStartBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    QuantityBuilder? quantity,
    RangeBuilder? range,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableTimeFromStartBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      range: range ?? this.range,
      note: note ?? this.note,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceVariableTimeFromStartBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      range,
      o.range,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [EvidenceVariableCategory] to a Builder
extension BuilderEvidenceVariableCategory on EvidenceVariableCategory {
  /// Converts [EvidenceVariableCategory] to a [EvidenceVariableCategoryBuilder]
  EvidenceVariableCategoryBuilder get toBuilder =>
      EvidenceVariableCategoryBuilder.fromJson(toJson());
}

/// [EvidenceVariableCategoryBuilder]
/// A grouping (or set of values) described along with other groupings to
/// specify the set of groupings allowed for the variable.
class EvidenceVariableCategoryBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableCategoryBuilder]

  EvidenceVariableCategoryBuilder({
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
  /// For Builder classes, no fields are required
  factory EvidenceVariableCategoryBuilder.empty() =>
      EvidenceVariableCategoryBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.category';
    return EvidenceVariableCategoryBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      valueX:
          JsonParser.parsePolymorphic<ValueXEvidenceVariableCategoryBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [EvidenceVariableCategoryBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableCategoryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableCategoryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableCategoryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableCategoryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableCategoryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableCategoryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableCategoryBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableCategory';

  /// [name]
  /// A human-readable title or representation of the grouping.
  FhirStringBuilder? name;

  /// [valueX]
  /// Value or set of values that define the grouping.
  ValueXEvidenceVariableCategoryBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Converts a EvidenceVariableCategoryBuilder to [EvidenceVariableCategory]
  EvidenceVariableCategory build() =>
      EvidenceVariableCategory.fromJson(toJson());

  /// Converts a [EvidenceVariableCategoryBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXEvidenceVariableCategoryBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'value':
      case 'valueX':
        return ['CodeableConceptBuilder', 'QuantityBuilder', 'RangeBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableCategoryBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool value = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (value) this.valueX = null;
  }

  @override
  EvidenceVariableCategoryBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableCategoryBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    ValueXEvidenceVariableCategoryBuilder? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableCategoryBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      valueX: valueX ?? this.valueX,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EvidenceVariableCategoryBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
