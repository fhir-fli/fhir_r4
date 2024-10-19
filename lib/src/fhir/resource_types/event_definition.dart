// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [EventDefinition]
/// The EventDefinition resource provides a reusable description of when a
/// particular event can occur.
@Entity()
class EventDefinition extends DomainResource {
  /// Primary constructor for
  /// [EventDefinition]

  EventDefinition({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.subtitle,
    required this.status,
    this.experimental,
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
    required this.trigger,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.EventDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EventDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return EventDefinition(
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
      trigger: ensureNonNullList(
        (json['trigger'] as List<dynamic>)
            .map<TriggerDefinition>(
              (v) => TriggerDefinition.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [EventDefinition]
  /// from a [String] or [YamlMap] object
  factory EventDefinition.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? EventDefinition.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? EventDefinition.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'EventDefinition '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [EventDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EventDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EventDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'EventDefinition';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [url]
  /// An absolute URI that is used to identify this event definition when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this event definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// event definition is stored on different servers.
  FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this event definition when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the event
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the event definition
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  FhirString? version;

  /// [name]
  /// A natural language name identifying the event definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the event definition.
  FhirString? title;

  /// [subtitle]
  /// An explanatory or alternate title for the event definition giving
  /// additional information about its content.
  FhirString? subtitle;

  /// [status]
  /// The status of this event definition. Enables tracking the life-cycle of
  /// the content.
  PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this event definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  FhirBoolean? experimental;

  /// [subjectCodeableConcept]
  /// A code or group definition that describes the intended subject of the
  /// event definition.
  CodeableConcept? subjectCodeableConcept;

  /// [subjectReference]
  /// A code or group definition that describes the intended subject of the
  /// event definition.
  Reference? subjectReference;

  /// [date]
  /// The date (and optionally time) when the event definition was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the event definition changes.
  FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the event
  /// definition.
  FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the event definition from a
  /// consumer's perspective.
  FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate event definition instances.
  List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the event definition is intended
  /// to be used.
  List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this event definition is needed and why it has been
  /// designed as it has.
  FhirMarkdown? purpose;

  /// [usage]
  /// A detailed description of how the event definition is used from a
  /// clinical perspective.
  FhirString? usage;

  /// [copyright]
  /// A copyright statement relating to the event definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the event definition.
  FhirMarkdown? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  FhirDate? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  FhirDate? lastReviewDate;

  /// [effectivePeriod]
  /// The period during which the event definition content was or is planned
  /// to be in active use.
  Period? effectivePeriod;

  /// [topic]
  /// Descriptive topics related to the module. Topics provide a high-level
  /// categorization of the module that can be useful for filtering and
  /// searching.
  List<CodeableConcept>? topic;

  /// [author]
  /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  List<ContactDetail>? author;

  /// [editor]
  /// An individual or organization primarily responsible for internal
  /// coherence of the content.
  List<ContactDetail>? editor;

  /// [reviewer]
  /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  List<ContactDetail>? reviewer;

  /// [endorser]
  /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  List<ContactDetail>? endorser;

  /// [relatedArtifact]
  /// Related resources such as additional documentation, justification, or
  /// bibliographic references.
  List<RelatedArtifact>? relatedArtifact;

  /// [trigger]
  /// The trigger element defines when the event occurs. If more than one
  /// trigger condition is specified, the event fires whenever any one of the
  /// trigger conditions is met.
  List<TriggerDefinition> trigger;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
    }

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

    if (url != null) {
      final fieldJson7 = url!.toJson();
      json['url'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_url'] = fieldJson7['_value'];
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (version != null) {
      final fieldJson9 = version!.toJson();
      json['version'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_version'] = fieldJson9['_value'];
      }
    }

    if (name != null) {
      final fieldJson10 = name!.toJson();
      json['name'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_name'] = fieldJson10['_value'];
      }
    }

    if (title != null) {
      final fieldJson11 = title!.toJson();
      json['title'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_title'] = fieldJson11['_value'];
      }
    }

    if (subtitle != null) {
      final fieldJson12 = subtitle!.toJson();
      json['subtitle'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_subtitle'] = fieldJson12['_value'];
      }
    }

    final fieldJson13 = status.toJson();
    json['status'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_status'] = fieldJson13['_value'];
    }

    if (experimental != null) {
      final fieldJson14 = experimental!.toJson();
      json['experimental'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_experimental'] = fieldJson14['_value'];
      }
    }

    if (subjectCodeableConcept != null) {
      json['subjectCodeableConcept'] = subjectCodeableConcept!.toJson();
    }

    if (subjectReference != null) {
      json['subjectReference'] = subjectReference!.toJson();
    }

    if (date != null) {
      final fieldJson17 = date!.toJson();
      json['date'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_date'] = fieldJson17['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson18 = publisher!.toJson();
      json['publisher'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_publisher'] = fieldJson18['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson20 = description!.toJson();
      json['description'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_description'] = fieldJson20['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      final fieldJson23 = purpose!.toJson();
      json['purpose'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_purpose'] = fieldJson23['_value'];
      }
    }

    if (usage != null) {
      final fieldJson24 = usage!.toJson();
      json['usage'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_usage'] = fieldJson24['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson25 = copyright!.toJson();
      json['copyright'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_copyright'] = fieldJson25['_value'];
      }
    }

    if (approvalDate != null) {
      final fieldJson26 = approvalDate!.toJson();
      json['approvalDate'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_approvalDate'] = fieldJson26['_value'];
      }
    }

    if (lastReviewDate != null) {
      final fieldJson27 = lastReviewDate!.toJson();
      json['lastReviewDate'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_lastReviewDate'] = fieldJson27['_value'];
      }
    }

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

    json['trigger'] = trigger.map((e) => e.toJson()).toList();

    return json;
  }

  @override
  EventDefinition clone() => throw UnimplementedError();
  @override
  EventDefinition copyWith({
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
    List<TriggerDefinition>? trigger,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EventDefinition(
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
      trigger: trigger ?? this.trigger,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
