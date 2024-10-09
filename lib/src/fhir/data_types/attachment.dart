import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'attachment.g.dart';

/// [Attachment] /// For referring to data content defined in other formats.
@JsonSerializable()
class Attachment extends DataType {
  Attachment({
    super.id,
    super.extension_,
    this.contentType,
    this.contentTypeElement,
    this.language,
    this.languageElement,
    this.data,
    this.dataElement,
    this.url,
    this.urlElement,
    this.size,
    this.sizeElement,
    this.hash,
    this.hashElement,
    this.title,
    this.titleElement,
    this.creation,
    this.creationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'Attachment';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentType] /// Identifies the type of the data in the attachment and allows a method to be
  /// chosen to interpret or render the data. Includes mime type parameters such
  /// as charset where appropriate.
  @JsonKey(name: 'contentType')
  final FhirCode? contentType;
  @JsonKey(name: '_contentType')
  final Element? contentTypeElement;

  /// [language] /// The human language of the content. The value can be any valid value
  /// according to BCP 47.
  @JsonKey(name: 'language')
  final CommonLanguages? language;
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [data] /// The actual data of the attachment - a sequence of bytes, base64 encoded.
  @JsonKey(name: 'data')
  final FhirBase64Binary? data;
  @JsonKey(name: '_data')
  final Element? dataElement;

  /// [url] /// A location where the data can be accessed.
  @JsonKey(name: 'url')
  final FhirUrl? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [size] /// The number of bytes of data that make up this attachment (before base64
  /// encoding, if that is done).
  @JsonKey(name: 'size')
  final FhirUnsignedInt? size;
  @JsonKey(name: '_size')
  final Element? sizeElement;

  /// [hash] /// The calculated hash of the data using SHA-1. Represented using base64.
  @JsonKey(name: 'hash')
  final FhirBase64Binary? hash;
  @JsonKey(name: '_hash')
  final Element? hashElement;

  /// [title] /// A label or set of text to display in place of the data.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [creation] /// The date that the attachment was first created.
  @JsonKey(name: 'creation')
  final FhirDateTime? creation;
  @JsonKey(name: '_creation')
  final Element? creationElement;
  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);

  @override
  Attachment clone() => throw UnimplementedError();
  @override
  Attachment copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? contentType,
    Element? contentTypeElement,
    CommonLanguages? language,
    Element? languageElement,
    FhirBase64Binary? data,
    Element? dataElement,
    FhirUrl? url,
    Element? urlElement,
    FhirUnsignedInt? size,
    Element? sizeElement,
    FhirBase64Binary? hash,
    Element? hashElement,
    FhirString? title,
    Element? titleElement,
    FhirDateTime? creation,
    Element? creationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Attachment(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      contentType: contentType ?? this.contentType,
      contentTypeElement: contentTypeElement ?? this.contentTypeElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      data: data ?? this.data,
      dataElement: dataElement ?? this.dataElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      size: size ?? this.size,
      sizeElement: sizeElement ?? this.sizeElement,
      hash: hash ?? this.hash,
      hashElement: hashElement ?? this.hashElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      creation: creation ?? this.creation,
      creationElement: creationElement ?? this.creationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Attachment.fromYaml(dynamic yaml) => yaml is String
      ? Attachment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Attachment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Attachment cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Attachment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Attachment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
