import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Attachment] /// For referring to data content defined in other formats.
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
  int dbId = 0;

  /// [contentType] /// Identifies the type of the data in the attachment and allows a method to be
  /// chosen to interpret or render the data. Includes mime type parameters such
  /// as charset where appropriate.
  final FhirCode? contentType;
  final Element? contentTypeElement;

  /// [language] /// The human language of the content. The value can be any valid value
  /// according to BCP 47.
  final CommonLanguages? language;
  final Element? languageElement;

  /// [data] /// The actual data of the attachment - a sequence of bytes, base64 encoded.
  final FhirBase64Binary? data;
  final Element? dataElement;

  /// [url] /// A location where the data can be accessed.
  final FhirUrl? url;
  final Element? urlElement;

  /// [size] /// The number of bytes of data that make up this attachment (before base64
  /// encoding, if that is done).
  final FhirUnsignedInt? size;
  final Element? sizeElement;

  /// [hash] /// The calculated hash of the data using SHA-1. Represented using base64.
  final FhirBase64Binary? hash;
  final Element? hashElement;

  /// [title] /// A label or set of text to display in place of the data.
  final FhirString? title;
  final Element? titleElement;

  /// [creation] /// The date that the attachment was first created.
  final FhirDateTime? creation;
  final Element? creationElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (contentType?.value != null) {
      json['contentType'] = contentType!.toJson();
    }
    if (contentTypeElement != null) {
      json['_contentType'] = contentTypeElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (data?.value != null) {
      json['data'] = data!.toJson();
    }
    if (dataElement != null) {
      json['_data'] = dataElement!.toJson();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (size?.value != null) {
      json['size'] = size!.toJson();
    }
    if (sizeElement != null) {
      json['_size'] = sizeElement!.toJson();
    }
    if (hash?.value != null) {
      json['hash'] = hash!.toJson();
    }
    if (hashElement != null) {
      json['_hash'] = hashElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (creation?.value != null) {
      json['creation'] = creation!.toJson();
    }
    if (creationElement != null) {
      json['_creation'] = creationElement!.toJson();
    }
    return json;
  }

  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      contentType: json['contentType'] != null
          ? FhirCode.fromJson(json['contentType'])
          : null,
      contentTypeElement: json['_contentType'] != null
          ? Element.fromJson(json['_contentType'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      data:
          json['data'] != null ? FhirBase64Binary.fromJson(json['data']) : null,
      dataElement: json['_data'] != null
          ? Element.fromJson(json['_data'] as Map<String, dynamic>)
          : null,
      url: json['url'] != null ? FhirUrl.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      size:
          json['size'] != null ? FhirUnsignedInt.fromJson(json['size']) : null,
      sizeElement: json['_size'] != null
          ? Element.fromJson(json['_size'] as Map<String, dynamic>)
          : null,
      hash:
          json['hash'] != null ? FhirBase64Binary.fromJson(json['hash']) : null,
      hashElement: json['_hash'] != null
          ? Element.fromJson(json['_hash'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      creation: json['creation'] != null
          ? FhirDateTime.fromJson(json['creation'])
          : null,
      creationElement: json['_creation'] != null
          ? Element.fromJson(json['_creation'] as Map<String, dynamic>)
          : null,
    );
  }
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
