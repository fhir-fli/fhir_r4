import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Binary] A resource that represents the data of a single raw artifact
/// as digital content accessible in its native format.  A Binary resource can
/// contain any content, whether text, image, pdf, zip archive, etc.

@freezed
class Binary with _$Binary {
  const Binary._();

  const factory Binary({
/// [resourceType] This is a Binary resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [contentType] MimeType of the binary content represented as a standard
/// MimeType (BCP 13).

    @JsonKey(name: 'contentType') FhirCode? contentType,
/// [_contentType] Extensions for contentType

    @JsonKey(name: '_contentType') PrimitiveElement? contentTypeElement,
/// [securityContext] This element identifies another resource that can be
/// used as a proxy of the security sensitivity to use when deciding and
/// enforcing access control rules for the Binary resource. Given that the
/// Binary resource contains very few elements that can be used to determine
/// the sensitivity of the data and relationships to individuals, the
/// referenced resource stands in as a proxy equivalent for this purpose. This
/// referenced resource may be related to the Binary (e.g. DocumentReference),
/// or may be some non-related Resource purely as a security proxy. E.g. to
/// identify that the binary resource relates to a patient, and access should
/// only be granted to applications that have access to the patient.

    @JsonKey(name: 'securityContext') Reference? securityContext,
/// [data] The actual content, base64 encoded.

    @JsonKey(name: 'data') FhirBase64Binary? data,
/// [_data] Extensions for data

    @JsonKey(name: '_data') PrimitiveElement? dataElement,
  }) = _$Binary;

  @override
  String get fhirType => 'Binary';

  factory Binary.fromJson(Map<String, dynamic> json) =>
      _$BinaryFromJson(json);

  factory Binary.fromYaml(dynamic yaml) => yaml is String
      ? Binary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Binary.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Binary cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Binary.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BinaryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
