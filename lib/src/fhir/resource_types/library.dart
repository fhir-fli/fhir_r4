import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Library]
/// The Library resource is a general-purpose container for knowledge asset
/// definitions. It can be used to describe and expose existing knowledge
/// assets such as logic libraries and information model descriptions, as
/// well as to describe a collection of knowledge assets.
class Library extends DomainResource {
  /// Primary constructor for [Library]

  Library({
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
    this.subtitle,
    required this.status,
    this.experimental,
    required this.type,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Library,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Library.fromJson(Map<String, dynamic> json) {
    return Library(
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
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson({
              'value': json['experimental'],
              '_value': json['_experimental'],
            })
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(
              json['subjectReference'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
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
      description: json['description'] != null
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
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      usage: json['usage'] != null
          ? FhirString.fromJson({
              'value': json['usage'],
              '_value': json['_usage'],
            })
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson({
              'value': json['approvalDate'],
              '_value': json['_approvalDate'],
            })
          : null,
      lastReviewDate: json['lastReviewDate'] != null
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

  /// Deserialize [Library] from a [String]
  /// or [YamlMap] object
  factory Library.fromYaml(dynamic yaml) => yaml is String
      ? Library.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Library.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Library cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Library]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Library.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this library when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this library is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the library is
  /// stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this library when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance. e.g. CMS or NQF identifiers for a measure
  /// artifact. Note that at least one identifier is required for
  /// non-experimental active artifacts.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the library
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the library author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  /// To provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For
  /// more information on versioning knowledge assets, refer to the Decision
  /// Support Service specification. Note that a version is required for
  /// non-experimental active artifacts.
  final FhirString? version;

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

  /// [status]
  /// The status of this library. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this library is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be
  /// used for genuine usage.
  final FhirBoolean? experimental;

  /// [type]
  /// Identifies the type of library such as a Logic Library, Model
  /// Definition, Asset Collection, or Module Definition.
  final CodeableConcept type;

  /// [subjectCodeableConcept]
  /// A code or group definition that describes the intended subject of the
  /// contents of the library.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference]
  /// A code or group definition that describes the intended subject of the
  /// contents of the library.
  final Reference? subjectReference;

  /// [date]
  /// The date (and optionally time) when the library was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the library changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the library.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the library from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate library instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the library is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (url != null) {
      final fieldJson8 = url!.toJson();
      json['url'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_url'] = fieldJson8['_value'];
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson9 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (version != null) {
      final fieldJson10 = version!.toJson();
      json['version'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_version'] = fieldJson10['_value'];
      }
    }

    if (name != null) {
      final fieldJson11 = name!.toJson();
      json['name'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_name'] = fieldJson11['_value'];
      }
    }

    if (title != null) {
      final fieldJson12 = title!.toJson();
      json['title'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_title'] = fieldJson12['_value'];
      }
    }

    if (subtitle != null) {
      final fieldJson13 = subtitle!.toJson();
      json['subtitle'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_subtitle'] = fieldJson13['_value'];
      }
    }

    final fieldJson14 = status.toJson();
    json['status'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_status'] = fieldJson14['_value'];
    }

    if (experimental != null) {
      final fieldJson15 = experimental!.toJson();
      json['experimental'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_experimental'] = fieldJson15['_value'];
      }
    }

    final fieldJson16 = type.toJson();
    json['type'] = fieldJson16['value'];
    if (fieldJson16['_value'] != null) {
      json['_type'] = fieldJson16['_value'];
    }

    if (subjectCodeableConcept != null) {
      final fieldJson17 = subjectCodeableConcept!.toJson();
      json['subjectCodeableConcept'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_subjectCodeableConcept'] = fieldJson17['_value'];
      }
    }

    if (subjectReference != null) {
      final fieldJson18 = subjectReference!.toJson();
      json['subjectReference'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_subjectReference'] = fieldJson18['_value'];
      }
    }

    if (date != null) {
      final fieldJson19 = date!.toJson();
      json['date'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_date'] = fieldJson19['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson20 = publisher!.toJson();
      json['publisher'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_publisher'] = fieldJson20['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson21 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson22 = description!.toJson();
      json['description'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_description'] = fieldJson22['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      final fieldJson23 = useContext!.map((e) => e.toJson()).toList();
      json['useContext'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_useContext'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      final fieldJson24 = jurisdiction!.map((e) => e.toJson()).toList();
      json['jurisdiction'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_jurisdiction'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (purpose != null) {
      final fieldJson25 = purpose!.toJson();
      json['purpose'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_purpose'] = fieldJson25['_value'];
      }
    }

    if (usage != null) {
      final fieldJson26 = usage!.toJson();
      json['usage'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_usage'] = fieldJson26['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson27 = copyright!.toJson();
      json['copyright'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_copyright'] = fieldJson27['_value'];
      }
    }

    if (approvalDate != null) {
      final fieldJson28 = approvalDate!.toJson();
      json['approvalDate'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_approvalDate'] = fieldJson28['_value'];
      }
    }

    if (lastReviewDate != null) {
      final fieldJson29 = lastReviewDate!.toJson();
      json['lastReviewDate'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_lastReviewDate'] = fieldJson29['_value'];
      }
    }

    if (effectivePeriod != null) {
      final fieldJson30 = effectivePeriod!.toJson();
      json['effectivePeriod'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_effectivePeriod'] = fieldJson30['_value'];
      }
    }

    if (topic != null && topic!.isNotEmpty) {
      final fieldJson31 = topic!.map((e) => e.toJson()).toList();
      json['topic'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_topic'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (author != null && author!.isNotEmpty) {
      final fieldJson32 = author!.map((e) => e.toJson()).toList();
      json['author'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_author'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (editor != null && editor!.isNotEmpty) {
      final fieldJson33 = editor!.map((e) => e.toJson()).toList();
      json['editor'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_editor'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (reviewer != null && reviewer!.isNotEmpty) {
      final fieldJson34 = reviewer!.map((e) => e.toJson()).toList();
      json['reviewer'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_reviewer'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (endorser != null && endorser!.isNotEmpty) {
      final fieldJson35 = endorser!.map((e) => e.toJson()).toList();
      json['endorser'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_endorser'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      final fieldJson36 = relatedArtifact!.map((e) => e.toJson()).toList();
      json['relatedArtifact'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_relatedArtifact'] = fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (parameter != null && parameter!.isNotEmpty) {
      final fieldJson37 = parameter!.map((e) => e.toJson()).toList();
      json['parameter'] = fieldJson37.map((e) => e['value']).toList();
      if (fieldJson37.any((e) => e['_value'] != null)) {
        json['_parameter'] = fieldJson37.map((e) => e['_value']).toList();
      }
    }

    if (dataRequirement != null && dataRequirement!.isNotEmpty) {
      final fieldJson38 = dataRequirement!.map((e) => e.toJson()).toList();
      json['dataRequirement'] = fieldJson38.map((e) => e['value']).toList();
      if (fieldJson38.any((e) => e['_value'] != null)) {
        json['_dataRequirement'] = fieldJson38.map((e) => e['_value']).toList();
      }
    }

    if (content != null && content!.isNotEmpty) {
      final fieldJson39 = content!.map((e) => e.toJson()).toList();
      json['content'] = fieldJson39.map((e) => e['value']).toList();
      if (fieldJson39.any((e) => e['_value'] != null)) {
        json['_content'] = fieldJson39.map((e) => e['_value']).toList();
      }
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
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
