import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EvidenceVariable]
/// The EvidenceVariable resource describes an element that knowledge
/// (Evidence) is about.
class EvidenceVariable extends DomainResource {
  /// Primary constructor for [EvidenceVariable]

  EvidenceVariable({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.EvidenceVariable,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariable.fromJson(Map<String, dynamic> json) {
    return EvidenceVariable(
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
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
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
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      actual: json['actual'] != null
          ? FhirBoolean.fromJson({
              'value': json['actual'],
              '_value': json['_actual'],
            })
          : null,
      characteristicCombination: json['characteristicCombination'] != null
          ? CharacteristicCombination.fromJson({
              'value': json['characteristicCombination'],
              '_value': json['_characteristicCombination'],
            })
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<EvidenceVariableCharacteristic>(
                (v) => EvidenceVariableCharacteristic.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      handling: json['handling'] != null
          ? EvidenceVariableHandling.fromJson({
              'value': json['handling'],
              '_value': json['_handling'],
            })
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<EvidenceVariableCategory>(
                (v) => EvidenceVariableCategory.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [EvidenceVariable] from a [String]
  /// or [YamlMap] object
  factory EvidenceVariable.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceVariable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('EvidenceVariable cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceVariable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariable';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (shortTitle?.value != null) {
      json['shortTitle'] = shortTitle!.toJson();
    }
    if (subtitle?.value != null) {
      json['subtitle'] = subtitle!.toJson();
    }
    json['status'] = status.toJson();
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map((UsageContext v) => v.toJson()).toList();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (editor != null && editor!.isNotEmpty) {
      json['editor'] = editor!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (reviewer != null && reviewer!.isNotEmpty) {
      json['reviewer'] =
          reviewer!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (endorser != null && endorser!.isNotEmpty) {
      json['endorser'] =
          endorser!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] =
          relatedArtifact!.map((RelatedArtifact v) => v.toJson()).toList();
    }
    if (actual?.value != null) {
      json['actual'] = actual!.toJson();
    }
    if (characteristicCombination != null) {
      json['characteristicCombination'] = characteristicCombination!.toJson();
    }
    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!
          .map((EvidenceVariableCharacteristic v) => v.toJson())
          .toList();
    }
    if (handling != null) {
      json['handling'] = handling!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map((EvidenceVariableCategory v) => v.toJson()).toList();
    }
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariable(
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceVariableCharacteristic]
/// A characteristic that defines the members of the evidence element.
/// Multiple characteristics are applied with "and" semantics.
class EvidenceVariableCharacteristic extends BackboneElement {
  /// Primary constructor for [EvidenceVariableCharacteristic]

  EvidenceVariableCharacteristic({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.description,
    this.definitionReference,
    this.definitionCanonical,
    this.definitionCodeableConcept,
    this.definitionExpression,
    this.method,
    this.device,
    this.exclude,
    this.timeFromStart,
    this.groupMeasure,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCharacteristic.fromJson(Map<String, dynamic> json) {
    return EvidenceVariableCharacteristic(
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
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      definitionReference: json['definitionReference'] != null
          ? Reference.fromJson(
              json['definitionReference'] as Map<String, dynamic>,
            )
          : null,
      definitionCanonical: json['definitionCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['definitionCanonical'],
              '_value': json['_definitionCanonical'],
            })
          : null,
      definitionCodeableConcept: json['definitionCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['definitionCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      definitionExpression: json['definitionExpression'] != null
          ? FhirExpression.fromJson(
              json['definitionExpression'] as Map<String, dynamic>,
            )
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      device: json['device'] != null
          ? Reference.fromJson(
              json['device'] as Map<String, dynamic>,
            )
          : null,
      exclude: json['exclude'] != null
          ? FhirBoolean.fromJson({
              'value': json['exclude'],
              '_value': json['_exclude'],
            })
          : null,
      timeFromStart: json['timeFromStart'] != null
          ? EvidenceVariableTimeFromStart.fromJson(
              json['timeFromStart'] as Map<String, dynamic>,
            )
          : null,
      groupMeasure: json['groupMeasure'] != null
          ? GroupMeasure.fromJson({
              'value': json['groupMeasure'],
              '_value': json['_groupMeasure'],
            })
          : null,
    );
  }

  /// Deserialize [EvidenceVariableCharacteristic] from a [String]
  /// or [YamlMap] object
  factory EvidenceVariableCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? EvidenceVariableCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceVariableCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EvidenceVariableCharacteristic cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceVariableCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableCharacteristic';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [description]
  /// A short, natural language description of the characteristic that could
  /// be used to communicate the criteria to an end-user.
  final FhirString? description;

  /// [definitionReference]
  /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final Reference? definitionReference;

  /// [definitionCanonical]
  /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final FhirCanonical? definitionCanonical;

  /// [definitionCodeableConcept]
  /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final CodeableConcept? definitionCodeableConcept;

  /// [definitionExpression]
  /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
  /// diagnosis onset in the last year).
  final FhirExpression? definitionExpression;

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
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (definitionReference != null) {
      json['definitionReference'] = definitionReference!.toJson();
    }
    if (definitionCanonical?.value != null) {
      json['definitionCanonical'] = definitionCanonical!.toJson();
    }
    if (definitionCodeableConcept != null) {
      json['definitionCodeableConcept'] = definitionCodeableConcept!.toJson();
    }
    if (definitionExpression != null) {
      json['definitionExpression'] = definitionExpression!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (device != null) {
      json['device'] = device!.toJson();
    }
    if (exclude?.value != null) {
      json['exclude'] = exclude!.toJson();
    }
    if (timeFromStart != null) {
      json['timeFromStart'] = timeFromStart!.toJson();
    }
    if (groupMeasure != null) {
      json['groupMeasure'] = groupMeasure!.toJson();
    }
    return json;
  }

  @override
  EvidenceVariableCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceVariableCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Reference? definitionReference,
    FhirCanonical? definitionCanonical,
    CodeableConcept? definitionCodeableConcept,
    FhirExpression? definitionExpression,
    CodeableConcept? method,
    Reference? device,
    FhirBoolean? exclude,
    EvidenceVariableTimeFromStart? timeFromStart,
    GroupMeasure? groupMeasure,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      definitionReference: definitionReference ?? this.definitionReference,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCodeableConcept:
          definitionCodeableConcept ?? this.definitionCodeableConcept,
      definitionExpression: definitionExpression ?? this.definitionExpression,
      method: method ?? this.method,
      device: device ?? this.device,
      exclude: exclude ?? this.exclude,
      timeFromStart: timeFromStart ?? this.timeFromStart,
      groupMeasure: groupMeasure ?? this.groupMeasure,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceVariableTimeFromStart]
/// Indicates duration, period, or point of observation from the
/// participant's study entry.
class EvidenceVariableTimeFromStart extends BackboneElement {
  /// Primary constructor for [EvidenceVariableTimeFromStart]

  EvidenceVariableTimeFromStart({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.description,
    this.quantity,
    this.range,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableTimeFromStart.fromJson(Map<String, dynamic> json) {
    return EvidenceVariableTimeFromStart(
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
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      range: json['range'] != null
          ? Range.fromJson(
              json['range'] as Map<String, dynamic>,
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

  /// Deserialize [EvidenceVariableTimeFromStart] from a [String]
  /// or [YamlMap] object
  factory EvidenceVariableTimeFromStart.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableTimeFromStart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceVariableTimeFromStart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EvidenceVariableTimeFromStart cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceVariableTimeFromStart]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableTimeFromStart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableTimeFromStart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableTimeFromStart';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (range != null) {
      json['range'] = range!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
    }
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableTimeFromStart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      range: range ?? this.range,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceVariableCategory]
/// A grouping (or set of values) described along with other groupings to
/// specify the set of groupings allowed for the variable.
class EvidenceVariableCategory extends BackboneElement {
  /// Primary constructor for [EvidenceVariableCategory]

  EvidenceVariableCategory({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.name,
    this.valueCodeableConcept,
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
  factory EvidenceVariableCategory.fromJson(Map<String, dynamic> json) {
    return EvidenceVariableCategory(
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
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EvidenceVariableCategory] from a [String]
  /// or [YamlMap] object
  factory EvidenceVariableCategory.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableCategory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceVariableCategory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EvidenceVariableCategory cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceVariableCategory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableCategory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableCategory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableCategory';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// A human-readable title or representation of the grouping.
  final FhirString? name;

  /// [valueCodeableConcept]
  /// Value or set of values that define the grouping.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// Value or set of values that define the grouping.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// Value or set of values that define the grouping.
  final Range? valueRange;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }
    return json;
  }

  @override
  EvidenceVariableCategory clone() => throw UnimplementedError();
  @override
  EvidenceVariableCategory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableCategory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
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
