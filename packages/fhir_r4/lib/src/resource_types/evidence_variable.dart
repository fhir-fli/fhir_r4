import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'evidence_variable.g.dart';

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
          resourceType: R4ResourceType.EvidenceVariable,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariable.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariable(
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
      shortTitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'shortTitle',
        FhirString.fromJson,
      ),
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
      ),
      characteristicCombination:
          JsonParser.parsePrimitive<CharacteristicCombination>(
        json,
        'characteristicCombination',
        CharacteristicCombination.fromJson,
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<EvidenceVariableCharacteristic>(
            (v) => EvidenceVariableCharacteristic.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      handling: JsonParser.parsePrimitive<EvidenceVariableHandling>(
        json,
        'handling',
        EvidenceVariableHandling.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<EvidenceVariableCategory>(
            (v) => EvidenceVariableCategory.fromJson(
              {...v as Map<String, dynamic>},
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'shortTitle',
      shortTitle,
    );
    addField(
      'subtitle',
      subtitle,
    );
    addField(
      'status',
      status,
    );
    addField(
      'date',
      date,
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
      'useContext',
      useContext,
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
      'actual',
      actual,
    );
    addField(
      'characteristicCombination',
      characteristicCombination,
    );
    addField(
      'characteristic',
      characteristic,
    );
    addField(
      'handling',
      handling,
    );
    addField(
      'category',
      category,
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EvidenceVariable clone() => copyWith();

  /// Copy function for [EvidenceVariable]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableCopyWith<EvidenceVariable> get copyWith =>
      _$EvidenceVariableCopyWithImpl<EvidenceVariable>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariable) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      shortTitle,
      o.shortTitle,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subtitle,
      o.subtitle,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<RelatedArtifact>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      actual,
      o.actual,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      characteristicCombination,
      o.characteristicCombination,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceVariableCharacteristic>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceVariableCategory>(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableCharacteristic(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
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
      )!,
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      ),
      exclude: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exclude',
        FhirBoolean.fromJson,
      ),
      timeFromStart: JsonParser.parseObject<EvidenceVariableTimeFromStart>(
        json,
        'timeFromStart',
        EvidenceVariableTimeFromStart.fromJson,
      ),
      groupMeasure: JsonParser.parsePrimitive<GroupMeasure>(
        json,
        'groupMeasure',
        GroupMeasure.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
    final definitionXFhirType = definitionX.fhirType;
    addField(
      'definition${definitionXFhirType.capitalize()}',
      definitionX,
    );

    addField(
      'method',
      method,
    );
    addField(
      'device',
      device,
    );
    addField(
      'exclude',
      exclude,
    );
    addField(
      'timeFromStart',
      timeFromStart,
    );
    addField(
      'groupMeasure',
      groupMeasure,
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EvidenceVariableCharacteristic clone() => copyWith();

  /// Copy function for [EvidenceVariableCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableCharacteristicCopyWith<EvidenceVariableCharacteristic>
      get copyWith => _$EvidenceVariableCharacteristicCopyWithImpl<
              EvidenceVariableCharacteristic>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableCharacteristic) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      definitionX,
      o.definitionX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      exclude,
      o.exclude,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      timeFromStart,
      o.timeFromStart,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      groupMeasure,
      o.groupMeasure,
    )) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableTimeFromStart.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableTimeFromStart(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      range: JsonParser.parseObject<Range>(
        json,
        'range',
        Range.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
      'quantity',
      quantity,
    );
    addField(
      'range',
      range,
    );
    addField(
      'note',
      note,
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
      'quantity',
      'range',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EvidenceVariableTimeFromStart clone() => copyWith();

  /// Copy function for [EvidenceVariableTimeFromStart]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableTimeFromStartCopyWith<EvidenceVariableTimeFromStart>
      get copyWith => _$EvidenceVariableTimeFromStartCopyWithImpl<
              EvidenceVariableTimeFromStart>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableTimeFromStart) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      range,
      o.range,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
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
    ValueXEvidenceVariableCategory? valueX,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    super.disallowExtensions,
  })  : valueX = valueX ?? valueCodeableConcept ?? valueQuantity ?? valueRange,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableCategory(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      valueX: JsonParser.parsePolymorphic<ValueXEvidenceVariableCategory>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
        },
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
      'name',
      name,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EvidenceVariableCategory clone() => copyWith();

  /// Copy function for [EvidenceVariableCategory]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableCategoryCopyWith<EvidenceVariableCategory> get copyWith =>
      _$EvidenceVariableCategoryCopyWithImpl<EvidenceVariableCategory>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableCategory) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
