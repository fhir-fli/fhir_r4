import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EvidenceReport]
/// The EvidenceReport Resource is a specialized container for a collection
/// of resources and codable concepts, adapted to support compositions of
/// Evidence, EvidenceVariable, and Citation resources and related
/// concepts.
class EvidenceReport extends DomainResource {
  /// Primary constructor for [EvidenceReport]

  EvidenceReport({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.url,
    required this.status,
    this.useContext,
    this.identifier,
    this.relatedIdentifier,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.type,
    this.note,
    this.relatedArtifact,
    required this.subject,
    this.publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatesTo,
    this.section,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.EvidenceReport,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReport.fromJson(Map<String, dynamic> json) {
    return EvidenceReport(
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
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      relatedIdentifier: json['relatedIdentifier'] != null
          ? (json['relatedIdentifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      citeAsReference: json['citeAsReference'] != null
          ? Reference.fromJson(
              json['citeAsReference'] as Map<String, dynamic>,
            )
          : null,
      citeAsMarkdown: json['citeAsMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['citeAsMarkdown'],
              '_value': json['_citeAsMarkdown'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
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
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>(
                (v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subject: EvidenceReportSubject.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
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
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<EvidenceReportRelatesTo>(
                (v) => EvidenceReportRelatesTo.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      section: json['section'] != null
          ? (json['section'] as List<dynamic>)
              .map<EvidenceReportSection>(
                (v) => EvidenceReportSection.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [EvidenceReport] from a [String]
  /// or [YamlMap] object
  factory EvidenceReport.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('EvidenceReport cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceReport]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReport';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this EvidenceReport when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this summary is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the summary is
  /// stored on different servers.
  final FhirUri? url;

  /// [status]
  /// The status of this summary. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate evidence report instances.
  final List<UsageContext>? useContext;

  /// [identifier]
  /// A formal identifier that is used to identify this EvidenceReport when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [relatedIdentifier]
  /// A formal identifier that is used to identify things closely related to
  /// this EvidenceReport.
  final List<Identifier>? relatedIdentifier;

  /// [citeAsReference]
  /// Citation Resource or display of suggested citation for this report.
  final Reference? citeAsReference;

  /// [citeAsMarkdown]
  /// Citation Resource or display of suggested citation for this report.
  final FhirMarkdown? citeAsMarkdown;

  /// [type]
  /// Specifies the kind of report, such as grouping of classifiers, search
  /// results, or human-compiled expression.
  final CodeableConcept? type;

  /// [note]
  /// Used for footnotes and annotations.
  final List<Annotation>? note;

  /// [relatedArtifact]
  /// Link, description or reference to artifact associated with the report.
  final List<RelatedArtifact>? relatedArtifact;

  /// [subject]
  /// Specifies the subject or focus of the report. Answers "What is this
  /// report about?".
  final EvidenceReportSubject subject;

  /// [publisher]
  /// The name of the organization or individual that published the evidence
  /// report.
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

  /// [relatesTo]
  /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  final List<EvidenceReportRelatesTo>? relatesTo;

  /// [section]
  /// The root of the sections that make up the composition.
  final List<EvidenceReportSection>? section;
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

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    if (useContext != null && useContext!.isNotEmpty) {
      final fieldJson10 = useContext!.map((e) => e.toJson()).toList();
      json['useContext'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_useContext'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson11 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (relatedIdentifier != null && relatedIdentifier!.isNotEmpty) {
      final fieldJson12 = relatedIdentifier!.map((e) => e.toJson()).toList();
      json['relatedIdentifier'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_relatedIdentifier'] =
            fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (citeAsReference != null) {
      final fieldJson13 = citeAsReference!.toJson();
      json['citeAsReference'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_citeAsReference'] = fieldJson13['_value'];
      }
    }

    if (citeAsMarkdown != null) {
      final fieldJson14 = citeAsMarkdown!.toJson();
      json['citeAsMarkdown'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_citeAsMarkdown'] = fieldJson14['_value'];
      }
    }

    if (type != null) {
      final fieldJson15 = type!.toJson();
      json['type'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_type'] = fieldJson15['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson16 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      final fieldJson17 = relatedArtifact!.map((e) => e.toJson()).toList();
      json['relatedArtifact'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_relatedArtifact'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    final fieldJson18 = subject.toJson();
    json['subject'] = fieldJson18['value'];
    if (fieldJson18['_value'] != null) {
      json['_subject'] = fieldJson18['_value'];
    }

    if (publisher != null) {
      final fieldJson19 = publisher!.toJson();
      json['publisher'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_publisher'] = fieldJson19['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson20 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (author != null && author!.isNotEmpty) {
      final fieldJson21 = author!.map((e) => e.toJson()).toList();
      json['author'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_author'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (editor != null && editor!.isNotEmpty) {
      final fieldJson22 = editor!.map((e) => e.toJson()).toList();
      json['editor'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_editor'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (reviewer != null && reviewer!.isNotEmpty) {
      final fieldJson23 = reviewer!.map((e) => e.toJson()).toList();
      json['reviewer'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_reviewer'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (endorser != null && endorser!.isNotEmpty) {
      final fieldJson24 = endorser!.map((e) => e.toJson()).toList();
      json['endorser'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_endorser'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (relatesTo != null && relatesTo!.isNotEmpty) {
      final fieldJson25 = relatesTo!.map((e) => e.toJson()).toList();
      json['relatesTo'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_relatesTo'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (section != null && section!.isNotEmpty) {
      final fieldJson26 = section!.map((e) => e.toJson()).toList();
      json['section'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_section'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  EvidenceReport clone() => throw UnimplementedError();
  @override
  EvidenceReport copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    PublicationStatus? status,
    List<UsageContext>? useContext,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    Reference? citeAsReference,
    FhirMarkdown? citeAsMarkdown,
    CodeableConcept? type,
    List<Annotation>? note,
    List<RelatedArtifact>? relatedArtifact,
    EvidenceReportSubject? subject,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<EvidenceReportRelatesTo>? relatesTo,
    List<EvidenceReportSection>? section,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceReport(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      status: status ?? this.status,
      useContext: useContext ?? this.useContext,
      identifier: identifier ?? this.identifier,
      relatedIdentifier: relatedIdentifier ?? this.relatedIdentifier,
      citeAsReference: citeAsReference ?? this.citeAsReference,
      citeAsMarkdown: citeAsMarkdown ?? this.citeAsMarkdown,
      type: type ?? this.type,
      note: note ?? this.note,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      subject: subject ?? this.subject,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatesTo: relatesTo ?? this.relatesTo,
      section: section ?? this.section,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceReportSubject]
/// Specifies the subject or focus of the report. Answers "What is this
/// report about?".
class EvidenceReportSubject extends BackboneElement {
  /// Primary constructor for [EvidenceReportSubject]

  EvidenceReportSubject({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.characteristic,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportSubject.fromJson(Map<String, dynamic> json) {
    return EvidenceReportSubject(
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
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<EvidenceReportCharacteristic>(
                (v) => EvidenceReportCharacteristic.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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

  /// Deserialize [EvidenceReportSubject] from a [String]
  /// or [YamlMap] object
  factory EvidenceReportSubject.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceReportSubject.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EvidenceReportSubject cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceReportSubject]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportSubject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReportSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReportSubject';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [characteristic]
  /// Characteristic.
  final List<EvidenceReportCharacteristic>? characteristic;

  /// [note]
  /// Used for general notes and annotations not coded elsewhere.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (characteristic != null && characteristic!.isNotEmpty) {
      final fieldJson3 = characteristic!.map((e) => e.toJson()).toList();
      json['characteristic'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_characteristic'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson4 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  EvidenceReportSubject clone() => throw UnimplementedError();
  @override
  EvidenceReportSubject copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<EvidenceReportCharacteristic>? characteristic,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceReportSubject(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      characteristic: characteristic ?? this.characteristic,
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

/// [EvidenceReportCharacteristic]
/// Characteristic.
class EvidenceReportCharacteristic extends BackboneElement {
  /// Primary constructor for [EvidenceReportCharacteristic]

  EvidenceReportCharacteristic({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.code,
    this.valueReference,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.valueQuantity,
    this.valueRange,
    this.exclude,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportCharacteristic.fromJson(Map<String, dynamic> json) {
    return EvidenceReportCharacteristic(
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
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
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
      exclude: json['exclude'] != null
          ? FhirBoolean.fromJson({
              'value': json['exclude'],
              '_value': json['_exclude'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EvidenceReportCharacteristic] from a [String]
  /// or [YamlMap] object
  factory EvidenceReportCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceReportCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EvidenceReportCharacteristic cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceReportCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReportCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReportCharacteristic';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// Characteristic code.
  final CodeableConcept code;

  /// [valueReference]
  /// Characteristic value.
  final Reference? valueReference;

  /// [valueCodeableConcept]
  /// Characteristic value.
  final CodeableConcept? valueCodeableConcept;

  /// [valueBoolean]
  /// Characteristic value.
  final FhirBoolean? valueBoolean;

  /// [valueQuantity]
  /// Characteristic value.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// Characteristic value.
  final Range? valueRange;

  /// [exclude]
  /// Is used to express not the characteristic.
  final FhirBoolean? exclude;

  /// [period]
  /// Timeframe for the characteristic.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = code.toJson();
    json['code'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_code'] = fieldJson3['_value'];
    }

    if (valueReference != null) {
      final fieldJson4 = valueReference!.toJson();
      json['valueReference'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueReference'] = fieldJson4['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson5 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson5['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson6 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueBoolean'] = fieldJson6['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson7 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueQuantity'] = fieldJson7['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson8 = valueRange!.toJson();
      json['valueRange'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueRange'] = fieldJson8['_value'];
      }
    }

    if (exclude != null) {
      final fieldJson9 = exclude!.toJson();
      json['exclude'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_exclude'] = fieldJson9['_value'];
      }
    }

    if (period != null) {
      final fieldJson10 = period!.toJson();
      json['period'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_period'] = fieldJson10['_value'];
      }
    }

    return json;
  }

  @override
  EvidenceReportCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceReportCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Reference? valueReference,
    CodeableConcept? valueCodeableConcept,
    FhirBoolean? valueBoolean,
    Quantity? valueQuantity,
    Range? valueRange,
    FhirBoolean? exclude,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceReportCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueReference: valueReference ?? this.valueReference,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      exclude: exclude ?? this.exclude,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceReportRelatesTo]
/// Relationships that this composition has with other compositions or
/// documents that already exist.
class EvidenceReportRelatesTo extends BackboneElement {
  /// Primary constructor for [EvidenceReportRelatesTo]

  EvidenceReportRelatesTo({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.code,
    this.targetIdentifier,
    this.targetReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportRelatesTo.fromJson(Map<String, dynamic> json) {
    return EvidenceReportRelatesTo(
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
      code: ReportRelationshipType.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      targetIdentifier: json['targetIdentifier'] != null
          ? Identifier.fromJson(
              json['targetIdentifier'] as Map<String, dynamic>,
            )
          : null,
      targetReference: json['targetReference'] != null
          ? Reference.fromJson(
              json['targetReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EvidenceReportRelatesTo] from a [String]
  /// or [YamlMap] object
  factory EvidenceReportRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceReportRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EvidenceReportRelatesTo cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceReportRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReportRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReportRelatesTo';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// The type of relationship that this composition has with anther
  /// composition or document.
  final ReportRelationshipType code;

  /// [targetIdentifier]
  /// The target composition/document of this relationship.
  final Identifier? targetIdentifier;

  /// [targetReference]
  /// The target composition/document of this relationship.
  final Reference? targetReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = code.toJson();
    json['code'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_code'] = fieldJson3['_value'];
    }

    if (targetIdentifier != null) {
      final fieldJson4 = targetIdentifier!.toJson();
      json['targetIdentifier'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_targetIdentifier'] = fieldJson4['_value'];
      }
    }

    if (targetReference != null) {
      final fieldJson5 = targetReference!.toJson();
      json['targetReference'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_targetReference'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  EvidenceReportRelatesTo clone() => throw UnimplementedError();
  @override
  EvidenceReportRelatesTo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ReportRelationshipType? code,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceReportRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [EvidenceReportSection]
/// The root of the sections that make up the composition.
class EvidenceReportSection extends BackboneElement {
  /// Primary constructor for [EvidenceReportSection]

  EvidenceReportSection({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.title,
    this.focus,
    this.focusReference,
    this.author,
    this.text,
    this.mode,
    this.orderedBy,
    this.entryClassifier,
    this.entryReference,
    this.entryQuantity,
    this.emptyReason,
    this.section,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportSection.fromJson(Map<String, dynamic> json) {
    return EvidenceReportSection(
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
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      focus: json['focus'] != null
          ? CodeableConcept.fromJson(
              json['focus'] as Map<String, dynamic>,
            )
          : null,
      focusReference: json['focusReference'] != null
          ? Reference.fromJson(
              json['focusReference'] as Map<String, dynamic>,
            )
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      mode: json['mode'] != null
          ? ListMode.fromJson({
              'value': json['mode'],
              '_value': json['_mode'],
            })
          : null,
      orderedBy: json['orderedBy'] != null
          ? CodeableConcept.fromJson(
              json['orderedBy'] as Map<String, dynamic>,
            )
          : null,
      entryClassifier: json['entryClassifier'] != null
          ? (json['entryClassifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      entryReference: json['entryReference'] != null
          ? (json['entryReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      entryQuantity: json['entryQuantity'] != null
          ? (json['entryQuantity'] as List<dynamic>)
              .map<Quantity>(
                (v) => Quantity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      emptyReason: json['emptyReason'] != null
          ? CodeableConcept.fromJson(
              json['emptyReason'] as Map<String, dynamic>,
            )
          : null,
      section: json['section'] != null
          ? (json['section'] as List<dynamic>)
              .map<EvidenceReportSection>(
                (v) => EvidenceReportSection.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [EvidenceReportSection] from a [String]
  /// or [YamlMap] object
  factory EvidenceReportSection.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportSection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EvidenceReportSection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EvidenceReportSection cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EvidenceReportSection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportSection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReportSection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EvidenceReportSection';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [title]
  /// The label for this particular section. This will be part of the
  /// rendered content for the document, and is often used to build a table
  /// of contents.
  final FhirString? title;

  /// [focus]
  /// A code identifying the kind of content contained within the section.
  /// This should be consistent with the section title.
  final CodeableConcept? focus;

  /// [focusReference]
  /// A definitional Resource identifying the kind of content contained
  /// within the section. This should be consistent with the section title.
  final Reference? focusReference;

  /// [author]
  /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  final List<Reference>? author;

  /// [text]
  /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is peferred to
  /// contain sufficient detail to make it acceptable for a human to just
  /// read the narrative.
  final Narrative? text;

  /// [mode]
  /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents
  /// a snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  final ListMode? mode;

  /// [orderedBy]
  /// Specifies the order applied to the items in the section entries.
  final CodeableConcept? orderedBy;

  /// [entryClassifier]
  /// Specifies any type of classification of the evidence report.
  final List<CodeableConcept>? entryClassifier;

  /// [entryReference]
  /// A reference to the actual resource from which the narrative in the
  /// section is derived.
  final List<Reference>? entryReference;

  /// [entryQuantity]
  /// Quantity as content.
  final List<Quantity>? entryQuantity;

  /// [emptyReason]
  /// If the section is empty, why the list is empty. An empty section
  /// typically has some text explaining the empty reason.
  final CodeableConcept? emptyReason;

  /// [section]
  /// A nested sub-section within this section.
  final List<EvidenceReportSection>? section;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (title != null) {
      final fieldJson3 = title!.toJson();
      json['title'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_title'] = fieldJson3['_value'];
      }
    }

    if (focus != null) {
      final fieldJson4 = focus!.toJson();
      json['focus'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_focus'] = fieldJson4['_value'];
      }
    }

    if (focusReference != null) {
      final fieldJson5 = focusReference!.toJson();
      json['focusReference'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_focusReference'] = fieldJson5['_value'];
      }
    }

    if (author != null && author!.isNotEmpty) {
      final fieldJson6 = author!.map((e) => e.toJson()).toList();
      json['author'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_author'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (text != null) {
      final fieldJson7 = text!.toJson();
      json['text'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_text'] = fieldJson7['_value'];
      }
    }

    if (mode != null) {
      final fieldJson8 = mode!.toJson();
      json['mode'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_mode'] = fieldJson8['_value'];
      }
    }

    if (orderedBy != null) {
      final fieldJson9 = orderedBy!.toJson();
      json['orderedBy'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_orderedBy'] = fieldJson9['_value'];
      }
    }

    if (entryClassifier != null && entryClassifier!.isNotEmpty) {
      final fieldJson10 = entryClassifier!.map((e) => e.toJson()).toList();
      json['entryClassifier'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_entryClassifier'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (entryReference != null && entryReference!.isNotEmpty) {
      final fieldJson11 = entryReference!.map((e) => e.toJson()).toList();
      json['entryReference'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_entryReference'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (entryQuantity != null && entryQuantity!.isNotEmpty) {
      final fieldJson12 = entryQuantity!.map((e) => e.toJson()).toList();
      json['entryQuantity'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_entryQuantity'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (emptyReason != null) {
      final fieldJson13 = emptyReason!.toJson();
      json['emptyReason'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_emptyReason'] = fieldJson13['_value'];
      }
    }

    if (section != null && section!.isNotEmpty) {
      final fieldJson14 = section!.map((e) => e.toJson()).toList();
      json['section'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_section'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  EvidenceReportSection clone() => throw UnimplementedError();
  @override
  EvidenceReportSection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    CodeableConcept? focus,
    Reference? focusReference,
    List<Reference>? author,
    Narrative? text,
    ListMode? mode,
    CodeableConcept? orderedBy,
    List<CodeableConcept>? entryClassifier,
    List<Reference>? entryReference,
    List<Quantity>? entryQuantity,
    CodeableConcept? emptyReason,
    List<EvidenceReportSection>? section,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceReportSection(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      focus: focus ?? this.focus,
      focusReference: focusReference ?? this.focusReference,
      author: author ?? this.author,
      text: text ?? this.text,
      mode: mode ?? this.mode,
      orderedBy: orderedBy ?? this.orderedBy,
      entryClassifier: entryClassifier ?? this.entryClassifier,
      entryReference: entryReference ?? this.entryReference,
      entryQuantity: entryQuantity ?? this.entryQuantity,
      emptyReason: emptyReason ?? this.emptyReason,
      section: section ?? this.section,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
