import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Attachment]
/// For referring to data content defined in other formats.
class Attachment extends DataType {
  /// Primary constructor for [Attachment]

  Attachment({
    super.id,
    super.extension_,
    this.contentType,
    this.language,
    this.data,
    this.url,
    this.size,
    this.hash,
    this.title,
    this.creation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Attachment.fromJson(
    Map<String, dynamic> json,
  ) {
    return Attachment(
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
      contentType: json['contentType'] != null
          ? FhirCode.fromJson({
              'value': json['contentType'],
              '_value': json['_contentType'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      data: json['data'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['data'],
              '_value': json['_data'],
            })
          : null,
      url: json['url'] != null
          ? FhirUrl.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      size: json['size'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['size'],
              '_value': json['_size'],
            })
          : null,
      hash: json['hash'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['hash'],
              '_value': json['_hash'],
            })
          : null,
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      creation: json['creation'] != null
          ? FhirDateTime.fromJson({
              'value': json['creation'],
              '_value': json['_creation'],
            })
          : null,
    );
  }

  /// Deserialize [Attachment] from a [String]
  /// or [YamlMap] object
  factory Attachment.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? Attachment.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? Attachment.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'Attachment cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [Attachment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Attachment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Attachment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Attachment';

  /// [contentType]
  /// Identifies the type of the data in the attachment and allows a method
  /// to be chosen to interpret or render the data. Includes mime type
  /// parameters such as charset where appropriate.
  final FhirCode? contentType;

  /// [language]
  /// The human language of the content. The value can be any valid value
  /// according to BCP 47.
  final CommonLanguages? language;

  /// [data]
  /// The actual data of the attachment - a sequence of bytes, base64
  /// encoded.
  final FhirBase64Binary? data;

  /// [url]
  /// A location where the data can be accessed.
  final FhirUrl? url;

  /// [size]
  /// The number of bytes of data that make up this attachment (before base64
  /// encoding, if that is done).
  final FhirUnsignedInt? size;

  /// [hash]
  /// The calculated hash of the data using SHA-1. Represented using base64.
  final FhirBase64Binary? hash;

  /// [title]
  /// A label or set of text to display in place of the data.
  final FhirString? title;

  /// [creation]
  /// The date that the attachment was first created.
  final FhirDateTime? creation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (contentType != null) {
      final fieldJson1 = contentType!.toJson();
      json['contentType'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_contentType'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    if (data != null) {
      final fieldJson3 = data!.toJson();
      json['data'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_data'] = fieldJson3['_value'];
      }
    }

    if (url != null) {
      final fieldJson4 = url!.toJson();
      json['url'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_url'] = fieldJson4['_value'];
      }
    }

    if (size != null) {
      final fieldJson5 = size!.toJson();
      json['size'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_size'] = fieldJson5['_value'];
      }
    }

    if (hash != null) {
      final fieldJson6 = hash!.toJson();
      json['hash'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_hash'] = fieldJson6['_value'];
      }
    }

    if (title != null) {
      final fieldJson7 = title!.toJson();
      json['title'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_title'] = fieldJson7['_value'];
      }
    }

    if (creation != null) {
      final fieldJson8 = creation!.toJson();
      json['creation'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_creation'] = fieldJson8['_value'];
      }
    }

    return json;
  }

  @override
  Attachment clone() => throw UnimplementedError();
  @override
  Attachment copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? contentType,
    CommonLanguages? language,
    FhirBase64Binary? data,
    FhirUrl? url,
    FhirUnsignedInt? size,
    FhirBase64Binary? hash,
    FhirString? title,
    FhirDateTime? creation,
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
      language: language ?? this.language,
      data: data ?? this.data,
      url: url ?? this.url,
      size: size ?? this.size,
      hash: hash ?? this.hash,
      title: title ?? this.title,
      creation: creation ?? this.creation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
