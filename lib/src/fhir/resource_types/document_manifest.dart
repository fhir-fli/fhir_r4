import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DocumentManifest]
/// A collection of documents compiled for a purpose together with metadata
/// that applies to the collection.
class DocumentManifest extends DomainResource {
  /// Primary constructor for [DocumentManifest]

  DocumentManifest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    required this.status,
    this.type,
    this.subject,
    this.created,
    this.author,
    this.recipient,
    this.source,
    this.description,
    required this.content,
    this.related,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.DocumentManifest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentManifest.fromJson(Map<String, dynamic> json) {
    return DocumentManifest(
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
      masterIdentifier: json['masterIdentifier'] != null
          ? Identifier.fromJson(
              json['masterIdentifier'] as Map<String, dynamic>,
            )
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
      status: DocumentReferenceStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      created: json['created'] != null
          ? FhirDateTime.fromJson({
              'value': json['created'],
              '_value': json['_created'],
            })
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
      recipient: json['recipient'] != null
          ? (json['recipient'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      source: json['source'] != null
          ? FhirUri.fromJson({
              'value': json['source'],
              '_value': json['_source'],
            })
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      content: ensureNonNullList((json['content'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      related: json['related'] != null
          ? (json['related'] as List<dynamic>)
              .map<DocumentManifestRelated>(
                (v) => DocumentManifestRelated.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DocumentManifest] from a [String]
  /// or [YamlMap] object
  factory DocumentManifest.fromYaml(dynamic yaml) => yaml is String
      ? DocumentManifest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DocumentManifest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('DocumentManifest cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DocumentManifest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentManifest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentManifest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DocumentManifest';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [masterIdentifier]
  /// A single identifier that uniquely identifies this manifest. Principally
  /// used to refer to the manifest in non-FHIR contexts.
  final Identifier? masterIdentifier;

  /// [identifier]
  /// Other identifiers associated with the document manifest, including
  /// version independent identifiers.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of this document manifest.
  final DocumentReferenceStatus status;

  /// [type]
  /// The code specifying the type of clinical activity that resulted in
  /// placing the associated content into the DocumentManifest.
  final CodeableConcept? type;

  /// [subject]
  /// Who or what the set of documents is about. The documents can be about a
  /// person, (patient or healthcare practitioner), a device (i.e. machine)
  /// or even a group of subjects (such as a document about a herd of farm
  /// animals, or a set of patients that share a common exposure). If the
  /// documents cross more than one subject, then more than one subject is
  /// allowed here (unusual use case).
  final Reference? subject;

  /// [created]
  /// When the document manifest was created for submission to the server
  /// (not necessarily the same thing as the actual resource last modified
  /// time, since it may be modified, replicated, etc.).
  final FhirDateTime? created;

  /// [author]
  /// Identifies who is the author of the manifest. Manifest author is not
  /// necessarly the author of the references included.
  final List<Reference>? author;

  /// [recipient]
  /// A patient, practitioner, or organization for which this set of
  /// documents is intended.
  final List<Reference>? recipient;

  /// [source]
  /// Identifies the source system, application, or software that produced
  /// the document manifest.
  final FhirUri? source;

  /// [description]
  /// Human-readable description of the source document. This is sometimes
  /// known as the "title".
  final FhirString? description;

  /// [content]
  /// The list of Resources that consist of the parts of this manifest.
  final List<Reference> content;

  /// [related]
  /// Related identifiers or resources associated with the DocumentManifest.
  final List<DocumentManifestRelated>? related;
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

    if (masterIdentifier != null) {
      final fieldJson8 = masterIdentifier!.toJson();
      json['masterIdentifier'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_masterIdentifier'] = fieldJson8['_value'];
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson9 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    final fieldJson10 = status.toJson();
    json['status'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_status'] = fieldJson10['_value'];
    }

    if (type != null) {
      final fieldJson11 = type!.toJson();
      json['type'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_type'] = fieldJson11['_value'];
      }
    }

    if (subject != null) {
      final fieldJson12 = subject!.toJson();
      json['subject'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_subject'] = fieldJson12['_value'];
      }
    }

    if (created != null) {
      final fieldJson13 = created!.toJson();
      json['created'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_created'] = fieldJson13['_value'];
      }
    }

    if (author != null && author!.isNotEmpty) {
      final fieldJson14 = author!.map((e) => e.toJson()).toList();
      json['author'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_author'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (recipient != null && recipient!.isNotEmpty) {
      final fieldJson15 = recipient!.map((e) => e.toJson()).toList();
      json['recipient'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_recipient'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (source != null) {
      final fieldJson16 = source!.toJson();
      json['source'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_source'] = fieldJson16['_value'];
      }
    }

    if (description != null) {
      final fieldJson17 = description!.toJson();
      json['description'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_description'] = fieldJson17['_value'];
      }
    }

    final fieldJson18 = content.map((e) => e.toJson()).toList();
    json['content'] = fieldJson18.map((e) => e['value']).toList();
    if (fieldJson18.any((e) => e['_value'] != null)) {
      json['_content'] = fieldJson18.map((e) => e['_value']).toList();
    }

    if (related != null && related!.isNotEmpty) {
      final fieldJson19 = related!.map((e) => e.toJson()).toList();
      json['related'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_related'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  DocumentManifest clone() => throw UnimplementedError();
  @override
  DocumentManifest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? masterIdentifier,
    List<Identifier>? identifier,
    DocumentReferenceStatus? status,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? created,
    List<Reference>? author,
    List<Reference>? recipient,
    FhirUri? source,
    FhirString? description,
    List<Reference>? content,
    List<DocumentManifestRelated>? related,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DocumentManifest(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      masterIdentifier: masterIdentifier ?? this.masterIdentifier,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      created: created ?? this.created,
      author: author ?? this.author,
      recipient: recipient ?? this.recipient,
      source: source ?? this.source,
      description: description ?? this.description,
      content: content ?? this.content,
      related: related ?? this.related,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DocumentManifestRelated]
/// Related identifiers or resources associated with the DocumentManifest.
class DocumentManifestRelated extends BackboneElement {
  /// Primary constructor for [DocumentManifestRelated]

  DocumentManifestRelated({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.ref,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentManifestRelated.fromJson(Map<String, dynamic> json) {
    return DocumentManifestRelated(
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
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      ref: json['ref'] != null
          ? Reference.fromJson(
              json['ref'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DocumentManifestRelated] from a [String]
  /// or [YamlMap] object
  factory DocumentManifestRelated.fromYaml(dynamic yaml) => yaml is String
      ? DocumentManifestRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DocumentManifestRelated.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DocumentManifestRelated cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DocumentManifestRelated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentManifestRelated.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentManifestRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DocumentManifestRelated';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Related identifier to this DocumentManifest. For example, Order
  /// numbers, accession numbers, XDW workflow numbers.
  final Identifier? identifier;

  /// [ref]
  /// Related Resource to this DocumentManifest. For example, Order,
  /// ServiceRequest, Procedure, EligibilityRequest, etc.
  final Reference? ref;
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

    if (identifier != null) {
      final fieldJson3 = identifier!.toJson();
      json['identifier'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_identifier'] = fieldJson3['_value'];
      }
    }

    if (ref != null) {
      final fieldJson4 = ref!.toJson();
      json['ref'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_ref'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  DocumentManifestRelated clone() => throw UnimplementedError();
  @override
  DocumentManifestRelated copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Reference? ref,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DocumentManifestRelated(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      ref: ref ?? this.ref,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
