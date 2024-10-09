import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'document_manifest.g.dart';

/// [DocumentManifest] /// A collection of documents compiled for a purpose together with metadata
/// that applies to the collection.
@JsonSerializable()
class DocumentManifest extends DomainResource {
  DocumentManifest({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    required this.status,
    this.statusElement,
    this.type,
    this.subject,
    this.created,
    this.createdElement,
    this.author,
    this.recipient,
    this.source,
    this.sourceElement,
    this.description,
    this.descriptionElement,
    required this.content,
    this.related,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.DocumentManifest);
  @override
  String get fhirType => 'DocumentManifest';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [masterIdentifier] /// A single identifier that uniquely identifies this manifest. Principally
  /// used to refer to the manifest in non-FHIR contexts.
  @JsonKey(name: 'masterIdentifier')
  final Identifier? masterIdentifier;

  /// [identifier] /// Other identifiers associated with the document manifest, including version
  /// independent identifiers.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of this document manifest.
  @JsonKey(name: 'status')
  final DocumentReferenceStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// The code specifying the type of clinical activity that resulted in placing
  /// the associated content into the DocumentManifest.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [subject] /// Who or what the set of documents is about. The documents can be about a
  /// person, (patient or healthcare practitioner), a device (i.e. machine) or
  /// even a group of subjects (such as a document about a herd of farm animals,
  /// or a set of patients that share a common exposure). If the documents cross
  /// more than one subject, then more than one subject is allowed here (unusual
  /// use case).
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [created] /// When the document manifest was created for submission to the server (not
  /// necessarily the same thing as the actual resource last modified time, since
  /// it may be modified, replicated, etc.).
  @JsonKey(name: 'created')
  final FhirDateTime? created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [author] /// Identifies who is the author of the manifest. Manifest author is not
  /// necessarly the author of the references included.
  @JsonKey(name: 'author')
  final List<Reference>? author;

  /// [recipient] /// A patient, practitioner, or organization for which this set of documents is
  /// intended.
  @JsonKey(name: 'recipient')
  final List<Reference>? recipient;

  /// [source] /// Identifies the source system, application, or software that produced the
  /// document manifest.
  @JsonKey(name: 'source')
  final FhirUri? source;
  @JsonKey(name: '_source')
  final Element? sourceElement;

  /// [description] /// Human-readable description of the source document. This is sometimes known
  /// as the "title".
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [content] /// The list of Resources that consist of the parts of this manifest.
  @JsonKey(name: 'content')
  final List<Reference> content;

  /// [related] /// Related identifiers or resources associated with the DocumentManifest.
  @JsonKey(name: 'related')
  final List<DocumentManifestRelated>? related;
  factory DocumentManifest.fromJson(Map<String, dynamic> json) =>
      _$DocumentManifestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocumentManifestToJson(this);

  @override
  DocumentManifest clone() => throw UnimplementedError();
  @override
  DocumentManifest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? masterIdentifier,
    List<Identifier>? identifier,
    DocumentReferenceStatus? status,
    Element? statusElement,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? created,
    Element? createdElement,
    List<Reference>? author,
    List<Reference>? recipient,
    FhirUri? source,
    Element? sourceElement,
    FhirString? description,
    Element? descriptionElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      masterIdentifier: masterIdentifier ?? this.masterIdentifier,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      author: author ?? this.author,
      recipient: recipient ?? this.recipient,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
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

  factory DocumentManifest.fromYaml(dynamic yaml) => yaml is String
      ? DocumentManifest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DocumentManifest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DocumentManifest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DocumentManifest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentManifest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DocumentManifestRelated] /// Related identifiers or resources associated with the DocumentManifest.
@JsonSerializable()
class DocumentManifestRelated extends BackboneElement {
  DocumentManifestRelated({
    super.id,
    super.extension_,
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
  @override
  String get fhirType => 'DocumentManifestRelated';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Related identifier to this DocumentManifest. For example, Order numbers,
  /// accession numbers, XDW workflow numbers.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [ref] /// Related Resource to this DocumentManifest. For example, Order,
  /// ServiceRequest, Procedure, EligibilityRequest, etc.
  @JsonKey(name: 'ref')
  final Reference? ref;
  factory DocumentManifestRelated.fromJson(Map<String, dynamic> json) =>
      _$DocumentManifestRelatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocumentManifestRelatedToJson(this);

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

  factory DocumentManifestRelated.fromYaml(dynamic yaml) => yaml is String
      ? DocumentManifestRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DocumentManifestRelated.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DocumentManifestRelated cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DocumentManifestRelated.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentManifestRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
