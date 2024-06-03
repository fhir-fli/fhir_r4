import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Endpoint_Payload] The technical details of an endpoint that can be
/// used for electronic services, such as for web services providing XDS.b, a
/// REST endpoint for another FHIR server, or a s/Mime email address. This may
/// include any security context information.

@freezed
class Endpoint_Payload with _$Endpoint_Payload {
  const Endpoint_Payload._();

  const factory Endpoint_Payload({
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
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] The payload type describes the acceptable content that can be
/// communicated on the endpoint.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [mimeType] The mime type to send the payload in - e.g.
/// application/fhir+xml, application/fhir+json. If the mime type is not
/// specified, then the sender could send any content (including no content
/// depending on the connectionType).

    @JsonKey(name: 'mimeType') List<List<FhirCode>>? mimeType,
/// [_mimeType] Extensions for mimeType

    @JsonKey(name: '_mimeType') List<PrimitiveElement>? mimeTypeElement,
/// [profileCanonical] The FHIR profile that is expected at this endpoint.
/// It describes the resources that are handled, or even simply which resource
/// types -e.g. Vital Sign Observations or QuestionnaireResponse.The
/// `profileUri` may be used when a FHIR Structure Definition is not
/// available/appropriate.

    @JsonKey(name: 'profileCanonical') List<List<FhirCanonical>>? profileCanonical,
/// [_profileCanonical] Extensions for profileCanonical

    @JsonKey(name: '_profileCanonical') List<PrimitiveElement>? profileCanonicalElement,
/// [profileUri] The profile (as a uri) that is expected at this endpoint
/// when not represented using a FHIR profile.e.g. CDA Template ID expressed
/// as an OID (in the Uri).

    @JsonKey(name: 'profileUri') List<List<FhirUri>>? profileUri,
/// [_profileUri] Extensions for profileUri

    @JsonKey(name: '_profileUri') List<PrimitiveElement>? profileUriElement,
  }) = _$Endpoint_Payload;

  @override
  String get fhirType => 'Endpoint_Payload';

  factory Endpoint_Payload.fromJson(Map<String, dynamic> json) =>
      _$Endpoint_PayloadFromJson(json);

  factory Endpoint_Payload.fromYaml(dynamic yaml) => yaml is String
      ? Endpoint_Payload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Endpoint_Payload.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Endpoint_Payload cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Endpoint_Payload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Endpoint_PayloadFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
