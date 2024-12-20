import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'library.g.dart';

/// [Library]
/// The Library resource is a general-purpose container for knowledge asset
/// definitions. It can be used to describe and expose existing knowledge
/// assets such as logic libraries and information model descriptions, as
/// well as to describe a collection of knowledge assets.
class Library extends CanonicalResource {
  /// Primary constructor for
  /// [Library]

  const Library({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    this.name,
    this.title,
    this.subtitle,
    required super.status,
    super.experimental,
    required this.type,
    this.subjectXLibraryLibrary,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
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
    this.parameter,
    this.dataRequirement,
    this.content,
  }) : super(
          resourceType: R4ResourceType.Library,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Library.fromJson(
    Map<String, dynamic> json,
  ) {
    return Library(
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
      subtitle: (json['subtitle'] != null || json['_subtitle'] != null)
          ? FhirString.fromJson({
              'value': json['subtitle'],
              '_value': json['_subtitle'],
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
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      subjectXLibraryLibrary: json['subjectCodeableConcept'] != null ||
              json['_subjectCodeableConcept'] != null
          ? CodeableConceptSubjectLibraryLibrary.fromJson({
              'value': json['subjectCodeableConcept'],
              '_value': json['_subjectCodeableConcept'],
            })
          : json['subjectReference'] != null ||
                  json['_subjectReference'] != null
              ? ReferenceSubjectLibraryLibrary.fromJson({
                  'value': json['subjectReference'],
                  '_value': json['_subjectReference'],
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
      usage: (json['usage'] != null || json['_usage'] != null)
          ? FhirString.fromJson({
              'value': json['usage'],
              '_value': json['_usage'],
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
      topic: json['topic'] != null
          ? (json['topic'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
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
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<ParameterDefinition>(
                (v) => ParameterDefinition.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dataRequirement: json['dataRequirement'] != null
          ? (json['dataRequirement'] as List<dynamic>)
              .map<DataRequirement>(
                (v) => DataRequirement.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      content: json['content'] != null
          ? (json['content'] as List<dynamic>)
              .map<Attachment>(
                (v) => Attachment.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Library]
  /// from a [String] or [YamlMap] object
  factory Library.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Library.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Library.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Library '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Library]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Library.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Library.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Library';

  /// [identifier]
  /// A formal identifier that is used to identify this library when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance. e.g. CMS or NQF identifiers for a measure
  /// artifact. Note that at least one identifier is required for
  /// non-experimental active artifacts.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the library. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the library.
  final FhirString? title;

  /// [subtitle]
  /// An explanatory or alternate title for the library giving additional
  /// information about its content.
  final FhirString? subtitle;

  /// [type]
  /// Identifies the type of library such as a Logic Library, Model
  /// Definition, Asset Collection, or Module Definition.
  final CodeableConcept type;

  /// [subjectXLibraryLibrary]
  /// A code or group definition that describes the intended subject of the
  /// contents of the library.
  final SubjectXLibraryLibrary? subjectXLibraryLibrary;

  /// [purpose]
  /// Explanation of why this library is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;

  /// [usage]
  /// A detailed description of how the library is used from a clinical
  /// perspective.
  final FhirString? usage;

  /// [copyright]
  /// A copyright statement relating to the library and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the library.
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
  /// The period during which the library content was or is planned to be in
  /// active use.
  final Period? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the content of the library. Topics
  /// provide a high-level categorization of the library that can be useful
  /// for filtering and searching.
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

  /// [parameter]
  /// The parameter element defines parameters used by the library.
  final List<ParameterDefinition>? parameter;

  /// [dataRequirement]
  /// Describes a set of data that must be provided in order to be able to
  /// successfully perform the computations defined by the library.
  final List<DataRequirement>? dataRequirement;

  /// [content]
  /// The content of the library as an Attachment. The content may be a
  /// reference to a url, or may be directly embedded as a base-64 string.
  /// Either way, the contentType of the attachment determines how to
  /// interpret the content.
  final List<Attachment>? content;
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
    addField('subtitle', subtitle);
    addField('status', status);
    addField('experimental', experimental);
    json['type'] = type.toJson();

    if (subjectXLibraryLibrary != null) {
      json['subjectXLibraryLibrary'] = subjectXLibraryLibrary!.toJson();
    }

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

    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    if (dataRequirement != null && dataRequirement!.isNotEmpty) {
      json['dataRequirement'] =
          dataRequirement!.map((e) => e.toJson()).toList();
    }

    if (content != null && content!.isNotEmpty) {
      json['content'] = content!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Library clone() => throw UnimplementedError();
  @override
  Library copyWith({
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
    FhirString? subtitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    CodeableConcept? type,
    SubjectXLibraryLibrary? subjectXLibraryLibrary,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
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
    List<ParameterDefinition>? parameter,
    List<DataRequirement>? dataRequirement,
    List<Attachment>? content,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Library(
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
      subtitle: subtitle ?? this.subtitle,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      type: type ?? this.type,
      subjectXLibraryLibrary:
          subjectXLibraryLibrary ?? this.subjectXLibraryLibrary,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
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
      parameter: parameter ?? this.parameter,
      dataRequirement: dataRequirement ?? this.dataRequirement,
      content: content ?? this.content,
    );
  }
}
