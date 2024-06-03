import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Attachment] For referring to data content defined in other formats.

@freezed
class Attachment with _$Attachment {
  const Attachment._();

  const factory Attachment({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [contentType] Identifies the type of the data in the attachment and
/// allows a method to be chosen to interpret or render the data. Includes mime
/// type parameters such as charset where appropriate.

    @JsonKey(name: 'contentType') FhirCode? contentType,
/// [_contentType] Extensions for contentType

    @JsonKey(name: '_contentType') PrimitiveElement? contentTypeElement,
/// [language] The human language of the content. The value can be any
/// valid value according to BCP 47.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [data] The actual data of the attachment - a sequence of bytes, base64
/// encoded.

    @JsonKey(name: 'data') FhirBase64Binary? data,
/// [_data] Extensions for data

    @JsonKey(name: '_data') PrimitiveElement? dataElement,
/// [url] A location where the data can be accessed.

    @JsonKey(name: 'url') FhirUrl? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [size] The number of bytes of data that make up this attachment (before
/// base64 encoding, if that is done).

    @JsonKey(name: 'size') FhirInteger64? size,
/// [_size] Extensions for size

    @JsonKey(name: '_size') PrimitiveElement? sizeElement,
/// [hash] The calculated hash of the data using SHA-1. Represented using
/// base64.

    @JsonKey(name: 'hash') FhirBase64Binary? hash,
/// [_hash] Extensions for hash

    @JsonKey(name: '_hash') PrimitiveElement? hashElement,
/// [title] A label or set of text to display in place of the data.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [creation] The date that the attachment was first created.

    @JsonKey(name: 'creation') FhirDateTime? creation,
/// [_creation] Extensions for creation

    @JsonKey(name: '_creation') PrimitiveElement? creationElement,
/// [height] Height of the image in pixels (photo/video).

    @JsonKey(name: 'height') FhirPositiveInt? height,
/// [_height] Extensions for height

    @JsonKey(name: '_height') PrimitiveElement? heightElement,
/// [width] Width of the image in pixels (photo/video).

    @JsonKey(name: 'width') FhirPositiveInt? width,
/// [_width] Extensions for width

    @JsonKey(name: '_width') PrimitiveElement? widthElement,
/// [frames] The number of frames in a photo. This is used with a
/// multi-page fax, or an imaging acquisition context that takes multiple
/// slices in a single image, or an animated gif. If there is more than one
/// frame, this SHALL have a value in order to alert interface software that a
/// multi-frame capable rendering widget is required.

    @JsonKey(name: 'frames') FhirPositiveInt? frames,
/// [_frames] Extensions for frames

    @JsonKey(name: '_frames') PrimitiveElement? framesElement,
/// [duration] The duration of the recording in seconds - for audio and
/// video.

    @JsonKey(name: 'duration') FhirDecimal? duration,
/// [_duration] Extensions for duration

    @JsonKey(name: '_duration') PrimitiveElement? durationElement,
/// [pages] The number of pages when printed.

    @JsonKey(name: 'pages') FhirPositiveInt? pages,
/// [_pages] Extensions for pages

    @JsonKey(name: '_pages') PrimitiveElement? pagesElement,
  }) = _$Attachment;

  @override
  String get fhirType => 'Attachment';

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  factory Attachment.fromYaml(dynamic yaml) => yaml is String
      ? Attachment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Attachment.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Attachment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

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
  String toJsonString() => jsonEncode(toJson());
}
