import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Signature] A signature along with supporting context. The signature
/// may be a digital signature that is cryptographic in nature, or some other
/// signature acceptable to the domain. This other signature may be as simple
/// as a graphical image representing a hand-written signature, or a signature
/// ceremony Different signature approaches have different utilities.

@freezed
class Signature with _$Signature {
  const Signature._();

  const factory Signature({
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
/// [type] An indication of the reason that the entity signed this
/// document. This may be explicitly included as part of the signature
/// information and can be used when determining accountability for various
/// actions concerning the document.

    @JsonKey(name: 'type') List<List<Coding>>? type,
/// [when] When the digital signature was signed.

    @JsonKey(name: 'when') FhirInstant? when,
/// [_when] Extensions for when

    @JsonKey(name: '_when') PrimitiveElement? whenElement,
/// [who] A reference to an application-usable description of the identity
/// that signed  (e.g. the signature used their private key).

    @JsonKey(name: 'who') Reference? who,
/// [onBehalfOf] A reference to an application-usable description of the
/// identity that is represented by the signature.

    @JsonKey(name: 'onBehalfOf') Reference? onBehalfOf,
/// [targetFormat] A mime type that indicates the technical format of the
/// target resources signed by the signature.

    @JsonKey(name: 'targetFormat') FhirCode? targetFormat,
/// [_targetFormat] Extensions for targetFormat

    @JsonKey(name: '_targetFormat') PrimitiveElement? targetFormatElement,
/// [sigFormat] A mime type that indicates the technical format of the
/// signature. Important mime types are application/signature+xml for X ML
/// DigSig, application/jose for JWS, and image/* for a graphical image of a
/// signature, etc.

    @JsonKey(name: 'sigFormat') FhirCode? sigFormat,
/// [_sigFormat] Extensions for sigFormat

    @JsonKey(name: '_sigFormat') PrimitiveElement? sigFormatElement,
/// [data] The base64 encoding of the Signature content. When signature is
/// not recorded electronically this element would be empty.

    @JsonKey(name: 'data') FhirBase64Binary? data,
/// [_data] Extensions for data

    @JsonKey(name: '_data') PrimitiveElement? dataElement,
  }) = _$Signature;

  @override
  String get fhirType => 'Signature';

  factory Signature.fromJson(Map<String, dynamic> json) =>
      _$SignatureFromJson(json);

  factory Signature.fromYaml(dynamic yaml) => yaml is String
      ? Signature.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Signature.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Signature cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Signature.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SignatureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
