// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

/// [Attachment] For referring to data content defined in other formats.
@freezed
class Attachment extends DataType with _$Attachment {
  /// [Attachment] For referring to data content defined in other formats.
  Attachment._();

  /// [Attachment] For referring to data content defined in other formats.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [contentType] Identifies the type of the data in the attachment and
  /// allows a method to be chosen to interpret or render the data. Includes
  ///  mime type parameters such as charset where appropriate.
  ///
  /// [contentTypeElement] Extensions for contentType
  ///
  /// [language] The human language of the content. The value can be any valid
  ///  value according to BCP 47.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [data] The actual data of the attachment - a sequence of bytes, base64
  ///  encoded.
  ///
  /// [dataElement] Extensions for data
  ///
  /// [url] A location where the data can be accessed.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [size] The number of bytes of data that make up this attachment (before
  ///  base64 encoding, if that is done).
  ///
  /// [sizeElement] Extensions for size
  ///
  /// [hash] The calculated hash of the data using SHA-1. Represented using
  ///  base64.
  ///
  /// [hashElement] Extensions for hash
  ///
  /// [title] A label or set of text to display in place of the data.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [creation] The date that the attachment was first created.
  ///
  /// [creationElement] Extensions for creation
  const factory Attachment({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [contentType] Identifies the type of the data in the attachment and
    /// allows a method to be chosen to interpret or render the data. Includes
    ///  mime type parameters such as charset where appropriate.
    FhirCode? contentType,

    /// [contentTypeElement] Extensions for contentType
    @JsonKey(name: '_contentType') PrimitiveElement? contentTypeElement,

    /// [language] The human language of the content. The value can be any valid
    ///  value according to BCP 47.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [data] The actual data of the attachment - a sequence of bytes, base64
    ///  encoded.
    FhirBase64Binary? data,

    /// [dataElement] Extensions for data
    @JsonKey(name: '_data') PrimitiveElement? dataElement,

    /// [url] A location where the data can be accessed.
    FhirUrl? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [size] The number of bytes of data that make up this attachment (before
    ///  base64 encoding, if that is done).
    FhirUnsignedInt? size,

    /// [sizeElement] Extensions for size
    @JsonKey(name: '_size') PrimitiveElement? sizeElement,

    /// [hash] The calculated hash of the data using SHA-1. Represented using
    ///  base64.
    FhirBase64Binary? hash,

    /// [hashElement] Extensions for hash
    @JsonKey(name: '_hash') PrimitiveElement? hashElement,

    /// [title] A label or set of text to display in place of the data.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [creation] The date that the attachment was first created.
    FhirDateTime? creation,

    /// [creationElement] Extensions for creation
    @JsonKey(name: '_creation') PrimitiveElement? creationElement,
  }) = _Attachment;

  @override
  String get fhirType => 'Attachment';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Attachment.fromYaml(dynamic yaml) => yaml is String
      ? Attachment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Attachment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Attachment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  /// Acts like a constructor, returns a [Attachment], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Attachment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AttachmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
