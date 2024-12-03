import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EvidenceReport]
/// The EvidenceReport Resource is a specialized container for a collection
/// of resources and codable concepts, adapted to support compositions of
/// Evidence, EvidenceVariable, and Citation resources and related
/// concepts.
class EvidenceReport extends DomainResource {
  /// Primary constructor for
  /// [EvidenceReport]

  EvidenceReport({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  }) : super(
          resourceType: R4ResourceType.EvidenceReport,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReport.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceReport(
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
      citeAsMarkdown:
          (json['citeAsMarkdown'] != null || json['_citeAsMarkdown'] != null)
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

  /// Deserialize [EvidenceReport]
  /// from a [String] or [YamlMap] object
  factory EvidenceReport.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReport.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReport.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReport '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReport]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReport.fromJsonString(
    String source,
  ) {
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
    addField('status', status);
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (relatedIdentifier != null && relatedIdentifier!.isNotEmpty) {
      json['relatedIdentifier'] =
          relatedIdentifier!.map((e) => e.toJson()).toList();
    }

    if (citeAsReference != null) {
      json['citeAsReference'] = citeAsReference!.toJson();
    }

    addField('citeAsMarkdown', citeAsMarkdown);
    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] =
          relatedArtifact!.map((e) => e.toJson()).toList();
    }

    json['subject'] = subject.toJson();

    addField('publisher', publisher);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
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

    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] = relatesTo!.map((e) => e.toJson()).toList();
    }

    if (section != null && section!.isNotEmpty) {
      json['section'] = section!.map((e) => e.toJson()).toList();
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
    );
  }
}

/// [EvidenceReportSubject]
/// Specifies the subject or focus of the report. Answers "What is this
/// report about?".
class EvidenceReportSubject extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceReportSubject]

  EvidenceReportSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.characteristic,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportSubject.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceReportSubject(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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

  /// Deserialize [EvidenceReportSubject]
  /// from a [String] or [YamlMap] object
  factory EvidenceReportSubject.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReportSubject.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReportSubject.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReportSubject '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReportSubject]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportSubject.fromJsonString(
    String source,
  ) {
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

  /// [characteristic]
  /// Characteristic.
  final List<EvidenceReportCharacteristic>? characteristic;

  /// [note]
  /// Used for general notes and annotations not coded elsewhere.
  final List<Annotation>? note;
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

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
    );
  }
}

/// [EvidenceReportCharacteristic]
/// Characteristic.
class EvidenceReportCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceReportCharacteristic]

  EvidenceReportCharacteristic({
    super.id,
    super.extension_,
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceReportCharacteristic(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      valueBoolean:
          (json['valueBoolean'] != null || json['_valueBoolean'] != null)
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
      exclude: (json['exclude'] != null || json['_exclude'] != null)
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

  /// Deserialize [EvidenceReportCharacteristic]
  /// from a [String] or [YamlMap] object
  factory EvidenceReportCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReportCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReportCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReportCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReportCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportCharacteristic.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }

    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }

    addField('valueBoolean', valueBoolean);
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }

    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }

    addField('exclude', exclude);
    if (period != null) {
      json['period'] = period!.toJson();
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
    );
  }
}

/// [EvidenceReportRelatesTo]
/// Relationships that this composition has with other compositions or
/// documents that already exist.
class EvidenceReportRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceReportRelatesTo]

  EvidenceReportRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.targetIdentifier,
    this.targetReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceReportRelatesTo(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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

  /// Deserialize [EvidenceReportRelatesTo]
  /// from a [String] or [YamlMap] object
  factory EvidenceReportRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReportRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReportRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReportRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReportRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportRelatesTo.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('code', code);
    if (targetIdentifier != null) {
      json['targetIdentifier'] = targetIdentifier!.toJson();
    }

    if (targetReference != null) {
      json['targetReference'] = targetReference!.toJson();
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
    );
  }
}

/// [EvidenceReportSection]
/// The root of the sections that make up the composition.
class EvidenceReportSection extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceReportSection]

  EvidenceReportSection({
    super.id,
    super.extension_,
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportSection.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceReportSection(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      title: (json['title'] != null || json['_title'] != null)
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
      mode: (json['mode'] != null || json['_mode'] != null)
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

  /// Deserialize [EvidenceReportSection]
  /// from a [String] or [YamlMap] object
  factory EvidenceReportSection.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceReportSection.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceReportSection.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceReportSection '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceReportSection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceReportSection.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('title', title);
    if (focus != null) {
      json['focus'] = focus!.toJson();
    }

    if (focusReference != null) {
      json['focusReference'] = focusReference!.toJson();
    }

    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((e) => e.toJson()).toList();
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    addField('mode', mode);
    if (orderedBy != null) {
      json['orderedBy'] = orderedBy!.toJson();
    }

    if (entryClassifier != null && entryClassifier!.isNotEmpty) {
      json['entryClassifier'] =
          entryClassifier!.map((e) => e.toJson()).toList();
    }

    if (entryReference != null && entryReference!.isNotEmpty) {
      json['entryReference'] = entryReference!.map((e) => e.toJson()).toList();
    }

    if (entryQuantity != null && entryQuantity!.isNotEmpty) {
      json['entryQuantity'] = entryQuantity!.map((e) => e.toJson()).toList();
    }

    if (emptyReason != null) {
      json['emptyReason'] = emptyReason!.toJson();
    }

    if (section != null && section!.isNotEmpty) {
      json['section'] = section!.map((e) => e.toJson()).toList();
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
    );
  }
}
